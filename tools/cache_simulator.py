import argparse, sys
from math import log2

def make_bit_mask(n, right_shifts=0):
    return ((2 ** n) - 1) << right_shifts

def bits_for(n):
    return int(log2(n))

class Cache():
    def __init__(self, args):
        ap = argparse.ArgumentParser('cache_simulator')
        ap.add_argument('--size', type=int, dest='cache_size', default=65536, help='cache size (2^n)')
        ap.add_argument('--ways', type=int, dest='ways', default=4, help='ways in each set (2^n)')
        ap.add_argument('--width', type=int, dest='width', default=64, help='cache width (2^n)')
        
        args = ap.parse_args(args)
        self.ways = args.ways
        self.width = args.width
        self.sets = args.cache_size // args.width // self.ways
        self.cache = {set_i: {way_i: -1 for way_i in range(self.ways)} for set_i in range(self.sets)}
        self.set_last_idx = {i: 0 for i in range(self.sets)}
        self.hits = 0
        self.misses = 0
        
        self.byte_mask = make_bit_mask(bits_for(self.width))
        self.set_shift = bits_for(self.width)
        self.set_mask = make_bit_mask(bits_for(self.sets), self.set_shift)
        self.tag_shift = bits_for(self.sets) + bits_for(self.width)
        self.tag_mask = make_bit_mask(32 - self.tag_shift, self.tag_shift)
        
        # print(hex(self.byte_mask))
        # print(hex(self.set_mask))
        # print(hex(self.tag_mask))
        # print(hex(self.tag_mask | self.set_mask | self.byte_mask))

    def access(self, address):
        _set = (address & self.set_mask) >> self.set_shift
        _tag = (address & self.tag_mask) >> self.tag_shift
        _byt = address & self.byte_mask

        set = self.cache.get(_set)
        found = False
        for i in range(self.ways):
            if set.get(i) == _tag:
                found = True
                break

        if found:
           self.hits += 1
        else:
            self.misses += 1
            set = self.cache[_set]
            way = self.set_last_idx[_set] = (self.set_last_idx[_set] + 1) % self.ways
            set[way] = _tag
    
    def print_stats(self):
        print(f'accesses = {self.misses + self.hits}')
        print(f'misses   = {self.misses} ({self.misses / (self.misses + self.hits) * 100}%)')
        print(f'hits     = {self.hits} ({self.hits   / (self.misses + self.hits) * 100}%)')

cache = Cache(sys.argv[1:])
BDIM = 64
CHDIM = 16
RDIM = 28
CDIM = 32
for i in range(1000000):
    b = i % BDIM
    ch = i % CHDIM
    r = i % RDIM
    c = i % CDIM
    addr = b * (CHDIM * RDIM * CDIM) + \
           ch * (RDIM * CDIM) + \
           r * CDIM + \
           c
    cache.access(addr)

cache.print_stats()