.class public Lti/modules/titanium/xml/DocumentProxyBindingGen;
.super Lti/modules/titanium/xml/NodeProxyBindingGen;
.source "DocumentProxyBindingGen.java"


# static fields
.field private static final DYNPROP_doctype:Ljava/lang/String; = "doctype"

.field private static final DYNPROP_documentElement:Ljava/lang/String; = "documentElement"

.field private static final DYNPROP_implementation:Ljava/lang/String; = "implementation"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Document"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.DocumentProxy"

.field private static final METHOD_createAttribute:Ljava/lang/String; = "createAttribute"

.field private static final METHOD_createAttributeNS:Ljava/lang/String; = "createAttributeNS"

.field private static final METHOD_createCDATASection:Ljava/lang/String; = "createCDATASection"

.field private static final METHOD_createComment:Ljava/lang/String; = "createComment"

.field private static final METHOD_createDocumentFragment:Ljava/lang/String; = "createDocumentFragment"

.field private static final METHOD_createElement:Ljava/lang/String; = "createElement"

.field private static final METHOD_createElementNS:Ljava/lang/String; = "createElementNS"

.field private static final METHOD_createEntityReference:Ljava/lang/String; = "createEntityReference"

.field private static final METHOD_createProcessingInstruction:Ljava/lang/String; = "createProcessingInstruction"

.field private static final METHOD_createTextNode:Ljava/lang/String; = "createTextNode"

.field private static final METHOD_getDoctype:Ljava/lang/String; = "getDoctype"

.field private static final METHOD_getDocumentElement:Ljava/lang/String; = "getDocumentElement"

.field private static final METHOD_getElementById:Ljava/lang/String; = "getElementById"

.field private static final METHOD_getElementsByTagName:Ljava/lang/String; = "getElementsByTagName"

.field private static final METHOD_getElementsByTagNameNS:Ljava/lang/String; = "getElementsByTagNameNS"

.field private static final METHOD_getImplementation:Ljava/lang/String; = "getImplementation"

.field private static final METHOD_importNode:Ljava/lang/String; = "importNode"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Document"

