def f ():
    print(999)
    yield 1
    yield 2
    yield 3

for v in f():
    print(111)
    print(v)

print(f, f(), iter(f()))

it = iter(f())
print(it)
print(next(it))
print(next(it))
print(next(it))
print(next(it))
