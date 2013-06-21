.class public Lcom/shoutem/UrlHandler;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# instance fields
.field mDeviceGeoHandler:Lcom/shoutem/DeviceGeoHandler;

.field mDeviceUIHandler:Lcom/shoutem/DeviceUiHandler;

.field mLoadHandler:Lcom/shoutem/DeviceLoadHandler;

.field mMediaHandler:Lcom/shoutem/DeviceMediaHandler;

.field mSystemHandler:Lcom/shoutem/DeviceSystemHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/shoutem/DeviceUiHandler;

    invoke-direct {v0}, Lcom/shoutem/DeviceUiHandler;-><init>()V

    iput-object v0, p0, Lcom/shoutem/UrlHandler;->mDeviceUIHandler:Lcom/shoutem/DeviceUiHandler;

    .line 9
    new-instance v0, Lcom/shoutem/DeviceGeoHandler;

    invoke-direct {v0}, Lcom/shoutem/DeviceGeoHandler;-><init>()V

    iput-object v0, p0, Lcom/shoutem/UrlHandler;->mDeviceGeoHandler:Lcom/shoutem/DeviceGeoHandler;

    .line 10
    new-instance v0, Lcom/shoutem/DeviceLoadHandler;

    invoke-direct {v0}, Lcom/shoutem/DeviceLoadHandler;-><init>()V

    iput-object v0, p0, Lcom/shoutem/UrlHandler;->mLoadHandler:Lcom/shoutem/DeviceLoadHandler;

    .line 11
    new-instance v0, Lcom/shoutem/DeviceMediaHandler;

    invoke-direct {v0}, Lcom/shoutem/DeviceMediaHandler;-><init>()V

    iput-object v0, p0, Lcom/shoutem/UrlHandler;->mMediaHandler:Lcom/shoutem/DeviceMediaHandler;

    .line 12
    new-instance v0, Lcom/shoutem/DeviceSystemHandler;

    invoke-direct {v0}, Lcom/shoutem/DeviceSystemHandler;-><init>()V

    iput-object v0, p0, Lcom/shoutem/UrlHandler;->mSystemHandler:Lcom/shoutem/DeviceSystemHandler;

    return-void
.end method


# virtual methods
.method public handleUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 14
    const/4 v0, 0x1

    .line 16
    .local v0, result:Z
    const-string v1, "device://ui/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/shoutem/UrlHandler;->mDeviceUIHandler:Lcom/shoutem/DeviceUiHandler;

    invoke-virtual {v1, p2}, Lcom/shoutem/DeviceUiHandler;->handle(Ljava/lang/String;)V

    .line 30
    :goto_0
    sget-object v1, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v1}, Lcom/shoutem/n64635/HomeActivity;->deviceUrlProcessed()V

    .line 32
    return v0

    .line 18
    :cond_0
    const-string v1, "device://geo/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/shoutem/UrlHandler;->mDeviceGeoHandler:Lcom/shoutem/DeviceGeoHandler;

    invoke-virtual {v1, p2}, Lcom/shoutem/DeviceGeoHandler;->handle(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_1
    const-string v1, "device://load/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    iget-object v1, p0, Lcom/shoutem/UrlHandler;->mLoadHandler:Lcom/shoutem/DeviceLoadHandler;

    invoke-virtual {v1, p2, p1}, Lcom/shoutem/DeviceLoadHandler;->handle(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    .line 22
    :cond_2
    const-string v1, "device://media/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    iget-object v1, p0, Lcom/shoutem/UrlHandler;->mMediaHandler:Lcom/shoutem/DeviceMediaHandler;

    invoke-virtual {v1, p2, p1}, Lcom/shoutem/DeviceMediaHandler;->handle(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    .line 24
    :cond_3
    const-string v1, "device://system/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    iget-object v1, p0, Lcom/shoutem/UrlHandler;->mSystemHandler:Lcom/shoutem/DeviceSystemHandler;

    new-instance v2, Lcom/shoutem/DeviceUrl;

    invoke-direct {v2, p2}, Lcom/shoutem/DeviceUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/shoutem/DeviceSystemHandler;->handle(Lcom/shoutem/DeviceUrl;)V

    goto :goto_0

    .line 27
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
