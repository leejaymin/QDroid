.class public Lcom/garageapps/android/spacetracks/main;
.super Landroid/app/Activity;
.source "main.java"


# static fields
.field public static cMain:Lcom/garageapps/android/spacetracks/main;


# instance fields
.field public mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

.field public mRenderer:Lcom/garageapps/android/spacetracks/mainRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/garageapps/android/spacetracks/main;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sput-object p0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    .line 28
    new-instance v0, Lcom/garageapps/android/spacetracks/mainApplication;

    invoke-direct {v0, p0}, Lcom/garageapps/android/spacetracks/mainApplication;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    .line 29
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/mainApplication;->init()V

    .line 30
    new-instance v0, Lcom/garageapps/android/spacetracks/mainRenderer;

    invoke-direct {v0, p0}, Lcom/garageapps/android/spacetracks/mainRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/main;->mRenderer:Lcom/garageapps/android/spacetracks/mainRenderer;

    .line 31
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/main;->mRenderer:Lcom/garageapps/android/spacetracks/mainRenderer;

    invoke-virtual {p0, v0}, Lcom/garageapps/android/spacetracks/main;->setContentView(Landroid/view/View;)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/garageapps/android/spacetracks/main;->setRequestedOrientation(I)V

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 63
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/mainApplication;->deinit()V

    .line 64
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 56
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/main;->mRenderer:Lcom/garageapps/android/spacetracks/mainRenderer;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/mainRenderer;->onPause()V

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/garageapps/android/spacetracks/main;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 49
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mSensor:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;->unregister()V

    .line 50
    return-void
.end method
