.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->initUiControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 1475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    .locals 1
    .parameter

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1479
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->switchCamera()I

    move-result v0

    .line 1481
    .local v0, theCam:I
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;

    invoke-direct {v2, p0, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;I)V

    invoke-static {v1, v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->runWhenDoneSaving(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 1493
    return-void
.end method
