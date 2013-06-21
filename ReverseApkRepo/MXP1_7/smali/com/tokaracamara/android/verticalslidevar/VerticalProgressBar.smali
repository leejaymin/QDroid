.class public Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;
.super Landroid/view/View;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field ㅼ꽑嫄:I

.field 弱밧:I

.field private 洹:I

.field private 癤욱븳援:I

.field private 궗:I

.field private 꾨뱾:Z

.field 대쫫:Landroid/graphics/Bitmap;

.field private 뚮Ц:Lsz;

.field private 먮:Z

.field private 먯껜蹂대떎:Landroid/graphics/drawable/Drawable;

.field 먯꽌:I

.field private 몃Ъ:Landroid/graphics/drawable/Drawable;

.field private 붿슧:J

.field 쇰뒗:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->붿슧:J

    invoke-direct {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援()V

    sget-object v0, Lsy;->ProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-boolean v4, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->꾨뱾:Z

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v3}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v1, 0x6

    iget v2, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->먯꽌:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->먯꽌:I

    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->ㅼ꽑嫄:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->ㅼ꽑嫄:I

    const/4 v1, 0x7

    iget v2, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->弱밧:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->弱밧:I

    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->쇰뒗:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->쇰뒗:I

    const/4 v1, 0x2

    iget v2, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->洹:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->setMax(I)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->setProgress(I)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->궗:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->setSecondaryProgress(I)V

    iput-boolean v3, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->꾨뱾:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private 癤욱븳援(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    move v3, v1

    :goto_0
    if-lt v3, v4, :cond_0

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-lt v1, v4, :cond_2

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x102000d

    if-eq v0, v7, :cond_1

    const v7, 0x102000f

    if-eq v0, v7, :cond_1

    move v0, v1

    :goto_3
    invoke-direct {p0, v6, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v5, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    goto :goto_2

    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->대쫫:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    iput-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->대쫫:Landroid/graphics/Bitmap;

    :cond_5
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    if-eqz p2, :cond_6

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    move-object v0, p1

    goto :goto_2
.end method

.method private 癤욱븳援()V
    .locals 4

    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    const/16 v0, 0x64

    iput v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->洹:I

    iput v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援:I

    iput v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->궗:I

    iput v2, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->먯꽌:I

    iput v3, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->ㅼ꽑嫄:I

    iput v2, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->弱밧:I

    iput v3, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->쇰뒗:I

    return-void
.end method

.method private declared-synchronized 癤욱븳援(IIZ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->洹:I

    if-lez v1, :cond_3

    int-to-float v1, p2

    iget v2, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->洹:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    move v3, v1

    :goto_0
    iget-object v2, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->먯껜蹂대떎:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    instance-of v4, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    const v4, 0x461c4000

    mul-float/2addr v4, v3

    float-to-int v4, v4

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :goto_1
    const v1, 0x102000d

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v3, p3}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static synthetic 癤욱븳援(Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援(IIZ)V

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;Lsz;)V
    .locals 0

    iput-object p1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->뚮Ц:Lsz;

    return-void
.end method

.method private declared-synchronized 궗(IIZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->붿슧:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->뚮Ц:Lsz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->뚮Ц:Lsz;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->뚮Ц:Lsz;

    invoke-virtual {v0, p1, p2, p3}, Lsz;->癤욱븳援(IIZ)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Lsz;

    invoke-direct {v0, p0, p1, p2, p3}, Lsz;-><init>(Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->몃Ъ:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->몃Ъ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->몃Ъ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->먯껜蹂대떎:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->洹:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->몃Ъ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->궗:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    iget-boolean v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->먮:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->invalidate(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->먯껜蹂대떎:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->먯껜蹂대떎:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->먯꽌:I

    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->ㅼ꽑嫄:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->弱밧:I

    iget v3, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->쇰뒗:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-static {v1, p1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;

    invoke-virtual {p1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;->癤욱븳援:I

    invoke-virtual {p0, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->setProgress(I)V

    iget v0, p1, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;->궗:I

    invoke-virtual {p0, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援:I

    iput v0, v1, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;->癤욱븳援:I

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->궗:I

    iput v0, v1, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;->궗:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->몃Ъ:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->몃Ъ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->꾨뱾:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->洹:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->洹:I

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->postInvalidate()V

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援:I

    if-le v0, p1, :cond_1

    iput p1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援:I

    const v0, 0x102000d

    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->궗(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->쇰뒗:I

    if-ge v1, v0, :cond_0

    iput v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->쇰뒗:I

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->requestLayout()V

    :cond_0
    iput-object p1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->몃Ъ:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->먯껜蹂대떎:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->postInvalidate()V

    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    if-gez p1, :cond_2

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->洹:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->洹:I

    :cond_0
    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->궗:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->궗:I

    const v0, 0x102000f

    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->궗:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->궗(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->몃Ъ:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method 癤욱븳援(FZ)V
    .locals 0

    return-void
.end method

.method declared-synchronized 癤욱븳援(IZ)V
    .locals 2

    monitor-enter p0

    if-gez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->洹:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->洹:I

    :cond_0
    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援:I

    const v0, 0x102000d

    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->癤욱븳援:I

    invoke-direct {p0, v0, v1, p2}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->궗(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, p1

    goto :goto_0
.end method
