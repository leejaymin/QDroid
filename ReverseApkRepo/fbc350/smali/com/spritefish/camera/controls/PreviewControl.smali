.class public Lcom/spritefish/camera/controls/PreviewControl;
.super Landroid/view/SurfaceView;
.source "PreviewControl.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field static lastSnapshot:J


# instance fields
.field private blackWhiteMode:Z

.field camId:I

.field private cameraInitListener:Lcom/spritefish/camera/controls/CameraInitListener;

.field context:Landroid/content/Context;

.field initializedOk:Z

.field mCamera:Landroid/hardware/Camera;

.field mHolder:Landroid/view/SurfaceHolder;

.field private previewCallBack:Landroid/hardware/Camera$PreviewCallback;

.field private previewHeight:I

.field private previewWidth:I

.field private startBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/camera/memory/BufferSet;",
            ">;"
        }
    .end annotation
.end field

.field timer:Ljava/util/Timer;

.field zoomNumberformatter:Ljava/text/NumberFormat;

.field private zoomValue:I

.field private zoomValueAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/spritefish/camera/controls/PreviewControl;->lastSnapshot:J

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 31
    iput v2, p0, Lcom/spritefish/camera/controls/PreviewControl;->camId:I

    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->timer:Ljava/util/Timer;

    .line 44
    iput-boolean v2, p0, Lcom/spritefish/camera/controls/PreviewControl;->blackWhiteMode:Z

    .line 45
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->zoomNumberformatter:Ljava/text/NumberFormat;

    .line 46
    iput-boolean v2, p0, Lcom/spritefish/camera/controls/PreviewControl;->initializedOk:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->startBuffer:Ljava/util/List;

    .line 72
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->zoomValueAsString:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/spritefish/camera/controls/PreviewControl;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mHolder:Landroid/view/SurfaceHolder;

    .line 82
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 83
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v2, p0, Lcom/spritefish/camera/controls/PreviewControl;->camId:I

    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->timer:Ljava/util/Timer;

    .line 44
    iput-boolean v2, p0, Lcom/spritefish/camera/controls/PreviewControl;->blackWhiteMode:Z

    .line 45
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->zoomNumberformatter:Ljava/text/NumberFormat;

    .line 46
    iput-boolean v2, p0, Lcom/spritefish/camera/controls/PreviewControl;->initializedOk:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->startBuffer:Ljava/util/List;

    .line 72
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->zoomValueAsString:Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/spritefish/camera/controls/PreviewControl;->context:Landroid/content/Context;

    .line 137
    return-void
.end method

