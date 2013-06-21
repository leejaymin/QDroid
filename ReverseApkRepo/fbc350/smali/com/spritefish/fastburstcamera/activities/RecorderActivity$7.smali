.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$7;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->runWhenDoneSaving(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$alert2:Landroid/app/AlertDialog;

.field private final synthetic val$app:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

.field private final synthetic val$runWhenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;Landroid/app/AlertDialog;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$7;->val$app:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$7;->val$alert2:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$7;->val$runWhenDone:Ljava/lang/Runnable;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 533
    :goto_0
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$7;->val$app:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isSavingIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$7;->val$alert2:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 543
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$7;->val$runWhenDone:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 544
    return-void

    .line 536
    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
