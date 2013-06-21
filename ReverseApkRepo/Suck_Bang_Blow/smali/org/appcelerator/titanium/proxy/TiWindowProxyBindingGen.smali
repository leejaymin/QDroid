.class public Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;
.source "TiWindowProxyBindingGen.java"


# static fields
.field private static final ACCESSOR_title:Ljava/lang/String; = "title"

.field private static final DYNPROP_activity:Ljava/lang/String; = "activity"

.field private static final DYNPROP_orientationModes:Ljava/lang/String; = "orientationModes"

.field private static final FULL_API_NAME:Ljava/lang/String; = "TiWindow"

.field private static final ID:Ljava/lang/String; = "org.appcelerator.titanium.proxy.TiWindowProxy"

.field private static final METHOD_close:Ljava/lang/String; = "close"

.field private static final METHOD_getActivity:Ljava/lang/String; = "getActivity"

.field private static final METHOD_getOrientationModes:Ljava/lang/String; = "getOrientationModes"

.field private static final METHOD_hideTabBar:Ljava/lang/String; = "hideTabBar"

.field private static final METHOD_open:Ljava/lang/String; = "open"

.field private static final METHOD_setOrientationModes:Ljava/lang/String; = "setOrientationModes"

.field private static final PROP_GET_title:Ljava/lang/String; = "getTitle"

.field private static final PROP_SET_title:Ljava/lang/String; = "setTitle"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "TiWindow"

.field private static final TAG:Ljava/lang/String; = "TiWindowProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;-><init>()V

    .line 57
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "orientationModes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "activity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "open"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getOrientationModes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setOrientationModes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hideTabBar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "close"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getTitle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setTitle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 71
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    const-string v0, "TiWindow"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 19
    .parameter "name"

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 76
    .local v18, value:Ljava/lang/Object;
    if-eqz v18, :cond_0

    move-object/from16 v5, v18

    .line 327
    :goto_0
    return-object v5

    .line 85
    :cond_0
    const-string v5, "orientationModes"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    new-instance v3, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$1;

    const-string v5, "orientationModes"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$1;-><init>(Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 124
    .local v3, orientationModes_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 125
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "orientationModes"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 127
    goto :goto_0

    .line 130
    .end local v3           #orientationModes_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v5, "activity"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    new-instance v4, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$2;

    const-string v6, "activity"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$2;-><init>(Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 156
    .local v4, activity_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 157
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "activity"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 159
    goto :goto_0

    .line 163
    .end local v4           #activity_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v5, "open"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 164
    new-instance v14, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$3;

    const-string v5, "open"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$3;-><init>(Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;Ljava/lang/String;)V

    .line 192
    .local v14, open_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "open"

    invoke-virtual {v5, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v14

    .line 193
    goto/16 :goto_0

    .line 196
    .end local v14           #open_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v5, "getOrientationModes"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 197
    new-instance v12, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$4;

    const-string v5, "getOrientationModes"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$4;-><init>(Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;Ljava/lang/String;)V

    .line 212
    .local v12, getOrientationModes_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getOrientationModes"

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v12

    .line 213
    goto/16 :goto_0

    .line 216
    .end local v12           #getOrientationModes_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v5, "getActivity"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 217
    new-instance v11, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$5;

    const-string v5, "getActivity"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$5;-><init>(Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;Ljava/lang/String;)V

    .line 234
    .local v11, getActivity_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getActivity"

    invoke-virtual {v5, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v11

    .line 235
    goto/16 :goto_0

    .line 238
    .end local v11           #getActivity_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v5, "setOrientationModes"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 239
    new-instance v15, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$6;

    const-string v5, "setOrientationModes"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$6;-><init>(Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;Ljava/lang/String;)V

    .line 262
    .local v15, setOrientationModes_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "setOrientationModes"

    invoke-virtual {v5, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v15

    .line 263
    goto/16 :goto_0

    .line 266
    .end local v15           #setOrientationModes_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v5, "hideTabBar"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 267
    new-instance v13, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$7;

    const-string v5, "hideTabBar"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$7;-><init>(Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;Ljava/lang/String;)V

    .line 280
    .local v13, hideTabBar_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "hideTabBar"

    invoke-virtual {v5, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v13

    .line 281
    goto/16 :goto_0

    .line 284
    .end local v13           #hideTabBar_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v5, "close"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 285
    new-instance v10, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$8;

    const-string v5, "close"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$8;-><init>(Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;Ljava/lang/String;)V

    .line 313
    .local v10, close_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "close"

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v10

    .line 314
    goto/16 :goto_0

    .line 317
    .end local v10           #close_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v5, "setTitle"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 318
    const-string v5, "title"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v17

    .line 319
    .local v17, title_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "setTitle"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    .line 320
    goto/16 :goto_0

    .line 321
    .end local v17           #title_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v5, "getTitle"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 322
    const-string v5, "title"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v16

    .line 323
    .local v16, title_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getTitle"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    .line 324
    goto/16 :goto_0

    .line 327
    .end local v16           #title_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    const-string v0, "org.appcelerator.titanium.proxy.TiWindowProxy"

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
    .line 351
    const-class v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    const-string v0, "TiWindow"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method
