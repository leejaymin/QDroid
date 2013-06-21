.class public Lti/modules/titanium/xml/NodeProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "NodeProxyBindingGen.java"


# static fields
.field private static final CONST_ATTRIBUTE_NODE:Ljava/lang/String; = "ATTRIBUTE_NODE"

.field private static final CONST_CDATA_SECTION_NODE:Ljava/lang/String; = "CDATA_SECTION_NODE"

.field private static final CONST_COMMENT_NODE:Ljava/lang/String; = "COMMENT_NODE"

.field private static final CONST_DOCUMENT_FRAGMENT_NODE:Ljava/lang/String; = "DOCUMENT_FRAGMENT_NODE"

.field private static final CONST_DOCUMENT_NODE:Ljava/lang/String; = "DOCUMENT_NODE"

.field private static final CONST_DOCUMENT_TYPE_NODE:Ljava/lang/String; = "DOCUMENT_TYPE_NODE"

.field private static final CONST_ELEMENT_NODE:Ljava/lang/String; = "ELEMENT_NODE"

.field private static final CONST_ENTITY_NODE:Ljava/lang/String; = "ENTITY_NODE"

.field private static final CONST_ENTITY_REFERENCE_NODE:Ljava/lang/String; = "ENTITY_REFERENCE_NODE"

.field private static final CONST_NOTATION_NODE:Ljava/lang/String; = "NOTATION_NODE"

.field private static final CONST_PROCESSING_INSTRUCTION_NODE:Ljava/lang/String; = "PROCESSING_INSTRUCTION_NODE"

.field private static final CONST_TEXT_NODE:Ljava/lang/String; = "TEXT_NODE"

.field private static final DYNPROP_attributes:Ljava/lang/String; = "attributes"

.field private static final DYNPROP_childNodes:Ljava/lang/String; = "childNodes"

.field private static final DYNPROP_firstChild:Ljava/lang/String; = "firstChild"

.field private static final DYNPROP_lastChild:Ljava/lang/String; = "lastChild"

.field private static final DYNPROP_localName:Ljava/lang/String; = "localName"

.field private static final DYNPROP_namespaceURI:Ljava/lang/String; = "namespaceURI"

.field private static final DYNPROP_nextSibling:Ljava/lang/String; = "nextSibling"

.field private static final DYNPROP_nodeName:Ljava/lang/String; = "nodeName"

.field private static final DYNPROP_nodeType:Ljava/lang/String; = "nodeType"

.field private static final DYNPROP_nodeValue:Ljava/lang/String; = "nodeValue"

.field private static final DYNPROP_ownerDocument:Ljava/lang/String; = "ownerDocument"

.field private static final DYNPROP_parentNode:Ljava/lang/String; = "parentNode"

.field private static final DYNPROP_prefix:Ljava/lang/String; = "prefix"

.field private static final DYNPROP_previousSibling:Ljava/lang/String; = "previousSibling"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Node"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.NodeProxy"

.field private static final METHOD_appendChild:Ljava/lang/String; = "appendChild"

.field private static final METHOD_cloneNode:Ljava/lang/String; = "cloneNode"

.field private static final METHOD_evaluate:Ljava/lang/String; = "evaluate"

.field private static final METHOD_getAttributes:Ljava/lang/String; = "getAttributes"

.field private static final METHOD_getChildNodes:Ljava/lang/String; = "getChildNodes"

.field private static final METHOD_getFirstChild:Ljava/lang/String; = "getFirstChild"

.field private static final METHOD_getLastChild:Ljava/lang/String; = "getLastChild"

.field private static final METHOD_getLocalName:Ljava/lang/String; = "getLocalName"

.field private static final METHOD_getNamespaceURI:Ljava/lang/String; = "getNamespaceURI"

.field private static final METHOD_getNextSibling:Ljava/lang/String; = "getNextSibling"

.field private static final METHOD_getNodeName:Ljava/lang/String; = "getNodeName"

.field private static final METHOD_getNodeType:Ljava/lang/String; = "getNodeType"

.field private static final METHOD_getNodeValue:Ljava/lang/String; = "getNodeValue"

.field private static final METHOD_getOwnerDocument:Ljava/lang/String; = "getOwnerDocument"

.field private static final METHOD_getParentNode:Ljava/lang/String; = "getParentNode"

.field private static final METHOD_getPrefix:Ljava/lang/String; = "getPrefix"

.field private static final METHOD_getPreviousSibling:Ljava/lang/String; = "getPreviousSibling"

.field private static final METHOD_hasAttributes:Ljava/lang/String; = "hasAttributes"

