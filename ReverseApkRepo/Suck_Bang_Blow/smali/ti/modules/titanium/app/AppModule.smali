.class public Lti/modules/titanium/app/AppModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AppModule.java"


# instance fields
.field private appInfo:Lorg/appcelerator/titanium/ITiAppInfo;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "tiContext"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 16
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->addAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V

    .line 17
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    .line 18
    return-void
.end method


# virtual methods
.method public appURLToPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 71
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArguments()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getCopyright()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getPublisher()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->removeAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V

    .line 22
    return-void
.end method
