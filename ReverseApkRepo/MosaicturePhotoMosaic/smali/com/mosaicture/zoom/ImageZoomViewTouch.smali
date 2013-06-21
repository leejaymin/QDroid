.class public Lcom/mosaicture/zoom/ImageZoomViewTouch;
.super Lcom/mosaicture/zoom/ImageZoomViewTouchBase;


# instance fields
.field protected a:Landroid/view/ScaleGestureDetector;

.field protected b:Landroid/view/GestureDetector;

.field protected c:I

.field protected d:F

.field protected e:F

.field protected f:I

.field protected g:Lcom/mosaicture/zoom/e;

.field protected h:Lcom/mosaicture/zoom/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected final a(FF)F
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->f:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->e:F

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->e:F

    add-float p2, p1, v0

    :goto_0
    return p2

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->f:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->f:I

    const/high16 p2, 0x3f80

    goto :goto_0
.end method

.method protected final a()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->c:I

    new-instance v0, Lcom/mosaicture/zoom/e;

    invoke-direct {v0, p0}, Lcom/mosaicture/zoom/e;-><init>(Lcom/mosaicture/zoom/ImageZoomViewTouch;)V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->g:Lcom/mosaicture/zoom/e;

    new-instance v0, Lcom/mosaicture/zoom/f;

    invoke-direct {v0, p0}, Lcom/mosaicture/zoom/f;-><init>(Lcom/mosaicture/zoom/ImageZoomViewTouch;)V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->h:Lcom/mosaicture/zoom/f;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->h:Lcom/mosaicture/zoom/f;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->a:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->g:Lcom/mosaicture/zoom/e;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->b:Landroid/view/GestureDetector;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->d:F

    iput v4, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->f:I

    return-void
.end method

.method protected final a(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a(F)V

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->d:F

    :cond_0
    return-void
.end method

.method public final a(Lcom/mosaicture/zoom/o;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->a(Lcom/mosaicture/zoom/o;Z)V

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->b()F

    move-result v0

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    iput v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->e:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->c()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->e()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
