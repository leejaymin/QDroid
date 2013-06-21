.class public Lcom/cooliris/media/CropImage;
.super Lcom/cooliris/media/MonitoredActivity;
.source "CropImage.java"


# static fields
.field public static final CROP_MSG:I = 0xa

.field public static final CROP_MSG_INTERNAL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CropImage"

.field private static final mConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/media/MediaScannerConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private croppedImage:Landroid/graphics/Bitmap;

.field private mAspectX:I

.field private mAspectY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field mCrop:Lcom/cooliris/media/HighlightView;

.field private mDoFaceDetection:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImageView:Lcom/cooliris/media/CropImageView;

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field mWaitingToPick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cooliris/media/CropImage;->mConnectionMap:Ljava/util/HashMap;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Lcom/cooliris/media/MonitoredActivity;-><init>()V

    .line 77
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/cooliris/media/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 81
    iput-object v2, p0, Lcom/cooliris/media/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 84
    iput-boolean v1, p0, Lcom/cooliris/media/CropImage;->mDoFaceDetection:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/CropImage;->mCircleCrop:Z

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/CropImage;->mHandler:Landroid/os/Handler;

    .line 92
    iput-boolean v1, p0, Lcom/cooliris/media/CropImage;->mScaleUp:Z

    .line 100
    iput-object v2, p0, Lcom/cooliris/media/CropImage;->croppedImage:Landroid/graphics/Bitmap;

    .line 290
    new-instance v0, Lcom/cooliris/media/CropImage$1;

    invoke-direct {v0, p0}, Lcom/cooliris/media/CropImage$1;-><init>(Lcom/cooliris/media/CropImage;)V

    iput-object v0, p0, Lcom/cooliris/media/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cooliris/media/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->mCircleCrop:Z

    return v0
.end method

