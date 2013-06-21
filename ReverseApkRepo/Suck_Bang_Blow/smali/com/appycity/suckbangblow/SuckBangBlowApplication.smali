.class public final Lcom/appycity/suckbangblow/SuckBangBlowApplication;
.super Lorg/appcelerator/titanium/TiApplication;
.source "SuckBangBlowApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected bootModules(Lorg/appcelerator/titanium/TiContext;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->modules:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/xml/XMLModule;

    invoke-direct {v1, p1}, Lti/modules/titanium/xml/XMLModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->modules:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/network/NetworkModule;

    invoke-direct {v1, p1}, Lti/modules/titanium/network/NetworkModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->modules:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/platform/PlatformModule;

    invoke-direct {v1, p1}, Lti/modules/titanium/platform/PlatformModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->modules:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/locale/LocaleModule;

    invoke-direct {v1, p1}, Lti/modules/titanium/locale/LocaleModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->modules:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/media/MediaModule;

    invoke-direct {v1, p1}, Lti/modules/titanium/media/MediaModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->modules:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/app/AppModule;

    invoke-direct {v1, p1}, Lti/modules/titanium/app/AppModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->modules:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/analytics/AnalyticsModule;

    invoke-direct {v1, p1}, Lti/modules/titanium/analytics/AnalyticsModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->modules:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/json/JSONModule;

    invoke-direct {v1, p1}, Lti/modules/titanium/json/JSONModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->modules:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/api/APIModule;

    invoke-direct {v1, p1}, Lti/modules/titanium/api/APIModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->modules:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/ui/UIModule;

    invoke-direct {v1, p1}, Lti/modules/titanium/ui/UIModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->modules:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/filesystem/FilesystemModule;

    invoke-direct {v1, p1}, Lti/modules/titanium/filesystem/FilesystemModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->modules:Ljava/util/ArrayList;

    new-instance v1, Lti/modules/titanium/android/AndroidModule;

    invoke-direct {v1, p1}, Lti/modules/titanium/android/AndroidModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lorg/appcelerator/titanium/TiApplication;->onCreate()V

    .line 24
    new-instance v0, Lcom/appycity/suckbangblow/SuckBangBlowAppInfo;

    invoke-direct {v0, p0}, Lcom/appycity/suckbangblow/SuckBangBlowAppInfo;-><init>(Lorg/appcelerator/titanium/TiApplication;)V

    iput-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    .line 25
    invoke-virtual {p0}, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->postAppInfo()V

    .line 26
    new-instance v0, Lcom/appycity/suckbangblow/ApplicationStylesheet;

    invoke-direct {v0}, Lcom/appycity/suckbangblow/ApplicationStylesheet;-><init>()V

    iput-object v0, p0, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->stylesheet:Lorg/appcelerator/titanium/TiStylesheet;

    .line 27
    invoke-virtual {p0}, Lcom/appycity/suckbangblow/SuckBangBlowApplication;->postOnCreate()V

    .line 28
    return-void
.end method
