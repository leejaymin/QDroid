.class public final Lcom/mosaicture/f/a;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Landroid/os/Handler;

.field b:Lcom/mosaicture/c/f;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/mosaicture/f/a;->a:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 20

    sget-object v2, Lcom/mosaicture/a/a;->b:Lcom/mosaicture/g/a;

    invoke-virtual {v2}, Lcom/mosaicture/g/a;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    mul-int/lit8 v4, v2, 0x64

    const/16 v2, 0x320

    const/16 v3, 0x320

    sget-object v5, Lcom/mosaicture/g/e;->b:Lcom/mosaicture/g/e;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v5}, Lcom/mosaicture/g/d;->a(Ljava/lang/String;IILcom/mosaicture/g/e;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    const/16 v3, 0x320

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit16 v2, v2, 0x320

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v2, v6

    :goto_0
    const/4 v6, 0x0

    invoke-static {v5, v3, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_2

    mul-int v2, v4, v6

    div-int/2addr v2, v5

    move v3, v2

    :goto_1
    const-string v2, "activity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    mul-int v7, v4, v3

    mul-int/lit8 v7, v7, 0x2

    int-to-double v9, v7

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    int-to-double v11, v2

    const-wide v13, 0x3feccccccccccccdL

    mul-double/2addr v11, v13

    cmpl-double v2, v9, v11

    if-ltz v2, :cond_0

    sget-object v2, Lcom/mosaicture/a/a;->a:Lcom/mosaicture/g/c;

    invoke-virtual {v2}, Lcom/mosaicture/g/c;->b()V

    :cond_0
    sget v2, Lcom/mosaicture/g/k;->a:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget v7, Lcom/mosaicture/g/k;->b:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mosaicture/f/a;->a:Landroid/os/Handler;

    invoke-static {v9}, Lcom/mosaicture/g/k;->a(Landroid/os/Handler;)V

    div-int v18, v3, v7

    div-int v19, v4, v2

    div-int v3, v5, v19

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    div-int v3, v6, v18

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v2, v2

    int-to-float v3, v7

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v2, v3}, Lcom/mosaicture/g/k;->a(IIFF)V

    mul-int v2, v11, v15

    new-array v9, v2, [I

    invoke-static {}, Lcom/mosaicture/a/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :cond_1
    const/16 v2, 0x320

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit16 v3, v3, 0x320

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v3, v6

    goto/16 :goto_0

    :cond_2
    mul-int v2, v4, v5

    div-int/2addr v2, v6

    move v3, v4

    move v4, v2

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_2

    :cond_4
    mul-int v12, v17, v11

    mul-int v13, v16, v15

    const/4 v10, 0x0

    move v14, v11

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v9, v11, v15}, Lcom/mosaicture/g/k;->b([III)[F

    move-result-object v3

    sget-object v2, Lcom/mosaicture/g/k;->f:Lcom/mosaicture/g/b;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/mosaicture/g/b;->a([FIZ)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mosaicture/g/n;

    iget-object v4, v2, Lcom/mosaicture/g/n;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    const/4 v5, 0x0

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mosaicture/f/a;->a([FLjava/lang/Long;ILjava/lang/Long;Landroid/content/ContentResolver;)V

    :cond_5
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_3
.end method

.method private a([FLjava/lang/Long;ILjava/lang/Long;Landroid/content/ContentResolver;)V
    .locals 6

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p5}, Lcom/mosaicture/g/k;->a(JLandroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/mosaicture/e/a;

    invoke-direct {v0}, Lcom/mosaicture/e/a;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/mosaicture/e/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    add-int/lit8 v3, p3, 0x1

    iget-object v0, p0, Lcom/mosaicture/f/a;->b:Lcom/mosaicture/c/f;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mosaicture/c/f;->a(J)V

    sget-object v0, Lcom/mosaicture/a/a;->a:Lcom/mosaicture/g/c;

    invoke-virtual {v0, p2}, Lcom/mosaicture/g/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mosaicture/g/k;->f:Lcom/mosaicture/g/b;

    add-int/lit8 v1, v3, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/mosaicture/g/b;->a([FIZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/g/n;

    iget-object v2, v0, Lcom/mosaicture/g/n;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mosaicture/f/a;->a([FLjava/lang/Long;ILjava/lang/Long;Landroid/content/ContentResolver;)V

    sget-object v0, Lcom/mosaicture/g/k;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mosaicture/g/k;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    sget-object v1, Lcom/mosaicture/a/a;->a:Lcom/mosaicture/g/c;

    invoke-virtual {v1, p4, v0}, Lcom/mosaicture/g/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Lcom/mosaicture/g/k;->a(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Lcom/mosaicture/e/a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "There is an error with the photo. Please try again."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget-object v0, p1, v1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/mosaicture/a/a;->a(Landroid/content/Context;)Lcom/mosaicture/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/f/a;->b:Lcom/mosaicture/c/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mosaicture/g/k;->e:Ljava/util/List;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    aget-object v1, p1, v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/mosaicture/f/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    new-instance v0, Lcom/mosaicture/f/b;

    invoke-direct {v0, p0}, Lcom/mosaicture/f/b;-><init>(Lcom/mosaicture/f/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/mosaicture/f/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
