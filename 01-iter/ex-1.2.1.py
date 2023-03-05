def pre (a):
    ret = []
    for v in a:
        if type(v) is str:
            ret = ret + [v]
        else:
            ret = ret + pre(v)
    return ret

class Arvore:
    def __init__ (self, a):
        self.vec = pre(a)
    def __iter__ (self):
        self.i = 0
        return self
    def __next__ (self):
        if self.i >= len(self.vec):
            raise StopIteration
        v = self.vec[self.i]
        self.i += 1
        return v

a = [
    "aaa",
    [
        "yyy",
        [ "111", "222", "333" ],
        "zzz"
    ],
    "bbb"
]

for f in Arvore(a):
    print(f)
