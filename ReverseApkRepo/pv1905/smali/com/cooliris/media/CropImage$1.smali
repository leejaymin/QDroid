.class Lcom/cooliris/media/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFaces:[Landroid/media/FaceDetector$Face;

.field mImageMatrix:Landroid/graphics/Matrix;

.field mNumFaces:I

.field mScale:F

.field final synthetic this$0:Lcom/cooliris/media/CropImage;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/cooliris/media/CropImage$1;->mScale:F

    .line 293
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/cooliris/media/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method static synthetic access$0(Lcom/cooliris/media/CropImage$1;Landroid/media/FaceDetector$Face;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/cooliris/media/CropImage$1;->handleFace(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method static synthetic access$1(Lcom/cooliris/media/CropImage$1;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/cooliris/media/CropImage$1;->makeDefault()V

    return-void
.end method

.method static synthetic access$2(Lcom/cooliris/media/CropImage$1;)Lcom/cooliris/media/CropImage;
    .locals 1
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    return-object v0
.end method

.method private handleFace(Landroid/media/FaceDetector$Face;)V
    .locals 13
    .parameter "f"

    .prologue
    .line 298
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 300
    .local v7, midPoint:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v4, p0, Lcom/cooliris/media/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v10, v1, 0x2

    .line 301
    .local v10, r:I
    invoke-virtual {p1, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 302
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/cooliris/media/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->x:F

    .line 303
    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/cooliris/media/CropImage$1;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->y:F

    .line 305
    iget v1, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v1

    .line 306
    .local v8, midX:I
    iget v1, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v1

    .line 308
    .local v9, midY:I
    new-instance v0, Lcom/cooliris/media/HighlightView;

    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$0(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cooliris/media/HighlightView;-><init>(Landroid/view/View;)V

    .line 310
    .local v0, hv:Lcom/cooliris/media/HighlightView;
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 311
    .local v11, width:I
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 313
    .local v6, height:I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 315
    .local v2, imageRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v4, v9

    int-to-float v5, v8

    int-to-float v12, v9

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 316
    .local v3, faceRect:Landroid/graphics/RectF;
    neg-int v1, v10

    int-to-float v1, v1

    neg-int v4, v10

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 317
    iget v1, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 318
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 321
    :cond_0
    iget v1, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 322
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 325
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 326
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 329
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 330
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$2(Lcom/cooliris/media/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/cooliris/media/CropImage;->access$3(Lcom/cooliris/media/CropImage;)I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v5}, Lcom/cooliris/media/CropImage;->access$4(Lcom/cooliris/media/CropImage;)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 335
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$0(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cooliris/media/CropImageView;->add(Lcom/cooliris/media/HighlightView;)V

    .line 336
    return-void

    .line 333
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private makeDefault()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 340
    new-instance v0, Lcom/cooliris/media/HighlightView;

    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$0(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cooliris/media/HighlightView;-><init>(Landroid/view/View;)V

    .line 342
    .local v0, hv:Lcom/cooliris/media/HighlightView;
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 343
    .local v9, width:I
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 345
    .local v8, height:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 349
    .local v2, imageRect:Landroid/graphics/Rect;
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v7, v1, 0x5

    .line 350
    .local v7, cropWidth:I
    move v6, v7

    .line 352
    .local v6, cropHeight:I
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$3(Lcom/cooliris/media/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$4(Lcom/cooliris/media/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$3(Lcom/cooliris/media/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$4(Lcom/cooliris/media/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_2

    .line 354
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$4(Lcom/cooliris/media/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$3(Lcom/cooliris/media/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 360
    :cond_0
    :goto_0
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    .line 361
    .local v10, x:I
    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    .line 363
    .local v11, y:I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v12, v10, v7

    int-to-float v12, v12

    add-int v13, v11, v6

    int-to-float v13, v13

    invoke-direct {v3, v1, v4, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 364
    .local v3, cropRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$2(Lcom/cooliris/media/CropImage;)Z

    move-result v4

    iget-object v12, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v12}, Lcom/cooliris/media/CropImage;->access$3(Lcom/cooliris/media/CropImage;)I

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v12}, Lcom/cooliris/media/CropImage;->access$4(Lcom/cooliris/media/CropImage;)I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 365
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$0(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cooliris/media/CropImageView;->add(Lcom/cooliris/media/HighlightView;)V

    .line 366
    return-void

    .line 356
    .end local v3           #cropRect:Landroid/graphics/RectF;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_2
    iget-object v1, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/cooliris/media/CropImage;->access$3(Lcom/cooliris/media/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/cooliris/media/CropImage;->access$4(Lcom/cooliris/media/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto :goto_0
.end method

.method private prepareBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 371
    const/4 v7, 0x0

    .line 382
    :goto_0
    return-object v7

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_1

    .line 376
    const/high16 v0, 0x4380

    iget-object v2, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/cooliris/media/CropImage$1;->mScale:F

    .line 379
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 380
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v0, p0, Lcom/cooliris/media/CropImage$1;->mScale:F

    iget v2, p0, Lcom/cooliris/media/CropImage$1;->mScale:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 381
    iget-object v0, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/cooliris/media/CropImage;->access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 382
    .local v7, faceBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 386
    iget-object v2, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mImageView:Lcom/cooliris/media/CropImageView;
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$0(Lcom/cooliris/media/CropImage;)Lcom/cooliris/media/CropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/CropImage$1;->mImageMatrix:Landroid/graphics/Matrix;

    .line 387
    invoke-direct {p0}, Lcom/cooliris/media/CropImage$1;->prepareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 389
    .local v1, faceBitmap:Landroid/graphics/Bitmap;
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/cooliris/media/CropImage$1;->mScale:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/cooliris/media/CropImage$1;->mScale:F

    .line 390
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mDoFaceDetection:Z
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$5(Lcom/cooliris/media/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/cooliris/media/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v0, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 392
    .local v0, detector:Landroid/media/FaceDetector;
    iget-object v2, p0, Lcom/cooliris/media/CropImage$1;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, v1, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    iput v2, p0, Lcom/cooliris/media/CropImage$1;->mNumFaces:I

    .line 395
    .end local v0           #detector:Landroid/media/FaceDetector;
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$1(Lcom/cooliris/media/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 396
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 399
    :cond_1
    iget-object v2, p0, Lcom/cooliris/media/CropImage$1;->this$0:Lcom/cooliris/media/CropImage;

    #getter for: Lcom/cooliris/media/CropImage;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cooliris/media/CropImage;->access$6(Lcom/cooliris/media/CropImage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/cooliris/media/CropImage$1$1;

    invoke-direct {v3, p0}, Lcom/cooliris/media/CropImage$1$1;-><init>(Lcom/cooliris/media/CropImage$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    return-void
.end method
