.class public Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;
.super Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;


# instance fields
.field private 洹:Landroid/graphics/drawable/Drawable;

.field 癤욱븳援:F

.field 궗:Z

.field private 꾨뱾:F

.field private 먯껜蹂대떎:I

.field private 몃Ъ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->궗:Z

    iput v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->먯껜蹂대떎:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->궗:Z

    iput v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->먯껜蹂대떎:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->궗:Z

    iput v3, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->먯껜蹂대떎:I

    sget-object v0, Lsy;->SeekBar:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getThumbOffset()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->setThumbOffset(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lsy;->Theme:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->꾨뱾:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private ㅼ꽑嫄()V
    .locals 2

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private 癤욱븳援(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 4

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingTop()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v3, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->몃Ъ:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v3, p3

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v3, v0

    const/high16 v0, -0x8000

    if-ne p4, v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget p4, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    add-int v1, v3, v2

    invoke-virtual {p2, p4, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :cond_0
    add-int v0, p4, v1

    goto :goto_0
.end method

.method private 癤욱븳援(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingTop()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingBottom()I

    move-result v4

    if-ge v3, v4, :cond_0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->癤욱븳援(IZ)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    if-le v3, v1, :cond_1

    const/high16 v1, 0x3f80

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingBottom()I

    move-result v0

    sub-int v0, v3, v0

    int-to-float v0, v0

    int-to-float v1, v2

    div-float v1, v0, v1

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->癤욱븳援:F

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->洹:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->洹:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->洹:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void

    :cond_2
    const/high16 v0, 0x437f

    iget v2, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->꾨뱾:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->먯껜蹂대떎:I

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->몃Ъ:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->洹:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->몃Ъ:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->洹:Landroid/graphics/drawable/Drawable;

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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getProgress()I

    move-result v1

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    if-lez v1, :cond_0

    iget v2, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->먯껜蹂대떎:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->癤욱븳援(IZ)V

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->먯꽌()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getMax()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v2, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->먯껜蹂대떎:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->癤욱븳援(IZ)V

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->먯꽌()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v1, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->洹:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->먯꽌:I

    iget v4, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->ㅼ꽑嫄:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->弱밧:I

    iget v3, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->쇰뒗:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-static {v1, p1}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->洹:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->洹:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->ㅼ꽑嫄:I

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingRight()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getMax()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getProgress()I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    div-float v2, v6, v2

    :goto_1
    if-le v0, v5, :cond_4

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    if-eqz v4, :cond_0

    mul-int/lit8 v5, v0, -0x1

    invoke-direct {p0, p2, v4, v2, v5}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->癤욱븳援(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingRight()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingRight()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingBottom()I

    move-result v7

    sub-int v7, p2, v7

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v1, v1, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5
    sub-int v0, v5, v0

    div-int/lit8 v0, v0, 0x2

    if-eqz v4, :cond_1

    invoke-direct {p0, p2, v4, v2, v0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->癤욱븳援(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->궗:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->癤욱븳援()V

    invoke-direct {p0, p1}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->癤욱븳援(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->癤욱븳援(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->ㅼ꽑嫄()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->癤욱븳援(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->궗()V

    invoke-virtual {p0, v1}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->invalidate()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->궗()V

    invoke-virtual {p0, v1}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->invalidate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0

    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    iput p1, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->먯껜蹂대떎:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->setMax(I)V

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->먯껜蹂대떎:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->먯껜蹂대떎:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->setKeyProgressIncrement(I)V
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

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->몃Ъ:I

    :cond_0
    iput-object p1, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->洹:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->invalidate()V

    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0

    iput p1, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->몃Ъ:I

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->洹:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method 癤욱븳援()V
    .locals 0

    return-void
.end method

.method 癤욱븳援(FZ)V
    .locals 3

    iget-object v0, p0, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->洹:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->getHeight()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->癤욱븳援(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Lcom/tokaracamara/android/verticalslidevar/AbsVerticalSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method 궗()V
    .locals 0

    return-void
.end method

.method 먯꽌()V
    .locals 0

    return-void
.end method
