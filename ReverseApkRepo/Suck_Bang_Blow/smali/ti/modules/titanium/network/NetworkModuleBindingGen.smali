.class public Lti/modules/titanium/network/NetworkModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "NetworkModuleBindingGen.java"


# static fields
.field private static final CREATE_HTTPClient:Ljava/lang/String; = "createHTTPClient"

.field private static final DYNPROP_networkType:Ljava/lang/String; = "networkType"

.field private static final DYNPROP_networkTypeName:Ljava/lang/String; = "networkTypeName"

.field private static final DYNPROP_online:Ljava/lang/String; = "online"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Network"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.network.NetworkModule"

.field private static final METHOD_decodeURIComponent:Ljava/lang/String; = "decodeURIComponent"

.field private static final METHOD_encodeURIComponent:Ljava/lang/String; = "encodeURIComponent"

.field private static final METHOD_getNetworkType:Ljava/lang/String; = "getNetworkType"

.field private static final METHOD_getNetworkTypeName:Ljava/lang/String; = "getNetworkTypeName"

.field private static final METHOD_getOnline:Ljava/lang/String; = "getOnline"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Network"

.field private static final TAG:Ljava/lang/String; = "NetworkModuleBindingGen"

.field private static final TOP_LEVEL_METHOD_decodeURIComponent:Ljava/lang/String; = "decodeURIComponent"

.field private static final TOP_LEVEL_METHOD_encodeURIComponent:Ljava/lang/String; = "encodeURIComponent"

.field private static final TOP_LEVEL_decodeURIComponent:Ljava/lang/String; = "decodeURIComponent"

.field private static final TOP_LEVEL_encodeURIComponent:Ljava/lang/String; = "encodeURIComponent"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 59
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createHTTPClient"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "networkType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "online"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "networkTypeName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNetworkType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getOnline"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNetworkTypeName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "encodeURIComponent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "decodeURIComponent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    const-string v2, "encodeURIComponent"

    const-string v1, "decodeURIComponent"

    .line 72
    const-string v0, "encodeURIComponent"

    const-string v0, "encodeURIComponent"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v0, "decodeURIComponent"

    const-string v0, "decodeURIComponent"

    invoke-virtual {p2, v1}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    const-string v0, "Network"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 19
    .parameter "name"

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 79
    .local v18, value:Ljava/lang/Object;
    if-eqz v18, :cond_0

    move-object/from16 v6, v18

    .line 311
    :goto_0
    return-object v6

    .line 84
    :cond_0
    const-string v6, "createHTTPClient"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    new-instance v12, Lti/modules/titanium/network/NetworkModuleBindingGen$1;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lti/modules/titanium/network/NetworkModuleBindingGen$1;-><init>(Lti/modules/titanium/network/NetworkModuleBindingGen;)V

    .line 90
    .local v12, creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    const-string v6, "createHTTPClient"

    invoke-static {v6, v12}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createCreateMethod(Ljava/lang/String;Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v11

    .line 91
    .local v11, createHTTPClient_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "createHTTPClient"

    invoke-virtual {v6, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v11

    .line 92
    goto :goto_0

    .line 99
    .end local v11           #createHTTPClient_method:Lorg/appcelerator/kroll/KrollMethod;
    .end local v12           #creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    :cond_1
    const-string v6, "networkType"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 100
    new-instance v3, Lti/modules/titanium/network/NetworkModuleBindingGen$2;

    const-string v5, "networkType"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/network/NetworkModuleBindingGen$2;-><init>(Lti/modules/titanium/network/NetworkModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 123
    .local v3, networkType_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 124
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "networkType"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v3

    .line 126
    goto :goto_0

    .line 129
    .end local v3           #networkType_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v6, "online"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 130
    new-instance v4, Lti/modules/titanium/network/NetworkModuleBindingGen$3;

    const-string v6, "online"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/network/NetworkModuleBindingGen$3;-><init>(Lti/modules/titanium/network/NetworkModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 153
    .local v4, online_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 154
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "online"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v4

    .line 156
    goto/16 :goto_0

    .line 159
    .end local v4           #online_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v6, "networkTypeName"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 160
    new-instance v5, Lti/modules/titanium/network/NetworkModuleBindingGen$4;

    const-string v7, "networkTypeName"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/network/NetworkModuleBindingGen$4;-><init>(Lti/modules/titanium/network/NetworkModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 183
    .local v5, networkTypeName_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 184
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "networkTypeName"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 186
    goto/16 :goto_0

    .line 190
    .end local v5           #networkTypeName_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v6, "getNetworkType"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 191
    new-instance v16, Lti/modules/titanium/network/NetworkModuleBindingGen$5;

    const-string v6, "getNetworkType"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/NetworkModuleBindingGen$5;-><init>(Lti/modules/titanium/network/NetworkModuleBindingGen;Ljava/lang/String;)V

    .line 206
    .local v16, getNetworkType_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getNetworkType"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v16

    .line 207
    goto/16 :goto_0

    .line 210
    .end local v16           #getNetworkType_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v6, "getOnline"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 211
    new-instance v17, Lti/modules/titanium/network/NetworkModuleBindingGen$6;

    const-string v6, "getOnline"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/NetworkModuleBindingGen$6;-><init>(Lti/modules/titanium/network/NetworkModuleBindingGen;Ljava/lang/String;)V

    .line 226
    .local v17, getOnline_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getOnline"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v17

    .line 227
    goto/16 :goto_0

    .line 230
    .end local v17           #getOnline_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v6, "getNetworkTypeName"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 231
    new-instance v15, Lti/modules/titanium/network/NetworkModuleBindingGen$7;

    const-string v6, "getNetworkTypeName"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/NetworkModuleBindingGen$7;-><init>(Lti/modules/titanium/network/NetworkModuleBindingGen;Ljava/lang/String;)V

    .line 246
    .local v15, getNetworkTypeName_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getNetworkTypeName"

    invoke-virtual {v6, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v15

    .line 247
    goto/16 :goto_0

    .line 250
    .end local v15           #getNetworkTypeName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v6, "encodeURIComponent"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 251
    new-instance v14, Lti/modules/titanium/network/NetworkModuleBindingGen$8;

    const-string v6, "encodeURIComponent"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/NetworkModuleBindingGen$8;-><init>(Lti/modules/titanium/network/NetworkModuleBindingGen;Ljava/lang/String;)V

    .line 276
    .local v14, encodeURIComponent_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "encodeURIComponent"

    invoke-virtual {v6, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v14

    .line 277
    goto/16 :goto_0

    .line 280
    .end local v14           #encodeURIComponent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v6, "decodeURIComponent"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 281
    new-instance v13, Lti/modules/titanium/network/NetworkModuleBindingGen$9;

    const-string v6, "decodeURIComponent"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/network/NetworkModuleBindingGen$9;-><init>(Lti/modules/titanium/network/NetworkModuleBindingGen;Ljava/lang/String;)V

    .line 306
    .local v13, decodeURIComponent_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/NetworkModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "decodeURIComponent"

    invoke-virtual {v6, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v13

    .line 307
    goto/16 :goto_0

    .line 311
    .end local v13           #decodeURIComponent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    const-string v0, "ti.modules.titanium.network.NetworkModule"

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
    .line 335
    const-class v0, Lti/modules/titanium/network/NetworkModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const-string v0, "Network"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 331
    new-instance v0, Lti/modules/titanium/network/NetworkModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/network/NetworkModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
