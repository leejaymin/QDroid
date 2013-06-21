.class public Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;
.super Landroid/app/Activity;
.source "FaceDetectActivity.java"


# instance fields
.field bs:Lcom/spritefish/camera/memory/BufferSet;

.field private height:I

.field private previewControl:Lcom/spritefish/camera/controls/PreviewControl;

.field private rgbi:[I

.field private rotationManager:Lcom/spritefish/camera/RotationManager;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->width:I

    return-void
.end method

.method static synthetic access$1(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->height:I

    return-void
.end method

.method static synthetic access$2(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->width:I

    return v0
.end method

.method static synthetic access$3(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->height:I

    return v0
.end method

.method static synthetic access$4(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->rgbi:[I

    return-void
.end method

.method static synthetic access$5(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)Lcom/spritefish/camera/controls/PreviewControl;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    return-object v0
.end method

.method static synthetic access$6(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)Lcom/spritefish/camera/RotationManager;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->rotationManager:Lcom/spritefish/camera/RotationManager;

    return-object v0
.end method


# virtual methods
.method public getBufferManager()Lcom/spritefish/camera/memory/BufferManager;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getBm()Lcom/spritefish/camera/memory/BufferManager;

    move-result-object v0

    return-object v0
.end method

.method public getFacesFromYuv([BLcom/spritefish/camera/RotationManager$Rotation;)V
    .locals 12
    .parameter "yuv"
    .parameter "rotation"

    .prologue
    const/4 v11, 0x5

    .line 97
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->rgbi:[I

    iget v2, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->width:I

    iget v3, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->height:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/spritefish/camera/Util;->decodeYUVSmaller([I[BIILcom/spritefish/camera/RotationManager$Rotation;II)V

    .line 98
    const-string v0, "face"

    const-string v1, "detection faces"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    if-ne p2, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->rgbi:[I

    iget v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->width:I

    iget v2, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 102
    .local v7, b:Landroid/graphics/Bitmap;
    :goto_0
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    if-ne p2, v0, :cond_4

    :cond_1
    new-instance v9, Landroid/media/FaceDetector;

    iget v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->width:I

    iget v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->height:I

    invoke-direct {v9, v0, v1, v11}, Landroid/media/FaceDetector;-><init>(III)V

    .line 103
    .local v9, fd:Landroid/media/FaceDetector;
    :goto_1
    const/16 v0, 0xa

    new-array v8, v0, [Landroid/media/FaceDetector$Face;

    .line 104
    .local v8, faces:[Landroid/media/FaceDetector$Face;
    invoke-virtual {v9, v7, v8}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v10

    .line 105
    .local v10, found:I
    if-lez v10, :cond_2

    .line 107
    const-string v0, "face"

    const-string v1, "Found face"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    const/4 v7, 0x0

    .line 113
    return-void

    .line 101
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v8           #faces:[Landroid/media/FaceDetector$Face;
    .end local v9           #fd:Landroid/media/FaceDetector;
    .end local v10           #found:I
    :cond_3
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->rgbi:[I

    iget v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->height:I

    iget v2, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->width:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    .line 102
    .restart local v7       #b:Landroid/graphics/Bitmap;
    :cond_4
    new-instance v9, Landroid/media/FaceDetector;

    iget v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->height:I

    iget v1, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->width:I

    invoke-direct {v9, v0, v1, v11}, Landroid/media/FaceDetector;-><init>(III)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v0, Lcom/spritefish/camera/RotationManager;

    invoke-direct {v0, p0}, Lcom/spritefish/camera/RotationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->rotationManager:Lcom/spritefish/camera/RotationManager;

    .line 50
    const-string v0, "insta"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->requestWindowFeature(I)Z

    .line 56
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->setContentView(I)V

    .line 59
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/controls/PreviewControl;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    .line 60
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    new-instance v1, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$1;-><init>(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)V

    invoke-virtual {v0, v1}, Lcom/spritefish/camera/controls/PreviewControl;->setCameraInitializeListener(Lcom/spritefish/camera/controls/CameraInitListener;)V

    .line 82
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;

    new-instance v1, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$2;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity$2;-><init>(Lcom/spritefish/fastburstcamera/activities/FaceDetectActivity;)V

    .line 91
    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/spritefish/camera/controls/PreviewControl;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;Z)V

    .line 93
    return-void
.end method
