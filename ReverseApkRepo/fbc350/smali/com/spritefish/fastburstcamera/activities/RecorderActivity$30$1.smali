.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$yuv:[B

    .line 1814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1819
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->rotationManager:Lcom/spritefish/camera/RotationManager;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v2

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spritefish/camera/controls/PreviewControl;->getCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/spritefish/camera/RotationManager;->getRotation(I)Lcom/spritefish/camera/RotationManager$Rotation;

    move-result-object v7

    .line 1821
    .local v7, r:Lcom/spritefish/camera/RotationManager$Rotation;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    invoke-virtual {v1}, Lcom/spritefish/camera/memory/ByteArray;->getThumbnailPixels()[I

    move-result-object v0

    .line 1823
    .local v0, rgbs:[I
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$yuv:[B

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v2

    iget v2, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->width:I

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v3

    iget v3, v3, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->height:I

    sget-object v4, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v6}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v6

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v6}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/spritefish/camera/controls/PreviewControl;->getCameraId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/spritefish/camera/Util;->decodeYUVSmaller([I[BIILcom/spritefish/camera/RotationManager$Rotation;II)V

    .line 1826
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->firstPre:Lcom/spritefish/fastburstcamera/controls/ThumbImageView;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$9(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->postInvalidate()V

    .line 1827
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->lastPre:Lcom/spritefish/fastburstcamera/controls/ThumbImageView;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$10(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/ThumbImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/controls/ThumbImageView;->postInvalidate()V

    .line 1828
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preThumbs:Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$11(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/controls/ThumbListImageView;->postInvalidate()V

    .line 1829
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$yuv:[B

    invoke-virtual {v1, v2}, Lcom/spritefish/camera/memory/ByteArray;->putData([B)V

    .line 1830
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/spritefish/camera/memory/ByteArray;->setTimestamp(J)V

    .line 1831
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/spritefish/camera/memory/ByteArray;->setTag(Ljava/lang/String;)V

    .line 1832
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v2

    iget-wide v2, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->currentBurstId:J

    invoke-virtual {v1, v2, v3}, Lcom/spritefish/camera/memory/ByteArray;->setBurstId(J)V

    .line 1833
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    invoke-virtual {v1, v7}, Lcom/spritefish/camera/memory/ByteArray;->setOrientation(Lcom/spritefish/camera/RotationManager$Rotation;)V

    .line 1834
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v2

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spritefish/camera/controls/PreviewControl;->getCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/spritefish/camera/memory/ByteArray;->setCameraId(I)V

    .line 1836
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/spritefish/fastburstcamera/activities/RecordMode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    if-ne v1, v2, :cond_0

    .line 1837
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    invoke-virtual {v1, v2}, Lcom/spritefish/camera/memory/NewByteArrayManager;->addRecordedPreshot(Lcom/spritefish/camera/memory/ByteArray;)V

    .line 1840
    :goto_0
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v1

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$yuv:[B

    invoke-virtual {v1, v2}, Lcom/spritefish/camera/controls/PreviewControl;->returnUsedBuffer([B)V

    .line 1841
    return-void

    .line 1839
    :cond_0
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$30$1;->val$arr:Lcom/spritefish/camera/memory/ByteArray;

    invoke-virtual {v1, v2}, Lcom/spritefish/camera/memory/NewByteArrayManager;->returnBuffer(Lcom/spritefish/camera/memory/ByteArray;)V

    goto :goto_0
.end method
