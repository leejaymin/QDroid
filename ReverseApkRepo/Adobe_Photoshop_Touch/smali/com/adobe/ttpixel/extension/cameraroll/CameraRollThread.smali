.class public Lcom/adobe/ttpixel/extension/cameraroll/CameraRollThread;
.super Ljava/lang/Thread;


# instance fields
.field protected iDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field protected iThumbnailOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    const v0, 0x8000

    new-array v0, v0, [B

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollThread;->iThumbnailOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollThread;->iThumbnailOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollThread;->iThumbnailOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollThread;->iDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollThread;->iDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    return-void
.end method


# virtual methods
.method getDecodeOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollThread;->iDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method getThumbnailOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollThread;->iThumbnailOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public run()V
    .locals 5

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollThread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    check-cast v0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->getCommandInputQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->execute()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    :try_start_2
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed execution"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->shouldOutputBeRetained()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->retainCommandOutput(Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;)V

    :cond_1
    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->getExtensionContext()Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;

    move-result-object v2

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->getDispatchStatusEventCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->getDispatchStatusEventLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    return-void

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
