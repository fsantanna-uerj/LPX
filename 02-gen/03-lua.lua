for i,v in ipairs({10,20,30}) do
    print(i,v)
end

print("-=-=-=-")

function f ()
    coroutine.yield(1, 10)
    coroutine.yield(2, 20)
    coroutine.yield(3, 30)
end

for i,v in coroutine.wrap(f) do
    print(i,v)
end

print("-=-=-=-")

it = coroutine.wrap(f)
print(it)
print(it())
print(it())
print(it())
print(it())
--print(it())

print("-=-=-=-")

co = coroutine.create(f)
print(coroutine.resume(co))
print(coroutine.resume(co))
print(coroutine.resume(co))
print(coroutine.resume(co))
--print(coroutine.resume(co))
