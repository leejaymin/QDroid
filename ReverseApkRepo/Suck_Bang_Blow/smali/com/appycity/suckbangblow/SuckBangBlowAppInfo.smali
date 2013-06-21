.class public final Lcom/appycity/suckbangblow/SuckBangBlowAppInfo;
.super Ljava/lang/Object;
.source "SuckBangBlowAppInfo.java"

# interfaces
.implements Lorg/appcelerator/titanium/ITiAppInfo;


# static fields
.field private static final LCAT:Ljava/lang/String; = "AppInfo"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiApplication;)V
    .locals 3
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    .line 19
    const-string v1, "ti.deploytype"

    const-string v2, "production"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "Suck Bang Blow"

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "Suck Bang Blow"

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "03b38b21-06d4-41c8-9e8a-29ba16592f21"

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "appicon.png"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "com.appycity.suckbangblow"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "Suck Bang Blow"

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "http://appycity.com"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "http://appycity.com"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "2.0"

    return-object v0
.end method

.method public isAnalyticsEnabled()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public isNavBarHidden()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
