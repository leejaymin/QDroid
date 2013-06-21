.class public Lti/modules/titanium/xml/ElementProxyBindingGen;
.super Lti/modules/titanium/xml/NodeProxyBindingGen;
.source "ElementProxyBindingGen.java"


# static fields
.field private static final DYNPROP_tagName:Ljava/lang/String; = "tagName"

.field private static final DYNPROP_text:Ljava/lang/String; = "text"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Element"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.ElementProxy"

.field private static final METHOD_getAttribute:Ljava/lang/String; = "getAttribute"

.field private static final METHOD_getAttributeNS:Ljava/lang/String; = "getAttributeNS"

.field private static final METHOD_getAttributeNode:Ljava/lang/String; = "getAttributeNode"

.field private static final METHOD_getAttributeNodeNS:Ljava/lang/String; = "getAttributeNodeNS"

.field private static final METHOD_getElementsByTagName:Ljava/lang/String; = "getElementsByTagName"

.field private static final METHOD_getElementsByTagNameNS:Ljava/lang/String; = "getElementsByTagNameNS"

.field private static final METHOD_getTagName:Ljava/lang/String; = "getTagName"

.field private static final METHOD_getText:Ljava/lang/String; = "getText"

.field private static final METHOD_hasAttribute:Ljava/lang/String; = "hasAttribute"

.field private static final METHOD_hasAttributeNS:Ljava/lang/String; = "hasAttributeNS"

.field private static final METHOD_removeAttribute:Ljava/lang/String; = "removeAttribute"

.field private static final METHOD_removeAttributeNS:Ljava/lang/String; = "removeAttributeNS"

.field private static final METHOD_removeAttributeNode:Ljava/lang/String; = "removeAttributeNode"

.field private static final METHOD_setAttribute:Ljava/lang/String; = "setAttribute"

.field private static final METHOD_setAttributeNS:Ljava/lang/String; = "setAttributeNS"

.field private static final METHOD_setAttributeNode:Ljava/lang/String; = "setAttributeNode"

.field private static final METHOD_setAttributeNodeNS:Ljava/lang/String; = "setAttributeNodeNS"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Element"

