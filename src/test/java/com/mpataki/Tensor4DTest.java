package com.mpataki;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class Tensor4DTest {

    @Test
    public void testGetWithIndexProduct() {
        // Create a 4D tensor with known dimensions
        int bDim = 4, chDim = 3, rDim = 5, cDim = 6;

        // Initialize the array with values where arr[idx] = i*j*k*l
        // (where i,j,k,l correspond to b,ch,r,c indices)
        float[] arr = new float[bDim * chDim * rDim * cDim];
        for (int i = 0; i < bDim * chDim * rDim * cDim; i++)
            arr[i] = i;

        // Pass the pre-initialized array to the constructor
        Tensor4D tensor = new Tensor4D(bDim, chDim, rDim, cDim, arr);

        // Validate that get(b, ch, r, c) returns the expected value
        for (int b = 0; b < bDim; b++) {
            for (int ch = 0; ch < chDim; ch++) {
                for (int r = 0; r < rDim; r++) {
                    for (int c = 0; c < cDim; c++) {
                        float expected = 0
                                + b * (chDim * rDim * cDim)
                                + ch * (rDim * cDim)
                                + r * (cDim)
                                + c;
                        float actual = tensor.get(b, ch, r, c);
                        assertEquals(expected, actual,
                                String.format("Mismatch at indices [%d][%d][%d][%d]", b, ch, r, c));
                    }
                }
            }
        }
    }
}
