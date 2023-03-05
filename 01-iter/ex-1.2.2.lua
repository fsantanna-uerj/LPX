function Quadrado ()
    local X = {
        dir   = "baixo",
        baixo = "esq",
        esq   = "cima",
        cima  = "dir",
    }

    local f = function (x, t)
        local n, d = table.unpack(t)
        if n < 10 then
            return {n+1, d}
        else
            return {1, x[d]}
        end
    end

    return f, X, {0,"dir"}
end

for d in Quadrado() do
    print(table.unpack(d))
end
