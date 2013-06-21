.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1$1;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;

.field private final synthetic val$theCam:I


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1$1;->this$2:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;

    iput p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1$1;->val$theCam:I

    .line 1485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1$1;->this$2:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;

    move-result-object v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v0

    iget v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$24$1$1;->val$theCam:I

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/controls/PreviewControl;->setCameraId(I)V

    .line 1489
    return-void
.end method
