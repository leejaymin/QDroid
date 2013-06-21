.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

.field private final synthetic val$arr:Lcom/spritefish/camera/memory/ByteArray;

.field private final synthetic val$yuv:[B


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;Lcom/spritefish/camera/memory/ByteArray;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->val$yuv:[B

    .line 1889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->val$yuv:[B

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/memory/ByteArray;->putData([B)V

    .line 1895
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/spritefish/camera/memory/ByteArray;->setTimestamp(J)V

    .line 1896
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/memory/ByteArray;->setTag(Ljava/lang/String;)V

    .line 1897
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    iget-wide v1, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentBurstId:J

    invoke-virtual {v0, v1, v2}, Lcom/spritefish/camera/memory/ByteArray;->setBurstId(J)V

    .line 1898
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spritefish/camera/controls/PreviewControl;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/memory/ByteArray;->setCameraId(I)V

    .line 1899
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->rotationManager:Lcom/spritefish/camera/RotationManager;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v2

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spritefish/camera/controls/PreviewControl;->getCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/spritefish/camera/RotationManager;->getRotation(I)Lcom/spritefish/camera/RotationManager$Rotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/memory/ByteArray;->setOrientation(Lcom/spritefish/camera/RotationManager$Rotation;)V

    .line 1900
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->addToWriteQueue(Lcom/spritefish/camera/memory/ByteArray;)V
    invoke-static {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$30(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/camera/memory/ByteArray;)V

    .line 1901
    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getCameraSetup()Lcom/spritefish/fastburstcamera/core/CameraSetupApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/spritefish/fastburstcamera/core/CameraSetupApi;->useDirectBuffers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$2;->val$yuv:[B

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/controls/PreviewControl;->returnUsedBuffer([B)V

    .line 1903
    :cond_0
    return-void
.end method
