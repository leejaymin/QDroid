.class public Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "MenuItemProxyBindingGen.java"


# static fields
.field private static final DYNPROP_checkable:Ljava/lang/String; = "checkable"

.field private static final DYNPROP_checked:Ljava/lang/String; = "checked"

.field private static final DYNPROP_enabled:Ljava/lang/String; = "enabled"

.field private static final DYNPROP_groupId:Ljava/lang/String; = "groupId"

.field private static final DYNPROP_icon:Ljava/lang/String; = "icon"

.field private static final DYNPROP_itemId:Ljava/lang/String; = "itemId"

.field private static final DYNPROP_order:Ljava/lang/String; = "order"

.field private static final DYNPROP_title:Ljava/lang/String; = "title"

.field private static final DYNPROP_titleCondensed:Ljava/lang/String; = "titleCondensed"

.field private static final DYNPROP_visible:Ljava/lang/String; = "visible"

.field private static final FULL_API_NAME:Ljava/lang/String; = "MenuItem"

.field private static final ID:Ljava/lang/String; = "org.appcelerator.titanium.proxy.MenuItemProxy"

.field private static final METHOD_getGroupId:Ljava/lang/String; = "getGroupId"

.field private static final METHOD_getItemId:Ljava/lang/String; = "getItemId"

.field private static final METHOD_getOrder:Ljava/lang/String; = "getOrder"

.field private static final METHOD_getTitle:Ljava/lang/String; = "getTitle"

.field private static final METHOD_getTitleCondensed:Ljava/lang/String; = "getTitleCondensed"

.field private static final METHOD_hasSubMenu:Ljava/lang/String; = "hasSubMenu"

.field private static final METHOD_isCheckable:Ljava/lang/String; = "isCheckable"

.field private static final METHOD_isChecked:Ljava/lang/String; = "isChecked"

.field private static final METHOD_isEnabled:Ljava/lang/String; = "isEnabled"

.field private static final METHOD_isVisible:Ljava/lang/String; = "isVisible"

.field private static final METHOD_setCheckable:Ljava/lang/String; = "setCheckable"

.field private static final METHOD_setChecked:Ljava/lang/String; = "setChecked"

.field private static final METHOD_setEnabled:Ljava/lang/String; = "setEnabled"

.field private static final METHOD_setIcon:Ljava/lang/String; = "setIcon"

.field private static final METHOD_setTitle:Ljava/lang/String; = "setTitle"

.field private static final METHOD_setTitleCondensed:Ljava/lang/String; = "setTitleCondensed"

.field private static final METHOD_setVisible:Ljava/lang/String; = "setVisible"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "MenuItem"

