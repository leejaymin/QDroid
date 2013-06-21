.class public Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 15
    const/4 v1, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 24
    :goto_0
    if-nez v1, :cond_0

    .line 57
    :goto_1
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    const/4 v0, 0x0

    .line 45
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lez;

    invoke-direct {v3, p0, v1, v0}, Lez;-><init>(Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;Lcom/kms/kmsshared/KMSApplication;Z)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method
