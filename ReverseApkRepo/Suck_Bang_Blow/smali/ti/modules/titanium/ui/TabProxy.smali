.class public Lti/modules/titanium/ui/TabProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TabProxy.java"


# instance fields
.field private tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

.field private win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 28
    return-void
.end method


# virtual methods
.method public close(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->close(Ljava/lang/Object;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 68
    :cond_0
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 34
    .local v0, table:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object v0
.end method

.method public open(Lorg/appcelerator/titanium/proxy/TiWindowProxy;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "win"
    .end parameter
    .parameter "options"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 48
    if-eqz p1, :cond_1

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance p2, Lorg/appcelerator/kroll/KrollDict;

    .end local p2
    invoke-direct {p2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 53
    .restart local p2
    :cond_0
    iput-object p1, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 54
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setTabProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 55
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 56
    const-string v0, "tabOpen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p1, p2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->open(Ljava/lang/Object;)V

    .line 59
    :cond_1
    return-void
.end method

.method public releaseViews()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 79
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 81
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 83
    :cond_0
    return-void
.end method

.method public setTabGroup(Lti/modules/titanium/ui/TabGroupProxy;)V
    .locals 0
    .parameter "tabGroupProxy"

    .prologue
    .line 72
    iput-object p1, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    .line 73
    return-void
.end method
