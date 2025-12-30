import re
import sys
from collections import defaultdict

# ---------- regex patterns ----------
ADDR_RE = re.compile(r'^\s*(0x[0-9a-fA-F]+):')
JMP_RE  = re.compile(r'\b(j[a-z]+|jmp)\s+(0x[0-9a-fA-F]+)')
RET_RE  = re.compile(r'\b(ret|hlt)\b')
CALL_RE = re.compile(r'\bcall\b')

# ---------- data structures ----------
instructions = []     # [(addr, line)]
addr_to_idx  = {}     # addr -> index
leaders      = set()  # basic block leaders
edges        = defaultdict(list)

# ---------- read input ----------
asm = sys.stdin.read().splitlines()

for line in asm:
    line = line.split(';')[0].strip()
    m = ADDR_RE.match(line)
    if m:
        addr = m.group(1)
        instructions.append((addr, line))
        addr_to_idx[addr] = len(instructions) - 1

# ---------- find basic block leaders ----------
if instructions:
    leaders.add(instructions[0][0])

for i, (addr, line) in enumerate(instructions):
    jmp = JMP_RE.search(line)
    if jmp:
        target = jmp.group(2)
        leaders.add(target)
        if i + 1 < len(instructions):
            leaders.add(instructions[i + 1][0])

    if RET_RE.search(line) or CALL_RE.search(line):
        if i + 1 < len(instructions):
            leaders.add(instructions[i + 1][0])

# ---------- build basic blocks ----------
blocks = {}
current = None

for addr, line in instructions:
    if addr in leaders:
        current = addr
        blocks[current] = []
    blocks[current].append((addr, line))

# ---------- build CFG edges ----------
for block_start, insns in blocks.items():
    last_addr, last_line = insns[-1]

    jmp = JMP_RE.search(last_line)
    if jmp:
        target = jmp.group(2)
        edges[block_start].append(target)

        # conditional jump → fallthrough
        if not last_line.strip().startswith("jmp"):
            idx = addr_to_idx[last_addr]
            if idx + 1 < len(instructions):
                edges[block_start].append(instructions[idx + 1][0])

    elif not RET_RE.search(last_line):
        # normal fallthrough
        idx = addr_to_idx[last_addr]
        if idx + 1 < len(instructions):
            edges[block_start].append(instructions[idx + 1][0])

# ---------- emit DOT ----------
print("digraph CFG {")
print("  rankdir=TB;")
print("  node [")
print("    shape=box,")
print("    fontname=monospace,")
print("    fontsize=9,")
print("    width=4.5,")
print("    fixedsize=false")
print("  ];")

for block_start, insns in blocks.items():
    label = "\\l".join(line for _, line in insns) + "\\l"
    print(f'  "{block_start}" [label="{label}"];')

for src, dsts in edges.items():
    for dst in dsts:
        if dst in blocks:
            print(f'  "{src}" -> "{dst}";')

print("}")
