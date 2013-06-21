.class Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "ViewImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$6;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    .line 369
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v5, -0x1

    .line 375
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, mAction:Ljava/lang/String;
    const-string v1, "com.spritefish.fastburstcamera.newpicture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    sget-object v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->instance:Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    const-string v2, "burstid"

    invoke-virtual {p2, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "pictureid"

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->newPictureRegistered(JJ)V

    .line 382
    :cond_0
    return-void
.end method