.field private static final TAG:Ljava/lang/String; = "ElementProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Lti/modules/titanium/xml/NodeProxyBindingGen;-><init>()V

    .line 65
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "tagName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hasAttribute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getAttributeNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setAttributeNodeNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getElementsByTagNameNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeAttributeNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setAttributeNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setAttribute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getAttribute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeAttributeNode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getElementsByTagName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getAttributeNode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setAttributeNode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeAttribute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hasAttributeNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getTagName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getAttributeNodeNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 88
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    const-string v0, "Element"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 28
    .parameter "name"

    .prologue
    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .line 93
    .local v27, value:Ljava/lang/Object;
    if-eqz v27, :cond_0

    move-object/from16 v5, v27

    .line 718
    :goto_0
    return-object v5

    .line 102
    :cond_0
    const-string v5, "text"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    new-instance v3, Lti/modules/titanium/xml/ElementProxyBindingGen$1;

    const-string v5, "text"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/xml/ElementProxyBindingGen$1;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 126
    .local v3, text_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 127
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "text"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 129
    goto :goto_0

    .line 132
    .end local v3           #text_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v5, "tagName"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    new-instance v4, Lti/modules/titanium/xml/ElementProxyBindingGen$2;

    const-string v6, "tagName"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/xml/ElementProxyBindingGen$2;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 156
    .local v4, tagName_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 157
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "tagName"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 159
    goto :goto_0

    .line 163
    .end local v4           #tagName_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v5, "hasAttribute"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 164
    new-instance v19, Lti/modules/titanium/xml/ElementProxyBindingGen$3;

    const-string v5, "hasAttribute"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$3;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 189
    .local v19, hasAttribute_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "hasAttribute"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v19

    .line 190
    goto/16 :goto_0

    .line 193
    .end local v19           #hasAttribute_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v5, "getAttributeNS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 194
    new-instance v10, Lti/modules/titanium/xml/ElementProxyBindingGen$4;

    const-string v5, "getAttributeNS"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$4;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 228
    .local v10, getAttributeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getAttributeNS"

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v10

    .line 229
    goto/16 :goto_0

    .line 232
    .end local v10           #getAttributeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v5, "setAttributeNodeNS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 233
    new-instance v24, Lti/modules/titanium/xml/ElementProxyBindingGen$5;

    const-string v5, "setAttributeNodeNS"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$5;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 258
    .local v24, setAttributeNodeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "setAttributeNodeNS"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v24

    .line 259
    goto/16 :goto_0

    .line 262
    .end local v24           #setAttributeNodeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v5, "getElementsByTagNameNS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 263
    new-instance v14, Lti/modules/titanium/xml/ElementProxyBindingGen$6;

    const-string v5, "getElementsByTagNameNS"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$6;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 297
    .local v14, getElementsByTagNameNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getElementsByTagNameNS"

    invoke-virtual {v5, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v14

    .line 298
    goto/16 :goto_0

    .line 301
    .end local v14           #getElementsByTagNameNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v5, "removeAttributeNS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 302
    new-instance v20, Lti/modules/titanium/xml/ElementProxyBindingGen$7;

    const-string v5, "removeAttributeNS"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$7;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 334
    .local v20, removeAttributeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "removeAttributeNS"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v20

    .line 335
    goto/16 :goto_0

    .line 338
    .end local v20           #removeAttributeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v5, "setAttributeNS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 339
    new-instance v23, Lti/modules/titanium/xml/ElementProxyBindingGen$8;

    const-string v5, "setAttributeNS"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$8;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 380
    .local v23, setAttributeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "setAttributeNS"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v23

    .line 381
    goto/16 :goto_0

    .line 384
    .end local v23           #setAttributeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v5, "setAttribute"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 385
    new-instance v26, Lti/modules/titanium/xml/ElementProxyBindingGen$9;

    const-string v5, "setAttribute"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$9;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 417
    .local v26, setAttribute_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "setAttribute"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v26

    .line 418
    goto/16 :goto_0

    .line 421
    .end local v26           #setAttribute_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v5, "getAttribute"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 422
    new-instance v13, Lti/modules/titanium/xml/ElementProxyBindingGen$10;

    const-string v5, "getAttribute"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$10;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 447
    .local v13, getAttribute_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getAttribute"

    invoke-virtual {v5, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v13

    .line 448
    goto/16 :goto_0

    .line 451
    .end local v13           #getAttribute_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v5, "getText"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 452
    new-instance v17, Lti/modules/titanium/xml/ElementProxyBindingGen$11;

    const-string v5, "getText"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$11;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 467
    .local v17, getText_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getText"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    .line 468
    goto/16 :goto_0

    .line 471
    .end local v17           #getText_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v5, "removeAttributeNode"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 472
    new-instance v21, Lti/modules/titanium/xml/ElementProxyBindingGen$12;

    const-string v5, "removeAttributeNode"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$12;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 497
    .local v21, removeAttributeNode_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "removeAttributeNode"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v21

    .line 498
    goto/16 :goto_0

    .line 501
    .end local v21           #removeAttributeNode_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v5, "getElementsByTagName"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 502
    new-instance v15, Lti/modules/titanium/xml/ElementProxyBindingGen$13;

    const-string v5, "getElementsByTagName"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$13;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 527
    .local v15, getElementsByTagName_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getElementsByTagName"

    invoke-virtual {v5, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v15

    .line 528
    goto/16 :goto_0

    .line 531
    .end local v15           #getElementsByTagName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v5, "getAttributeNode"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 532
    new-instance v12, Lti/modules/titanium/xml/ElementProxyBindingGen$14;

    const-string v5, "getAttributeNode"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$14;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 557
    .local v12, getAttributeNode_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getAttributeNode"

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v12

    .line 558
    goto/16 :goto_0

    .line 561
    .end local v12           #getAttributeNode_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v5, "setAttributeNode"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 562
    new-instance v25, Lti/modules/titanium/xml/ElementProxyBindingGen$15;

    const-string v5, "setAttributeNode"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$15;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 587
    .local v25, setAttributeNode_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "setAttributeNode"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v25

    .line 588
    goto/16 :goto_0

    .line 591
    .end local v25           #setAttributeNode_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    const-string v5, "removeAttribute"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 592
    new-instance v22, Lti/modules/titanium/xml/ElementProxyBindingGen$16;

    const-string v5, "removeAttribute"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$16;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 615
    .local v22, removeAttribute_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "removeAttribute"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v22

    .line 616
    goto/16 :goto_0

    .line 619
    .end local v22           #removeAttribute_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_10
    const-string v5, "hasAttributeNS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 620
    new-instance v18, Lti/modules/titanium/xml/ElementProxyBindingGen$17;

    const-string v5, "hasAttributeNS"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$17;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 654
    .local v18, hasAttributeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "hasAttributeNS"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v18

    .line 655
    goto/16 :goto_0

    .line 658
    .end local v18           #hasAttributeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_11
    const-string v5, "getTagName"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 659
    new-instance v16, Lti/modules/titanium/xml/ElementProxyBindingGen$18;

    const-string v5, "getTagName"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$18;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 674
    .local v16, getTagName_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getTagName"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    .line 675
    goto/16 :goto_0

    .line 678
    .end local v16           #getTagName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_12
    const-string v5, "getAttributeNodeNS"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 679
    new-instance v11, Lti/modules/titanium/xml/ElementProxyBindingGen$19;

    const-string v5, "getAttributeNodeNS"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/ElementProxyBindingGen$19;-><init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V

    .line 713
    .local v11, getAttributeNodeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/ElementProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getAttributeNodeNS"

    invoke-virtual {v5, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v11

    .line 714
    goto/16 :goto_0

    .line 718
    .end local v11           #getAttributeNodeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_13
    invoke-super/range {p0 .. p1}, Lti/modules/titanium/xml/NodeProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    const-string v0, "ti.modules.titanium.xml.ElementProxy"

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
    .line 742
    const-class v0, Lti/modules/titanium/xml/ElementProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    const-string v0, "Element"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 738
    const/4 v0, 0x0

    return-object v0
.end method
