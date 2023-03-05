local a = {
    'aaa',
    {
        'yyy',
        'zzz',
    },
    'bbb'
}

function Arvore (A)
    local S = { 1 }
    return function ()
        local a = A
        for i=1, #S-1 do
            a = a[i]
        end
        local s = S[#S]
        if v >
        local v = a[s]
        if

        if i < #vs then
            i = i + 1
            return vs[i]
        else
            return nil
        end
    end
end

for v in Arvore(a) do
    print(v)
end

