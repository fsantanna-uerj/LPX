def Nats ():
    n = 0
    while True:
        yield(n)
        n += 1

for v in Nats():
    print(v)
