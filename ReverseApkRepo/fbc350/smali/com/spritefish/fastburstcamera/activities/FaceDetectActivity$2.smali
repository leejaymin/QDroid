.class Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$2;
.super Ljava/lang/Object;
.source "FaceDetectActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "yuv"
    .parameter "camera"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->rotationManager:Lcom/spritefish/camera/RotationManager;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->access$6(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)Lcom/spritefish/camera/RotationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->access$5(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spritefish/camera/controls/PreviewControl;->getCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/spritefish/camera/RotationManager;->getRotation(I)Lcom/spritefish/camera/RotationManager$Rotation;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->getFacesFromYuv([BLcom/spritefish/camera/RotationManager$Rotation;)V

    .line 87
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->getBufferManager()Lcom/spritefish/camera/memory/BufferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->bs:Lcom/spritefish/camera/memory/BufferSet;

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/memory/BufferManager;->returnBufferSet(Lcom/spritefish/camera/memory/BufferSet;)V

    .line 89
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->access$5(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->bs:Lcom/spritefish/camera/memory/BufferSet;

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/controls/PreviewControl;->addBufferSet(Lcom/spritefish/camera/memory/BufferSet;)V

    .line 90
    return-void
.end method
