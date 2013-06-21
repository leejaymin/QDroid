.class Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;
.super Ljava/lang/Object;
.source "FaceDetectActivity.java"

# interfaces
.implements Lcom/spritefish/camera/controls/CameraInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCameraInitialized(Landroid/hardware/Camera;)V
    .locals 4
    .parameter "camera"

    .prologue
    .line 65
    sget v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->displayWidth:I

    sget v2, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->displayHeight:I

    invoke-static {p1, v1, v2}, Lcom/spritefish/camera/Util;->getLargestPreviewSize(Landroid/hardware/Camera;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 68
    .local v0, usedSize:Landroid/hardware/Camera$Size;
    const-string v1, "insta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    #setter for: Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->width:I
    invoke-static {v1, v2}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;I)V

    .line 70
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    #setter for: Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->height:I
    invoke-static {v1, v2}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->access$1(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;I)V

    .line 71
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->width:I
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->height:I
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    #setter for: Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->rgbi:[I
    invoke-static {v1, v2}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->access$4(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;[I)V

    .line 73
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v1, p1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initialize(Landroid/hardware/Camera;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->getBufferManager()Lcom/spritefish/camera/memory/BufferManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spritefish/camera/memory/BufferManager;->getFreeBufferSet()Lcom/spritefish/camera/memory/BufferSet;

    move-result-object v2

    iput-object v2, v1, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->bs:Lcom/spritefish/camera/memory/BufferSet;

    .line 77
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->access$5(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v1

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    iget-object v2, v2, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->bs:Lcom/spritefish/camera/memory/BufferSet;

    invoke-virtual {v1, v2}, Lcom/spritefish/camera/controls/PreviewControl;->addBufferSet(Lcom/spritefish/camera/memory/BufferSet;)V

    .line 78
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->bs:Lcom/spritefish/camera/memory/BufferSet;

    if-nez v1, :cond_0

    .line 79
    return-void
.end method
