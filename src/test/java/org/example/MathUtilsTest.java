package org.example;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;

public class MathUtilsTest {
    @Test
    void testAdd() {
        Assertions.assertEquals(3, MathUtils.add(1, 2));
    }

    @Test
    void testSubtract() {
        Assertions.assertEquals(-1, MathUtils.subtract(1, 2));
    }

    @Test
    void testMultiply() {
        Assertions.assertEquals(2, MathUtils.multiply(1, 2));
    }

    @Test
    void testDivide() {
        Assertions.assertEquals(0.5, MathUtils.divide(1, 2), 0.000001);
    }
}
