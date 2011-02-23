package com.rhammack.util.xml;

public class SpecifiedAttribute {
    public final String attributeName;
    public final String attributeValue;

    public SpecifiedAttribute(String n, String v) {
        attributeName = n;
        attributeValue = v;
    }

    @Override
    public String toString() {
        StringBuilder sB = new StringBuilder();
        sB.append(attributeName);
        sB.append("=\"");
        sB.append(attributeValue);
        sB.append("\"");
        return sB.toString();
    }
}
