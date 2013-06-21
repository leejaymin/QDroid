.class public Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "MenuProxyBindingGen.java"


# static fields
.field private static final DYNPROP_items:Ljava/lang/String; = "items"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Menu"

.field private static final ID:Ljava/lang/String; = "org.appcelerator.titanium.proxy.MenuProxy"

.field private static final METHOD_add:Ljava/lang/String; = "add"

.field private static final METHOD_clear:Ljava/lang/String; = "clear"

.field private static final METHOD_close:Ljava/lang/String; = "close"

.field private static final METHOD_findItem:Ljava/lang/String; = "findItem"

.field private static final METHOD_getItem:Ljava/lang/String; = "getItem"

.field private static final METHOD_getItems:Ljava/lang/String; = "getItems"

.field private static final METHOD_hasVisibleItems:Ljava/lang/String; = "hasVisibleItems"

.field private static final METHOD_removeGroup:Ljava/lang/String; = "removeGroup"

.field private static final METHOD_removeItem:Ljava/lang/String; = "removeItem"

.field private static final METHOD_setGroupCheckable:Ljava/lang/String; = "setGroupCheckable"

.field private static final METHOD_setGroupEnabled:Ljava/lang/String; = "setGroupEnabled"

.field private static final METHOD_setGroupVisible:Ljava/lang/String; = "setGroupVisible"

.field private static final METHOD_size:Ljava/lang/String; = "size"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Menu"

.field private static final TAG:Ljava/lang/String; = "MenuProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 60
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "items"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setGroupCheckable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setGroupEnabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeItem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeGroup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "add"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "close"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "clear"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hasVisibleItems"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getItem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getItems"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "findItem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setGroupVisible"

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
    .line 494
    const-string v0, "Menu"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 23
    .parameter "name"

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 83
    .local v22, value:Ljava/lang/Object;
    if-eqz v22, :cond_0

    move-object/from16 v4, v22

    .line 486
    :goto_0
    return-object v4

    .line 92
    :cond_0
    const-string v4, "items"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    new-instance v3, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$1;

    const-string v5, "items"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$1;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 116
    .local v3, items_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 117
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "items"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 119
    goto :goto_0

    .line 123
    .end local v3           #items_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v4, "setGroupCheckable"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    new-instance v18, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$2;

    const-string v4, "setGroupCheckable"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$2;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 165
    .local v18, setGroupCheckable_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "setGroupCheckable"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v18

    .line 166
    goto :goto_0

    .line 169
    .end local v18           #setGroupCheckable_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v4, "setGroupEnabled"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    new-instance v19, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$3;

    const-string v4, "setGroupEnabled"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$3;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 202
    .local v19, setGroupEnabled_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "setGroupEnabled"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v19

    .line 203
    goto/16 :goto_0

    .line 206
    .end local v19           #setGroupEnabled_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v4, "removeItem"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 207
    new-instance v17, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$4;

    const-string v4, "removeItem"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$4;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 230
    .local v17, removeItem_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "removeItem"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v17

    .line 231
    goto/16 :goto_0

    .line 234
    .end local v17           #removeItem_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v4, "removeGroup"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 235
    new-instance v16, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$5;

    const-string v4, "removeGroup"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$5;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 258
    .local v16, removeGroup_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "removeGroup"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v16

    .line 259
    goto/16 :goto_0

    .line 262
    .end local v16           #removeGroup_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v4, "add"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 263
    new-instance v9, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$6;

    const-string v4, "add"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$6;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 288
    .local v9, add_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "add"

    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v9

    .line 289
    goto/16 :goto_0

    .line 292
    .end local v9           #add_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v4, "size"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 293
    new-instance v21, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$7;

    const-string v4, "size"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$7;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 308
    .local v21, size_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "size"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v21

    .line 309
    goto/16 :goto_0

    .line 312
    .end local v21           #size_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v4, "close"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 313
    new-instance v11, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$8;

    const-string v4, "close"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$8;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 326
    .local v11, close_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "close"

    invoke-virtual {v4, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v11

    .line 327
    goto/16 :goto_0

    .line 330
    .end local v11           #close_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v4, "clear"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 331
    new-instance v10, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$9;

    const-string v4, "clear"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$9;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 344
    .local v10, clear_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "clear"

    invoke-virtual {v4, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v10

    .line 345
    goto/16 :goto_0

    .line 348
    .end local v10           #clear_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v4, "hasVisibleItems"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 349
    new-instance v15, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$10;

    const-string v4, "hasVisibleItems"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$10;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 364
    .local v15, hasVisibleItems_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "hasVisibleItems"

    invoke-virtual {v4, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v15

    .line 365
    goto/16 :goto_0

    .line 368
    .end local v15           #hasVisibleItems_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v4, "getItem"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 369
    new-instance v13, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$11;

    const-string v4, "getItem"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$11;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 394
    .local v13, getItem_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "getItem"

    invoke-virtual {v4, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v13

    .line 395
    goto/16 :goto_0

    .line 398
    .end local v13           #getItem_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v4, "getItems"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 399
    new-instance v14, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$12;

    const-string v4, "getItems"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$12;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 414
    .local v14, getItems_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "getItems"

    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v14

    .line 415
    goto/16 :goto_0

    .line 418
    .end local v14           #getItems_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v4, "findItem"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 419
    new-instance v12, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$13;

    const-string v4, "findItem"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$13;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 444
    .local v12, findItem_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "findItem"

    invoke-virtual {v4, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v12

    .line 445
    goto/16 :goto_0

    .line 448
    .end local v12           #findItem_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v4, "setGroupVisible"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 449
    new-instance v20, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$14;

    const-string v4, "setGroupVisible"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen$14;-><init>(Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;Ljava/lang/String;)V

    .line 481
    .local v20, setGroupVisible_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "setGroupVisible"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v20

    .line 482
    goto/16 :goto_0

    .line 486
    .end local v20           #setGroupVisible_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    const-string v0, "org.appcelerator.titanium.proxy.MenuProxy"

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
    .line 510
    const-class v0, Lorg/appcelerator/titanium/proxy/MenuProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    const-string v0, "Menu"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 506
    const/4 v0, 0x0

    return-object v0
.end method
