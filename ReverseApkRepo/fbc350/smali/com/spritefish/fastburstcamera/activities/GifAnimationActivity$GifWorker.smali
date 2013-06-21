.class Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;
.super Landroid/os/AsyncTask;
.source "GifAnimationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;


# direct methods
.method private constructor <init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;-><init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)V

    return-void
.end method

.method static synthetic access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 44
    .parameter "params"

    .prologue
    .line 141
    :try_start_0
    new-instance v19, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 143
    .local v19, failed:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    new-instance v6, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$1;-><init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)V

    invoke-virtual {v5, v6}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 163
    new-instance v27, Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v27

    invoke-direct {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 164
    .local v27, min:Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v26, Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v5, 0x1

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v26

    invoke-direct {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 165
    .local v26, max:Ljava/util/concurrent/atomic/AtomicLong;
    const/4 v5, 0x2

    aget-object v36, p1, v5

    check-cast v36, Ljava/lang/String;

    .line 166
    .local v36, quality:Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v37, p1, v5

    check-cast v37, Ljava/lang/String;

    .line 167
    .local v37, size:Ljava/lang/String;
    const/4 v5, 0x4

    aget-object v22, p1, v5

    check-cast v22, Ljava/lang/String;

    .line 168
    .local v22, fps:Ljava/lang/String;
    const/4 v5, 0x5

    aget-object v39, p1, v5

    check-cast v39, Ljava/lang/String;

    .line 169
    .local v39, timeStretch:Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    .line 171
    .local v40, ts:I
    const/16 v38, 0x1

    .line 172
    .local v38, szDiv:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    const v6, 0x7f0700ac

    invoke-virtual {v5, v6}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v38, 0x4

    .line 173
    :cond_0
    const v5, 0x7f070035

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v38, 0x2

    .line 175
    :cond_1
    const/16 v35, 0x1

    .line 176
    .local v35, qual:I
    const v5, 0x7f070036

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v35, 0xf

    .line 177
    :cond_2
    const v5, 0x7f070035

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v35, 0xa

    .line 178
    :cond_3
    const v5, 0x7f070034

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v35, 0x5

    .line 179
    :cond_4
    const v5, 0x7f0700cd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_5

    const/16 v35, 0x1

    .line 180
    :cond_5
    const-wide/16 v23, 0x1e

    .line 182
    .local v23, frameRateNum:J
    const/4 v5, 0x0

    :try_start_1
    const-string v6, " "

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v23

    .line 188
    :goto_0
    :try_start_2
    new-instance v16, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;

    invoke-direct/range {v16 .. v16}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;-><init>()V

    .line 189
    .local v16, encoder:Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->pictures:Ljava/util/List;
    invoke-static {v5}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 190
    .local v21, first:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    invoke-virtual/range {v21 .. v21}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/spritefish/camera/Util;->getRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    .line 191
    .local v12, b2:Landroid/graphics/Bitmap;
    const/16 v34, 0x0

    .line 192
    .local v34, prevBitmap:Landroid/graphics/Bitmap;
    if-nez v12, :cond_7

    .line 331
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_6

    .line 332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 193
    :cond_6
    const/4 v5, 0x0

    .line 334
    .end local v12           #b2:Landroid/graphics/Bitmap;
    .end local v16           #encoder:Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;
    .end local v19           #failed:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .end local v21           #first:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .end local v22           #fps:Ljava/lang/String;
    .end local v23           #frameRateNum:J
    .end local v26           #max:Ljava/util/concurrent/atomic/AtomicLong;
    .end local v27           #min:Ljava/util/concurrent/atomic/AtomicLong;
    .end local v34           #prevBitmap:Landroid/graphics/Bitmap;
    .end local v35           #qual:I
    .end local v36           #quality:Ljava/lang/String;
    .end local v37           #size:Ljava/lang/String;
    .end local v38           #szDiv:I
    .end local v39           #timeStretch:Ljava/lang/String;
    .end local v40           #ts:I
    :goto_1
    return-object v5

    .line 194
    .restart local v12       #b2:Landroid/graphics/Bitmap;
    .restart local v16       #encoder:Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;
    .restart local v19       #failed:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .restart local v21       #first:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .restart local v22       #fps:Ljava/lang/String;
    .restart local v23       #frameRateNum:J
    .restart local v26       #max:Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v27       #min:Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v34       #prevBitmap:Landroid/graphics/Bitmap;
    .restart local v35       #qual:I
    .restart local v36       #quality:Ljava/lang/String;
    .restart local v37       #size:Ljava/lang/String;
    .restart local v38       #szDiv:I
    .restart local v39       #timeStretch:Ljava/lang/String;
    .restart local v40       #ts:I
    :cond_7
    :try_start_3
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v5, v5, v38

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int v6, v6, v38

    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-static {v12, v5, v6, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 195
    .local v13, b3:Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 196
    .local v8, w:I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 197
    .local v9, h:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->setSize(II)V

    .line 198
    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->setQuality(I)V

    .line 199
    move-wide/from16 v0, v23

    long-to-float v5, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->setFrameRate(F)V

    .line 200
    const-wide/16 v5, 0x3e8

    div-long v5, v5, v23

    long-to-int v5, v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->setDelay(I)V

    .line 201
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->setRepeat(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v33

    .line 203
    .local v33, path:Ljava/io/File;
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, tmpPath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "animation_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v41

    move-wide/from16 v0, v41

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".gif"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 205
    .local v20, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v41, "/"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->usedFilePath:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$1(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;Ljava/lang/String;)V

    .line 206
    const-string v5, "insta"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v41, "using temp path "

    move-object/from16 v0, v41

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-object/from16 v41, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->usedFilePath:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v30, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->usedFilePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 209
    .local v30, out:Ljava/io/OutputStream;
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    .line 210
    new-instance v25, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 211
    .local v25, i:Ljava/util/concurrent/atomic/AtomicInteger;
    const-wide/16 v28, 0x0

    .line 213
    .local v28, num:J
    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v41, -0x1

    cmp-long v5, v5, v41

    if-nez v5, :cond_8

    .line 215
    const-wide/16 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->pictures:Ljava/util/List;
    invoke-static {v5}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 218
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->pictures:Ljava/util/List;
    invoke-static {v5}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_b

    .line 292
    invoke-virtual/range {v16 .. v16}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->finish()Z

    .line 293
    invoke-virtual/range {v30 .. v30}, Ljava/io/OutputStream;->flush()V

    .line 294
    invoke-virtual/range {v30 .. v30}, Ljava/io/OutputStream;->close()V

    .line 295
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->usedFilePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v10, f:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v41, 0x0

    cmp-long v5, v5, v41

    if-nez v5, :cond_14

    .line 297
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->finish()V

    .line 315
    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 316
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 318
    .end local v7           #tmpPath:Ljava/lang/String;
    .end local v8           #w:I
    .end local v9           #h:I
    .end local v10           #f:Ljava/io/File;
    .end local v12           #b2:Landroid/graphics/Bitmap;
    .end local v13           #b3:Landroid/graphics/Bitmap;
    .end local v16           #encoder:Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;
    .end local v19           #failed:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .end local v20           #filename:Ljava/lang/String;
    .end local v21           #first:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .end local v22           #fps:Ljava/lang/String;
    .end local v23           #frameRateNum:J
    .end local v25           #i:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v26           #max:Ljava/util/concurrent/atomic/AtomicLong;
    .end local v27           #min:Ljava/util/concurrent/atomic/AtomicLong;
    .end local v28           #num:J
    .end local v30           #out:Ljava/io/OutputStream;
    .end local v33           #path:Ljava/io/File;
    .end local v34           #prevBitmap:Landroid/graphics/Bitmap;
    .end local v35           #qual:I
    .end local v36           #quality:Ljava/lang/String;
    .end local v37           #size:Ljava/lang/String;
    .end local v38           #szDiv:I
    .end local v39           #timeStretch:Ljava/lang/String;
    .end local v40           #ts:I
    :catch_0
    move-exception v15

    .line 320
    .local v15, e:Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 322
    const v6, 0x7f07009b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 323
    const v6, 0x7f07009c

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 324
    const v6, 0x7f070037

    new-instance v41, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$4;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$4;-><init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)V

    move-object/from16 v0, v41

    invoke-virtual {v5, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 331
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_a

    .line 332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 334
    .end local v15           #e:Ljava/lang/Throwable;
    :cond_a
    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 218
    .restart local v7       #tmpPath:Ljava/lang/String;
    .restart local v8       #w:I
    .restart local v9       #h:I
    .restart local v12       #b2:Landroid/graphics/Bitmap;
    .restart local v13       #b3:Landroid/graphics/Bitmap;
    .restart local v16       #encoder:Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;
    .restart local v19       #failed:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .restart local v20       #filename:Ljava/lang/String;
    .restart local v21       #first:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .restart local v22       #fps:Ljava/lang/String;
    .restart local v23       #frameRateNum:J
    .restart local v25       #i:Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v26       #max:Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v27       #min:Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v28       #num:J
    .restart local v30       #out:Ljava/io/OutputStream;
    .restart local v33       #path:Ljava/io/File;
    .restart local v34       #prevBitmap:Landroid/graphics/Bitmap;
    .restart local v35       #qual:I
    .restart local v36       #quality:Ljava/lang/String;
    .restart local v37       #size:Ljava/lang/String;
    .restart local v38       #szDiv:I
    .restart local v39       #timeStretch:Ljava/lang/String;
    .restart local v40       #ts:I
    :cond_b
    :try_start_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 219
    .local v31, p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 221
    invoke-virtual/range {v30 .. v30}, Ljava/io/OutputStream;->close()V

    .line 222
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->usedFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 223
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 331
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_c

    .line 332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 224
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 226
    :cond_d
    :try_start_6
    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v41

    cmp-long v5, v28, v41

    if-ltz v5, :cond_11

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v41

    cmp-long v5, v28, v41

    if-gtz v5, :cond_11

    .line 228
    invoke-virtual/range {v31 .. v31}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/spritefish/camera/Util;->getRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 229
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v5, v5, v38

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v41

    div-int v41, v41, v38

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    invoke-static {v12, v5, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 232
    if-eqz v12, :cond_10

    .line 234
    const-string v5, "insta"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "ready to encode "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " of "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->pictures:Ljava/util/List;
    invoke-static/range {v42 .. v42}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/util/List;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ": "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "x"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v8, :cond_10

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v5

    if-ne v5, v9, :cond_10

    .line 238
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_e

    .line 240
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    new-instance v41, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$2;-><init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;)V

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    :cond_e
    if-eqz v34, :cond_f

    .line 254
    move/from16 v11, v40

    .line 255
    .local v11, alpha:I
    :goto_5
    const/16 v5, 0xff

    if-lt v11, v5, :cond_12

    .line 272
    .end local v11           #alpha:I
    :cond_f
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14}, Landroid/graphics/Canvas;-><init>()V

    .line 273
    .local v14, c:Landroid/graphics/Canvas;
    invoke-virtual {v14, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-object/from16 v41, v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v42

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isLiteVersion()Z

    move-result v5

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v14, v1, v2, v5}, Lcom/spritefish/camera/Util;->applyWatermark(Landroid/app/Activity;Landroid/graphics/Canvas;IIZ)V

    .line 275
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->addFrame(Landroid/graphics/Bitmap;)Z

    .line 276
    move-object/from16 v34, v12

    .line 277
    const-string v5, "insta"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "added to encoder "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 288
    .end local v14           #c:Landroid/graphics/Canvas;
    :cond_10
    :goto_6
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 290
    :cond_11
    const-wide/16 v41, 0x1

    add-long v28, v28, v41

    goto/16 :goto_2

    .line 257
    .restart local v11       #alpha:I
    :cond_12
    :try_start_9
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v41, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v41

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 259
    .local v18, extra:Landroid/graphics/Bitmap;
    new-instance v32, Landroid/graphics/Paint;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Paint;-><init>()V

    .line 261
    .local v32, pa:Landroid/graphics/Paint;
    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 264
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14}, Landroid/graphics/Canvas;-><init>()V

    .line 265
    .restart local v14       #c:Landroid/graphics/Canvas;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-object/from16 v41, v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v42

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isLiteVersion()Z

    move-result v5

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v14, v1, v2, v5}, Lcom/spritefish/camera/Util;->applyWatermark(Landroid/app/Activity;Landroid/graphics/Canvas;IIZ)V

    .line 267
    const/4 v5, 0x0

    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v14, v12, v5, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 268
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;->addFrame(Landroid/graphics/Bitmap;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 269
    add-int v11, v11, v40

    goto/16 :goto_5

    .line 278
    .end local v11           #alpha:I
    .end local v14           #c:Landroid/graphics/Canvas;
    .end local v18           #extra:Landroid/graphics/Bitmap;
    .end local v32           #pa:Landroid/graphics/Paint;
    :catch_1
    move-exception v15

    .line 280
    .local v15, e:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_6

    .line 330
    .end local v7           #tmpPath:Ljava/lang/String;
    .end local v8           #w:I
    .end local v9           #h:I
    .end local v12           #b2:Landroid/graphics/Bitmap;
    .end local v13           #b3:Landroid/graphics/Bitmap;
    .end local v15           #e:Ljava/lang/Exception;
    .end local v16           #encoder:Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;
    .end local v19           #failed:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .end local v20           #filename:Ljava/lang/String;
    .end local v21           #first:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .end local v22           #fps:Ljava/lang/String;
    .end local v23           #frameRateNum:J
    .end local v25           #i:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v26           #max:Ljava/util/concurrent/atomic/AtomicLong;
    .end local v27           #min:Ljava/util/concurrent/atomic/AtomicLong;
    .end local v28           #num:J
    .end local v30           #out:Ljava/io/OutputStream;
    .end local v31           #p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .end local v33           #path:Ljava/io/File;
    .end local v34           #prevBitmap:Landroid/graphics/Bitmap;
    .end local v35           #qual:I
    .end local v36           #quality:Ljava/lang/String;
    .end local v37           #size:Ljava/lang/String;
    .end local v38           #szDiv:I
    .end local v39           #timeStretch:Ljava/lang/String;
    .end local v40           #ts:I
    :catchall_0
    move-exception v5

    .line 331
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    iget-object v6, v6, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_13

    .line 332
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    iget-object v6, v6, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    :cond_13
    throw v5

    .line 281
    .restart local v7       #tmpPath:Ljava/lang/String;
    .restart local v8       #w:I
    .restart local v9       #h:I
    .restart local v12       #b2:Landroid/graphics/Bitmap;
    .restart local v13       #b3:Landroid/graphics/Bitmap;
    .restart local v16       #encoder:Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;
    .restart local v19       #failed:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .restart local v20       #filename:Ljava/lang/String;
    .restart local v21       #first:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .restart local v22       #fps:Ljava/lang/String;
    .restart local v23       #frameRateNum:J
    .restart local v25       #i:Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v26       #max:Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v27       #min:Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v28       #num:J
    .restart local v30       #out:Ljava/io/OutputStream;
    .restart local v31       #p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .restart local v33       #path:Ljava/io/File;
    .restart local v34       #prevBitmap:Landroid/graphics/Bitmap;
    .restart local v35       #qual:I
    .restart local v36       #quality:Ljava/lang/String;
    .restart local v37       #size:Ljava/lang/String;
    .restart local v38       #szDiv:I
    .restart local v39       #timeStretch:Ljava/lang/String;
    .restart local v40       #ts:I
    :catch_2
    move-exception v17

    .line 283
    .local v17, er:Ljava/lang/Error;
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_6

    .line 301
    .end local v17           #er:Ljava/lang/Error;
    .end local v31           #p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .restart local v10       #f:Ljava/io/File;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-object/from16 v41, v0

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;-><init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;Ljava/lang/String;IILjava/io/File;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_3

    .line 331
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_a

    .line 332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_4

    .line 184
    .end local v7           #tmpPath:Ljava/lang/String;
    .end local v8           #w:I
    .end local v9           #h:I
    .end local v10           #f:Ljava/io/File;
    .end local v12           #b2:Landroid/graphics/Bitmap;
    .end local v13           #b3:Landroid/graphics/Bitmap;
    .end local v16           #encoder:Lcom/spritefish/fastburstcamera/gif/AnimatedGifEncoder;
    .end local v20           #filename:Ljava/lang/String;
    .end local v21           #first:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .end local v25           #i:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v28           #num:J
    .end local v30           #out:Ljava/io/OutputStream;
    .end local v33           #path:Ljava/io/File;
    .end local v34           #prevBitmap:Landroid/graphics/Bitmap;
    :catch_3
    move-exception v5

    goto/16 :goto_0
.end method
