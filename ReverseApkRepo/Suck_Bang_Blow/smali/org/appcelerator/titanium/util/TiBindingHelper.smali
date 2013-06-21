.class public Lorg/appcelerator/titanium/util/TiBindingHelper;
.super Ljava/lang/Object;
.source "TiBindingHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindCurrentActivity(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 3
    .parameter "context"
    .parameter "currentActivityProxy"

    .prologue
    .line 19
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getKrollBridge()Lorg/appcelerator/titanium/kroll/KrollBridge;

    move-result-object v0

    const-string v1, "Android"

    const-string v2, "currentActivity"

    invoke-virtual {v0, v1, v2, p1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindContextSpecific(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public static bindCurrentService(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 3
    .parameter "context"
    .parameter "currentService"

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getKrollBridge()Lorg/appcelerator/titanium/kroll/KrollBridge;

    move-result-object v0

    const-string v1, "Android"

    const-string v2, "currentService"

    invoke-virtual {v0, v1, v2, p1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindContextSpecific(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static bindCurrentWindow(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 7
    .parameter "context"
    .parameter "currentWindow"

    .prologue
    const-string v6, "UI"

    .line 27
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getKrollBridge()Lorg/appcelerator/titanium/kroll/KrollBridge;

    move-result-object v1

    .line 28
    .local v1, bridge:Lorg/appcelerator/titanium/kroll/KrollBridge;
    const-string v4, "UI"

    const-string v4, "currentWindow"

    invoke-virtual {v1, v6, v4, p1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindContextSpecific(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    instance-of v4, p1, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v4, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-object v3, v0

    .line 32
    .local v3, window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getTabProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    .line 33
    .local v2, currentTab:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v2, :cond_0

    .line 34
    const-string v4, "UI"

    const-string v4, "currentTabGroup"

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->getTabGroupProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v5

    invoke-virtual {v1, v6, v4, v5}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindContextSpecific(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    const-string v4, "UI"

    const-string v4, "currentTab"

    invoke-virtual {v1, v6, v4, v2}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindContextSpecific(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static bindCurrentWindowAndActivity(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 0
    .parameter "context"
    .parameter "currentWindow"
    .parameter "currentActivityProxy"

    .prologue
    .line 42
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/TiBindingHelper;->bindCurrentWindow(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 43
    invoke-static {p0, p2}, Lorg/appcelerator/titanium/util/TiBindingHelper;->bindCurrentActivity(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/ActivityProxy;)V

    .line 44
    return-void
.end method
