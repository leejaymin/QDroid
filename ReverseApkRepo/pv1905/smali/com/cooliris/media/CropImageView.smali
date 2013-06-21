.class Lcom/cooliris/media/CropImageView;
.super Lcom/cooliris/media/ImageViewTouchBase;
.source "CropImage.java"


# instance fields
.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/cooliris/media/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Lcom/cooliris/media/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    .line 447
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/cooliris/media/HighlightView;)V
    .locals 13
    .parameter "hv"

    .prologue
    .line 626
    iget-object v1, p1, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 628
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 629
    .local v5, width:F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 631
    .local v2, height:F
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 632
    .local v4, thisWidth:F
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 634
    .local v3, thisHeight:F
    div-float v9, v4, v5

    const v10, 0x3f19999a

    mul-float v6, v9, v10

    .line 635
    .local v6, z1:F
    div-float v9, v3, v2

    const v10, 0x3f19999a

    mul-float v7, v9, v10

    .line 637
    .local v7, z2:F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 638
    .local v8, zoom:F
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 639
    const/high16 v9, 0x3f80

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 641
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 642
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/cooliris/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 643
    .local v0, coordinates:[F
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 644
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x4396

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/cooliris/media/CropImageView;->zoomTo(FFFF)V

    .line 647
    .end local v0           #coordinates:[F
    :cond_0
    invoke-direct {p0, p1}, Lcom/cooliris/media/CropImageView;->ensureVisible(Lcom/cooliris/media/HighlightView;)V

    .line 648
    return-void
.end method

.method private ensureVisible(Lcom/cooliris/media/HighlightView;)V
    .locals 10
    .parameter "hv"

    .prologue
    const/4 v9, 0x0

    .line 607
    iget-object v6, p1, Lcom/cooliris/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 609
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 610
    .local v1, panDeltaX1:I
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 612
    .local v2, panDeltaX2:I
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 613
    .local v4, panDeltaY1:I
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 615
    .local v5, panDeltaY2:I
    if-eqz v1, :cond_2

    move v0, v1

    .line 616
    .local v0, panDeltaX:I
    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    .line 618
    .local v3, panDeltaY:I
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 619
    :cond_0
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/cooliris/media/CropImageView;->panBy(FF)V

    .line 621
    :cond_1
    return-void

    .end local v0           #panDeltaX:I
    .end local v3           #panDeltaY:I
    :cond_2
    move v0, v2

    .line 615
    goto :goto_0

    .restart local v0       #panDeltaX:I
    :cond_3
    move v3, v5

    .line 616
    goto :goto_1
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 489
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 495
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 506
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->invalidate()V

    .line 507
    return-void

    .line 490
    :cond_1
    iget-object v3, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/HighlightView;

    .line 491
    .local v1, hv:Lcom/cooliris/media/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/cooliris/media/HighlightView;->setFocus(Z)V

    .line 492
    invoke-virtual {v1}, Lcom/cooliris/media/HighlightView;->invalidate()V

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v1           #hv:Lcom/cooliris/media/HighlightView;
    :cond_2
    iget-object v3, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/HighlightView;

    .line 497
    .restart local v1       #hv:Lcom/cooliris/media/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/cooliris/media/HighlightView;->getHit(FF)I

    move-result v0

    .line 498
    .local v0, edge:I
    if-eq v0, v5, :cond_3

    .line 499
    invoke-virtual {v1}, Lcom/cooliris/media/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 500
    invoke-virtual {v1, v5}, Lcom/cooliris/media/HighlightView;->setFocus(Z)V

    .line 501
    invoke-virtual {v1}, Lcom/cooliris/media/HighlightView;->invalidate()V

    goto :goto_2

    .line 495
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/cooliris/media/HighlightView;)V
    .locals 1
    .parameter "hv"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->invalidate()V

    .line 661
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 652
    invoke-super {p0, p1}, Lcom/cooliris/media/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 653
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 656
    return-void

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/HighlightView;

    invoke-virtual {v1, p1}, Lcom/cooliris/media/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 433
    invoke-super/range {p0 .. p5}, Lcom/cooliris/media/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 434
    iget-object v1, p0, Lcom/cooliris/media/CropImageView;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    invoke-virtual {v1}, Lcom/cooliris/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 443
    :cond_1
    return-void

    .line 435
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/HighlightView;

    .line 436
    .local v0, hv:Lcom/cooliris/media/HighlightView;
    iget-object v2, v0, Lcom/cooliris/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 437
    invoke-virtual {v0}, Lcom/cooliris/media/HighlightView;->invalidate()V

    .line 438
    iget-boolean v2, v0, Lcom/cooliris/media/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_0

    .line 439
    invoke-direct {p0, v0}, Lcom/cooliris/media/CropImageView;->centerBasedOnHighlightView(Lcom/cooliris/media/HighlightView;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 511
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/CropImage;

    .line 512
    .local v0, cropImage:Lcom/cooliris/media/CropImage;
    iget-boolean v5, v0, Lcom/cooliris/media/CropImage;->mSaving:Z

    if-eqz v5, :cond_0

    move v5, v6

    .line 602
    :goto_0
    return v5

    .line 516
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 587
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_2
    :goto_2
    move v5, v7

    .line 602
    goto :goto_0

    .line 518
    :pswitch_0
    iget-boolean v5, v0, Lcom/cooliris/media/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_3

    .line 519
    invoke-direct {p0, p1}, Lcom/cooliris/media/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 521
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget-object v5, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 527
    iget-object v5, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/HighlightView;

    .line 528
    .local v2, hv:Lcom/cooliris/media/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/cooliris/media/HighlightView;->getHit(FF)I

    move-result v1

    .line 529
    .local v1, edge:I
    if-eq v1, v7, :cond_5

    .line 530
    iput v1, p0, Lcom/cooliris/media/CropImageView;->mMotionEdge:I

    .line 531
    iput-object v2, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    .line 532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/cooliris/media/CropImageView;->mLastX:F

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/cooliris/media/CropImageView;->mLastY:F

    .line 535
    iget-object v6, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    const/16 v5, 0x20

    if-ne v1, v5, :cond_4

    sget-object v5, Lcom/cooliris/media/HighlightView$ModifyMode;->Move:Lcom/cooliris/media/HighlightView$ModifyMode;

    :goto_4
    invoke-virtual {v6, v5}, Lcom/cooliris/media/HighlightView;->setMode(Lcom/cooliris/media/HighlightView$ModifyMode;)V

    goto :goto_1

    .line 536
    :cond_4
    sget-object v5, Lcom/cooliris/media/HighlightView$ModifyMode;->Grow:Lcom/cooliris/media/HighlightView$ModifyMode;

    goto :goto_4

    .line 521
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 544
    .end local v1           #edge:I
    .end local v2           #hv:Lcom/cooliris/media/HighlightView;
    .end local v3           #i:I
    :pswitch_1
    iget-boolean v5, v0, Lcom/cooliris/media/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_b

    .line 545
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    iget-object v5, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_7

    .line 565
    .end local v3           #i:I
    :cond_6
    :goto_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    goto :goto_1

    .line 546
    .restart local v3       #i:I
    :cond_7
    iget-object v5, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/HighlightView;

    .line 547
    .restart local v2       #hv:Lcom/cooliris/media/HighlightView;
    invoke-virtual {v2}, Lcom/cooliris/media/HighlightView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 548
    iput-object v2, v0, Lcom/cooliris/media/CropImage;->mCrop:Lcom/cooliris/media/HighlightView;

    .line 549
    const/4 v4, 0x0

    .local v4, j:I
    :goto_7
    iget-object v5, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 556
    invoke-direct {p0, v2}, Lcom/cooliris/media/CropImageView;->centerBasedOnHighlightView(Lcom/cooliris/media/HighlightView;)V

    .line 557
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/CropImage;

    iput-boolean v6, v5, Lcom/cooliris/media/CropImage;->mWaitingToPick:Z

    move v5, v7

    .line 558
    goto/16 :goto_0

    .line 550
    :cond_8
    if-ne v4, v3, :cond_9

    .line 549
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 554
    :cond_9
    iget-object v5, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/HighlightView;

    invoke-virtual {v5, v7}, Lcom/cooliris/media/HighlightView;->setHidden(Z)V

    goto :goto_8

    .line 545
    .end local v4           #j:I
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 561
    .end local v2           #hv:Lcom/cooliris/media/HighlightView;
    .end local v3           #i:I
    :cond_b
    iget-object v5, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    if-eqz v5, :cond_6

    .line 562
    iget-object v5, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    invoke-direct {p0, v5}, Lcom/cooliris/media/CropImageView;->centerBasedOnHighlightView(Lcom/cooliris/media/HighlightView;)V

    .line 563
    iget-object v5, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    sget-object v6, Lcom/cooliris/media/HighlightView$ModifyMode;->None:Lcom/cooliris/media/HighlightView$ModifyMode;

    invoke-virtual {v5, v6}, Lcom/cooliris/media/HighlightView;->setMode(Lcom/cooliris/media/HighlightView$ModifyMode;)V

    goto :goto_6

    .line 568
    :pswitch_2
    iget-boolean v5, v0, Lcom/cooliris/media/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_c

    .line 569
    invoke-direct {p0, p1}, Lcom/cooliris/media/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 570
    :cond_c
    iget-object v5, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    if-eqz v5, :cond_1

    .line 571
    iget-object v5, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    iget v6, p0, Lcom/cooliris/media/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/cooliris/media/CropImageView;->mLastX:F

    sub-float/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/cooliris/media/CropImageView;->mLastY:F

    sub-float/2addr v9, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/cooliris/media/HighlightView;->handleMotion(IFF)V

    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/cooliris/media/CropImageView;->mLastX:F

    .line 573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/cooliris/media/CropImageView;->mLastY:F

    .line 581
    iget-object v5, p0, Lcom/cooliris/media/CropImageView;->mMotionHighlightView:Lcom/cooliris/media/HighlightView;

    invoke-direct {p0, v5}, Lcom/cooliris/media/CropImageView;->ensureVisible(Lcom/cooliris/media/HighlightView;)V

    goto/16 :goto_1

    .line 589
    :pswitch_3
    invoke-virtual {p0, v7, v7}, Lcom/cooliris/media/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 596
    :pswitch_4
    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getScale()F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 597
    invoke-virtual {p0, v7, v7}, Lcom/cooliris/media/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 587
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 478
    invoke-super {p0, p1, p2}, Lcom/cooliris/media/ImageViewTouchBase;->postTranslate(FF)V

    .line 479
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 484
    return-void

    .line 480
    :cond_0
    iget-object v2, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/HighlightView;

    .line 481
    .local v0, hv:Lcom/cooliris/media/HighlightView;
    iget-object v2, v0, Lcom/cooliris/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 482
    invoke-virtual {v0}, Lcom/cooliris/media/HighlightView;->invalidate()V

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 460
    invoke-super {p0}, Lcom/cooliris/media/ImageViewTouchBase;->zoomIn()V

    .line 461
    iget-object v1, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    return-void

    .line 461
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/HighlightView;

    .line 462
    .local v0, hv:Lcom/cooliris/media/HighlightView;
    iget-object v2, v0, Lcom/cooliris/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 463
    invoke-virtual {v0}, Lcom/cooliris/media/HighlightView;->invalidate()V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 469
    invoke-super {p0}, Lcom/cooliris/media/ImageViewTouchBase;->zoomOut()V

    .line 470
    iget-object v1, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    return-void

    .line 470
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/HighlightView;

    .line 471
    .local v0, hv:Lcom/cooliris/media/HighlightView;
    iget-object v2, v0, Lcom/cooliris/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 472
    invoke-virtual {v0}, Lcom/cooliris/media/HighlightView;->invalidate()V

    goto :goto_0
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 451
    invoke-super {p0, p1, p2, p3}, Lcom/cooliris/media/ImageViewTouchBase;->zoomTo(FFF)V

    .line 452
    iget-object v1, p0, Lcom/cooliris/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    return-void

    .line 452
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/HighlightView;

    .line 453
    .local v0, hv:Lcom/cooliris/media/HighlightView;
    iget-object v2, v0, Lcom/cooliris/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/cooliris/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 454
    invoke-virtual {v0}, Lcom/cooliris/media/HighlightView;->invalidate()V

    goto :goto_0
.end method
