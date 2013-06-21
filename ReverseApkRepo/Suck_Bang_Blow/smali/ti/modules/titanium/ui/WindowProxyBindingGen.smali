.class public Lti/modules/titanium/ui/WindowProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;
.source "WindowProxyBindingGen.java"


# static fields
.field private static final DYNPROP_leftNavButton:Ljava/lang/String; = "leftNavButton"

.field private static final DYNPROP_tab:Ljava/lang/String; = "tab"

.field private static final DYNPROP_tabGroup:Ljava/lang/String; = "tabGroup"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.Window"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.WindowProxy"

.field private static final METHOD_getTab:Ljava/lang/String; = "getTab"

.field private static final METHOD_getTabGroup:Ljava/lang/String; = "getTabGroup"

.field private static final METHOD_setLeftNavButton:Ljava/lang/String; = "setLeftNavButton"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Window"

.field private static final TAG:Ljava/lang/String; = "WindowProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;-><init>()V

    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "leftNavButton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "tab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "tabGroup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getTabGroup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setLeftNavButton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getTab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 62
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const-string v0, "UI.Window"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .parameter "name"

    .prologue
    .line 66
    iget-object v3, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 67
    .local v11, value:Ljava/lang/Object;
    if-eqz v11, :cond_0

    move-object v3, v11

    .line 243
    :goto_0
    return-object v3

    .line 76
    :cond_0
    const-string v3, "leftNavButton"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    new-instance v0, Lti/modules/titanium/ui/WindowProxyBindingGen$1;

    const-string v2, "leftNavButton"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/ui/WindowProxyBindingGen$1;-><init>(Lti/modules/titanium/ui/WindowProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 107
    .local v0, leftNavButton_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 108
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 109
    iget-object v3, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "leftNavButton"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 110
    goto :goto_0

    .line 113
    .end local v0           #leftNavButton_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v3, "tab"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    new-instance v1, Lti/modules/titanium/ui/WindowProxyBindingGen$2;

    const-string v3, "tab"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lti/modules/titanium/ui/WindowProxyBindingGen$2;-><init>(Lti/modules/titanium/ui/WindowProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 137
    .local v1, tab_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 138
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 139
    iget-object v3, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "tab"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    .line 140
    goto :goto_0

    .line 143
    .end local v1           #tab_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v3, "tabGroup"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    new-instance v2, Lti/modules/titanium/ui/WindowProxyBindingGen$3;

    const-string v4, "tabGroup"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lti/modules/titanium/ui/WindowProxyBindingGen$3;-><init>(Lti/modules/titanium/ui/WindowProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 167
    .local v2, tabGroup_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 168
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 169
    iget-object v3, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "tabGroup"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 170
    goto :goto_0

    .line 174
    .end local v2           #tabGroup_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v3, "getTabGroup"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 175
    new-instance v8, Lti/modules/titanium/ui/WindowProxyBindingGen$4;

    const-string v3, "getTabGroup"

    invoke-direct {v8, p0, v3}, Lti/modules/titanium/ui/WindowProxyBindingGen$4;-><init>(Lti/modules/titanium/ui/WindowProxyBindingGen;Ljava/lang/String;)V

    .line 190
    .local v8, getTabGroup_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v3, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "getTabGroup"

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v8

    .line 191
    goto/16 :goto_0

    .line 194
    .end local v8           #getTabGroup_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v3, "setLeftNavButton"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 195
    new-instance v10, Lti/modules/titanium/ui/WindowProxyBindingGen$5;

    const-string v3, "setLeftNavButton"

    invoke-direct {v10, p0, v3}, Lti/modules/titanium/ui/WindowProxyBindingGen$5;-><init>(Lti/modules/titanium/ui/WindowProxyBindingGen;Ljava/lang/String;)V

    .line 218
    .local v10, setLeftNavButton_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v3, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "setLeftNavButton"

    invoke-virtual {v3, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v10

    .line 219
    goto/16 :goto_0

    .line 222
    .end local v10           #setLeftNavButton_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v3, "getTab"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 223
    new-instance v9, Lti/modules/titanium/ui/WindowProxyBindingGen$6;

    const-string v3, "getTab"

    invoke-direct {v9, p0, v3}, Lti/modules/titanium/ui/WindowProxyBindingGen$6;-><init>(Lti/modules/titanium/ui/WindowProxyBindingGen;Ljava/lang/String;)V

    .line 238
    .local v9, getTab_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v3, p0, Lti/modules/titanium/ui/WindowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "getTab"

    invoke-virtual {v3, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v9

    .line 239
    goto/16 :goto_0

    .line 243
    .end local v9           #getTab_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const-string v0, "ti.modules.titanium.ui.WindowProxy"

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
    .line 267
    const-class v0, Lti/modules/titanium/ui/WindowProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-string v0, "Window"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method
