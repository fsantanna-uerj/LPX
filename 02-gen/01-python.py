def f ():
    yield 1
    yield 2
    yield 3

for v in iter(f()):
    print(v)

print(f, f(), iter(f()))

it = iter(f())
print(it)
print(next(it))
print(next(it))
print(next(it))
print(next(it))
