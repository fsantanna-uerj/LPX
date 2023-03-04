function Caracteres (str)
    local f = function (s,i)
        if i <= string.len(str) then
            local c = string.sub(str,i,i)
            return i+1, c
        else
            return nil
        end

    end
    return f, str, 1
end

for i,c in Caracteres("ola mundo") do
    print(c)
end