.method private getCamera(I)Landroid/hardware/Camera;
    .locals 7
    .parameter "attempts"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    .line 145
    .local v0, cam:Landroid/hardware/Camera;
    const/4 v3, 0x0

    .line 146
    .local v3, i:I
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-lt v3, p1, :cond_3

    .line 190
    :cond_1
    iget-object v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-nez v4, :cond_5

    .line 192
    const-string v4, "insta"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FAILED camera after "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attempts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->cameraInitListener:Lcom/spritefish/camera/controls/CameraInitListener;

    if-eqz v4, :cond_2

    .line 194
    iget-object v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->cameraInitListener:Lcom/spritefish/camera/controls/CameraInitListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/spritefish/camera/controls/CameraInitListener;->OnCameraInitialized(Landroid/hardware/Camera;)V

    .line 198
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    return-object v4

    .line 148
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 149
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-gt v4, v5, :cond_4

    .line 150
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 153
    :goto_2
    if-eqz v0, :cond_0

    .line 155
    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    .line 175
    iget-object v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->cameraInitListener:Lcom/spritefish/camera/controls/CameraInitListener;

    if-eqz v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->cameraInitListener:Lcom/spritefish/camera/controls/CameraInitListener;

    invoke-interface {v4, v0}, Lcom/spritefish/camera/controls/CameraInitListener;->OnCameraInitialized(Landroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "preview"

    invoke-static {v4, v1}, Lcom/spritefish/camera/LO;->reportException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 181
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 184
    :catch_1
    move-exception v2

    .line 185
    .local v2, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #e1:Ljava/lang/InterruptedException;
    :cond_4
    :try_start_2
    iget v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->camId:I

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2

    .line 197
    :cond_5
    const-string v4, "insta"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "got camera after "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attempts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initSurface(Landroid/view/SurfaceHolder;)Z
    .locals 7
    .parameter "holder"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 260
    invoke-direct {p0, v3}, Lcom/spritefish/camera/controls/PreviewControl;->getCamera(I)Landroid/hardware/Camera;

    .line 263
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->initializedOk:Z

    .line 264
    iget-object v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 291
    :goto_0
    return v2

    .line 268
    :cond_0
    iget-object v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 269
    iget-object v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->previewCallBack:Landroid/hardware/Camera$PreviewCallback;

    if-eqz v4, :cond_1

    .line 270
    iget-object v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/spritefish/camera/controls/PreviewControl;->previewCallBack:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 271
    :cond_1
    iget-object v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->startBuffer:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :try_start_1
    iget-object v5, p0, Lcom/spritefish/camera/controls/PreviewControl;->startBuffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 275
    iget-object v5, p0, Lcom/spritefish/camera/controls/PreviewControl;->startBuffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 279
    iget-object v5, p0, Lcom/spritefish/camera/controls/PreviewControl;->startBuffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 271
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :try_start_2
    iget-object v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 283
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/spritefish/camera/controls/PreviewControl;->initializedOk:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v3

    .line 291
    goto :goto_0

    .line 275
    :cond_3
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spritefish/camera/memory/BufferSet;

    .line 277
    .local v1, g:Lcom/spritefish/camera/memory/BufferSet;
    invoke-virtual {p0, v1}, Lcom/spritefish/camera/controls/PreviewControl;->addBufferSet(Lcom/spritefish/camera/memory/BufferSet;)V

    goto :goto_1

    .line 271
    .end local v1           #g:Lcom/spritefish/camera/memory/BufferSet;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, exception:Ljava/lang/Exception;
    const-string v3, "preview"

    invoke-static {v3, v0}, Lcom/spritefish/camera/LO;->reportException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 286
    const-string v3, "insta"

    const-string v4, "failed to get camera"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    iget-object v3, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 288
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    goto :goto_0
.end method


# virtual methods
.method public addBufferSet(Lcom/spritefish/camera/memory/BufferSet;)V
    .locals 2
    .parameter "bs"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Lcom/spritefish/camera/memory/BufferSet;->getPixels()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 314
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->startBuffer:Ljava/util/List;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->startBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->camId:I

    return v0
.end method

.method public getCameraInstance()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getExposureSteps()I
    .locals 5

    .prologue
    .line 95
    iget-object v3, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 96
    .local v0, p:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 97
    .local v1, step:Ljava/lang/Float;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float v2, v3, v4

    .line 98
    .local v2, steps:F
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3
.end method

.method public getMaxExposure()F
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 110
    .local v0, p:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method public getMaxZoomValue()F
    .locals 7

    .prologue
    .line 404
    iget-object v5, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 405
    .local v3, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v4

    .line 406
    .local v4, zoomRatios:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 408
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 409
    .local v1, maxZoom:I
    int-to-float v5, v1

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    .line 419
    .end local v1           #maxZoom:I
    :goto_0
    return v5

    .line 415
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "taking-picture-zoom-max"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 416
    .local v2, maxzoom:I
    div-int/lit8 v5, v2, 0xa
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v5, v5

    goto :goto_0

    .line 417
    .end local v2           #maxzoom:I
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/Exception;
    const/high16 v5, 0x3f80

    goto :goto_0
.end method

.method public getMinExposure()F
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 104
    .local v0, p:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method public getStepFromExposure()I
    .locals 7

    .prologue
    .line 123
    iget-object v5, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 124
    .local v1, p:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 125
    .local v3, step:Ljava/lang/Float;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v5

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float v4, v5, v6

    .line 126
    .local v4, steps:F
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v5

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v0, v5

    .line 127
    .local v0, normVal:F
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float v5, v0, v5

    float-to-int v2, v5

    .line 128
    .local v2, result:I
    return v2
.end method

.method public getZoomSteps()I
    .locals 7

    .prologue
    .line 426
    iget-object v5, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 427
    .local v3, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v4

    .line 428
    .local v4, zoomRatios:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    .line 431
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "taking-picture-zoom-min"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 432
    .local v2, minzoom:I
    iget-object v5, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "taking-picture-zoom-max"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 433
    .local v1, maxzoom:I
    sub-int v5, v1, v2

    .line 440
    .end local v1           #maxzoom:I
    .end local v2           #minzoom:I
    :goto_0
    return v5

    .line 435
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0

    .line 440
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method

.method public getZoomValue()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->zoomValue:I

    return v0
.end method

.method public getZoomValueAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->zoomValueAsString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInitOk()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->initializedOk:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/view/SurfaceView;->onFinishInflate()V

    .line 205
    invoke-virtual {p0}, Lcom/spritefish/camera/controls/PreviewControl;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mHolder:Landroid/view/SurfaceHolder;

    .line 206
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 208
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 209
    return-void
.end method

.method public returnUsedBuffer([B)V
    .locals 1
    .parameter "pixels"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 320
    :cond_0
    return-void
.end method

.method public setCameraId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 54
    :cond_0
    iput p1, p0, Lcom/spritefish/camera/controls/PreviewControl;->camId:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/spritefish/camera/controls/PreviewControl;->getCamera(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    .line 58
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/spritefish/camera/controls/PreviewControl;->initSurface(Landroid/view/SurfaceHolder;)Z

    .line 59
    return-void
.end method

.method public setCameraInitializeListener(Lcom/spritefish/camera/controls/CameraInitListener;)V
    .locals 1
    .parameter "cameraInitListener"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/spritefish/camera/controls/PreviewControl;->cameraInitListener:Lcom/spritefish/camera/controls/CameraInitListener;

    .line 397
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-interface {p1, v0}, Lcom/spritefish/camera/controls/CameraInitListener;->OnCameraInitialized(Landroid/hardware/Camera;)V

    .line 399
    :cond_0
    return-void
.end method

.method public setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "val"

    .prologue
    .line 450
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 453
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 457
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void
.end method

.method public setExposureFromStep(I)V
    .locals 5
    .parameter "step"

    .prologue
    .line 114
    iget-object v2, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 115
    .local v0, p:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 116
    .local v1, stepsize:Ljava/lang/Float;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 117
    iget-object v2, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 118
    return-void
.end method

.method public setFlashlight(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 324
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 327
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    const-string v2, "flash-mode"

    if-eqz p1, :cond_1

    const-string v1, "torch"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 330
    .end local v0           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void

    .line 327
    .restart local v0       #parameters:Landroid/hardware/Camera$Parameters;
    :cond_1
    const-string v1, "off"

    goto :goto_0
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;Z)V
    .locals 1
    .parameter "callback"
    .parameter "blackWhiteMode"

    .prologue
    .line 63
    iput-boolean p2, p0, Lcom/spritefish/camera/controls/PreviewControl;->blackWhiteMode:Z

    .line 64
    iput-object p1, p0, Lcom/spritefish/camera/controls/PreviewControl;->previewCallBack:Landroid/hardware/Camera$PreviewCallback;

    .line 65
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 67
    :cond_0
    return-void
.end method

.method public setZoom(I)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 339
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 343
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 344
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 352
    .end local v0           #parameters:Landroid/hardware/Camera$Parameters;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 353
    .restart local v0       #parameters:Landroid/hardware/Camera$Parameters;
    const-string v1, "taking-picture-zoom"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 354
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    .end local v0           #parameters:Landroid/hardware/Camera$Parameters;
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 363
    .restart local v0       #parameters:Landroid/hardware/Camera$Parameters;
    const-string v1, "zoom"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 364
    iget-object v1, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 372
    .end local v0           #parameters:Landroid/hardware/Camera$Parameters;
    :goto_2
    iput p1, p0, Lcom/spritefish/camera/controls/PreviewControl;->zoomValue:I

    .line 376
    :cond_0
    return-void

    .line 366
    :catch_0
    move-exception v1

    goto :goto_2

    .line 356
    :catch_1
    move-exception v1

    goto :goto_1

    .line 346
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public startCameraFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 383
    :cond_0
    return-void
.end method

.method public startCameraPreview()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "insta"

    const-string v1, "            ********** startCameraPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 221
    :cond_0
    return-void
.end method

.method public stopCamera()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 237
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    .line 240
    :cond_0
    return-void
.end method

.method public stopCameraPreview()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/spritefish/camera/controls/PreviewControl;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 231
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 243
    const-string v0, "insta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surfaceChanged w="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0, p1}, Lcom/spritefish/camera/controls/PreviewControl;->initSurface(Landroid/view/SurfaceHolder;)Z

    .line 248
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 252
    const-string v0, "insta"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/spritefish/camera/controls/PreviewControl;->getCamera(I)Landroid/hardware/Camera;

    .line 255
    invoke-direct {p0, p1}, Lcom/spritefish/camera/controls/PreviewControl;->initSurface(Landroid/view/SurfaceHolder;)Z

    .line 257
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/spritefish/camera/controls/PreviewControl;->stopCamera()V

    .line 301
    return-void
.end method
