package org.example;

import org.slf4j.LoggerFactory;
import org.slf4j.Logger;

public class MathUtils {
    private static final Logger log = LoggerFactory.getLogger(MathUtils.class);

    public static float add(float a, float b) {
        log.info("Adding {} to {}", a, b);
        return a + b;
    }

    public static float subtract(float a, float b) {
        log.info("Subtracting {} from {}", b, a);
        return a - b;
    }

    public static float multiply(float a, float b) {
        log.info("Multiplying {} by {}", a, b);
        return a * b;
    }

    public static float divide(float a, float b) {
        log.info("Dividing {} by {}", a, b);
        return a / b;
    }
}
