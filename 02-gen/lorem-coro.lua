print(string.rep('.',30))
local f = io.open("lorem.txt")

local co_pars = coroutine.create(function ()
    local ls = ''
    local l = f:read('*l')
    while l do
        if l == '' then
            coroutine.yield(ls)
            ls = ''
        elseif ls == '' then
            ls = l
        else
            ls = ls .. ' ' .. l
        end
        l = f:read('*l')
    end
    if ls ~= '' then
        coroutine.yield(ls)
    end
end)

local co_words = coroutine.create(function (p)
    local ok,p = coroutine.resume(co_pars)
    while ok and p do
        local i = 1
        local w = ''
        local c = string.sub(p,i,i) ; i=i+1
        while c ~= '' do
            if c == ' ' then
                coroutine.yield(w)
                while c == ' ' do
                    c = string.sub(p,i,i) ; i=i+1
                end
                w = c
            else
                w = w .. c
            end
            c = string.sub(p,i,i) ; i=i+1
        end
        if w ~= '' then
            coroutine.yield(w)
        end
        ok,p = coroutine.resume(co_pars)
    end
end)

local co_lines = coroutine.create(function (w)
    local l = ''
    local n = 0
    local ok,w = coroutine.resume(co_words)
    while ok and w do
        local cols = n + 1 + string.len(w)
        if cols > 30 then
            coroutine.yield(l)
            l = w
            n = string.len(w)
        elseif n > 0 then
            l = l .. ' ' .. w
            n = cols
        else
            l = w
            n = string.len(w)
        end
        ok,w = coroutine.resume(co_words)
    end
    if l ~= '' then
        coroutine.yield(l)
    end
end)

local ok,l = assert(coroutine.resume(co_lines))
while ok and l do
    print(l)
    ok,l = coroutine.resume(co_lines)
end

f:close()

