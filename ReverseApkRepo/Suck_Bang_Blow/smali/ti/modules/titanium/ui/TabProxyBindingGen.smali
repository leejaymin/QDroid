.class public Lti/modules/titanium/ui/TabProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;
.source "TabProxyBindingGen.java"


# static fields
.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.Tab"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.TabProxy"

.field private static final METHOD_close:Ljava/lang/String; = "close"

.field private static final METHOD_open:Ljava/lang/String; = "open"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Tab"

.field private static final TAG:Ljava/lang/String; = "TabProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;-><init>()V

    .line 48
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "open"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "close"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 54
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "UI.Tab"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "name"

    .prologue
    const-string v6, "open"

    const-string v5, "close"

    .line 58
    iget-object v3, p0, Lti/modules/titanium/ui/TabProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 59
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 146
    :goto_0
    return-object v3

    .line 69
    :cond_0
    const-string v3, "open"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    new-instance v1, Lti/modules/titanium/ui/TabProxyBindingGen$1;

    const-string v3, "open"

    invoke-direct {v1, p0, v6}, Lti/modules/titanium/ui/TabProxyBindingGen$1;-><init>(Lti/modules/titanium/ui/TabProxyBindingGen;Ljava/lang/String;)V

    .line 108
    .local v1, open_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v3, p0, Lti/modules/titanium/ui/TabProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "open"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    .line 109
    goto :goto_0

    .line 112
    .end local v1           #open_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v3, "close"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    new-instance v0, Lti/modules/titanium/ui/TabProxyBindingGen$2;

    const-string v3, "close"

    invoke-direct {v0, p0, v5}, Lti/modules/titanium/ui/TabProxyBindingGen$2;-><init>(Lti/modules/titanium/ui/TabProxyBindingGen;Ljava/lang/String;)V

    .line 141
    .local v0, close_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v3, p0, Lti/modules/titanium/ui/TabProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "close"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 142
    goto :goto_0

    .line 146
    .end local v0           #close_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "ti.modules.titanium.ui.TabProxy"

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
    .line 170
    const-class v0, Lti/modules/titanium/ui/TabProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "Tab"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method
