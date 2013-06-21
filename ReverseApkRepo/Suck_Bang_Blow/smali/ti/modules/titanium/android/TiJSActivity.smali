.class public abstract Lti/modules/titanium/android/TiJSActivity;
.super Lorg/appcelerator/titanium/TiLaunchActivity;
.source "TiJSActivity.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "TiBaseActivity"


# instance fields
.field protected activityWindow:Lorg/appcelerator/titanium/view/TiUIActivityWindow;

.field protected url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/android/TiJSActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;-><init>()V

    .line 38
    iput-object p1, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    const-string v1, "url"

    .line 29
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lti/modules/titanium/android/TiJSActivity;->setActivityProxy(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V

    .line 31
    const-string v0, "url"

    invoke-virtual {p1, v1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "url"

    invoke-virtual {p1, v1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method protected contextCreated()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->contextCreated()V

    .line 60
    new-instance v0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;

    iget-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 61
    .local v0, window:Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;
    iget-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-static {v1, v0}, Lorg/appcelerator/titanium/util/TiBindingHelper;->bindCurrentWindow(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 62
    invoke-virtual {p0, v0}, Lti/modules/titanium/android/TiJSActivity;->setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 63
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lti/modules/titanium/android/TiJSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    .line 52
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    return-object v1

    .line 49
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Activity url required."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected scriptLoaded()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->scriptLoaded()V

    .line 69
    iget-object v0, p0, Lti/modules/titanium/android/TiJSActivity;->activityWindow:Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->open()V

    .line 70
    return-void
.end method

.method protected shouldFinishRootActivity()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    const-string v0, "exitOnClose"

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/android/TiJSActivity;->getIntentBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->shouldFinishRootActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected windowCreated()V
    .locals 3

    .prologue
    .line 76
    new-instance v1, Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    iget-object v0, p0, Lti/modules/titanium/android/TiJSActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;

    iget-object v2, p0, Lti/modules/titanium/android/TiJSActivity;->layout:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-direct {v1, v0, p0, v2}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;-><init>(Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;Lti/modules/titanium/android/TiJSActivity;Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    iput-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->activityWindow:Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    .line 77
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->windowCreated()V

    .line 78
    return-void
.end method
