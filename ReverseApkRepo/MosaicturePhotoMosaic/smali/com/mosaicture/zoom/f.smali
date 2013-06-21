.class final Lcom/mosaicture/zoom/f;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# instance fields
.field final synthetic a:Lcom/mosaicture/zoom/ImageZoomViewTouch;


# direct methods
.method constructor <init>(Lcom/mosaicture/zoom/ImageZoomViewTouch;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/zoom/f;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    const/4 v5, 0x1

    const v4, 0x3f666666

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    iget-object v0, p0, Lcom/mosaicture/zoom/f;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    iget v0, v0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->d:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/mosaicture/zoom/f;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-virtual {v1}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->b()F

    move-result v1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/mosaicture/zoom/f;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->a(FFF)V

    iget-object v1, p0, Lcom/mosaicture/zoom/f;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    iget-object v2, p0, Lcom/mosaicture/zoom/f;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-virtual {v2}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->b()F

    move-result v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lcom/mosaicture/zoom/ImageZoomViewTouch;->d:F

    iget-object v0, p0, Lcom/mosaicture/zoom/f;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    iput v5, v0, Lcom/mosaicture/zoom/ImageZoomViewTouch;->f:I

    iget-object v0, p0, Lcom/mosaicture/zoom/f;->a:Lcom/mosaicture/zoom/ImageZoomViewTouch;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/ImageZoomViewTouch;->invalidate()V

    return v5
.end method
