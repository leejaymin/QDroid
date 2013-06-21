.class Lcom/ui/LapseIt/capture/CaptureThread$3;
.super Ljava/lang/Object;
.source "CaptureThread.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/CaptureThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/CaptureThread;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v5, 0x0

    .line 376
    const-string v3, "trace"

    const-string v4, "Taking picture"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureThread;->access$0(Lcom/ui/LapseIt/capture/CaptureThread;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v3

    iput-boolean v5, v3, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, finalBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-boolean v3, v3, Lcom/ui/LapseIt/capture/CaptureThread;->isFullSensor:Z

    if-eqz v3, :cond_1

    .line 382
    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {}, Lcom/ui/LapseIt/capture/CaptureThread;->access$15()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 387
    :goto_0
    if-eqz v1, :cond_2

    .line 388
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->cResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureThread;->access$17(Lcom/ui/LapseIt/capture/CaptureThread;)Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureThread;->projectUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    #setter for: Lcom/ui/LapseIt/capture/CaptureThread;->outStream:Ljava/io/OutputStream;
    invoke-static {v3, v4}, Lcom/ui/LapseIt/capture/CaptureThread;->access$18(Lcom/ui/LapseIt/capture/CaptureThread;Ljava/io/OutputStream;)V

    .line 390
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->qualityLevel:I
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureThread;->access$19(Lcom/ui/LapseIt/capture/CaptureThread;)I

    move-result v4

    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->outStream:Ljava/io/OutputStream;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureThread;->access$20(Lcom/ui/LapseIt/capture/CaptureThread;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 391
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->outStream:Ljava/io/OutputStream;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureThread;->access$20(Lcom/ui/LapseIt/capture/CaptureThread;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 392
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->outStream:Ljava/io/OutputStream;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureThread;->access$20(Lcom/ui/LapseIt/capture/CaptureThread;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 394
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    const/4 v4, 0x0

    #setter for: Lcom/ui/LapseIt/capture/CaptureThread;->outStream:Ljava/io/OutputStream;
    invoke-static {v3, v4}, Lcom/ui/LapseIt/capture/CaptureThread;->access$18(Lcom/ui/LapseIt/capture/CaptureThread;Ljava/io/OutputStream;)V

    .line 395
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 396
    const/4 v1, 0x0

    .line 401
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 403
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-boolean v3, v3, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    if-eqz v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    const/4 v4, 0x1

    #setter for: Lcom/ui/LapseIt/capture/CaptureThread;->saveImageReady:Z
    invoke-static {v3, v4}, Lcom/ui/LapseIt/capture/CaptureThread;->access$21(Lcom/ui/LapseIt/capture/CaptureThread;Z)V

    .line 416
    :cond_0
    :goto_2
    return-void

    .line 384
    :cond_1
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->imageRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureThread;->access$16(Lcom/ui/LapseIt/capture/CaptureThread;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->imageRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureThread;->access$16(Lcom/ui/LapseIt/capture/CaptureThread;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Lui/utils/ImageUtils;->inSampleSizedBitmap([BIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 398
    :cond_2
    const-string v3, "trace"

    const-string v4, "Couldn\'t save the image"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 408
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->parent:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureThread;->access$0(Lcom/ui/LapseIt/capture/CaptureThread;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v3

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #getter for: Lcom/ui/LapseIt/capture/CaptureThread;->sdRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureThread;->access$22(Lcom/ui/LapseIt/capture/CaptureThread;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ui/LapseIt/capture/CaptureView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 409
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #calls: Lcom/ui/LapseIt/capture/CaptureThread;->buildOutOfMemoryDialog()V
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureThread;->access$23(Lcom/ui/LapseIt/capture/CaptureThread;)V

    goto :goto_2

    .line 412
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 413
    .local v2, oome:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 414
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureThread$3;->this$0:Lcom/ui/LapseIt/capture/CaptureThread;

    #calls: Lcom/ui/LapseIt/capture/CaptureThread;->buildOutOfMemoryDialog()V
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureThread;->access$23(Lcom/ui/LapseIt/capture/CaptureThread;)V

    goto :goto_2
.end method
