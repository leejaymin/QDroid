.class public Lcom/ui/LapseIt/project/Renderer$RenderTask;
.super Landroid/os/AsyncTask;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/io/File;",
        ">;",
        "Ljava/io/File;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private isCanceled:Z

.field private renderIndex:I

.field final synthetic this$0:Lcom/ui/LapseIt/project/Renderer;

.field private updateProgress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/ui/LapseIt/project/Renderer;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 228
    new-instance v0, Lcom/ui/LapseIt/project/Renderer$RenderTask$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/Renderer$RenderTask$1;-><init>(Lcom/ui/LapseIt/project/Renderer$RenderTask;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 384
    new-instance v0, Lcom/ui/LapseIt/project/Renderer$RenderTask$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/Renderer$RenderTask$2;-><init>(Lcom/ui/LapseIt/project/Renderer$RenderTask;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->updateProgress:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/project/Renderer$RenderTask;)Z
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->isCanceled:Z

    return v0
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/project/Renderer$RenderTask;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->isCanceled:Z

    return-void
.end method

.method static synthetic access$5(Lcom/ui/LapseIt/project/Renderer$RenderTask;)I
    .locals 1
    .parameter

    .prologue
    .line 193
    iget v0, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->renderIndex:I

    return v0
.end method

.method static synthetic access$6(Lcom/ui/LapseIt/project/Renderer$RenderTask;)Lcom/ui/LapseIt/project/Renderer;
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 30
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 244
    sget-object v2, Lcom/ui/LapseIt/Main;->uncaughtHandler:Lui/utils/CustomUncaughtExceptionHandler;

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 248
    const/4 v2, 0x0

    :try_start_0
    aget-object v19, p1, v2

    .line 250
    .local v19, fileArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    iget-boolean v2, v2, Lcom/ui/LapseIt/project/Renderer;->isFullSensor:Z

    if-eqz v2, :cond_4

    .line 255
    const/16 v5, 0x500

    .line 256
    .local v5, clipWidth:I
    const/16 v6, 0x2d0

    .line 263
    .local v6, clipHeight:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    mul-int v3, v5, v6

    new-array v3, v3, [I

    #setter for: Lcom/ui/LapseIt/project/Renderer;->coloursArray:[I
    invoke-static {v2, v3}, Lcom/ui/LapseIt/project/Renderer;->access$7(Lcom/ui/LapseIt/project/Renderer;[I)V

    .line 265
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$8()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    .line 266
    .local v20, filepath:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, videoFormat:Ljava/lang/String;
    const-string v2, " "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 269
    :cond_0
    const-string v2, "\\."

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 270
    .local v18, extArray:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v18, v2

    .line 271
    .local v17, ext:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 272
    move-object/from16 v4, v17

    .line 276
    .end local v17           #ext:Ljava/lang/String;
    .end local v18           #extArray:[Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$9()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$9()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 277
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$10()F

    move-result v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    float-to-int v15, v2

    .line 278
    .local v15, audioOffsetInSecs:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$8()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x18

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$11()I

    move-result v8

    const/4 v9, 0x1

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$9()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    int-to-long v11, v15

    #calls: Lcom/ui/LapseIt/project/Renderer;->openVideo(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;J)I
    invoke-static/range {v2 .. v12}, Lcom/ui/LapseIt/project/Renderer;->access$12(Lcom/ui/LapseIt/project/Renderer;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;J)I

    .line 283
    .end local v15           #audioOffsetInSecs:I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v7, 0x4038

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$13()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    mul-double v28, v2, v7

    .line 285
    .local v28, totalRenderedFrames:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v2

    move-wide/from16 v0, v28

    double-to-int v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 288
    const/16 v21, 0x0

    .local v21, i:I
    :goto_2
    move/from16 v0, v21

    int-to-double v2, v0

    cmpg-double v2, v2, v28

    if-ltz v2, :cond_6

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #calls: Lcom/ui/LapseIt/project/Renderer;->closeVideo()I
    invoke-static {v3}, Lcom/ui/LapseIt/project/Renderer;->access$18(Lcom/ui/LapseIt/project/Renderer;)I

    move-result v3

    #setter for: Lcom/ui/LapseIt/project/Renderer;->renderResult:I
    invoke-static {v2, v3}, Lcom/ui/LapseIt/project/Renderer;->access$19(Lcom/ui/LapseIt/project/Renderer;I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    const/4 v3, 0x0

    #setter for: Lcom/ui/LapseIt/project/Renderer;->coloursArray:[I
    invoke-static {v2, v3}, Lcom/ui/LapseIt/project/Renderer;->access$7(Lcom/ui/LapseIt/project/Renderer;[I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->bitmapToRender:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$15(Lcom/ui/LapseIt/project/Renderer;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->bitmapToRender:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$15(Lcom/ui/LapseIt/project/Renderer;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    const/4 v3, 0x0

    #setter for: Lcom/ui/LapseIt/project/Renderer;->bitmapToRender:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/ui/LapseIt/project/Renderer;->access$14(Lcom/ui/LapseIt/project/Renderer;Landroid/graphics/Bitmap;)V

    .line 325
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 327
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$20()Ljava/io/File;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$21()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$22(Ljava/io/File;)V

    .line 329
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-double v7, v7

    mul-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v25, v0

    .line 331
    .local v25, randomImage:I
    const/16 v24, 0x0

    .line 334
    .local v24, qualityString:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v3

    const-string v7, "renderquality"

    invoke-static {v3, v7}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/ui/LapseIt/settings/SettingsHelper;->parseQuality(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v24

    .line 340
    :goto_3
    :try_start_2
    sget-object v2, Lcom/ui/LapseIt/project/EffectsView;->currentEffect:Lui/utils/ImageUtils$EFFECTS;

    sget-object v3, Lui/utils/ImageUtils$EFFECTS;->NO_EFFECT:Lui/utils/ImageUtils$EFFECTS;

    if-ne v2, v3, :cond_a

    .line 341
    if-eqz v24, :cond_3

    if-eqz v24, :cond_9

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 342
    :cond_3
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x83

    const/16 v7, 0x47

    const/4 v8, 0x0

    invoke-static {v2, v3, v7, v8}, Lui/utils/ImageUtils;->inSampleSizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 350
    .local v26, thumbImage:Landroid/graphics/Bitmap;
    :goto_4
    new-instance v23, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$23()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 351
    .local v23, outStream:Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 352
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->flush()V

    .line 353
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    .line 354
    const/16 v23, 0x0

    .line 356
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V

    .line 357
    const/16 v26, 0x0

    .line 359
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->renderResult:I
    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$24(Lcom/ui/LapseIt/project/Renderer;)I

    move-result v2

    if-nez v2, :cond_b

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #calls: Lcom/ui/LapseIt/project/Renderer;->updateContentProvider()Z
    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$25(Lcom/ui/LapseIt/project/Renderer;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 380
    .end local v4           #videoFormat:Ljava/lang/String;
    .end local v5           #clipWidth:I
    .end local v6           #clipHeight:I
    .end local v19           #fileArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v20           #filepath:Ljava/lang/String;
    .end local v21           #i:I
    .end local v23           #outStream:Ljava/io/OutputStream;
    .end local v24           #qualityString:Ljava/lang/String;
    .end local v25           #randomImage:I
    .end local v26           #thumbImage:Landroid/graphics/Bitmap;
    .end local v28           #totalRenderedFrames:D
    :goto_5
    return-object v2

    .line 258
    .restart local v19       #fileArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$6()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 259
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$6()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 260
    .restart local v5       #clipWidth:I
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$6()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .restart local v6       #clipHeight:I
    goto/16 :goto_0

    .line 280
    .restart local v4       #videoFormat:Ljava/lang/String;
    .restart local v20       #filepath:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$8()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x18

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$11()I

    move-result v8

    const/4 v9, 0x0

    const-string v10, ""

    const-wide/16 v11, 0x0

    #calls: Lcom/ui/LapseIt/project/Renderer;->openVideo(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;J)I
    invoke-static/range {v2 .. v12}, Lcom/ui/LapseIt/project/Renderer;->access$12(Lcom/ui/LapseIt/project/Renderer;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;J)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_1

    .line 366
    .end local v4           #videoFormat:Ljava/lang/String;
    .end local v5           #clipWidth:I
    .end local v6           #clipHeight:I
    .end local v19           #fileArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v20           #filepath:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 367
    .local v16, e:Ljava/io/FileNotFoundException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 368
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_5

    .line 289
    .end local v16           #e:Ljava/io/FileNotFoundException;
    .restart local v4       #videoFormat:Ljava/lang/String;
    .restart local v5       #clipWidth:I
    .restart local v6       #clipHeight:I
    .restart local v19       #fileArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v20       #filepath:Ljava/lang/String;
    .restart local v21       #i:I
    .restart local v28       #totalRenderedFrames:D
    :cond_6
    move/from16 v0, v21

    int-to-double v2, v0

    div-double v2, v2, v28

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v27, v0

    .line 291
    .local v27, thumbIndex:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->isCanceled:Z

    if-eqz v2, :cond_7

    .line 292
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_5

    .line 295
    :cond_7
    sget-object v2, Lcom/ui/LapseIt/project/EffectsView;->currentEffect:Lui/utils/ImageUtils$EFFECTS;

    sget-object v3, Lui/utils/ImageUtils$EFFECTS;->NO_EFFECT:Lui/utils/ImageUtils$EFFECTS;

    if-ne v2, v3, :cond_8

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7}, Lui/utils/ImageUtils;->inSampleSizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/ui/LapseIt/project/Renderer;->bitmapToRender:Landroid/graphics/Bitmap;
    invoke-static {v3, v2}, Lcom/ui/LapseIt/project/Renderer;->access$14(Lcom/ui/LapseIt/project/Renderer;Landroid/graphics/Bitmap;)V

    .line 301
    :goto_6
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Rendering frame with size "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->bitmapToRender:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$15(Lcom/ui/LapseIt/project/Renderer;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->coloursArray:[I
    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$16(Lcom/ui/LapseIt/project/Renderer;)[I

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v10, v5

    move v13, v5

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->bitmapToRender:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$15(Lcom/ui/LapseIt/project/Renderer;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    const/4 v3, 0x0

    #setter for: Lcom/ui/LapseIt/project/Renderer;->bitmapToRender:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/ui/LapseIt/project/Renderer;->access$14(Lcom/ui/LapseIt/project/Renderer;Landroid/graphics/Bitmap;)V

    .line 307
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->coloursArray:[I
    invoke-static {v3}, Lcom/ui/LapseIt/project/Renderer;->access$16(Lcom/ui/LapseIt/project/Renderer;)[I

    move-result-object v3

    #calls: Lcom/ui/LapseIt/project/Renderer;->writeFrame([I)I
    invoke-static {v2, v3}, Lcom/ui/LapseIt/project/Renderer;->access$17(Lcom/ui/LapseIt/project/Renderer;[I)I

    .line 311
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->renderIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->renderIndex:I

    .line 313
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/io/File;

    const/4 v7, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    aput-object v2, v3, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->onProgressUpdate([Ljava/io/File;)V

    .line 288
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 298
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7}, Lui/utils/ImageUtils;->inSampleSizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v7, Lcom/ui/LapseIt/project/EffectsView;->currentEffect:Lui/utils/ImageUtils$EFFECTS;

    invoke-static {v2, v7}, Lui/utils/ImageUtils;->applyBitmapEffect(Landroid/graphics/Bitmap;Lui/utils/ImageUtils$EFFECTS;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/ui/LapseIt/project/Renderer;->bitmapToRender:Landroid/graphics/Bitmap;
    invoke-static {v3, v2}, Lcom/ui/LapseIt/project/Renderer;->access$14(Lcom/ui/LapseIt/project/Renderer;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_6

    .line 369
    .end local v4           #videoFormat:Ljava/lang/String;
    .end local v5           #clipWidth:I
    .end local v6           #clipHeight:I
    .end local v19           #fileArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v20           #filepath:Ljava/lang/String;
    .end local v21           #i:I
    .end local v27           #thumbIndex:I
    .end local v28           #totalRenderedFrames:D
    :catch_1
    move-exception v16

    .line 370
    .local v16, e:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    .line 371
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_5

    .line 335
    .end local v16           #e:Ljava/io/IOException;
    .restart local v4       #videoFormat:Ljava/lang/String;
    .restart local v5       #clipWidth:I
    .restart local v6       #clipHeight:I
    .restart local v19       #fileArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v20       #filepath:Ljava/lang/String;
    .restart local v21       #i:I
    .restart local v24       #qualityString:Ljava/lang/String;
    .restart local v25       #randomImage:I
    .restart local v28       #totalRenderedFrames:D
    :catch_2
    move-exception v16

    .line 336
    .local v16, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_3

    .line 372
    .end local v4           #videoFormat:Ljava/lang/String;
    .end local v5           #clipWidth:I
    .end local v6           #clipHeight:I
    .end local v16           #e:Ljava/lang/Exception;
    .end local v19           #fileArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v20           #filepath:Ljava/lang/String;
    .end local v21           #i:I
    .end local v24           #qualityString:Ljava/lang/String;
    .end local v25           #randomImage:I
    .end local v28           #totalRenderedFrames:D
    :catch_3
    move-exception v16

    .line 373
    .local v16, e:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #calls: Lcom/ui/LapseIt/project/Renderer;->buildOutOfMemoryDialog()V
    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$26(Lcom/ui/LapseIt/project/Renderer;)V

    .line 374
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_5

    .line 344
    .end local v16           #e:Ljava/lang/RuntimeException;
    .restart local v4       #videoFormat:Ljava/lang/String;
    .restart local v5       #clipWidth:I
    .restart local v6       #clipHeight:I
    .restart local v19       #fileArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v20       #filepath:Ljava/lang/String;
    .restart local v21       #i:I
    .restart local v24       #qualityString:Ljava/lang/String;
    .restart local v25       #randomImage:I
    .restart local v28       #totalRenderedFrames:D
    :cond_9
    :try_start_5
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v5, v6, v3}, Lui/utils/ImageUtils;->inSampleSizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v26

    .restart local v26       #thumbImage:Landroid/graphics/Bitmap;
    goto/16 :goto_4

    .line 347
    .end local v26           #thumbImage:Landroid/graphics/Bitmap;
    :cond_a
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v5, v6, v3}, Lui/utils/ImageUtils;->inSampleSizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/ui/LapseIt/project/EffectsView;->currentEffect:Lui/utils/ImageUtils$EFFECTS;

    invoke-static {v2, v3}, Lui/utils/ImageUtils;->applyBitmapEffect(Landroid/graphics/Bitmap;Lui/utils/ImageUtils$EFFECTS;)Landroid/graphics/Bitmap;

    move-result-object v26

    .restart local v26       #thumbImage:Landroid/graphics/Bitmap;
    goto/16 :goto_4

    .line 364
    .restart local v23       #outStream:Ljava/io/OutputStream;
    :cond_b
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    goto/16 :goto_5

    .line 375
    .end local v4           #videoFormat:Ljava/lang/String;
    .end local v5           #clipWidth:I
    .end local v6           #clipHeight:I
    .end local v19           #fileArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v20           #filepath:Ljava/lang/String;
    .end local v21           #i:I
    .end local v23           #outStream:Ljava/io/OutputStream;
    .end local v24           #qualityString:Ljava/lang/String;
    .end local v25           #randomImage:I
    .end local v26           #thumbImage:Landroid/graphics/Bitmap;
    .end local v28           #totalRenderedFrames:D
    :catch_4
    move-exception v22

    .line 376
    .local v22, oome:Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #calls: Lcom/ui/LapseIt/project/Renderer;->buildOutOfMemoryDialog()V
    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$26(Lcom/ui/LapseIt/project/Renderer;)V

    .line 377
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_5

    .line 378
    .end local v22           #oome:Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v16

    .line 379
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_5
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getProjectView()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/ProjectView;->setRequestedOrientation(I)V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->isCanceled:Z

    .line 239
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 414
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 417
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v1

    const-string v2, "Rendering was sucessful"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #calls: Lcom/ui/LapseIt/project/Renderer;->createCompletedNotification()V
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$27(Lcom/ui/LapseIt/project/Renderer;)V

    .line 421
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$8()Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/ui/LapseIt/project/ProjectView;->renderedFile:Ljava/io/File;

    .line 422
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getProjectView()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v1

    iget-object v1, v1, Lcom/ui/LapseIt/project/ProjectView;->controls:Lcom/ui/LapseIt/project/ProjectControls;

    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getProjectView()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/project/ProjectControls;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 423
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getProjectView()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v1

    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getProjectView()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v2

    iget-object v2, v2, Lcom/ui/LapseIt/project/ProjectView;->controls:Lcom/ui/LapseIt/project/ProjectControls;

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/project/ProjectView;->openContextMenu(Landroid/view/View;)V

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$3(Lcom/ui/LapseIt/project/Renderer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 426
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 434
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lui/utils/OrientationUtils;->lockScreen(Landroid/app/Activity;)V

    .line 201
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$3(Lcom/ui/LapseIt/project/Renderer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 203
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "resolution"

    invoke-static {v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, fullSensor:Ljava/lang/String;
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    const-string v2, "fullsensor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/ui/LapseIt/project/Renderer;->isFullSensor:Z

    .line 206
    const-class v1, Lcom/ui/LapseIt/project/RenderView;

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/ui/LapseIt/project/RenderView;

    iget-object v1, v1, Lcom/ui/LapseIt/project/RenderView;->renderButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    new-instance v2, Lcom/ui/LapseIt/project/Renderer$RenderDialog;

    iget-object v3, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Lcom/ui/LapseIt/project/Renderer$RenderDialog;-><init>(Lcom/ui/LapseIt/project/Renderer;Landroid/content/Context;I)V

    #setter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/ui/LapseIt/project/Renderer;->access$4(Lcom/ui/LapseIt/project/Renderer;Landroid/app/ProgressDialog;)V

    .line 211
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v1

    const-string v2, "Rendering ..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v1

    const-string v2, "Starting the process ..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v1

    const v2, 0x7f020035

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 214
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 215
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 216
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 217
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 219
    iput v5, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->renderIndex:I

    .line 221
    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/ui/LapseIt/project/Renderer;->renderBegin:J
    invoke-static {v1, v2, v3}, Lcom/ui/LapseIt/project/Renderer;->access$5(Lcom/ui/LapseIt/project/Renderer;J)V

    .line 223
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 225
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 226
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/io/File;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->progress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/ui/LapseIt/project/Renderer;->access$1(Lcom/ui/LapseIt/project/Renderer;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->renderIndex:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 408
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ui/LapseIt/project/Renderer$RenderTask;->updateProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 409
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/project/Renderer$RenderTask;->onProgressUpdate([Ljava/io/File;)V

    return-void
.end method
