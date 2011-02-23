package com.rhammack.util.xml;

public class NamespaceAttribute extends SpecifiedAttribute {
    public final String namespaceName;
    public final String namespaceUri;

    public NamespaceAttribute(String n, String u) {
        super("xmlns:" + n,u);
        namespaceName = n;
        namespaceUri = u;
    }
}
