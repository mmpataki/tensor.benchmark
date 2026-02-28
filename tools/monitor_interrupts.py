import time
import matplotlib.pyplot as plt

cpus = []          # CPU labels
data = []          # list of lists: per-sample LOC values
timestamps = []

def read_loc():
    with open("/proc/interrupts") as f:
        for line in f:
            if line.startswith("LOC:"):
                parts = line.split()
                return list(map(int, parts[1:-3]))  # per-CPU counts

# initialize
initial = read_loc()
cpus = [f"CPU{i}" for i in range(len(initial))]
base = initial

while True:
    time.sleep(1)
    cur = read_loc()
    timestamps.append(len(timestamps))
    data.append([cur[i] - base[i] for i in range(len(cur))])

    plt.clf()
    for i in range(len(cpus)):
        plt.plot(timestamps, [row[i] for row in data], label=cpus[i])

    plt.xlabel("Seconds")
    plt.ylabel("LOC interrupts")
    plt.legend(loc="upper left")
    plt.pause(0.01)

