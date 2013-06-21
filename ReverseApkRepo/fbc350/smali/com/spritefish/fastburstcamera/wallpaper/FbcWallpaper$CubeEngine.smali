.class Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "FbcWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CubeEngine"
.end annotation


# instance fields
.field private background:Landroid/graphics/Bitmap;

.field private cur_burst:I

.field private cur_idx:I

.field private cur_pics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/db/dao/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private cur_rot:D

.field private cur_sz:D

.field private cur_x:I

.field private cur_y:I

.field private dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

.field i:I

.field private mCenterX:F

.field private mCenterY:F

.field private final mDrawCube:Ljava/lang/Runnable;

.field private mOffset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mStartTime:J

.field private mTouchX:F

.field private mTouchY:F

.field private mVisible:Z

.field private newImage:Z

.field private polaroid9p:Landroid/graphics/drawable/NinePatchDrawable;

.field final synthetic this$0:Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, -0x4080

    const/4 v2, 0x1

    .line 93
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->this$0:Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mPaint:Landroid/graphics/Paint;

    .line 69
    iput v3, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mTouchX:F

    .line 70
    iput v3, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mTouchY:F

    .line 84
    iput-boolean v2, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->newImage:Z

    .line 86
    new-instance v1, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine$1;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine$1;-><init>(Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;)V

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    .line 183
    const/4 v1, 0x0

    iput v1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->i:I

    .line 95
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mPaint:Landroid/graphics/Paint;

    .line 96
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 100
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 103
    new-instance v1, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-virtual {p1}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mStartTime:J

    .line 105
    invoke-virtual {p1}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->polaroid9p:Landroid/graphics/drawable/NinePatchDrawable;

    .line 107
    return-void
.end method


