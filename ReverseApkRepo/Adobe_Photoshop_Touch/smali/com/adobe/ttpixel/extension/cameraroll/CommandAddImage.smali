.class public Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;
.super Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;


# static fields
.field protected static final APP_NAME:Ljava/lang/String; = "Adobe\u00ae Photoshop\u00ae Touch"


# instance fields
.field protected iDescription:Ljava/lang/String;

.field protected iImageData:Ljava/nio/ByteBuffer;

.field protected iIsPng:Z

.field protected iTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;Ljava/lang/String;Ljava/nio/ByteBuffer;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;-><init>(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;Ljava/lang/String;)V

    iput-boolean p4, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iIsPng:Z

    iput-object p5, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iDescription:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iImageData:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iImageData:Ljava/nio/ByteBuffer;

    invoke-static {v0, p3}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->copyDirect(Ljava/nio/Buffer;Ljava/nio/Buffer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->disposeImageData()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iImageData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iImageData:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method protected static storeImageContent(Ljava/nio/ByteBuffer;Z)Ljava/io/File;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Ljava/io/File;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "Adobe\u00ae Photoshop\u00ae Touch"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    const-string v0, ".png"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-interface {v3}, Ljava/nio/channels/WritableByteChannel;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const-string v0, ".jpg"

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method protected disposeImageData()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iImageData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iImageData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->freeDirect(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iImageData:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method execute()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v9, 0x3e8

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iImageData:Ljava/nio/ByteBuffer;

    iget-boolean v2, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iIsPng:Z

    invoke-static {v0, v2}, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->storeImageContent(Ljava/nio/ByteBuffer;Z)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "_data"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mime_type"

    iget-boolean v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iIsPng:Z

    if-eqz v0, :cond_3

    const-string v0, "image/png"

    :goto_0
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "datetaken"

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "date_added"

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    div-long/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "date_modified"

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    div-long/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "description"

    iget-object v4, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iDescription:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "title"

    iget-object v4, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iTitle:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    iget-object v4, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iTitle:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->disposeImageData()V

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->setDispatchStatusEventCode(Ljava/lang/String;)V

    return v1

    :cond_3
    const-string v0, "image/jpeg"

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v8, :cond_4

    invoke-virtual {v3, v8, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->disposeImageData()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDispatchStatusEventLevel()Ljava/lang/String;
    .locals 1

    const-string v0, "addImageComplete"

    return-object v0
.end method

.method shouldOutputBeRetained()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CommandAddImage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",imageData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iImageData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isPng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iIsPng:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iDescription:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iImageData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CommandAddImage;->iDescription:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
