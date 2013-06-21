.class public Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;
.super Lti/modules/titanium/xml/NodeProxyBindingGen;
.source "DocumentTypeProxyBindingGen.java"


# static fields
.field private static final DYNPROP_documentType:Ljava/lang/String; = "documentType"

.field private static final DYNPROP_entities:Ljava/lang/String; = "entities"

.field private static final DYNPROP_internalSubset:Ljava/lang/String; = "internalSubset"

.field private static final DYNPROP_name:Ljava/lang/String; = "name"

.field private static final DYNPROP_notations:Ljava/lang/String; = "notations"

.field private static final DYNPROP_publicId:Ljava/lang/String; = "publicId"

.field private static final DYNPROP_systemId:Ljava/lang/String; = "systemId"

.field private static final FULL_API_NAME:Ljava/lang/String; = "DocumentType"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.DocumentTypeProxy"

.field private static final METHOD_getDocumentType:Ljava/lang/String; = "getDocumentType"

.field private static final METHOD_getEntities:Ljava/lang/String; = "getEntities"

.field private static final METHOD_getInternalSubset:Ljava/lang/String; = "getInternalSubset"

.field private static final METHOD_getName:Ljava/lang/String; = "getName"

.field private static final METHOD_getNotations:Ljava/lang/String; = "getNotations"

.field private static final METHOD_getPublicId:Ljava/lang/String; = "getPublicId"

.field private static final METHOD_getSystemId:Ljava/lang/String; = "getSystemId"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "DocumentType"

.field private static final TAG:Ljava/lang/String; = "DocumentTypeProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Lti/modules/titanium/xml/NodeProxyBindingGen;-><init>()V

    .line 60
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "documentType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "internalSubset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "notations"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "publicId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "systemId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "entities"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getEntities"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getDocumentType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getPublicId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getInternalSubset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getSystemId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNotations"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 78
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    const-string v0, "DocumentType"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 23
    .parameter "name"

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 83
    .local v22, value:Ljava/lang/Object;
    if-eqz v22, :cond_0

    move-object/from16 v10, v22

    .line 444
    :goto_0
    return-object v10

    .line 92
    :cond_0
    const-string v10, "documentType"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 93
    new-instance v3, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$1;

    const-string v5, "documentType"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$1;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 116
    .local v3, documentType_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 117
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "documentType"

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v3

    .line 119
    goto :goto_0

    .line 122
    .end local v3           #documentType_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v10, "internalSubset"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 123
    new-instance v4, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$2;

    const-string v6, "internalSubset"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$2;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 146
    .local v4, internalSubset_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 147
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "internalSubset"

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v4

    .line 149
    goto :goto_0

    .line 152
    .end local v4           #internalSubset_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v10, "name"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 153
    new-instance v5, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$3;

    const-string v7, "name"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$3;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 176
    .local v5, name_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 177
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "name"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v5

    .line 179
    goto/16 :goto_0

    .line 182
    .end local v5           #name_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v10, "notations"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 183
    new-instance v6, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$4;

    const-string v8, "notations"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$4;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 206
    .local v6, notations_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 207
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "notations"

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v6

    .line 209
    goto/16 :goto_0

    .line 212
    .end local v6           #notations_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v10, "publicId"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 213
    new-instance v7, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$5;

    const-string v9, "publicId"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$5;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 236
    .local v7, publicId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 237
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "publicId"

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v7

    .line 239
    goto/16 :goto_0

    .line 242
    .end local v7           #publicId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_5
    const-string v10, "systemId"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 243
    new-instance v8, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$6;

    const-string v10, "systemId"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$6;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 266
    .local v8, systemId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 267
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "systemId"

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v8

    .line 269
    goto/16 :goto_0

    .line 272
    .end local v8           #systemId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_6
    const-string v10, "entities"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 273
    new-instance v9, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$7;

    const-string v11, "entities"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$7;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 296
    .local v9, entities_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 297
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "entities"

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    .line 299
    goto/16 :goto_0

    .line 303
    .end local v9           #entities_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_7
    const-string v10, "getEntities"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 304
    new-instance v16, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$8;

    const-string v10, "getEntities"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$8;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;)V

    .line 319
    .local v16, getEntities_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getEntities"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v16

    .line 320
    goto/16 :goto_0

    .line 323
    .end local v16           #getEntities_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v10, "getDocumentType"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 324
    new-instance v15, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$9;

    const-string v10, "getDocumentType"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$9;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;)V

    .line 339
    .local v15, getDocumentType_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getDocumentType"

    invoke-virtual {v10, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v15

    .line 340
    goto/16 :goto_0

    .line 343
    .end local v15           #getDocumentType_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v10, "getName"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 344
    new-instance v18, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$10;

    const-string v10, "getName"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$10;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;)V

    .line 359
    .local v18, getName_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getName"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v18

    .line 360
    goto/16 :goto_0

    .line 363
    .end local v18           #getName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v10, "getPublicId"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 364
    new-instance v20, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$11;

    const-string v10, "getPublicId"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$11;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;)V

    .line 379
    .local v20, getPublicId_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getPublicId"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v20

    .line 380
    goto/16 :goto_0

    .line 383
    .end local v20           #getPublicId_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v10, "getInternalSubset"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 384
    new-instance v17, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$12;

    const-string v10, "getInternalSubset"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$12;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;)V

    .line 399
    .local v17, getInternalSubset_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getInternalSubset"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v17

    .line 400
    goto/16 :goto_0

    .line 403
    .end local v17           #getInternalSubset_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v10, "getSystemId"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 404
    new-instance v21, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$13;

    const-string v10, "getSystemId"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$13;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;)V

    .line 419
    .local v21, getSystemId_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getSystemId"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v21

    .line 420
    goto/16 :goto_0

    .line 423
    .end local v21           #getSystemId_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v10, "getNotations"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 424
    new-instance v19, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$14;

    const-string v10, "getNotations"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen$14;-><init>(Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;Ljava/lang/String;)V

    .line 439
    .local v19, getNotations_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/DocumentTypeProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getNotations"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v19

    .line 440
    goto/16 :goto_0

    .line 444
    .end local v19           #getNotations_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    invoke-super/range {p0 .. p1}, Lti/modules/titanium/xml/NodeProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    const-string v0, "ti.modules.titanium.xml.DocumentTypeProxy"

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
    .line 468
    const-class v0, Lti/modules/titanium/xml/DocumentTypeProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    const-string v0, "DocumentType"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 464
    const/4 v0, 0x0

    return-object v0
.end method
