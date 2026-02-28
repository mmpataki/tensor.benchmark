package com.mpataki;
public class Tensor4D {

    float arr[];
    int bDim, chDim, rDim, cDim;

    Tensor4D(int bDim, int chDim, int rDim, int cDim, float arr[]) {
        this.bDim = bDim;
        this.chDim = chDim;
        this.rDim = rDim;
        this.cDim = cDim;
        this.arr = (arr != null ? arr : new float[bDim * chDim * rDim * cDim]);
    }

    public Tensor4D(int bDim, int chDim, int rDim, int cDim) {
        this(bDim, chDim, rDim, cDim, null);
    }

    public float get(int b, int ch, int r, int c) {
        return arr[
            0
            + b  * (chDim * rDim * cDim)
            + ch * (rDim * cDim)
            + r  * (cDim)
            + c
        ];
    }
}