.field private static final METHOD_hasChildNodes:Ljava/lang/String; = "hasChildNodes"

.field private static final METHOD_insertBefore:Ljava/lang/String; = "insertBefore"

.field private static final METHOD_isSupported:Ljava/lang/String; = "isSupported"

.field private static final METHOD_normalize:Ljava/lang/String; = "normalize"

.field private static final METHOD_removeChild:Ljava/lang/String; = "removeChild"

.field private static final METHOD_replaceChild:Ljava/lang/String; = "replaceChild"

.field private static final METHOD_setNodeValue:Ljava/lang/String; = "setNodeValue"

.field private static final METHOD_setPrefix:Ljava/lang/String; = "setPrefix"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Node"

.field private static final TAG:Ljava/lang/String; = "NodeProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 97
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "TEXT_NODE"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "ENTITY_REFERENCE_NODE"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "ENTITY_NODE"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "DOCUMENT_TYPE_NODE"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "ATTRIBUTE_NODE"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "NOTATION_NODE"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "CDATA_SECTION_NODE"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "DOCUMENT_FRAGMENT_NODE"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "COMMENT_NODE"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "PROCESSING_INSTRUCTION_NODE"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "DOCUMENT_NODE"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "ELEMENT_NODE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "localName"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "nodeName"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "firstChild"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "childNodes"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "ownerDocument"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "lastChild"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "namespaceURI"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "previousSibling"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "parentNode"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "prefix"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "nodeValue"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "attributes"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "nodeType"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "nextSibling"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getParentNode"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "evaluate"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hasAttributes"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "replaceChild"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "normalize"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNodeType"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setPrefix"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNamespaceURI"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hasChildNodes"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "cloneNode"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isSupported"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "insertBefore"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getLastChild"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setNodeValue"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "appendChild"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getLocalName"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getChildNodes"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getPreviousSibling"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getOwnerDocument"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeChild"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getFirstChild"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNextSibling"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNodeName"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getPrefix"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNodeValue"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getAttributes"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 154
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1259
    const-string v0, "Node"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 49
    .parameter "name"

    .prologue
    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    .line 159
    .local v48, value:Ljava/lang/Object;
    if-eqz v48, :cond_0

    move-object/from16 v17, v48

    .line 1251
    :goto_0
    return-object v17

    .line 168
    :cond_0
    const-string v17, "localName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 169
    new-instance v3, Lti/modules/titanium/xml/NodeProxyBindingGen$1;

    const-string v5, "localName"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/xml/NodeProxyBindingGen$1;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 192
    .local v3, localName_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 193
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "localName"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v3

    .line 195
    goto :goto_0

    .line 198
    .end local v3           #localName_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v17, "nodeName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 199
    new-instance v4, Lti/modules/titanium/xml/NodeProxyBindingGen$2;

    const-string v6, "nodeName"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/xml/NodeProxyBindingGen$2;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 222
    .local v4, nodeName_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 223
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "nodeName"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v4

    .line 225
    goto :goto_0

    .line 228
    .end local v4           #nodeName_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v17, "firstChild"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 229
    new-instance v5, Lti/modules/titanium/xml/NodeProxyBindingGen$3;

    const-string v7, "firstChild"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/xml/NodeProxyBindingGen$3;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 252
    .local v5, firstChild_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 253
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "firstChild"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v5

    .line 255
    goto/16 :goto_0

    .line 258
    .end local v5           #firstChild_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v17, "childNodes"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 259
    new-instance v6, Lti/modules/titanium/xml/NodeProxyBindingGen$4;

    const-string v8, "childNodes"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lti/modules/titanium/xml/NodeProxyBindingGen$4;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 282
    .local v6, childNodes_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 283
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "childNodes"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v6

    .line 285
    goto/16 :goto_0

    .line 288
    .end local v6           #childNodes_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v17, "ownerDocument"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 289
    new-instance v7, Lti/modules/titanium/xml/NodeProxyBindingGen$5;

    const-string v9, "ownerDocument"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lti/modules/titanium/xml/NodeProxyBindingGen$5;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 312
    .local v7, ownerDocument_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 313
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "ownerDocument"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v7

    .line 315
    goto/16 :goto_0

    .line 318
    .end local v7           #ownerDocument_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_5
    const-string v17, "lastChild"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 319
    new-instance v8, Lti/modules/titanium/xml/NodeProxyBindingGen$6;

    const-string v10, "lastChild"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lti/modules/titanium/xml/NodeProxyBindingGen$6;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 342
    .local v8, lastChild_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 343
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "lastChild"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v8

    .line 345
    goto/16 :goto_0

    .line 348
    .end local v8           #lastChild_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_6
    const-string v17, "namespaceURI"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 349
    new-instance v9, Lti/modules/titanium/xml/NodeProxyBindingGen$7;

    const-string v11, "namespaceURI"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lti/modules/titanium/xml/NodeProxyBindingGen$7;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 372
    .local v9, namespaceURI_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 373
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "namespaceURI"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v9

    .line 375
    goto/16 :goto_0

    .line 378
    .end local v9           #namespaceURI_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_7
    const-string v17, "previousSibling"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 379
    new-instance v10, Lti/modules/titanium/xml/NodeProxyBindingGen$8;

    const-string v12, "previousSibling"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lti/modules/titanium/xml/NodeProxyBindingGen$8;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 402
    .local v10, previousSibling_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 403
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "previousSibling"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v10

    .line 405
    goto/16 :goto_0

    .line 408
    .end local v10           #previousSibling_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_8
    const-string v17, "parentNode"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 409
    new-instance v11, Lti/modules/titanium/xml/NodeProxyBindingGen$9;

    const-string v13, "parentNode"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v16}, Lti/modules/titanium/xml/NodeProxyBindingGen$9;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 432
    .local v11, parentNode_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 433
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "parentNode"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v11

    .line 435
    goto/16 :goto_0

    .line 438
    .end local v11           #parentNode_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_9
    const-string v17, "prefix"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 439
    new-instance v12, Lti/modules/titanium/xml/NodeProxyBindingGen$10;

    const-string v14, "prefix"

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lti/modules/titanium/xml/NodeProxyBindingGen$10;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 477
    .local v12, prefix_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 478
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "prefix"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v12

    .line 480
    goto/16 :goto_0

    .line 483
    .end local v12           #prefix_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_a
    const-string v17, "nodeValue"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 484
    new-instance v13, Lti/modules/titanium/xml/NodeProxyBindingGen$11;

    const-string v15, "nodeValue"

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lti/modules/titanium/xml/NodeProxyBindingGen$11;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 522
    .local v13, nodeValue_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 523
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "nodeValue"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v13

    .line 525
    goto/16 :goto_0

    .line 528
    .end local v13           #nodeValue_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_b
    const-string v17, "attributes"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 529
    new-instance v14, Lti/modules/titanium/xml/NodeProxyBindingGen$12;

    const-string v16, "attributes"

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v19}, Lti/modules/titanium/xml/NodeProxyBindingGen$12;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 552
    .local v14, attributes_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 553
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "attributes"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v14

    .line 555
    goto/16 :goto_0

    .line 558
    .end local v14           #attributes_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_c
    const-string v17, "nodeType"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 559
    new-instance v15, Lti/modules/titanium/xml/NodeProxyBindingGen$13;

    const-string v17, "nodeType"

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v20}, Lti/modules/titanium/xml/NodeProxyBindingGen$13;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 582
    .local v15, nodeType_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 583
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "nodeType"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v15

    .line 585
    goto/16 :goto_0

    .line 588
    .end local v15           #nodeType_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_d
    const-string v17, "nextSibling"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 589
    new-instance v16, Lti/modules/titanium/xml/NodeProxyBindingGen$14;

    const-string v18, "nextSibling"

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Lti/modules/titanium/xml/NodeProxyBindingGen$14;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 612
    .local v16, nextSibling_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 613
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "nextSibling"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v16

    .line 615
    goto/16 :goto_0

    .line 619
    .end local v16           #nextSibling_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_e
    const-string v17, "getParentNode"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 620
    new-instance v36, Lti/modules/titanium/xml/NodeProxyBindingGen$15;

    const-string v17, "getParentNode"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$15;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 635
    .local v36, getParentNode_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getParentNode"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v36

    .line 636
    goto/16 :goto_0

    .line 639
    .end local v36           #getParentNode_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    const-string v17, "evaluate"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 640
    new-instance v24, Lti/modules/titanium/xml/NodeProxyBindingGen$16;

    const-string v17, "evaluate"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$16;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 665
    .local v24, evaluate_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "evaluate"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v24

    .line 666
    goto/16 :goto_0

    .line 669
    .end local v24           #evaluate_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_10
    const-string v17, "hasAttributes"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 670
    new-instance v39, Lti/modules/titanium/xml/NodeProxyBindingGen$17;

    const-string v17, "hasAttributes"

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$17;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 685
    .local v39, hasAttributes_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "hasAttributes"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v39

    .line 686
    goto/16 :goto_0

    .line 689
    .end local v39           #hasAttributes_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_11
    const-string v17, "replaceChild"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 690
    new-instance v45, Lti/modules/titanium/xml/NodeProxyBindingGen$18;

    const-string v17, "replaceChild"

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$18;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 724
    .local v45, replaceChild_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "replaceChild"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v45

    .line 725
    goto/16 :goto_0

    .line 728
    .end local v45           #replaceChild_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_12
    const-string v17, "normalize"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 729
    new-instance v43, Lti/modules/titanium/xml/NodeProxyBindingGen$19;

    const-string v17, "normalize"

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$19;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 742
    .local v43, normalize_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "normalize"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v43

    .line 743
    goto/16 :goto_0

    .line 746
    .end local v43           #normalize_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_13
    const-string v17, "getNodeType"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 747
    new-instance v33, Lti/modules/titanium/xml/NodeProxyBindingGen$20;

    const-string v17, "getNodeType"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$20;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 762
    .local v33, getNodeType_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getNodeType"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v33

    .line 763
    goto/16 :goto_0

    .line 766
    .end local v33           #getNodeType_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_14
    const-string v17, "setPrefix"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 767
    new-instance v47, Lti/modules/titanium/xml/NodeProxyBindingGen$21;

    const-string v17, "setPrefix"

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$21;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 790
    .local v47, setPrefix_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setPrefix"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v47

    .line 791
    goto/16 :goto_0

    .line 794
    .end local v47           #setPrefix_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_15
    const-string v17, "getNamespaceURI"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 795
    new-instance v30, Lti/modules/titanium/xml/NodeProxyBindingGen$22;

    const-string v17, "getNamespaceURI"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$22;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 810
    .local v30, getNamespaceURI_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getNamespaceURI"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v30

    .line 811
    goto/16 :goto_0

    .line 814
    .end local v30           #getNamespaceURI_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_16
    const-string v17, "hasChildNodes"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 815
    new-instance v40, Lti/modules/titanium/xml/NodeProxyBindingGen$23;

    const-string v17, "hasChildNodes"

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$23;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 830
    .local v40, hasChildNodes_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "hasChildNodes"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v40

    .line 831
    goto/16 :goto_0

    .line 834
    .end local v40           #hasChildNodes_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_17
    const-string v17, "cloneNode"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 835
    new-instance v23, Lti/modules/titanium/xml/NodeProxyBindingGen$24;

    const-string v17, "cloneNode"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$24;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 860
    .local v23, cloneNode_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "cloneNode"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v23

    .line 861
    goto/16 :goto_0

    .line 864
    .end local v23           #cloneNode_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_18
    const-string v17, "isSupported"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 865
    new-instance v42, Lti/modules/titanium/xml/NodeProxyBindingGen$25;

    const-string v17, "isSupported"

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$25;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 899
    .local v42, isSupported_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "isSupported"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v42

    .line 900
    goto/16 :goto_0

    .line 903
    .end local v42           #isSupported_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_19
    const-string v17, "insertBefore"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 904
    new-instance v41, Lti/modules/titanium/xml/NodeProxyBindingGen$26;

    const-string v17, "insertBefore"

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$26;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 938
    .local v41, insertBefore_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "insertBefore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v41

    .line 939
    goto/16 :goto_0

    .line 942
    .end local v41           #insertBefore_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1a
    const-string v17, "getLastChild"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 943
    new-instance v28, Lti/modules/titanium/xml/NodeProxyBindingGen$27;

    const-string v17, "getLastChild"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$27;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 958
    .local v28, getLastChild_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getLastChild"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v28

    .line 959
    goto/16 :goto_0

    .line 962
    .end local v28           #getLastChild_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1b
    const-string v17, "setNodeValue"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 963
    new-instance v46, Lti/modules/titanium/xml/NodeProxyBindingGen$28;

    const-string v17, "setNodeValue"

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$28;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 986
    .local v46, setNodeValue_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setNodeValue"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v46

    .line 987
    goto/16 :goto_0

    .line 990
    .end local v46           #setNodeValue_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1c
    const-string v17, "appendChild"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 991
    new-instance v22, Lti/modules/titanium/xml/NodeProxyBindingGen$29;

    const-string v17, "appendChild"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$29;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 1016
    .local v22, appendChild_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "appendChild"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v22

    .line 1017
    goto/16 :goto_0

    .line 1020
    .end local v22           #appendChild_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1d
    const-string v17, "getLocalName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 1021
    new-instance v29, Lti/modules/titanium/xml/NodeProxyBindingGen$30;

    const-string v17, "getLocalName"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$30;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 1036
    .local v29, getLocalName_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getLocalName"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v29

    .line 1037
    goto/16 :goto_0

    .line 1040
    .end local v29           #getLocalName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1e
    const-string v17, "getChildNodes"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 1041
    new-instance v26, Lti/modules/titanium/xml/NodeProxyBindingGen$31;

    const-string v17, "getChildNodes"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$31;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 1056
    .local v26, getChildNodes_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getChildNodes"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v26

    .line 1057
    goto/16 :goto_0

    .line 1060
    .end local v26           #getChildNodes_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1f
    const-string v17, "getPreviousSibling"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 1061
    new-instance v38, Lti/modules/titanium/xml/NodeProxyBindingGen$32;

    const-string v17, "getPreviousSibling"

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$32;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 1076
    .local v38, getPreviousSibling_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getPreviousSibling"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v38

    .line 1077
    goto/16 :goto_0

    .line 1080
    .end local v38           #getPreviousSibling_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_20
    const-string v17, "getOwnerDocument"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 1081
    new-instance v35, Lti/modules/titanium/xml/NodeProxyBindingGen$33;

    const-string v17, "getOwnerDocument"

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$33;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 1096
    .local v35, getOwnerDocument_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getOwnerDocument"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v35

    .line 1097
    goto/16 :goto_0

    .line 1100
    .end local v35           #getOwnerDocument_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_21
    const-string v17, "removeChild"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 1101
    new-instance v44, Lti/modules/titanium/xml/NodeProxyBindingGen$34;

    const-string v17, "removeChild"

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$34;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 1126
    .local v44, removeChild_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "removeChild"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v44

    .line 1127
    goto/16 :goto_0

    .line 1130
    .end local v44           #removeChild_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_22
    const-string v17, "getFirstChild"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 1131
    new-instance v27, Lti/modules/titanium/xml/NodeProxyBindingGen$35;

    const-string v17, "getFirstChild"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$35;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 1146
    .local v27, getFirstChild_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getFirstChild"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v27

    .line 1147
    goto/16 :goto_0

    .line 1150
    .end local v27           #getFirstChild_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_23
    const-string v17, "getNextSibling"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_24

    .line 1151
    new-instance v31, Lti/modules/titanium/xml/NodeProxyBindingGen$36;

    const-string v17, "getNextSibling"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$36;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 1166
    .local v31, getNextSibling_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getNextSibling"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v31

    .line 1167
    goto/16 :goto_0

    .line 1170
    .end local v31           #getNextSibling_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_24
    const-string v17, "getNodeName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    .line 1171
    new-instance v32, Lti/modules/titanium/xml/NodeProxyBindingGen$37;

    const-string v17, "getNodeName"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$37;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 1186
    .local v32, getNodeName_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getNodeName"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v32

    .line 1187
    goto/16 :goto_0

    .line 1190
    .end local v32           #getNodeName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_25
    const-string v17, "getPrefix"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_26

    .line 1191
    new-instance v37, Lti/modules/titanium/xml/NodeProxyBindingGen$38;

    const-string v17, "getPrefix"

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$38;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 1206
    .local v37, getPrefix_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getPrefix"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v37

    .line 1207
    goto/16 :goto_0

    .line 1210
    .end local v37           #getPrefix_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_26
    const-string v17, "getNodeValue"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_27

    .line 1211
    new-instance v34, Lti/modules/titanium/xml/NodeProxyBindingGen$39;

    const-string v17, "getNodeValue"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$39;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 1226
    .local v34, getNodeValue_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getNodeValue"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v34

    .line 1227
    goto/16 :goto_0

    .line 1230
    .end local v34           #getNodeValue_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_27
    const-string v17, "getAttributes"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_28

    .line 1231
    new-instance v25, Lti/modules/titanium/xml/NodeProxyBindingGen$40;

    const-string v17, "getAttributes"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeProxyBindingGen$40;-><init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V

    .line 1246
    .local v25, getAttributes_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NodeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getAttributes"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v25

    .line 1247
    goto/16 :goto_0

    .line 1251
    .end local v25           #getAttributes_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_28
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1267
    const-string v0, "ti.modules.titanium.xml.NodeProxy"

    return-object v0
.end method

.method public getProxyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1275
    const-class v0, Lti/modules/titanium/xml/NodeProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1263
    const-string v0, "Node"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 1279
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 1271
    const/4 v0, 0x0

    return-object v0
.end method
