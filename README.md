# tensor.benchmark

Code, measurements and tools for my blog series "Taking JVM on a performance ride (4D tensor)" at [mmpataki.github.io](https://mmpataki.github.io).

The series takes one small benchmark, reading a million elements from a 4D float tensor (64 x 16 x 28 x 32), and follows what the JIT compiler, the CPU and the operating system do with it.

## Layout

| Path | Contents |
|---|---|
| `src/main/java/com/mpataki` | `Tensor4D` and the JMH benchmark `Tensor4DBenchmark` |
| `observations/p1-baseline-and-jit-compilers` | Baseline benchmark output |
| `observations/p2-java-assembly-and-task-pinning` | C2-compiled assembly, perf data and `taskset` runs |
| `observations/p3-cpuisolation-irqs-memorymgmt` | Runs with CPU isolation, interrupt counts and perf stats |
| `observations/p7-single-d-array` | Profiles and C2 assembly for the 4D array and the flattened 1D layout |
| `tools/asm_cfg.py` | Turns a disassembly listing into a Graphviz control-flow graph |
| `tools/cache_simulator.py` | Set-associative cache simulator that reports hits and misses |
| `tools/monitor_freq_msr.c` | Reads the APERF/MPERF MSRs to print per-CPU frequency |
| `tools/monitor_interrupts.py` | Plots local timer interrupts per CPU from `/proc/interrupts` |

## Run the benchmark

```
mvn clean package
java -jar target/benchmarks.jar
```
