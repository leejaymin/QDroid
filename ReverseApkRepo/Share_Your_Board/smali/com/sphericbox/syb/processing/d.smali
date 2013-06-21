.class final Lcom/sphericbox/syb/processing/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final A:Ljava/lang/String;

.field final synthetic n:Lcom/sphericbox/syb/processing/ProcessingService;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/processing/ProcessingService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/sphericbox/syb/processing/d;->A:Ljava/lang/String;

    .line 169
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/16 v3, 0x78

    const/4 v6, 0x1

    const-string v5, "ProcessingService"

    .line 262
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 263
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 264
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v2, p1}, Lcom/sphericbox/syb/processing/ProcessingService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 266
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 271
    const-string v1, "ProcessingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmap size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 273
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4496

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/sphericbox/syb/a/m;->a(F)I

    move-result v1

    .line 274
    const-string v2, "ProcessingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sampleX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4461

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/sphericbox/syb/a/m;->a(F)I

    move-result v2

    .line 276
    const-string v3, "ProcessingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sampleY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {v1, v2}, Lcom/sphericbox/syb/a/m;->max(II)I

    move-result v1

    invoke-static {v6, v1}, Lcom/sphericbox/syb/a/m;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 279
    const-string v1, "ProcessingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sampling size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v2, p1}, Lcom/sphericbox/syb/processing/ProcessingService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 283
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 284
    const-string v3, "ProcessingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processing bitmap size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v2

    .line 268
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 287
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    const v1, 0x7f08001d

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sphericbox/syb/processing/ProcessingService;->progress(III)Z

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-direct {p0, v0}, Lcom/sphericbox/syb/processing/d;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 298
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 301
    new-instance v2, Lcom/sphericbox/syb/h;

    iget-object v3, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-direct {v2, v3}, Lcom/sphericbox/syb/h;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 303
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/sphericbox/syb/h;->a(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :try_start_2
    invoke-virtual {v2}, Lcom/sphericbox/syb/h;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 308
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 310
    return-void

    .line 305
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Lcom/sphericbox/syb/h;->release()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/sphericbox/syb/processing/d;->l()Ljava/io/File;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private gc()V
    .locals 3

    .prologue
    .line 244
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 245
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 246
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 247
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->gcSoftReferences()V

    .line 248
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method private k()V
    .locals 7

    .prologue
    const v6, 0x7f08002a

    const/4 v5, 0x0

    .line 253
    iget-object v0, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v0, v6}, Lcom/sphericbox/syb/processing/ProcessingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 254
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020014

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 255
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    const-class v4, Lcom/sphericbox/syb/processing/ProcessingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    iget-object v3, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 257
    iget-object v3, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    iget-object v4, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    const v5, 0x7f08002b

    invoke-virtual {v4, v5}, Lcom/sphericbox/syb/processing/ProcessingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 258
    iget-object v0, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingService;->bl:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingService;->access$300(Lcom/sphericbox/syb/processing/ProcessingService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 259
    return-void
.end method

.method private l()Ljava/io/File;
    .locals 3

    .prologue
    .line 318
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 320
    new-instance v1, Ljava/io/File;

    const-string v2, "ShareYourBoard"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    new-instance v0, Ljava/io/IOException;

    const-string v1, "/sdcard/ShareYourBoard should be a directory."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SDCard is not accessible."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-class v0, Lcom/sphericbox/syb/processing/IProcessingService;

    const-string v0, "Image processing failed"

    const-string v9, "ProcessingService"

    .line 173
    :try_start_0
    invoke-direct {p0}, Lcom/sphericbox/syb/processing/d;->k()V

    .line 175
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    const-class v2, Lcom/sphericbox/syb/processing/ProcessingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v1, v0}, Lcom/sphericbox/syb/processing/ProcessingService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 179
    const/4 v6, 0x0

    .line 180
    const/4 v7, 0x0

    .line 183
    :try_start_1
    new-instance v8, Lcom/sphericbox/syb/a;

    invoke-direct {v8}, Lcom/sphericbox/syb/a;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 187
    :try_start_2
    iget-object v0, p0, Lcom/sphericbox/syb/processing/d;->A:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sphericbox/syb/processing/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 193
    if-eqz v2, :cond_0

    .line 194
    :try_start_3
    invoke-static {}, Lcom/sphericbox/syb/processing/ProcessingService;->access$100()Lcom/sphericbox/syb/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    iget-object v3, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingService;->am:Lcom/sphericbox/syb/processing/ProcessingConfig;
    invoke-static {v3}, Lcom/sphericbox/syb/processing/ProcessingService;->access$200(Lcom/sphericbox/syb/processing/ProcessingService;)Lcom/sphericbox/syb/processing/ProcessingConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sphericbox/syb/processing/ProcessingConfig;->isAutoContrastEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingService;->am:Lcom/sphericbox/syb/processing/ProcessingConfig;
    invoke-static {v4}, Lcom/sphericbox/syb/processing/ProcessingService;->access$200(Lcom/sphericbox/syb/processing/ProcessingService;)Lcom/sphericbox/syb/processing/ProcessingConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sphericbox/syb/processing/ProcessingConfig;->isEdgesGeometryEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingService;->am:Lcom/sphericbox/syb/processing/ProcessingConfig;
    invoke-static {v5}, Lcom/sphericbox/syb/processing/ProcessingService;->access$200(Lcom/sphericbox/syb/processing/ProcessingService;)Lcom/sphericbox/syb/processing/ProcessingConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sphericbox/syb/processing/ProcessingConfig;->isEnhaceEnabled()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sphericbox/syb/a/p;->a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;Landroid/graphics/Bitmap;ZZZ)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    .line 201
    :try_start_4
    invoke-direct {p0, v0}, Lcom/sphericbox/syb/processing/d;->a(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 207
    :try_start_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    :cond_0
    const-string v0, "ProcessingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processing completed in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 213
    :try_start_6
    iget-object v0, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    iget-object v1, p0, Lcom/sphericbox/syb/processing/d;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/processing/ProcessingService;->deleteFile(Ljava/lang/String;)Z

    .line 214
    invoke-direct {p0}, Lcom/sphericbox/syb/processing/d;->gc()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/sphericbox/syb/a/f; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 225
    :try_start_7
    iget-object v0, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingService;->bl:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingService;->access$300(Lcom/sphericbox/syb/processing/ProcessingService;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sphericbox/syb/processing/IProcessingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v1, v0}, Lcom/sphericbox/syb/processing/ProcessingService;->stopService(Landroid/content/Intent;)Z

    .line 230
    if-nez v6, :cond_1

    .line 231
    iget-object v0, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v0}, Lcom/sphericbox/syb/processing/ProcessingService;->processingCompleted()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 241
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const/4 v1, 0x1

    .line 190
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 213
    :catchall_0
    move-exception v0

    :goto_1
    :try_start_9
    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    iget-object v3, p0, Lcom/sphericbox/syb/processing/d;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sphericbox/syb/processing/ProcessingService;->deleteFile(Ljava/lang/String;)Z

    .line 214
    invoke-direct {p0}, Lcom/sphericbox/syb/processing/d;->gc()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Lcom/sphericbox/syb/a/f; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    .line 216
    :catch_1
    move-exception v0

    move v0, v1

    .line 225
    :goto_2
    :try_start_a
    iget-object v1, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingService;->bl:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/sphericbox/syb/processing/ProcessingService;->access$300(Lcom/sphericbox/syb/processing/ProcessingService;)Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 227
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sphericbox/syb/processing/IProcessingService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v2, v1}, Lcom/sphericbox/syb/processing/ProcessingService;->stopService(Landroid/content/Intent;)Z

    .line 230
    if-nez v6, :cond_2

    .line 231
    iget-object v0, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v0}, Lcom/sphericbox/syb/processing/ProcessingService;->processingCompleted()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_0

    .line 238
    :catch_2
    move-exception v0

    .line 239
    const-string v1, "ProcessingService"

    const-string v1, "Remote exception"

    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    :catch_3
    move-exception v0

    .line 203
    const/4 v1, 0x2

    .line 204
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 233
    :cond_1
    :try_start_c
    const-string v0, "ProcessingService"

    const-string v1, "Image processing failed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    iget-object v0, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-static {v0, v6}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v1, v7, v0}, Lcom/sphericbox/syb/processing/ProcessingService;->processingFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_2
    const-string v1, "ProcessingService"

    const-string v2, "Image processing failed"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    iget-object v1, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-static {v1, v6}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v2, v0, v1}, Lcom/sphericbox/syb/processing/ProcessingService;->processingFailed(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_0

    .line 218
    :catch_4
    move-exception v0

    move v1, v7

    .line 219
    :goto_3
    :try_start_d
    invoke-direct {p0}, Lcom/sphericbox/syb/processing/d;->gc()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 221
    const/4 v1, 0x3

    .line 225
    :try_start_e
    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingService;->bl:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/sphericbox/syb/processing/ProcessingService;->access$300(Lcom/sphericbox/syb/processing/ProcessingService;)Landroid/app/NotificationManager;

    move-result-object v2

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 227
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sphericbox/syb/processing/IProcessingService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v3, v2}, Lcom/sphericbox/syb/processing/ProcessingService;->stopService(Landroid/content/Intent;)Z

    .line 230
    if-nez v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v0}, Lcom/sphericbox/syb/processing/ProcessingService;->processingCompleted()V

    goto/16 :goto_0

    .line 233
    :cond_3
    const-string v2, "ProcessingService"

    const-string v3, "Image processing failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-static {v2, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v2, v1, v0}, Lcom/sphericbox/syb/processing/ProcessingService;->processingFailed(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :catch_5
    move-exception v0

    move v1, v7

    .line 225
    :goto_4
    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingService;->bl:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/sphericbox/syb/processing/ProcessingService;->access$300(Lcom/sphericbox/syb/processing/ProcessingService;)Landroid/app/NotificationManager;

    move-result-object v2

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 227
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sphericbox/syb/processing/IProcessingService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v3, v2}, Lcom/sphericbox/syb/processing/ProcessingService;->stopService(Landroid/content/Intent;)Z

    .line 230
    if-nez v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v0}, Lcom/sphericbox/syb/processing/ProcessingService;->processingCompleted()V

    goto/16 :goto_0

    .line 233
    :cond_4
    const-string v2, "ProcessingService"

    const-string v3, "Image processing failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-static {v2, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v2, v1, v0}, Lcom/sphericbox/syb/processing/ProcessingService;->processingFailed(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :catchall_1
    move-exception v0

    move v1, v7

    :goto_5
    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingService;->bl:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/sphericbox/syb/processing/ProcessingService;->access$300(Lcom/sphericbox/syb/processing/ProcessingService;)Landroid/app/NotificationManager;

    move-result-object v2

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 227
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sphericbox/syb/processing/IProcessingService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v3, v2}, Lcom/sphericbox/syb/processing/ProcessingService;->stopService(Landroid/content/Intent;)Z

    .line 230
    if-nez v6, :cond_5

    .line 231
    iget-object v1, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v1}, Lcom/sphericbox/syb/processing/ProcessingService;->processingCompleted()V

    .line 237
    :goto_6
    throw v0

    .line 233
    :cond_5
    const-string v2, "ProcessingService"

    const-string v3, "Image processing failed"

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    iget-object v2, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-static {v2, v6}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 235
    iget-object v3, p0, Lcom/sphericbox/syb/processing/d;->n:Lcom/sphericbox/syb/processing/ProcessingService;

    invoke-virtual {v3, v1, v2}, Lcom/sphericbox/syb/processing/ProcessingService;->processingFailed(ILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_6

    .line 225
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 222
    :catch_6
    move-exception v0

    goto :goto_4

    .line 218
    :catch_7
    move-exception v0

    goto/16 :goto_3

    .line 216
    :catch_8
    move-exception v0

    move v0, v7

    goto/16 :goto_2

    .line 213
    :catchall_3
    move-exception v0

    move v1, v7

    goto/16 :goto_1
.end method
