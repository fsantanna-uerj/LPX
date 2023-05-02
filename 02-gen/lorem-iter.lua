function word (w, n)
    local nn = n + 1 + string.len(w)
    if nn > 30 then
        io.write('\n'..w)
        return string.len(w)
    else
        if n > 0 then
            io.write(' ')
        end
        io.write(w)
        return nn
    end
end

function process(l,n)
    local i = 1
    local w = ''
    local c = string.sub(l,i,i) ; i=i+1
    while c ~= '' do
        if c == ' ' then
            n = word(w,n)
            while c == ' ' do
                c = string.sub(l,i,i) ; i=i+1
            end
            w = c
        else
            w = w .. c
        end
        c = string.sub(l,i,i) ; i=i+1
    end
    if w ~= '' then
        n = word(w,n)
    end
    return n
end

print(string.rep('.',30))
local f = io.open("lorem.txt")
local l = f:read('*l')
local n = 0
local ls = ''
while l do
    if l == '' then
        n = process(ls,n)
        ls = ''
    elseif ls == '' then
        ls = l
    else
        ls = ls .. ' ' .. l
    end
    l = f:read('*l')
end
process(ls,n)
print()
f:close()