.method static synthetic access$3(Lcom/cooliris/media/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/cooliris/media/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$4(Lcom/cooliris/media/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/cooliris/media/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$5(Lcom/cooliris/media/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/cooliris/media/CropImage;->mDoFaceDetection:Z

    return v0
.end method

.method static synthetic access$6(Lcom/cooliris/media/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cooliris/media/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$8(Lcom/cooliris/media/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private onSaveClicked()V
    .locals 18

    .prologue
    .line 184
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cooliris/media/CropImage;->mSaving:Z

    if-eqz v13, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    if-eqz v13, :cond_0

    .line 191
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/cooliris/media/CropImage;->mSaving:Z

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    invoke-virtual {v13}, Lcom/cooliris/media/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 195
    .local v10, r:Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 196
    .local v12, width:I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 200
    .local v7, height:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cooliris/media/CropImage;->mCircleCrop:Z

    if-eqz v13, :cond_4

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v12, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/CropImage;->croppedImage:Landroid/graphics/Bitmap;

    .line 202
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/CropImage;->croppedImage:Landroid/graphics/Bitmap;

    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 203
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v4, v13, v14, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 204
    .local v4, dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v10, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 207
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cooliris/media/CropImage;->mCircleCrop:Z

    if-eqz v13, :cond_2

    .line 213
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/CropImage;->croppedImage:Landroid/graphics/Bitmap;

    invoke-direct {v2, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 214
    .local v2, c:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 215
    .local v9, p:Landroid/graphics/Path;
    int-to-float v13, v12

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    int-to-float v14, v7

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    int-to-float v15, v12

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    sget-object v16, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 216
    sget-object v13, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v9, v13}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 217
    const/4 v13, 0x0

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 221
    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v9           #p:Landroid/graphics/Path;
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cooliris/media/CropImage;->mOutputX:I

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/cooliris/media/CropImage;->mOutputY:I

    if-eqz v13, :cond_3

    .line 222
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cooliris/media/CropImage;->mScale:Z

    if-eqz v13, :cond_5

    .line 224
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cooliris/media/CropImage;->croppedImage:Landroid/graphics/Bitmap;

    .line 225
    .local v8, old:Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/CropImage;->croppedImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cooliris/media/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/CropImage;->mOutputY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/CropImage;->mScaleUp:Z

    move/from16 v17, v0

    invoke-static/range {v13 .. v17}, Lcom/cooliris/media/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/CropImage;->croppedImage:Landroid/graphics/Bitmap;

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/CropImage;->croppedImage:Landroid/graphics/Bitmap;

    if-eq v8, v13, :cond_3

    .line 227
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    .end local v8           #old:Landroid/graphics/Bitmap;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/CropImage;->croppedImage:Landroid/graphics/Bitmap;

    sput-object v13, Lcom/rookiestudio/perfectviewer/Global;->CroppedWallpaper:Landroid/graphics/Bitmap;

    .line 265
    sget v13, Lcom/rookiestudio/perfectviewer/Global;->AndroidSDKVersion:I

    const/4 v14, 0x5

    if-ge v13, v14, :cond_6

    .line 266
    sget-object v13, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v13}, Lcom/rookiestudio/perfectviewer/TViewerMain;->SetAsWallpaperCrop1()V

    .line 271
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/CropImage;->finish()V

    goto/16 :goto_0

    .line 200
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v4           #dstRect:Landroid/graphics/Rect;
    :cond_4
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_1

    .line 239
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    .restart local v4       #dstRect:Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cooliris/media/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/CropImage;->mOutputY:I

    sget-object v15, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 240
    .local v1, b:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    .end local v3           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    invoke-virtual {v13}, Lcom/cooliris/media/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 243
    .local v11, srcRect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #dstRect:Landroid/graphics/Rect;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cooliris/media/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/CropImage;->mOutputY:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v4, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 245
    .restart local v4       #dstRect:Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v5, v13, 0x2

    .line 246
    .local v5, dx:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v6, v13, 0x2

    .line 249
    .local v6, dy:I
    const/4 v13, 0x0

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 252
    const/4 v13, 0x0

    neg-int v14, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, 0x0

    neg-int v15, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v11, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/media/CropImage;->croppedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/cooliris/media/CropImage;->croppedImage:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 268
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v5           #dx:I
    .end local v6           #dy:I
    .end local v11           #srcRect:Landroid/graphics/Rect;
    :cond_6
    sget-object v13, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v13}, Lcom/rookiestudio/perfectviewer/TViewerMain;->SetAsWallpaperCrop2()V

    goto/16 :goto_3
.end method

.method private startFaceDetection()V
    .locals 4

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;

    iget-object v1, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 152
    const/4 v0, 0x0

    const-string v1, ""

    new-instance v2, Lcom/cooliris/media/CropImage$4;

    invoke-direct {v2, p0}, Lcom/cooliris/media/CropImage$4;-><init>(Lcom/cooliris/media/CropImage;)V

    .line 176
    iget-object v3, p0, Lcom/cooliris/media/CropImage;->mHandler:Landroid/os/Handler;

    .line 152
    invoke-static {p0, v0, v1, v2, v3}, Lcom/cooliris/media/Util;->startBackgroundJob(Lcom/cooliris/media/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-super {p0, p1}, Lcom/cooliris/media/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/cooliris/media/CropImage;->requestWindowFeature(I)Z

    .line 109
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/cooliris/media/CropImage;->setContentView(I)V

    .line 111
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/CropImageView;

    iput-object v0, p0, Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;

    .line 118
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->WallpaperFileName1:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 119
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cooliris/media/CropImage;->mAspectX:I

    .line 120
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    iput v0, p0, Lcom/cooliris/media/CropImage;->mAspectY:I

    .line 121
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cooliris/media/CropImage;->mOutputX:I

    .line 122
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    iput v0, p0, Lcom/cooliris/media/CropImage;->mOutputY:I

    .line 123
    iput-boolean v1, p0, Lcom/cooliris/media/CropImage;->mScale:Z

    .line 124
    iput-boolean v1, p0, Lcom/cooliris/media/CropImage;->mScaleUp:Z

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/CropImage;->mDoFaceDetection:Z

    .line 127
    invoke-virtual {p0}, Lcom/cooliris/media/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 129
    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cooliris/media/CropImage$2;

    invoke-direct {v1, p0}, Lcom/cooliris/media/CropImage$2;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/cooliris/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cooliris/media/CropImage$3;

    invoke-direct {v1, p0}, Lcom/cooliris/media/CropImage$3;-><init>(Lcom/cooliris/media/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-direct {p0}, Lcom/cooliris/media/CropImage;->startFaceDetection()V

    .line 143
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/cooliris/media/MonitoredActivity;->onDestroy()V

    .line 287
    iget-object v0, p0, Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 281
    invoke-super {p0}, Lcom/cooliris/media/MonitoredActivity;->onPause()V

    .line 282
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Lcom/cooliris/media/MonitoredActivity;->onResume()V

    .line 277
    return-void
.end method
