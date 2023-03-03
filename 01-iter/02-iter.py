class Sequencia:        # 1 ate max
    def __init__ (self, v):
        self.max = v    # max recebido pelo construtor
    def __iter__ (self):
        self.cur = 1    # estado atual do iterador
        return self

    def __next__ (self):
        if self.cur > self.max:
            raise StopIteration # max atingido
        v = self.cur    # retorna atual
        self.cur += 1   # incrementa atual
        return v

for v in Sequencia(10):
    print(v)

ob = Sequencia(5)
it = iter(ob)

print(next(it))
print(next(it))
print(next(it))
print(next(it))
print(next(it)) 
print(next(it)) 
