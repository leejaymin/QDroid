.class public Lti/modules/titanium/xml/CharacterDataProxyBindingGen;
.super Lti/modules/titanium/xml/NodeProxyBindingGen;
.source "CharacterDataProxyBindingGen.java"


# static fields
.field private static final DYNPROP_data:Ljava/lang/String; = "data"

.field private static final DYNPROP_length:Ljava/lang/String; = "length"

.field private static final FULL_API_NAME:Ljava/lang/String; = "CharacterData"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.CharacterDataProxy"

.field private static final METHOD_appendData:Ljava/lang/String; = "appendData"

.field private static final METHOD_deleteData:Ljava/lang/String; = "deleteData"

.field private static final METHOD_getData:Ljava/lang/String; = "getData"

.field private static final METHOD_getLength:Ljava/lang/String; = "getLength"

.field private static final METHOD_insertData:Ljava/lang/String; = "insertData"

.field private static final METHOD_replaceData:Ljava/lang/String; = "replaceData"

.field private static final METHOD_setData:Ljava/lang/String; = "setData"

.field private static final METHOD_substringData:Ljava/lang/String; = "substringData"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "CharacterData"

.field private static final TAG:Ljava/lang/String; = "CharacterDataProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lti/modules/titanium/xml/NodeProxyBindingGen;-><init>()V

    .line 56
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "replaceData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "deleteData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getLength"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "appendData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "insertData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "substringData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 70
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    const-string v0, "CharacterData"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 19
    .parameter "name"

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 75
    .local v18, value:Ljava/lang/Object;
    if-eqz v18, :cond_0

    move-object/from16 v5, v18

    .line 416
    :goto_0
    return-object v5

    .line 84
    :cond_0
    const-string v5, "data"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    new-instance v3, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$1;

    const-string v5, "data"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$1;-><init>(Lti/modules/titanium/xml/CharacterDataProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 123
    .local v3, data_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 124
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "data"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 126
    goto :goto_0

    .line 129
    .end local v3           #data_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v5, "length"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    new-instance v4, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$2;

    const-string v6, "length"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$2;-><init>(Lti/modules/titanium/xml/CharacterDataProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 153
    .local v4, length_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 154
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "length"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 156
    goto :goto_0

    .line 160
    .end local v4           #length_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v5, "replaceData"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    new-instance v15, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$3;

    const-string v5, "replaceData"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$3;-><init>(Lti/modules/titanium/xml/CharacterDataProxyBindingGen;Ljava/lang/String;)V

    .line 202
    .local v15, replaceData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "replaceData"

    invoke-virtual {v5, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v15

    .line 203
    goto/16 :goto_0

    .line 206
    .end local v15           #replaceData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v5, "getData"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 207
    new-instance v12, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$4;

    const-string v5, "getData"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$4;-><init>(Lti/modules/titanium/xml/CharacterDataProxyBindingGen;Ljava/lang/String;)V

    .line 222
    .local v12, getData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getData"

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v12

    .line 223
    goto/16 :goto_0

    .line 226
    .end local v12           #getData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v5, "deleteData"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 227
    new-instance v11, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$5;

    const-string v5, "deleteData"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$5;-><init>(Lti/modules/titanium/xml/CharacterDataProxyBindingGen;Ljava/lang/String;)V

    .line 259
    .local v11, deleteData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "deleteData"

    invoke-virtual {v5, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v11

    .line 260
    goto/16 :goto_0

    .line 263
    .end local v11           #deleteData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v5, "getLength"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 264
    new-instance v13, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$6;

    const-string v5, "getLength"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$6;-><init>(Lti/modules/titanium/xml/CharacterDataProxyBindingGen;Ljava/lang/String;)V

    .line 279
    .local v13, getLength_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getLength"

    invoke-virtual {v5, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v13

    .line 280
    goto/16 :goto_0

    .line 283
    .end local v13           #getLength_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v5, "appendData"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 284
    new-instance v10, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$7;

    const-string v5, "appendData"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$7;-><init>(Lti/modules/titanium/xml/CharacterDataProxyBindingGen;Ljava/lang/String;)V

    .line 307
    .local v10, appendData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "appendData"

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v10

    .line 308
    goto/16 :goto_0

    .line 311
    .end local v10           #appendData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v5, "setData"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 312
    new-instance v16, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$8;

    const-string v5, "setData"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$8;-><init>(Lti/modules/titanium/xml/CharacterDataProxyBindingGen;Ljava/lang/String;)V

    .line 335
    .local v16, setData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "setData"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    .line 336
    goto/16 :goto_0

    .line 339
    .end local v16           #setData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v5, "insertData"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 340
    new-instance v14, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$9;

    const-string v5, "insertData"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$9;-><init>(Lti/modules/titanium/xml/CharacterDataProxyBindingGen;Ljava/lang/String;)V

    .line 372
    .local v14, insertData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "insertData"

    invoke-virtual {v5, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v14

    .line 373
    goto/16 :goto_0

    .line 376
    .end local v14           #insertData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v5, "substringData"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 377
    new-instance v17, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$10;

    const-string v5, "substringData"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/CharacterDataProxyBindingGen$10;-><init>(Lti/modules/titanium/xml/CharacterDataProxyBindingGen;Ljava/lang/String;)V

    .line 411
    .local v17, substringData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/CharacterDataProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "substringData"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    .line 412
    goto/16 :goto_0

    .line 416
    .end local v17           #substringData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    invoke-super/range {p0 .. p1}, Lti/modules/titanium/xml/NodeProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    const-string v0, "ti.modules.titanium.xml.CharacterDataProxy"

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
    .line 440
    const-class v0, Lti/modules/titanium/xml/CharacterDataProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    const-string v0, "CharacterData"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 436
    const/4 v0, 0x0

    return-object v0
.end method