.field private static final TAG:Ljava/lang/String; = "DocumentProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Lti/modules/titanium/xml/NodeProxyBindingGen;-><init>()V

    .line 66
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "implementation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "doctype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "documentElement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getElementById"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createEntityReference"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getImplementation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "importNode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getElementsByTagNameNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createTextNode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createElementNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getDoctype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createDocumentFragment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createComment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createAttributeNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getDocumentElement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getElementsByTagName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createAttribute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createCDATASection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createProcessingInstruction"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createElement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 90
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    const-string v0, "Document"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 29
    .parameter "name"

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 95
    .local v28, value:Ljava/lang/Object;
    if-eqz v28, :cond_0

    move-object/from16 v6, v28

    .line 711
    :goto_0
    return-object v6

    .line 104
    :cond_0
    const-string v6, "implementation"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 105
    new-instance v3, Lti/modules/titanium/xml/DocumentProxyBindingGen$1;

    const-string v5, "implementation"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/xml/DocumentProxyBindingGen$1;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 128
    .local v3, implementation_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 129
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "implementation"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v3

    .line 131
    goto :goto_0

    .line 134
    .end local v3           #implementation_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v6, "doctype"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 135
    new-instance v4, Lti/modules/titanium/xml/DocumentProxyBindingGen$2;

    const-string v6, "doctype"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/xml/DocumentProxyBindingGen$2;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 158
    .local v4, doctype_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 159
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "doctype"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v4

    .line 161
    goto :goto_0

    .line 164
    .end local v4           #doctype_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v6, "documentElement"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 165
    new-instance v5, Lti/modules/titanium/xml/DocumentProxyBindingGen$3;

    const-string v7, "documentElement"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/xml/DocumentProxyBindingGen$3;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 188
    .local v5, documentElement_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 189
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "documentElement"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 191
    goto/16 :goto_0

    .line 195
    .end local v5           #documentElement_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v6, "getElementById"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 196
    new-instance v23, Lti/modules/titanium/xml/DocumentProxyBindingGen$4;

    const-string v6, "getElementById"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$4;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 221
    .local v23, getElementById_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getElementById"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v23

    .line 222
    goto/16 :goto_0

    .line 225
    .end local v23           #getElementById_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v6, "createEntityReference"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 226
    new-instance v18, Lti/modules/titanium/xml/DocumentProxyBindingGen$5;

    const-string v6, "createEntityReference"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$5;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 251
    .local v18, createEntityReference_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "createEntityReference"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v18

    .line 252
    goto/16 :goto_0

    .line 255
    .end local v18           #createEntityReference_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v6, "getImplementation"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 256
    new-instance v26, Lti/modules/titanium/xml/DocumentProxyBindingGen$6;

    const-string v6, "getImplementation"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$6;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 271
    .local v26, getImplementation_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getImplementation"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v26

    .line 272
    goto/16 :goto_0

    .line 275
    .end local v26           #getImplementation_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v6, "importNode"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 276
    new-instance v27, Lti/modules/titanium/xml/DocumentProxyBindingGen$7;

    const-string v6, "importNode"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$7;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 310
    .local v27, importNode_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "importNode"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v27

    .line 311
    goto/16 :goto_0

    .line 314
    .end local v27           #importNode_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v6, "getElementsByTagNameNS"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 315
    new-instance v24, Lti/modules/titanium/xml/DocumentProxyBindingGen$8;

    const-string v6, "getElementsByTagNameNS"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$8;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 349
    .local v24, getElementsByTagNameNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getElementsByTagNameNS"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v24

    .line 350
    goto/16 :goto_0

    .line 353
    .end local v24           #getElementsByTagNameNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v6, "createTextNode"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 354
    new-instance v20, Lti/modules/titanium/xml/DocumentProxyBindingGen$9;

    const-string v6, "createTextNode"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$9;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 379
    .local v20, createTextNode_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "createTextNode"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v20

    .line 380
    goto/16 :goto_0

    .line 383
    .end local v20           #createTextNode_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v6, "createElementNS"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 384
    new-instance v16, Lti/modules/titanium/xml/DocumentProxyBindingGen$10;

    const-string v6, "createElementNS"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$10;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 418
    .local v16, createElementNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "createElementNS"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v16

    .line 419
    goto/16 :goto_0

    .line 422
    .end local v16           #createElementNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v6, "getDoctype"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 423
    new-instance v21, Lti/modules/titanium/xml/DocumentProxyBindingGen$11;

    const-string v6, "getDoctype"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$11;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 438
    .local v21, getDoctype_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getDoctype"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v21

    .line 439
    goto/16 :goto_0

    .line 442
    .end local v21           #getDoctype_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v6, "createDocumentFragment"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 443
    new-instance v15, Lti/modules/titanium/xml/DocumentProxyBindingGen$12;

    const-string v6, "createDocumentFragment"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$12;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 458
    .local v15, createDocumentFragment_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "createDocumentFragment"

    invoke-virtual {v6, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v15

    .line 459
    goto/16 :goto_0

    .line 462
    .end local v15           #createDocumentFragment_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v6, "createComment"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 463
    new-instance v14, Lti/modules/titanium/xml/DocumentProxyBindingGen$13;

    const-string v6, "createComment"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$13;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 488
    .local v14, createComment_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "createComment"

    invoke-virtual {v6, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v14

    .line 489
    goto/16 :goto_0

    .line 492
    .end local v14           #createComment_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v6, "createAttributeNS"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 493
    new-instance v11, Lti/modules/titanium/xml/DocumentProxyBindingGen$14;

    const-string v6, "createAttributeNS"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$14;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 527
    .local v11, createAttributeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "createAttributeNS"

    invoke-virtual {v6, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v11

    .line 528
    goto/16 :goto_0

    .line 531
    .end local v11           #createAttributeNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v6, "getDocumentElement"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 532
    new-instance v22, Lti/modules/titanium/xml/DocumentProxyBindingGen$15;

    const-string v6, "getDocumentElement"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$15;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 547
    .local v22, getDocumentElement_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getDocumentElement"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v22

    .line 548
    goto/16 :goto_0

    .line 551
    .end local v22           #getDocumentElement_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    const-string v6, "getElementsByTagName"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 552
    new-instance v25, Lti/modules/titanium/xml/DocumentProxyBindingGen$16;

    const-string v6, "getElementsByTagName"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$16;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 577
    .local v25, getElementsByTagName_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getElementsByTagName"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v25

    .line 578
    goto/16 :goto_0

    .line 581
    .end local v25           #getElementsByTagName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_10
    const-string v6, "createAttribute"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 582
    new-instance v12, Lti/modules/titanium/xml/DocumentProxyBindingGen$17;

    const-string v6, "createAttribute"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$17;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 607
    .local v12, createAttribute_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "createAttribute"

    invoke-virtual {v6, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v12

    .line 608
    goto/16 :goto_0

    .line 611
    .end local v12           #createAttribute_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_11
    const-string v6, "createCDATASection"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 612
    new-instance v13, Lti/modules/titanium/xml/DocumentProxyBindingGen$18;

    const-string v6, "createCDATASection"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$18;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 637
    .local v13, createCDATASection_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "createCDATASection"

    invoke-virtual {v6, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v13

    .line 638
    goto/16 :goto_0

    .line 641
    .end local v13           #createCDATASection_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_12
    const-string v6, "createProcessingInstruction"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 642
    new-instance v19, Lti/modules/titanium/xml/DocumentProxyBindingGen$19;

    const-string v6, "createProcessingInstruction"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$19;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 676
    .local v19, createProcessingInstruction_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "createProcessingInstruction"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v19

    .line 677
    goto/16 :goto_0

    .line 680
    .end local v19           #createProcessingInstruction_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_13
    const-string v6, "createElement"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 681
    new-instance v17, Lti/modules/titanium/xml/DocumentProxyBindingGen$20;

    const-string v6, "createElement"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxyBindingGen$20;-><init>(Lti/modules/titanium/xml/DocumentProxyBindingGen;Ljava/lang/String;)V

    .line 706
    .local v17, createElement_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "createElement"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v17

    .line 707
    goto/16 :goto_0

    .line 711
    .end local v17           #createElement_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_14
    invoke-super/range {p0 .. p1}, Lti/modules/titanium/xml/NodeProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    const-string v0, "ti.modules.titanium.xml.DocumentProxy"

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
    .line 735
    const-class v0, Lti/modules/titanium/xml/DocumentProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    const-string v0, "Document"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 731
    const/4 v0, 0x0

    return-object v0
.end method
