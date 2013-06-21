.class public Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "NamedNodeMapProxyBindingGen.java"


# static fields
.field private static final DYNPROP_length:Ljava/lang/String; = "length"

.field private static final FULL_API_NAME:Ljava/lang/String; = "NamedNodeMap"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.NamedNodeMapProxy"

.field private static final METHOD_getLength:Ljava/lang/String; = "getLength"

.field private static final METHOD_getNamedItem:Ljava/lang/String; = "getNamedItem"

.field private static final METHOD_getNamedItemNS:Ljava/lang/String; = "getNamedItemNS"

.field private static final METHOD_item:Ljava/lang/String; = "item"

.field private static final METHOD_removeNamedItem:Ljava/lang/String; = "removeNamedItem"

.field private static final METHOD_removeNamedItemNS:Ljava/lang/String; = "removeNamedItemNS"

.field private static final METHOD_setNamedItem:Ljava/lang/String; = "setNamedItem"

.field private static final METHOD_setNamedItemNS:Ljava/lang/String; = "setNamedItemNS"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "NamedNodeMap"

.field private static final TAG:Ljava/lang/String; = "NamedNodeMapProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 55
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNamedItem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setNamedItemNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeNamedItemNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNamedItemNS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "item"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setNamedItem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getLength"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeNamedItem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 68
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    const-string v0, "NamedNodeMap"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 18
    .parameter "name"

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 73
    .local v17, value:Ljava/lang/Object;
    if-eqz v17, :cond_0

    move-object/from16 v4, v17

    .line 362
    :goto_0
    return-object v4

    .line 82
    :cond_0
    const-string v4, "length"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    new-instance v3, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$1;

    const-string v5, "length"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$1;-><init>(Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 106
    .local v3, length_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 107
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "length"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 109
    goto :goto_0

    .line 113
    .end local v3           #length_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v4, "getNamedItem"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    new-instance v11, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$2;

    const-string v4, "getNamedItem"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$2;-><init>(Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;Ljava/lang/String;)V

    .line 139
    .local v11, getNamedItem_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "getNamedItem"

    invoke-virtual {v4, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v11

    .line 140
    goto :goto_0

    .line 143
    .end local v11           #getNamedItem_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v4, "setNamedItemNS"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    new-instance v15, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$3;

    const-string v4, "setNamedItemNS"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$3;-><init>(Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;Ljava/lang/String;)V

    .line 169
    .local v15, setNamedItemNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "setNamedItemNS"

    invoke-virtual {v4, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v15

    .line 170
    goto :goto_0

    .line 173
    .end local v15           #setNamedItemNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v4, "removeNamedItemNS"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 174
    new-instance v13, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$4;

    const-string v4, "removeNamedItemNS"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$4;-><init>(Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;Ljava/lang/String;)V

    .line 208
    .local v13, removeNamedItemNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "removeNamedItemNS"

    invoke-virtual {v4, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v13

    .line 209
    goto/16 :goto_0

    .line 212
    .end local v13           #removeNamedItemNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v4, "getNamedItemNS"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 213
    new-instance v10, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$5;

    const-string v4, "getNamedItemNS"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$5;-><init>(Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;Ljava/lang/String;)V

    .line 247
    .local v10, getNamedItemNS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "getNamedItemNS"

    invoke-virtual {v4, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v10

    .line 248
    goto/16 :goto_0

    .line 251
    .end local v10           #getNamedItemNS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v4, "item"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 252
    new-instance v12, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$6;

    const-string v4, "item"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$6;-><init>(Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;Ljava/lang/String;)V

    .line 277
    .local v12, item_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "item"

    invoke-virtual {v4, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v12

    .line 278
    goto/16 :goto_0

    .line 281
    .end local v12           #item_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v4, "setNamedItem"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 282
    new-instance v16, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$7;

    const-string v4, "setNamedItem"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$7;-><init>(Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;Ljava/lang/String;)V

    .line 307
    .local v16, setNamedItem_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "setNamedItem"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v16

    .line 308
    goto/16 :goto_0

    .line 311
    .end local v16           #setNamedItem_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v4, "getLength"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 312
    new-instance v9, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$8;

    const-string v4, "getLength"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$8;-><init>(Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;Ljava/lang/String;)V

    .line 327
    .local v9, getLength_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "getLength"

    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v9

    .line 328
    goto/16 :goto_0

    .line 331
    .end local v9           #getLength_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v4, "removeNamedItem"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 332
    new-instance v14, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$9;

    const-string v4, "removeNamedItem"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen$9;-><init>(Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;Ljava/lang/String;)V

    .line 357
    .local v14, removeNamedItem_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/NamedNodeMapProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "removeNamedItem"

    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v14

    .line 358
    goto/16 :goto_0

    .line 362
    .end local v14           #removeNamedItem_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    const-string v0, "ti.modules.titanium.xml.NamedNodeMapProxy"

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
    .line 386
    const-class v0, Lti/modules/titanium/xml/NamedNodeMapProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const-string v0, "NamedNodeMap"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method
