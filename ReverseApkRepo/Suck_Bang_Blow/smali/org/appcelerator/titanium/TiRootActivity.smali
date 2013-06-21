.class public Lorg/appcelerator/titanium/TiRootActivity;
.super Lorg/appcelerator/titanium/TiLaunchActivity;
.source "TiRootActivity.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivitySupport;
.implements Lorg/appcelerator/titanium/view/ITiWindowHandler;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiRootActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiRootActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getTiContext()Lorg/appcelerator/titanium/TiContext;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/appcelerator/titanium/TiRootActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "app.js"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    :try_start_0
    const-string v4, "drawable.background"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, backgroundId:I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 59
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 61
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0           #backgroundId:I
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 65
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "TiRootActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource not found \'drawable.background\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 34
    const-string v1, "TiRootActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkpoint, on root activity create, savedInstanceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->checkpoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 36
    .local v0, app:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->setRootActivity(Lorg/appcelerator/titanium/TiRootActivity;)V

    .line 38
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v1

    invoke-interface {v1}, Lorg/appcelerator/titanium/ITiAppInfo;->isFullscreen()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/TiRootActivity;->setFullscreen(Z)V

    .line 39
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v1

    invoke-interface {v1}, Lorg/appcelerator/titanium/ITiAppInfo;->isNavBarHidden()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/TiRootActivity;->setNavBarHidden(Z)V

    .line 40
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 72
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->onDestroy()V

    .line 73
    sget-boolean v1, Lorg/appcelerator/titanium/TiRootActivity;->DBG:Z

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "TiRootActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "root activity onDestroy, context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/TiRootActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiRootActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lorg/appcelerator/titanium/TiRootActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 78
    .local v0, app:Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->releaseModules()V

    .line 81
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiRootActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->release()V

    .line 83
    .end local v0           #app:Lorg/appcelerator/titanium/TiApplication;
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 48
    const-string v0, "TiRootActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkpoint, on root activity resume. context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/TiRootActivity;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->checkpoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->onResume()V

    .line 50
    return-void
.end method
