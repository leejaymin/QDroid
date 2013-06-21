.class public Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "IntentProxyBindingGen.java"


# static fields
.field private static final DYNPROP_data:Ljava/lang/String; = "data"

.field private static final DYNPROP_flags:Ljava/lang/String; = "flags"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Intent"

.field private static final ID:Ljava/lang/String; = "org.appcelerator.titanium.proxy.IntentProxy"

.field private static final METHOD_addCategory:Ljava/lang/String; = "addCategory"

.field private static final METHOD_addFlags:Ljava/lang/String; = "addFlags"

.field private static final METHOD_getBooleanExtra:Ljava/lang/String; = "getBooleanExtra"

.field private static final METHOD_getData:Ljava/lang/String; = "getData"

.field private static final METHOD_getDoubleExtra:Ljava/lang/String; = "getDoubleExtra"

.field private static final METHOD_getFlags:Ljava/lang/String; = "getFlags"

.field private static final METHOD_getIntExtra:Ljava/lang/String; = "getIntExtra"

.field private static final METHOD_getLongExtra:Ljava/lang/String; = "getLongExtra"

.field private static final METHOD_getStringExtra:Ljava/lang/String; = "getStringExtra"

.field private static final METHOD_hasExtra:Ljava/lang/String; = "hasExtra"

.field private static final METHOD_putExtra:Ljava/lang/String; = "putExtra"

.field private static final METHOD_putExtraUri:Ljava/lang/String; = "putExtraUri"

.field private static final METHOD_setFlags:Ljava/lang/String; = "setFlags"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Intent"

.field private static final TAG:Ljava/lang/String; = "IntentProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 61
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "flags"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getStringExtra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "putExtra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setFlags"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hasExtra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "addFlags"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "putExtraUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getFlags"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getLongExtra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getBooleanExtra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "addCategory"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getDoubleExtra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getIntExtra"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 80
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    const-string v0, "Intent"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 24
    .parameter "name"

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 85
    .local v23, value:Ljava/lang/Object;
    if-eqz v23, :cond_0

    move-object/from16 v5, v23

    .line 585
    :goto_0
    return-object v5

    .line 94
    :cond_0
    const-string v5, "flags"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    new-instance v3, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$1;

    const-string v5, "flags"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$1;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 133
    .local v3, flags_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 134
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "flags"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 136
    goto :goto_0

    .line 139
    .end local v3           #flags_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v5, "data"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    new-instance v4, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$2;

    const-string v6, "data"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$2;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 163
    .local v4, data_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 164
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "data"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 166
    goto :goto_0

    .line 170
    .end local v4           #data_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v5, "getStringExtra"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    new-instance v18, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$3;

    const-string v5, "getStringExtra"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$3;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 196
    .local v18, getStringExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getStringExtra"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v18

    .line 197
    goto/16 :goto_0

    .line 200
    .end local v18           #getStringExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v5, "putExtra"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 201
    new-instance v21, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$4;

    const-string v5, "putExtra"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$4;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 233
    .local v21, putExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "putExtra"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v21

    .line 234
    goto/16 :goto_0

    .line 237
    .end local v21           #putExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v5, "setFlags"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 238
    new-instance v22, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$5;

    const-string v5, "setFlags"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$5;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 261
    .local v22, setFlags_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "setFlags"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v22

    .line 262
    goto/16 :goto_0

    .line 265
    .end local v22           #setFlags_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v5, "hasExtra"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 266
    new-instance v19, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$6;

    const-string v5, "hasExtra"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$6;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 291
    .local v19, hasExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "hasExtra"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v19

    .line 292
    goto/16 :goto_0

    .line 295
    .end local v19           #hasExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v5, "addFlags"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 296
    new-instance v11, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$7;

    const-string v5, "addFlags"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$7;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 319
    .local v11, addFlags_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "addFlags"

    invoke-virtual {v5, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v11

    .line 320
    goto/16 :goto_0

    .line 323
    .end local v11           #addFlags_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v5, "putExtraUri"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 324
    new-instance v20, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$8;

    const-string v5, "putExtraUri"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$8;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 356
    .local v20, putExtraUri_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "putExtraUri"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v20

    .line 357
    goto/16 :goto_0

    .line 360
    .end local v20           #putExtraUri_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v5, "getFlags"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 361
    new-instance v15, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$9;

    const-string v5, "getFlags"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$9;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 376
    .local v15, getFlags_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getFlags"

    invoke-virtual {v5, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v15

    .line 377
    goto/16 :goto_0

    .line 380
    .end local v15           #getFlags_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v5, "getLongExtra"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 381
    new-instance v17, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$10;

    const-string v5, "getLongExtra"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$10;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 415
    .local v17, getLongExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getLongExtra"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    .line 416
    goto/16 :goto_0

    .line 419
    .end local v17           #getLongExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v5, "getBooleanExtra"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 420
    new-instance v12, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$11;

    const-string v5, "getBooleanExtra"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$11;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 454
    .local v12, getBooleanExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getBooleanExtra"

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v12

    .line 455
    goto/16 :goto_0

    .line 458
    .end local v12           #getBooleanExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v5, "addCategory"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 459
    new-instance v10, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$12;

    const-string v5, "addCategory"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$12;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 482
    .local v10, addCategory_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "addCategory"

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v10

    .line 483
    goto/16 :goto_0

    .line 486
    .end local v10           #addCategory_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v5, "getDoubleExtra"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 487
    new-instance v14, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$13;

    const-string v5, "getDoubleExtra"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$13;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 521
    .local v14, getDoubleExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getDoubleExtra"

    invoke-virtual {v5, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v14

    .line 522
    goto/16 :goto_0

    .line 525
    .end local v14           #getDoubleExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v5, "getData"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 526
    new-instance v13, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$14;

    const-string v5, "getData"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$14;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 541
    .local v13, getData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getData"

    invoke-virtual {v5, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v13

    .line 542
    goto/16 :goto_0

    .line 545
    .end local v13           #getData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v5, "getIntExtra"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 546
    new-instance v16, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$15;

    const-string v5, "getIntExtra"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$15;-><init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V

    .line 580
    .local v16, getIntExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getIntExtra"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    .line 581
    goto/16 :goto_0

    .line 585
    .end local v16           #getIntExtra_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    const-string v0, "org.appcelerator.titanium.proxy.IntentProxy"

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
    .line 609
    const-class v0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    const-string v0, "Intent"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 605
    const/4 v0, 0x0

    return-object v0
.end method
