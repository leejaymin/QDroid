.class public Lcom/spritefish/fastburstcamera/collage/CollageCreator;
.super Ljava/lang/Object;
.source "CollageCreator.java"


# instance fields
.field private effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/collage/effects/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private layouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;",
            ">;"
        }
    .end annotation
.end field

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/db/dao/Picture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/db/dao/Picture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pictures:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    const/16 v8, 0xb

    const/4 v7, 0x7

    const/4 v6, -0x1

    const/16 v5, 0xa

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->pictures:Ljava/util/List;

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->effects:Ljava/util/List;

    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->layouts:Ljava/util/List;

    .line 146
    const/4 v1, 0x1

    .local v1, x:I
    :goto_0
    if-lt v1, v7, :cond_0

    .line 158
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-lt v0, v8, :cond_3

    .line 167
    const/4 v0, 0x1

    :goto_2
    if-lt v0, v8, :cond_5

    .line 176
    return-void

    .line 148
    .end local v0           #i:I
    :cond_0
    const/4 v2, 0x1

    .local v2, y:I
    :goto_3
    if-lt v2, v7, :cond_1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int v4, v1, v2

    if-lt v3, v4, :cond_2

    .line 152
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->layouts:Ljava/util/List;

    new-instance v4, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;

    invoke-direct {v4, v1, v2, v5}, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 160
    .end local v2           #y:I
    .restart local v0       #i:I
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_4

    .line 162
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->layouts:Ljava/util/List;

    new-instance v4, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;

    invoke-direct {v4, v0, v6, v5}, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_6

    .line 171
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->layouts:Ljava/util/List;

    new-instance v4, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;

    invoke-direct {v4, v6, v0, v5}, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static getSubset(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .parameter
    .parameter "picsNeeded"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/db/dao/Picture;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/db/dao/Picture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, fullset:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p1

    div-float v0, v4, v5

    .line 45
    .local v0, factor:F
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v3, r:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    const/4 v2, 0x0

    .line 47
    .local v2, index:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 53
    return-object v3

    .line 49
    :cond_0
    add-float/2addr v2, v0

    .line 50
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createFull(Landroid/content/res/Resources;Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;Lcom/spritefish/fastburstcamera/collage/effects/Effect;Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 24
    .parameter "res"
    .parameter "cLayout"
    .parameter "effect"
    .parameter "act"

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->pictures:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;->calcPicturesNeeded(I)I

    move-result v14

    .line 60
    .local v14, picsUsed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->pictures:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->getSubset(Ljava/util/List;I)Ljava/util/List;

    move-result-object v17

    .line 61
    .local v17, useSet:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyy-MM-dd hh-mm-ss-SSS"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 62
    .local v5, df:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 63
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 64
    .local v13, pic:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    invoke-virtual {v13}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/spritefish/camera/Util;->getRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 65
    .local v7, frame:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 66
    .local v18, w:I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 67
    .local v10, h:I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    const/4 v8, 0x0

    .line 70
    .local v8, full:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 71
    .local v11, ok:Z
    const/16 v16, 0x32

    .line 72
    .local v16, scale:I
    :goto_0
    if-nez v11, :cond_0

    const/16 v19, 0x1e

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 129
    :cond_0
    const/16 v19, 0x0

    :goto_1
    return-object v19

    .line 77
    :cond_1
    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-interface {v0, v1, v10, v2}, Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;->initLayout(III)V

    .line 78
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;->prepareForPictures(I)I

    .line 79
    invoke-interface/range {p2 .. p2}, Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;->getFullImageSize()Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;

    move-result-object v9

    .line 81
    .local v9, fullSize:Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;
    invoke-virtual {v9}, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;->getX()I

    move-result v19

    invoke-virtual {v9}, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;->getY()I

    move-result v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 82
    const/4 v11, 0x1

    .line 85
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 87
    .local v4, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->effects:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 89
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/spritefish/fastburstcamera/collage/effects/Effect;->initEffect(Landroid/content/res/Resources;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->effects:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_3

    .line 118
    invoke-virtual {v9}, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;->getX()I

    move-result v20

    invoke-virtual {v9}, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;->getY()I

    move-result v21

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v19

    check-cast v19, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual/range {v19 .. v19}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isLiteVersion()Z

    move-result v19

    move-object/from16 v0, p4

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-static {v0, v4, v1, v2, v3}, Lcom/spritefish/camera/Util;->applyWatermark(Landroid/app/Activity;Landroid/graphics/Canvas;IIZ)V

    move-object/from16 v19, v8

    .line 119
    goto :goto_1

    .line 92
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 94
    .local v12, p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    invoke-virtual {v12}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/spritefish/camera/Util;->getRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 96
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v10, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 98
    invoke-interface/range {p2 .. p2}, Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;->nextPicturePosition()Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;

    move-result-object v15

    .line 99
    .local v15, pos:Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;
    const/16 v20, 0x0

    invoke-virtual {v15}, Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;->getPosition()Landroid/graphics/Rect;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v4, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->effects:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_5

    .line 107
    .end local v15           #pos:Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;
    :cond_4
    if-eqz v7, :cond_2

    .line 108
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 121
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v9           #fullSize:Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;
    .end local v12           #p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :catch_0
    move-exception v6

    .line 123
    .local v6, e:Ljava/lang/Throwable;
    const-string v19, "insta"

    const-string v20, "could not create bitmap --scaling down"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    add-int/lit8 v16, v16, -0xa

    .line 125
    const/4 v11, 0x0

    .line 126
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 101
    .end local v6           #e:Ljava/lang/Throwable;
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    .restart local v9       #fullSize:Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;
    .restart local v12       #p:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    .restart local v15       #pos:Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;
    :cond_5
    :try_start_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spritefish/fastburstcamera/collage/effects/Effect;

    .line 102
    .local v6, e:Lcom/spritefish/fastburstcamera/collage/effects/Effect;
    invoke-virtual {v15}, Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;->getPosition()Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual {v12}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getTimestamp()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v6, v4, v0, v1}, Lcom/spritefish/fastburstcamera/collage/effects/Effect;->applyEffect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public createPreview()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/collage/CollageCreator;->layouts:Ljava/util/List;

    return-object v0
.end method
