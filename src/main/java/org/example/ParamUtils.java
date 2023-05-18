package org.example;

import java.util.Optional;

public class ParamUtils {
    public static float parseParamAsFloat(Object param, float defaultValue) {
        return Optional
                .ofNullable(param)
                .map(Object::toString)
                .map(Float::parseFloat)
                .orElse(defaultValue);
    }
}
