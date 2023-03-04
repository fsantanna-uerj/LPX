for v=1, 3 do
    print(v)
end

print("-=-=-=-")

for i,v in ipairs({10,20,30}) do
    print(i,v)
end

print("-=-=-=-")

local f,s,i0 = ipairs({10,20,30})
local i1,v1 = f(s,i0)
print(i1,v1)
local i2,v2 = f(s,i1)
print(i2,v2)
local i3,v3 = f(s,i2)
print(i3,v3)
local i4,v4 = f(s,i3)
print(i4,v4)