.field private static final TAG:Ljava/lang/String; = "MenuItemProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 73
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "titleCondensed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "groupId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "enabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "order"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "visible"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "checkable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "itemId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "checked"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setCheckable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setVisible"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setChecked"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hasSubMenu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isEnabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getOrder"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getTitleCondensed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getItemId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getGroupId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setTitleCondensed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isVisible"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isCheckable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setTitle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isChecked"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setEnabled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getTitle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setIcon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 104
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    const-string v0, "MenuItem"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 36
    .parameter "name"

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    .line 109
    .local v35, value:Ljava/lang/Object;
    if-eqz v35, :cond_0

    move-object/from16 v13, v35

    .line 895
    :goto_0
    return-object v13

    .line 118
    :cond_0
    const-string v13, "titleCondensed"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 119
    new-instance v3, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$1;

    const-string v5, "titleCondensed"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$1;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 157
    .local v3, titleCondensed_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 158
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "titleCondensed"

    invoke-virtual {v13, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v3

    .line 160
    goto :goto_0

    .line 163
    .end local v3           #titleCondensed_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v13, "groupId"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 164
    new-instance v4, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$2;

    const-string v6, "groupId"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$2;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 187
    .local v4, groupId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 188
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "groupId"

    invoke-virtual {v13, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v4

    .line 190
    goto :goto_0

    .line 193
    .end local v4           #groupId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v13, "enabled"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 194
    new-instance v5, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$3;

    const-string v7, "enabled"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$3;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 224
    .local v5, enabled_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 225
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "enabled"

    invoke-virtual {v13, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v5

    .line 227
    goto/16 :goto_0

    .line 230
    .end local v5           #enabled_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v13, "icon"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 231
    new-instance v6, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$4;

    const-string v8, "icon"

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$4;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 261
    .local v6, icon_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 262
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "icon"

    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v6

    .line 264
    goto/16 :goto_0

    .line 267
    .end local v6           #icon_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v13, "title"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 268
    new-instance v7, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$5;

    const-string v9, "title"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$5;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 306
    .local v7, title_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 307
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "title"

    invoke-virtual {v13, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v7

    .line 309
    goto/16 :goto_0

    .line 312
    .end local v7           #title_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_5
    const-string v13, "order"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 313
    new-instance v8, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$6;

    const-string v10, "order"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$6;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 336
    .local v8, order_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 337
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "order"

    invoke-virtual {v13, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v8

    .line 339
    goto/16 :goto_0

    .line 342
    .end local v8           #order_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_6
    const-string v13, "visible"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 343
    new-instance v9, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$7;

    const-string v11, "visible"

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$7;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 373
    .local v9, visible_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 374
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "visible"

    invoke-virtual {v13, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v9

    .line 376
    goto/16 :goto_0

    .line 379
    .end local v9           #visible_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_7
    const-string v13, "checkable"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 380
    new-instance v10, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$8;

    const-string v12, "checkable"

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$8;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 410
    .local v10, checkable_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 411
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "checkable"

    invoke-virtual {v13, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v10

    .line 413
    goto/16 :goto_0

    .line 416
    .end local v10           #checkable_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_8
    const-string v13, "itemId"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 417
    new-instance v11, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$9;

    const-string v13, "itemId"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v16}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$9;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 440
    .local v11, itemId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 441
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "itemId"

    invoke-virtual {v13, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v11

    .line 443
    goto/16 :goto_0

    .line 446
    .end local v11           #itemId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_9
    const-string v13, "checked"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 447
    new-instance v12, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$10;

    const-string v14, "checked"

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$10;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 477
    .local v12, checked_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 478
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "checked"

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v12

    .line 480
    goto/16 :goto_0

    .line 484
    .end local v12           #checked_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_a
    const-string v13, "setCheckable"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 485
    new-instance v28, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$11;

    const-string v13, "setCheckable"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$11;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 510
    .local v28, setCheckable_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "setCheckable"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v28

    .line 511
    goto/16 :goto_0

    .line 514
    .end local v28           #setCheckable_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v13, "setVisible"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 515
    new-instance v34, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$12;

    const-string v13, "setVisible"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$12;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 540
    .local v34, setVisible_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "setVisible"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v34

    .line 541
    goto/16 :goto_0

    .line 544
    .end local v34           #setVisible_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v13, "setChecked"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 545
    new-instance v29, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$13;

    const-string v13, "setChecked"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$13;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 570
    .local v29, setChecked_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "setChecked"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v29

    .line 571
    goto/16 :goto_0

    .line 574
    .end local v29           #setChecked_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v13, "hasSubMenu"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 575
    new-instance v23, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$14;

    const-string v13, "hasSubMenu"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$14;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 590
    .local v23, hasSubMenu_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "hasSubMenu"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v23

    .line 591
    goto/16 :goto_0

    .line 594
    .end local v23           #hasSubMenu_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v13, "isEnabled"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 595
    new-instance v26, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$15;

    const-string v13, "isEnabled"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$15;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 610
    .local v26, isEnabled_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "isEnabled"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v26

    .line 611
    goto/16 :goto_0

    .line 614
    .end local v26           #isEnabled_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    const-string v13, "getOrder"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 615
    new-instance v20, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$16;

    const-string v13, "getOrder"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$16;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 630
    .local v20, getOrder_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getOrder"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v20

    .line 631
    goto/16 :goto_0

    .line 634
    .end local v20           #getOrder_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_10
    const-string v13, "getTitleCondensed"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 635
    new-instance v21, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$17;

    const-string v13, "getTitleCondensed"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$17;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 650
    .local v21, getTitleCondensed_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getTitleCondensed"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v21

    .line 651
    goto/16 :goto_0

    .line 654
    .end local v21           #getTitleCondensed_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_11
    const-string v13, "getItemId"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 655
    new-instance v19, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$18;

    const-string v13, "getItemId"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$18;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 670
    .local v19, getItemId_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getItemId"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v19

    .line 671
    goto/16 :goto_0

    .line 674
    .end local v19           #getItemId_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_12
    const-string v13, "getGroupId"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 675
    new-instance v18, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$19;

    const-string v13, "getGroupId"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$19;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 690
    .local v18, getGroupId_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getGroupId"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v18

    .line 691
    goto/16 :goto_0

    .line 694
    .end local v18           #getGroupId_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_13
    const-string v13, "setTitleCondensed"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 695
    new-instance v32, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$20;

    const-string v13, "setTitleCondensed"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$20;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 720
    .local v32, setTitleCondensed_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "setTitleCondensed"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v32

    .line 721
    goto/16 :goto_0

    .line 724
    .end local v32           #setTitleCondensed_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_14
    const-string v13, "isVisible"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 725
    new-instance v27, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$21;

    const-string v13, "isVisible"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$21;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 740
    .local v27, isVisible_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "isVisible"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v27

    .line 741
    goto/16 :goto_0

    .line 744
    .end local v27           #isVisible_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_15
    const-string v13, "isCheckable"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 745
    new-instance v24, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$22;

    const-string v13, "isCheckable"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$22;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 760
    .local v24, isCheckable_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "isCheckable"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v24

    .line 761
    goto/16 :goto_0

    .line 764
    .end local v24           #isCheckable_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_16
    const-string v13, "setTitle"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 765
    new-instance v33, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$23;

    const-string v13, "setTitle"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$23;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 790
    .local v33, setTitle_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "setTitle"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v33

    .line 791
    goto/16 :goto_0

    .line 794
    .end local v33           #setTitle_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_17
    const-string v13, "isChecked"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 795
    new-instance v25, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$24;

    const-string v13, "isChecked"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$24;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 810
    .local v25, isChecked_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "isChecked"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v25

    .line 811
    goto/16 :goto_0

    .line 814
    .end local v25           #isChecked_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_18
    const-string v13, "setEnabled"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 815
    new-instance v30, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$25;

    const-string v13, "setEnabled"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$25;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 840
    .local v30, setEnabled_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "setEnabled"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v30

    .line 841
    goto/16 :goto_0

    .line 844
    .end local v30           #setEnabled_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_19
    const-string v13, "getTitle"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 845
    new-instance v22, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$26;

    const-string v13, "getTitle"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$26;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 860
    .local v22, getTitle_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getTitle"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v22

    .line 861
    goto/16 :goto_0

    .line 864
    .end local v22           #getTitle_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1a
    const-string v13, "setIcon"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 865
    new-instance v31, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$27;

    const-string v13, "setIcon"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$27;-><init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;)V

    .line 890
    .local v31, setIcon_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "setIcon"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v31

    .line 891
    goto/16 :goto_0

    .line 895
    .end local v31           #setIcon_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1b
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 911
    const-string v0, "org.appcelerator.titanium.proxy.MenuItemProxy"

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
    .line 919
    const-class v0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    const-string v0, "MenuItem"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 915
    const/4 v0, 0x0

    return-object v0
.end method
