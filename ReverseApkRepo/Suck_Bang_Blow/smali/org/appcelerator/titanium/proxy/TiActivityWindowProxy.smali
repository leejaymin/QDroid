.class public Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "TiActivityWindowProxy.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiActivityWindowProxy"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "tiContext"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->opened:Z

    .line 34
    return-void
.end method


# virtual methods
.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 42
    sget-boolean v0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "TiActivityWindowProxy"

    const-string v1, "handleClose"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    const-string v0, "close"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 47
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->close()V

    .line 51
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->releaseViews()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->opened:Z

    .line 53
    return-void
.end method

.method protected handleGetActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 62
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object p0, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->getActivity()Lti/modules/titanium/android/TiJSActivity;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "options"

    .prologue
    .line 57
    return-void
.end method

.method public setView(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 37
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 38
    return-void
.end method
