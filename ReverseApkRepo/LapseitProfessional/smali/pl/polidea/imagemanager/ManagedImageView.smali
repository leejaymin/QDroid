.class public Lpl/polidea/imagemanager/ManagedImageView;
.super Landroid/view/View;
.source "ManagedImageView.java"


# static fields
.field private static final IMAGE_REFRESH_TIME:I = 0x3e8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private fillWholeView:Z

.field private keepRatio:Z

.field private final m:Landroid/graphics/Matrix;

.field private final p:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/Rect;

.field private final req:Lpl/polidea/imagemanager/ImageManagerRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lpl/polidea/imagemanager/ManagedImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/polidea/imagemanager/ManagedImageView;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lpl/polidea/imagemanager/ImageManagerRequest;

    invoke-direct {v0}, Lpl/polidea/imagemanager/ImageManagerRequest;-><init>()V

    iput-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->keepRatio:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->fillWholeView:Z

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->p:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->m:Landroid/graphics/Matrix;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->rect:Landroid/graphics/Rect;

    .line 44
    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lpl/polidea/imagemanager/ImageManager;->init(Landroid/app/Application;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v2, Lpl/polidea/imagemanager/ImageManagerRequest;

    invoke-direct {v2}, Lpl/polidea/imagemanager/ImageManagerRequest;-><init>()V

    iput-object v2, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    .line 32
    iput-boolean v3, p0, Lpl/polidea/imagemanager/ManagedImageView;->keepRatio:Z

    .line 33
    iput-boolean v4, p0, Lpl/polidea/imagemanager/ManagedImageView;->fillWholeView:Z

    .line 36
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lpl/polidea/imagemanager/ManagedImageView;->p:Landroid/graphics/Paint;

    .line 37
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lpl/polidea/imagemanager/ManagedImageView;->m:Landroid/graphics/Matrix;

    .line 38
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lpl/polidea/imagemanager/ManagedImageView;->rect:Landroid/graphics/Rect;

    .line 56
    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    invoke-static {v2}, Lpl/polidea/imagemanager/ImageManager;->init(Landroid/app/Application;)V

    .line 63
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 65
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, attrName:Ljava/lang/String;
    const-string v2, "image_filename"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lpl/polidea/imagemanager/ManagedImageView;->setImage(Ljava/lang/String;)V

    .line 63
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_3
    const-string v2, "image_resource"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lpl/polidea/imagemanager/ManagedImageView;->setImage(I)V

    goto :goto_1

    .line 74
    :cond_4
    const-string v2, "image_uri"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lpl/polidea/imagemanager/ManagedImageView;->setImage(Landroid/net/Uri;)V

    goto :goto_1

    .line 78
    :cond_5
    const-string v2, "subsampling"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 80
    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lpl/polidea/imagemanager/ManagedImageView;->setSubsampling(I)V

    goto :goto_1

    .line 82
    :cond_6
    const-string v2, "anti_alias"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 84
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lpl/polidea/imagemanager/ManagedImageView;->setAntiAliasing(Z)V

    goto :goto_1

    .line 86
    :cond_7
    const-string v2, "keep_ratio"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 88
    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lpl/polidea/imagemanager/ManagedImageView;->setKeepAspectRatio(Z)V

    goto :goto_1

    .line 90
    :cond_8
    const-string v2, "fill_whole_view"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 92
    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lpl/polidea/imagemanager/ManagedImageView;->setFillWholeView(Z)V

    goto :goto_1

    .line 94
    :cond_9
    const-string v2, "preview"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 96
    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lpl/polidea/imagemanager/ManagedImageView;->setPreviewEnabled(Z)V

    goto :goto_1

    .line 98
    :cond_a
    const-string v2, "strong_cache"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 100
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lpl/polidea/imagemanager/ManagedImageView;->setKeepStrongCache(Z)V

    goto/16 :goto_1

    .line 102
    :cond_b
    const-string v2, "alignment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    const/4 v2, -0x2

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lpl/polidea/imagemanager/ManagedImageView;->setAlignment(I)V

    goto/16 :goto_1
.end method

.method private redrawManagedImageViews()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x3e8

    .line 475
    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 476
    invoke-virtual {p0, v1, v2}, Lpl/polidea/imagemanager/ManagedImageView;->postInvalidateDelayed(J)V

    .line 477
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 386
    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v10}, Lpl/polidea/imagemanager/ManagedImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 387
    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lpl/polidea/imagemanager/ManagedImageView;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    if-le v10, v11, :cond_0

    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lpl/polidea/imagemanager/ManagedImageView;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    if-gt v10, v11, :cond_2

    .line 389
    :cond_0
    invoke-direct {p0}, Lpl/polidea/imagemanager/ManagedImageView;->redrawManagedImageViews()V

    .line 467
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 395
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 397
    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getHeight()I

    move-result v11

    invoke-virtual {v1, v12, v12, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 398
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    :cond_3
    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->isInEditMode()Z

    move-result v10

    if-nez v10, :cond_1

    .line 408
    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iget-object v10, v10, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    if-nez v10, :cond_4

    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iget v10, v10, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    if-gez v10, :cond_4

    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iget-object v10, v10, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    if-eqz v10, :cond_1

    .line 414
    :cond_4
    invoke-direct {p0}, Lpl/polidea/imagemanager/ManagedImageView;->redrawManagedImageViews()V

    .line 417
    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingRight()I

    move-result v11

    sub-int v9, v10, v11

    .line 418
    .local v9, w:I
    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 419
    .local v5, h:I
    if-ltz v9, :cond_1

    if-ltz v5, :cond_1

    .line 424
    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingLeft()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingTop()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 427
    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    invoke-static {v10}, Lpl/polidea/imagemanager/ImageManager;->getImage(Lpl/polidea/imagemanager/ImageManagerRequest;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 428
    .local v2, bmp:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 433
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, v9, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ne v10, v5, :cond_5

    .line 436
    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lpl/polidea/imagemanager/ManagedImageView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 441
    :cond_5
    int-to-float v10, v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 442
    .local v7, sx:F
    int-to-float v10, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v8, v10, v11

    .line 443
    .local v8, sy:F
    iget-boolean v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->keepRatio:Z

    if-eqz v10, :cond_a

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, alignMultiplier:F
    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iget v10, v10, Lpl/polidea/imagemanager/ImageManagerRequest;->alignment:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 447
    const/4 v0, 0x0

    .line 453
    :cond_6
    :goto_1
    iget-boolean v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->fillWholeView:Z

    if-eqz v10, :cond_9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 454
    .local v6, s:F
    :goto_2
    int-to-float v10, v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v6

    sub-float/2addr v10, v11

    mul-float/2addr v10, v0

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    add-float v3, v10, v11

    .line 455
    .local v3, dx:F
    int-to-float v10, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v6

    sub-float/2addr v10, v11

    mul-float/2addr v10, v0

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    add-float v4, v10, v11

    .line 456
    .local v4, dy:F
    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->m:Landroid/graphics/Matrix;

    invoke-virtual {v10, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 457
    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->m:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 464
    .end local v0           #alignMultiplier:F
    .end local v3           #dx:F
    .end local v4           #dy:F
    .end local v6           #s:F
    :goto_3
    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->m:Landroid/graphics/Matrix;

    iget-object v11, p0, Lpl/polidea/imagemanager/ManagedImageView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 448
    .restart local v0       #alignMultiplier:F
    :cond_7
    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iget v10, v10, Lpl/polidea/imagemanager/ImageManagerRequest;->alignment:I

    if-nez v10, :cond_8

    .line 449
    const/high16 v0, 0x3f00

    goto :goto_1

    .line 450
    :cond_8
    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iget v10, v10, Lpl/polidea/imagemanager/ImageManagerRequest;->alignment:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 451
    const/high16 v0, 0x3f80

    goto :goto_1

    .line 453
    :cond_9
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_2

    .line 461
    .end local v0           #alignMultiplier:F
    :cond_a
    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->m:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lpl/polidea/imagemanager/ManagedImageView;->getPaddingTop()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 462
    iget-object v10, p0, Lpl/polidea/imagemanager/ManagedImageView;->m:Landroid/graphics/Matrix;

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_3
.end method

.method public getDesiredHeight()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iget v0, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    return v0
.end method

.method public getDesiredWidth()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iget v0, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    return v0
.end method

.method public getSubsampling()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iget v0, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->subsample:I

    return v0
.end method

.method public isAntiAliasing()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v0

    return v0
.end method

.method public isDithering()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isDither()Z

    move-result v0

    return v0
.end method

.method public isFillWholeView()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->fillWholeView:Z

    return v0
.end method

.method public isKeepAspectRatio()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->keepRatio:Z

    return v0
.end method

.method public isKeepStrongCache()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iget-boolean v0, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->strong:Z

    return v0
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iget-boolean v0, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->preview:Z

    return v0
.end method

.method public load()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/polidea/imagemanager/ImageManager;->loadImage(Lpl/polidea/imagemanager/ImageManagerRequest;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setAlignment(I)V
    .locals 1
    .parameter "alignment"

    .prologue
    .line 361
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iput p1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->alignment:I

    .line 362
    return-void
.end method

.method public setAntiAliasing(Z)V
    .locals 1
    .parameter "antiAlias"

    .prologue
    .line 241
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 242
    return-void
.end method

.method public setDesiredDimensions(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 212
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iput p1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->width:I

    .line 218
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iput p2, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->height:I

    goto :goto_0
.end method

.method public setDithering(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 263
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 264
    return-void
.end method

.method public setFillWholeView(Z)V
    .locals 0
    .parameter "fillWholeView"

    .prologue
    .line 310
    iput-boolean p1, p0, Lpl/polidea/imagemanager/ManagedImageView;->fillWholeView:Z

    .line 311
    return-void
.end method

.method public setImage(I)V
    .locals 2
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iput p1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    .line 133
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iput-object v1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iput-object v1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    .line 135
    invoke-direct {p0}, Lpl/polidea/imagemanager/ManagedImageView;->redrawManagedImageViews()V

    .line 136
    return-void
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 146
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iput-object p1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    .line 147
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    const/4 v1, -0x1

    iput v1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    .line 149
    invoke-direct {p0}, Lpl/polidea/imagemanager/ManagedImageView;->redrawManagedImageViews()V

    .line 150
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"

    .prologue
    .line 118
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iput-object p1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->filename:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    const/4 v1, -0x1

    iput v1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->resId:I

    .line 120
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->uri:Landroid/net/Uri;

    .line 121
    invoke-direct {p0}, Lpl/polidea/imagemanager/ManagedImageView;->redrawManagedImageViews()V

    .line 122
    return-void
.end method

.method public setKeepAspectRatio(Z)V
    .locals 0
    .parameter "keepRatio"

    .prologue
    .line 287
    iput-boolean p1, p0, Lpl/polidea/imagemanager/ManagedImageView;->keepRatio:Z

    .line 288
    return-void
.end method

.method public setKeepStrongCache(Z)V
    .locals 1
    .parameter "strong"

    .prologue
    .line 356
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iput-boolean p1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->strong:Z

    .line 357
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 1
    .parameter "preview"

    .prologue
    .line 333
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iput-boolean p1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->preview:Z

    .line 334
    return-void
.end method

.method public setSubsampling(I)V
    .locals 1
    .parameter "subsample"

    .prologue
    .line 170
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    iput p1, v0, Lpl/polidea/imagemanager/ImageManagerRequest;->subsample:I

    goto :goto_0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lpl/polidea/imagemanager/ManagedImageView;->req:Lpl/polidea/imagemanager/ImageManagerRequest;

    invoke-static {v0}, Lpl/polidea/imagemanager/ImageManager;->unloadImage(Lpl/polidea/imagemanager/ImageManagerRequest;)V

    .line 380
    return-void
.end method
