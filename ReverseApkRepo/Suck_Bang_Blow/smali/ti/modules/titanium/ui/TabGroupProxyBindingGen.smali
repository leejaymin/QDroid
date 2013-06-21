.class public Lti/modules/titanium/ui/TabGroupProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;
.source "TabGroupProxyBindingGen.java"


# static fields
.field private static final DYNPROP_activeTab:Ljava/lang/String; = "activeTab"

.field private static final DYNPROP_tabs:Ljava/lang/String; = "tabs"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.TabGroup"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.TabGroupProxy"

.field private static final METHOD_addTab:Ljava/lang/String; = "addTab"

.field private static final METHOD_getActiveTab:Ljava/lang/String; = "getActiveTab"

.field private static final METHOD_getTabs:Ljava/lang/String; = "getTabs"

.field private static final METHOD_removeTab:Ljava/lang/String; = "removeTab"

.field private static final METHOD_setActiveTab:Ljava/lang/String; = "setActiveTab"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "TabGroup"

.field private static final TAG:Ljava/lang/String; = "TabGroupProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;-><init>()V

    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "activeTab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "tabs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeTab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getActiveTab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "addTab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getTabs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setActiveTab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 64
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    const-string v0, "UI.TabGroup"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .parameter "name"

    .prologue
    .line 68
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 69
    .local v12, value:Ljava/lang/Object;
    if-eqz v12, :cond_0

    move-object v2, v12

    .line 281
    :goto_0
    return-object v2

    .line 78
    :cond_0
    const-string v2, "activeTab"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    new-instance v0, Lti/modules/titanium/ui/TabGroupProxyBindingGen$1;

    const-string v2, "activeTab"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/ui/TabGroupProxyBindingGen$1;-><init>(Lti/modules/titanium/ui/TabGroupProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 117
    .local v0, activeTab_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setRunOnUiThread(Z)V

    .line 118
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 119
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 120
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "activeTab"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 121
    goto :goto_0

    .line 124
    .end local v0           #activeTab_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v2, "tabs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    new-instance v1, Lti/modules/titanium/ui/TabGroupProxyBindingGen$2;

    const-string v3, "tabs"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lti/modules/titanium/ui/TabGroupProxyBindingGen$2;-><init>(Lti/modules/titanium/ui/TabGroupProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 148
    .local v1, tabs_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 149
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 150
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "tabs"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 151
    goto :goto_0

    .line 155
    .end local v1           #tabs_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v2, "removeTab"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    new-instance v10, Lti/modules/titanium/ui/TabGroupProxyBindingGen$3;

    const-string v2, "removeTab"

    invoke-direct {v10, p0, v2}, Lti/modules/titanium/ui/TabGroupProxyBindingGen$3;-><init>(Lti/modules/titanium/ui/TabGroupProxyBindingGen;Ljava/lang/String;)V

    .line 179
    .local v10, removeTab_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "removeTab"

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v10

    .line 180
    goto :goto_0

    .line 183
    .end local v10           #removeTab_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v2, "getActiveTab"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    new-instance v8, Lti/modules/titanium/ui/TabGroupProxyBindingGen$4;

    const-string v2, "getActiveTab"

    invoke-direct {v8, p0, v2}, Lti/modules/titanium/ui/TabGroupProxyBindingGen$4;-><init>(Lti/modules/titanium/ui/TabGroupProxyBindingGen;Ljava/lang/String;)V

    .line 199
    .local v8, getActiveTab_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "getActiveTab"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v8

    .line 200
    goto/16 :goto_0

    .line 203
    .end local v8           #getActiveTab_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v2, "addTab"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 204
    new-instance v7, Lti/modules/titanium/ui/TabGroupProxyBindingGen$5;

    const-string v2, "addTab"

    invoke-direct {v7, p0, v2}, Lti/modules/titanium/ui/TabGroupProxyBindingGen$5;-><init>(Lti/modules/titanium/ui/TabGroupProxyBindingGen;Ljava/lang/String;)V

    .line 227
    .local v7, addTab_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "addTab"

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v7

    .line 228
    goto/16 :goto_0

    .line 231
    .end local v7           #addTab_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v2, "getTabs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 232
    new-instance v9, Lti/modules/titanium/ui/TabGroupProxyBindingGen$6;

    const-string v2, "getTabs"

    invoke-direct {v9, p0, v2}, Lti/modules/titanium/ui/TabGroupProxyBindingGen$6;-><init>(Lti/modules/titanium/ui/TabGroupProxyBindingGen;Ljava/lang/String;)V

    .line 247
    .local v9, getTabs_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "getTabs"

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v9

    .line 248
    goto/16 :goto_0

    .line 251
    .end local v9           #getTabs_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v2, "setActiveTab"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 252
    new-instance v11, Lti/modules/titanium/ui/TabGroupProxyBindingGen$7;

    const-string v2, "setActiveTab"

    invoke-direct {v11, p0, v2}, Lti/modules/titanium/ui/TabGroupProxyBindingGen$7;-><init>(Lti/modules/titanium/ui/TabGroupProxyBindingGen;Ljava/lang/String;)V

    .line 275
    .local v11, setActiveTab_method:Lorg/appcelerator/kroll/KrollMethod;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/appcelerator/kroll/KrollMethod;->setRunOnUiThread(Z)V

    .line 276
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "setActiveTab"

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v11

    .line 277
    goto/16 :goto_0

    .line 281
    .end local v11           #setActiveTab_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    const-string v0, "ti.modules.titanium.ui.TabGroupProxy"

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
    .line 305
    const-class v0, Lti/modules/titanium/ui/TabGroupProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    const-string v0, "TabGroup"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method
