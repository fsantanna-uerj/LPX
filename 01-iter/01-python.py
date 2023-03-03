for v in [1,2,3]:
    print(v)

for v in iter([1,2,3]):
    print(v)

it = iter([1,2,3])
print(it)
print(next(it))
print(next(it))
print(next(it))
print(next(it))