# virtual methods
.method drawCube(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "c"

    .prologue
    const/16 v5, 0x190

    const/16 v2, -0x190

    .line 270
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 271
    iget v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mCenterX:F

    iget v1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mCenterY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 272
    const/high16 v0, -0x100

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, v2

    move v7, v2

    .line 273
    invoke-virtual/range {v0 .. v7}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawLine(Landroid/graphics/Canvas;IIIIII)V

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v7, v2

    move v8, v5

    move v9, v5

    move v10, v2

    .line 274
    invoke-virtual/range {v3 .. v10}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawLine(Landroid/graphics/Canvas;IIIIII)V

    move-object v3, p0

    move-object v4, p1

    move v6, v5

    move v7, v2

    move v8, v2

    move v9, v5

    move v10, v2

    .line 275
    invoke-virtual/range {v3 .. v10}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawLine(Landroid/graphics/Canvas;IIIIII)V

    move-object v6, p0

    move-object v7, p1

    move v8, v2

    move v9, v5

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v2

    .line 276
    invoke-virtual/range {v6 .. v13}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawLine(Landroid/graphics/Canvas;IIIIII)V

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v5

    move v6, v2

    move v7, v5

    .line 278
    invoke-virtual/range {v0 .. v7}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawLine(Landroid/graphics/Canvas;IIIIII)V

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v7, v5

    move v8, v5

    move v9, v5

    move v10, v5

    .line 279
    invoke-virtual/range {v3 .. v10}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawLine(Landroid/graphics/Canvas;IIIIII)V

    move-object v3, p0

    move-object v4, p1

    move v6, v5

    move v7, v5

    move v8, v2

    move v9, v5

    move v10, v5

    .line 280
    invoke-virtual/range {v3 .. v10}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawLine(Landroid/graphics/Canvas;IIIIII)V

    move-object v6, p0

    move-object v7, p1

    move v8, v2

    move v9, v5

    move v10, v5

    move v11, v2

    move v12, v2

    move v13, v5

    .line 281
    invoke-virtual/range {v6 .. v13}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawLine(Landroid/graphics/Canvas;IIIIII)V

    move-object v6, p0

    move-object v7, p1

    move v8, v2

    move v9, v2

    move v10, v5

    move v11, v2

    move v12, v2

    move v13, v2

    .line 283
    invoke-virtual/range {v6 .. v13}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawLine(Landroid/graphics/Canvas;IIIIII)V

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    move v7, v5

    move v8, v5

    move v9, v2

    move v10, v2

    .line 284
    invoke-virtual/range {v3 .. v10}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawLine(Landroid/graphics/Canvas;IIIIII)V

    move-object v3, p0

    move-object v4, p1

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    move v10, v2

    .line 285
    invoke-virtual/range {v3 .. v10}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawLine(Landroid/graphics/Canvas;IIIIII)V

    move-object v6, p0

    move-object v7, p1

    move v8, v2

    move v9, v5

    move v10, v5

    move v11, v2

    move v12, v5

    move v13, v2

    .line 286
    invoke-virtual/range {v6 .. v13}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawLine(Landroid/graphics/Canvas;IIIIII)V

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 288
    return-void
.end method

.method drawFrame()V
    .locals 17

    .prologue
    .line 190
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_pics:Ljava/util/List;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_idx:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_pics:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lt v11, v12, :cond_1

    .line 192
    :cond_0
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_idx:I

    .line 193
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->newImage:Z

    .line 196
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->newImage:Z

    if-eqz v11, :cond_4

    .line 198
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-virtual {v11}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->findRandomBurstWithPictures()Lcom/spritefish/fastburstcamera/db/dao/Burst;

    move-result-object v3

    .line 199
    .local v3, burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    if-nez v3, :cond_3

    .line 263
    .end local v3           #burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    :cond_2
    :goto_0
    return-void

    .line 201
    .restart local v3       #burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_pics:Ljava/util/List;

    .line 203
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x4059

    sub-double/2addr v11, v13

    double-to-int v11, v11

    add-int/lit8 v11, v11, 0x32

    move-object/from16 v0, p0

    iput v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_x:I

    .line 204
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x4059

    sub-double/2addr v11, v13

    double-to-int v11, v11

    add-int/lit8 v11, v11, 0x32

    move-object/from16 v0, p0

    iput v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_y:I

    .line 205
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v13, 0x4034

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x4024

    sub-double/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_rot:D

    .line 206
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide/high16 v13, 0x4008

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x3ff0

    add-double/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_sz:D

    .line 207
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->newImage:Z

    .line 210
    .end local v3           #burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_pics:Ljava/util/List;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_idx:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    .line 211
    .local v10, selectedPic:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    invoke-virtual {v10}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/spritefish/camera/Util;->getRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 212
    .local v1, b:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v11

    if-nez v11, :cond_5

    .line 213
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 214
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_idx:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_idx:I

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    .line 217
    .local v7, holder:Landroid/view/SurfaceHolder;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 219
    .local v8, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_x:I

    int-to-double v11, v11

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_sz:D

    mul-double/2addr v11, v13

    double-to-float v11, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_y:I

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_sz:D

    mul-double/2addr v12, v14

    double-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 221
    const-wide/high16 v11, 0x3ff0

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_sz:D

    div-double/2addr v11, v13

    double-to-float v11, v11

    const-wide/high16 v12, 0x3ff0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_sz:D

    div-double/2addr v12, v14

    double-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 223
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->cur_rot:D

    double-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v4, 0x0

    .line 227
    .local v4, c:Landroid/graphics/Canvas;
    :try_start_1
    invoke-interface {v7}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    .line 228
    if-eqz v4, :cond_6

    .line 229
    const/high16 v11, -0x100

    invoke-virtual {v4, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 231
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->background:Landroid/graphics/Bitmap;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    .local v2, bg:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    .local v9, pic:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->polaroid9p:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->polaroid9p:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v11, v9}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->background:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .end local v2           #bg:Landroid/graphics/Canvas;
    .end local v9           #pic:Landroid/graphics/Canvas;
    :cond_6
    if-eqz v4, :cond_7

    :try_start_2
    invoke-interface {v7, v4}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 249
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->this$0:Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;

    #getter for: Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->access$0(Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mVisible:Z

    if-eqz v11, :cond_2

    .line 251
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->this$0:Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;

    #getter for: Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->access$0(Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    const-wide/16 v13, 0xa

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 253
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v4           #c:Landroid/graphics/Canvas;
    .end local v7           #holder:Landroid/view/SurfaceHolder;
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v10           #selectedPic:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :catch_0
    move-exception v5

    .line 255
    .local v5, e:Ljava/lang/Exception;
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->newImage:Z

    .line 257
    const-wide/16 v11, 0x3e8

    :try_start_3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 258
    :catch_1
    move-exception v6

    .line 260
    .local v6, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 244
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #e1:Ljava/lang/InterruptedException;
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v4       #c:Landroid/graphics/Canvas;
    .restart local v7       #holder:Landroid/view/SurfaceHolder;
    .restart local v8       #matrix:Landroid/graphics/Matrix;
    .restart local v10       #selectedPic:Lcom/spritefish/fastburstcamera/db/dao/Picture;
    :catchall_0
    move-exception v11

    .line 245
    if-eqz v4, :cond_8

    :try_start_4
    invoke-interface {v7, v4}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 246
    :cond_8
    throw v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method drawLine(Landroid/graphics/Canvas;IIIIII)V
    .locals 25
    .parameter "c"
    .parameter "x1"
    .parameter "y1"
    .parameter "z1"
    .parameter "x2"
    .parameter "y2"
    .parameter "z2"

    .prologue
    .line 294
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 295
    .local v14, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mStartTime:J

    move-wide/from16 v19, v0

    sub-long v19, v14, v19

    move-wide/from16 v0, v19

    long-to-float v2, v0

    const/high16 v7, 0x447a

    div-float v16, v2, v7

    .line 296
    .local v16, xrot:F
    const/high16 v2, 0x3f00

    move-object/from16 v0, p0

    iget v7, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mOffset:F

    sub-float/2addr v2, v7

    const/high16 v7, 0x4000

    mul-float v17, v2, v7

    .line 297
    .local v17, yrot:F
    const/16 v18, 0x0

    .line 302
    .local v18, zrot:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v10, v0

    .line 303
    .local v10, newy1:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v11, v0

    .line 304
    .local v11, newy2:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v12, v0

    .line 305
    .local v12, newz1:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v13, v0

    .line 308
    .local v13, newz2:F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    float-to-double v0, v12

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v8, v0

    .line 309
    .local v8, newx1:F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    float-to-double v0, v13

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v9, v0

    .line 310
    .local v9, newx2:F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    float-to-double v0, v12

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v12, v0

    .line 311
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    float-to-double v0, v13

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v13, v0

    .line 314
    const/high16 v2, 0x4080

    const/high16 v7, 0x43c8

    div-float v7, v12, v7

    sub-float/2addr v2, v7

    div-float v3, v8, v2

    .line 315
    .local v3, startX:F
    const/high16 v2, 0x4080

    const/high16 v7, 0x43c8

    div-float v7, v12, v7

    sub-float/2addr v2, v7

    div-float v4, v10, v2

    .line 316
    .local v4, startY:F
    const/high16 v2, 0x4080

    const/high16 v7, 0x43c8

    div-float v7, v13, v7

    sub-float/2addr v2, v7

    div-float v5, v9, v2

    .line 317
    .local v5, stopX:F
    const/high16 v2, 0x4080

    const/high16 v7, 0x43c8

    div-float v7, v13, v7

    sub-float/2addr v2, v7

    div-float v6, v11, v2

    .line 319
    .local v6, stopY:F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 320
    return-void
.end method

.method drawTouchPoint(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 326
    iget v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mTouchX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mTouchY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 327
    iget v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mTouchX:F

    iget v1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mTouchY:F

    const/high16 v2, 0x42a0

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 329
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "surfaceHolder"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->setTouchEventsEnabled(Z)V

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->this$0:Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;

    #getter for: Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->access$0(Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 159
    iput p1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mOffset:F

    .line 160
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawFrame()V

    .line 161
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v1, 0x4000

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 137
    int-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mCenterX:F

    .line 138
    int-to-float v0, p4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mCenterY:F

    .line 139
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->background:Landroid/graphics/Bitmap;

    .line 140
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawFrame()V

    .line 142
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 147
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mVisible:Z

    .line 153
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->this$0:Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;

    #getter for: Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->access$0(Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/high16 v2, -0x4080

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mTouchX:F

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mTouchY:F

    .line 175
    :goto_0
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 176
    return-void

    .line 172
    :cond_0
    iput v2, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mTouchX:F

    .line 173
    iput v2, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mTouchY:F

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mVisible:Z

    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->drawFrame()V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->this$0:Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;

    #getter for: Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;->access$0(Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/wallpaper/FbcWallpaper$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
