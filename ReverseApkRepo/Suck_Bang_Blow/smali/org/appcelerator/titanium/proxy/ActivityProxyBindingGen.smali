.class public Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "ActivityProxyBindingGen.java"


# static fields
.field private static final DYNPROP_intent:Ljava/lang/String; = "intent"

.field private static final DYNPROP_requestedOrientation:Ljava/lang/String; = "requestedOrientation"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Activity"

.field private static final ID:Ljava/lang/String; = "org.appcelerator.titanium.proxy.ActivityProxy"

.field private static final METHOD_finish:Ljava/lang/String; = "finish"

.field private static final METHOD_getIntent:Ljava/lang/String; = "getIntent"

.field private static final METHOD_getString:Ljava/lang/String; = "getString"

.field private static final METHOD_setRequestedOrientation:Ljava/lang/String; = "setRequestedOrientation"

.field private static final METHOD_setResult:Ljava/lang/String; = "setResult"

.field private static final METHOD_startActivity:Ljava/lang/String; = "startActivity"

.field private static final METHOD_startActivityForResult:Ljava/lang/String; = "startActivityForResult"

.field private static final METHOD_startActivityFromChild:Ljava/lang/String; = "startActivityFromChild"

.field private static final METHOD_startActivityIfNeeded:Ljava/lang/String; = "startActivityIfNeeded"

.field private static final METHOD_startNextMatchingActivity:Ljava/lang/String; = "startNextMatchingActivity"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Activity"

.field private static final TAG:Ljava/lang/String; = "ActivityProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 58
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "requestedOrientation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "intent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setRequestedOrientation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "finish"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "startActivityForResult"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "startNextMatchingActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setResult"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "startActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getString"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "startActivityIfNeeded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "startActivityFromChild"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 74
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    const-string v0, "Activity"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 21
    .parameter "name"

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 79
    .local v20, value:Ljava/lang/Object;
    if-eqz v20, :cond_0

    move-object/from16 v5, v20

    .line 502
    :goto_0
    return-object v5

    .line 88
    :cond_0
    const-string v5, "requestedOrientation"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    new-instance v3, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$1;

    const-string v5, "requestedOrientation"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$1;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 121
    .local v3, requestedOrientation_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 122
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "requestedOrientation"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 124
    goto :goto_0

    .line 127
    .end local v3           #requestedOrientation_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v5, "intent"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 128
    new-instance v4, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$2;

    const-string v6, "intent"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$2;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 151
    .local v4, intent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 152
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "intent"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 154
    goto :goto_0

    .line 158
    .end local v4           #intent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v5, "setRequestedOrientation"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 159
    new-instance v13, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$3;

    const-string v5, "setRequestedOrientation"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$3;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;)V

    .line 184
    .local v13, setRequestedOrientation_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "setRequestedOrientation"

    invoke-virtual {v5, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v13

    .line 185
    goto/16 :goto_0

    .line 188
    .end local v13           #setRequestedOrientation_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v5, "getIntent"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    new-instance v11, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$4;

    const-string v5, "getIntent"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$4;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;)V

    .line 204
    .local v11, getIntent_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getIntent"

    invoke-virtual {v5, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v11

    .line 205
    goto/16 :goto_0

    .line 208
    .end local v11           #getIntent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v5, "finish"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 209
    new-instance v10, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$5;

    const-string v5, "finish"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$5;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;)V

    .line 224
    .local v10, finish_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "finish"

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v10

    .line 225
    goto/16 :goto_0

    .line 228
    .end local v10           #finish_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v5, "startActivityForResult"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 229
    new-instance v15, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$6;

    const-string v5, "startActivityForResult"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$6;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;)V

    .line 263
    .local v15, startActivityForResult_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "startActivityForResult"

    invoke-virtual {v5, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v15

    .line 264
    goto/16 :goto_0

    .line 267
    .end local v15           #startActivityForResult_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v5, "startNextMatchingActivity"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 268
    new-instance v19, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$7;

    const-string v5, "startNextMatchingActivity"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$7;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;)V

    .line 295
    .local v19, startNextMatchingActivity_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "startNextMatchingActivity"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v19

    .line 296
    goto/16 :goto_0

    .line 299
    .end local v19           #startNextMatchingActivity_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v5, "setResult"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 300
    new-instance v14, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$8;

    const-string v5, "setResult"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$8;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;)V

    .line 340
    .local v14, setResult_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "setResult"

    invoke-virtual {v5, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v14

    .line 341
    goto/16 :goto_0

    .line 344
    .end local v14           #setResult_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v5, "startActivity"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 345
    new-instance v18, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$9;

    const-string v5, "startActivity"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$9;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;)V

    .line 370
    .local v18, startActivity_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "startActivity"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v18

    .line 371
    goto/16 :goto_0

    .line 374
    .end local v18           #startActivity_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v5, "getString"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 375
    new-instance v12, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$10;

    const-string v5, "getString"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$10;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;)V

    .line 408
    .local v12, getString_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getString"

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v12

    .line 409
    goto/16 :goto_0

    .line 412
    .end local v12           #getString_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v5, "startActivityIfNeeded"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 413
    new-instance v17, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$11;

    const-string v5, "startActivityIfNeeded"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$11;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;)V

    .line 449
    .local v17, startActivityIfNeeded_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "startActivityIfNeeded"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    .line 450
    goto/16 :goto_0

    .line 453
    .end local v17           #startActivityIfNeeded_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v5, "startActivityFromChild"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 454
    new-instance v16, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$12;

    const-string v5, "startActivityFromChild"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$12;-><init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;)V

    .line 497
    .local v16, startActivityFromChild_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "startActivityFromChild"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    .line 498
    goto/16 :goto_0

    .line 502
    .end local v16           #startActivityFromChild_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    const-string v0, "org.appcelerator.titanium.proxy.ActivityProxy"

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
    .line 526
    const-class v0, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    const-string v0, "Activity"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 522
    const/4 v0, 0x0

    return-object v0
.end method
