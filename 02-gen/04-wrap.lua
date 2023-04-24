function wrap (f)
    local co = coroutine.create(f)
    return function ()
        local _,v = coroutine.resume(co)
        return v
    end
end

function f ()
    coroutine.yield(10)
    coroutine.yield(20)
    coroutine.yield(30)
end

for v in wrap(f) do
    print(v)
end
