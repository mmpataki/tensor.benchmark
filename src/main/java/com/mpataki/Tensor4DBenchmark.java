package com.mpataki;

import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.infra.Blackhole;

@State(Scope.Benchmark)
public class Tensor4DBenchmark {

    final int B_DIM = 64;
    final int CH_DIM = 16;
    final int R_DIM = 28;
    final int C_DIM = 32;
    float[][][][] arr = new float[B_DIM][CH_DIM][R_DIM][C_DIM];;

    public float realTest() {
        float sum = 0;
        for (int i = 0; i < 1_000_000; i++) {
            int b = i % B_DIM,
                ch = i % CH_DIM,
                r = i % R_DIM,
                c = i % C_DIM;
            sum += arr[b][ch][r][c];
        }
        return sum;
    }

    @Benchmark
    @Fork(value = 1, warmups = 1)
    public void accessTest(Blackhole bh) {
        float ret = realTest();
        bh.consume(ret);
    }

}
