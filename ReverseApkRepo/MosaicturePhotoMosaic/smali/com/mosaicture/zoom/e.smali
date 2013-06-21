.class final Lcom/mosaicture/zoom/e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/mosaicture/zoom/ImageZoomViewTouch;


# direct methods
.method constructor <init>(Lcom/mosaicture/zoom/ImageZoomViewTouch;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->c()F

    move-result v0

    iget-object v1, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    iget-object v2, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-virtual {v2}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->b()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->a(FF)F

    move-result v0

    iget-object v1, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-virtual {v1}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->b()F

    move-result v1

    const v2, 0x3f666666

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    iput v0, v1, Lcom/mosaicture/zoom/ImageZoomViewTouch;->d:F

    iget-object v1, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v4, 0x4348

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->a(FFFF)V

    iget-object v0, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->invalidate()V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/high16 v4, 0x4448

    const/high16 v3, 0x4000

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    iget-object v1, v1, Lcom/mosaicture/zoom/ImageZoomViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->d(FF)V

    iget-object v0, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->invalidate()V

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    iget-object v1, v1, Lcom/mosaicture/zoom/ImageZoomViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-virtual {v1}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->c()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->b(FF)V

    iget-object v0, p0, Lcom/mosaicture/zoom/e;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->invalidate()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method
