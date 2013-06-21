.class public Lcom/adfonic/android/view/AdLifeCycleListenerManager;
.super Ljava/lang/Object;
.source "AdLifeCycleListenerManager.java"


# instance fields
.field private adListener:Lcom/adfonic/android/AdListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getActivityForCallback(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->getAdListener()Lcom/adfonic/android/AdListener;

    move-result-object v2

    if-nez v2, :cond_0

    move-object p1, v1

    .line 107
    .end local p1
    :goto_0
    return-object p1

    .line 101
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    move-object p1, v1

    .line 102
    goto :goto_0

    .line 105
    :cond_1
    :try_start_0
    check-cast p1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Throwable;
    move-object p1, v1

    .line 107
    goto :goto_0
.end method

.method private runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "c"
    .parameter "r"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->getActivityForCallback(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 87
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getAdListener()Lcom/adfonic/android/AdListener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->adListener:Lcom/adfonic/android/AdListener;

    return-object v0
.end method

.method public onAdClick(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 47
    new-instance v0, Lcom/adfonic/android/view/AdLifeCycleListenerManager$3;

    invoke-direct {v0, p0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager$3;-><init>(Lcom/adfonic/android/view/AdLifeCycleListenerManager;)V

    invoke-direct {p0, p1, v0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public onAdReceived(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 34
    new-instance v0, Lcom/adfonic/android/view/AdLifeCycleListenerManager$2;

    invoke-direct {v0, p0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager$2;-><init>(Lcom/adfonic/android/view/AdLifeCycleListenerManager;)V

    invoke-direct {p0, p1, v0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public onDismissScreen(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 73
    new-instance v0, Lcom/adfonic/android/view/AdLifeCycleListenerManager$5;

    invoke-direct {v0, p0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager$5;-><init>(Lcom/adfonic/android/view/AdLifeCycleListenerManager;)V

    invoke-direct {p0, p1, v0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public onPresentScreen(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 60
    new-instance v0, Lcom/adfonic/android/view/AdLifeCycleListenerManager$4;

    invoke-direct {v0, p0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager$4;-><init>(Lcom/adfonic/android/view/AdLifeCycleListenerManager;)V

    invoke-direct {p0, p1, v0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public onThrowable(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 21
    new-instance v0, Lcom/adfonic/android/view/AdLifeCycleListenerManager$1;

    invoke-direct {v0, p0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager$1;-><init>(Lcom/adfonic/android/view/AdLifeCycleListenerManager;)V

    invoke-direct {p0, p1, v0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method public setAdListener(Lcom/adfonic/android/AdListener;)V
    .locals 0
    .parameter "adListener"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->adListener:Lcom/adfonic/android/AdListener;

    .line 18
    return-void
.end method
