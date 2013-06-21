.class public Lcom/google/android/googlelogin/GoogleLoginServiceHelper;
.super Ljava/lang/Object;
.source "GoogleLoginServiceHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "GoogleLoginServiceHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->sendActivityResult(Landroid/app/Activity;IILandroid/os/Bundle;)V

    return-void
.end method

.method public static getAccount(Landroid/app/Activity;IZ)V
    .locals 2
    .parameter "activity"
    .parameter "requestCode"
    .parameter "requireGoogle"

    .prologue
    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 112
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;-><init>(Landroid/app/Activity;ZLandroid/os/Handler;I)V

    .line 142
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 143
    return-void
.end method

.method public static getCredentials(Landroid/app/Activity;ILandroid/os/Bundle;ZLjava/lang/String;Z)V
    .locals 8
    .parameter "activity"
    .parameter "requestCode"
    .parameter "requestExtras"
    .parameter "requireGoogle"
    .parameter "service"
    .parameter "promptUser"

    .prologue
    .line 237
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 239
    .local v6, handler:Landroid/os/Handler;
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p2

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;-><init>(Landroid/app/Activity;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/os/Handler;I)V

    .line 351
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 352
    return-void
.end method

.method public static invalidateAuthToken(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "requestCode"
    .parameter "authToken"

    .prologue
    .line 386
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 388
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 414
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 415
    return-void
.end method

.method private static postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    .locals 1
    .parameter "handler"
    .parameter "activity"
    .parameter "resultCode"
    .parameter "requestCode"
    .parameter "bundle"

    .prologue
    .line 448
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$4;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$4;-><init>(Landroid/app/Activity;IILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    return-void
.end method

.method private static sendActivityResult(Landroid/app/Activity;IILandroid/os/Bundle;)V
    .locals 4
    .parameter "activity"
    .parameter "resultCode"
    .parameter "requestCode"
    .parameter "bundle"

    .prologue
    .line 428
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v2, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 430
    .local v0, apr:Landroid/app/PendingIntent;
    if-eqz v0, :cond_1

    .line 432
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 433
    .local v1, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 434
    :cond_0
    invoke-virtual {v0, p0, p1, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v2

    goto :goto_0
.end method
