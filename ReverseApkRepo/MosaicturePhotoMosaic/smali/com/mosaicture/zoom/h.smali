.class final Lcom/mosaicture/zoom/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:F

.field b:F

.field final synthetic c:Lcom/mosaicture/zoom/ImageZoomViewTouchBase;

.field private final synthetic d:F

.field private final synthetic e:J

.field private final synthetic f:F

.field private final synthetic g:F


# direct methods
.method constructor <init>(Lcom/mosaicture/zoom/ImageZoomViewTouchBase;JFF)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/mosaicture/zoom/h;->c:Lcom/mosaicture/zoom/ImageZoomViewTouchBase;

    const/high16 v0, 0x4396

    iput v0, p0, Lcom/mosaicture/zoom/h;->d:F

    iput-wide p2, p0, Lcom/mosaicture/zoom/h;->e:J

    iput p4, p0, Lcom/mosaicture/zoom/h;->f:F

    iput p5, p0, Lcom/mosaicture/zoom/h;->g:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/mosaicture/zoom/h;->a:F

    iput v1, p0, Lcom/mosaicture/zoom/h;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/mosaicture/zoom/h;->d:F

    iget-wide v3, p0, Lcom/mosaicture/zoom/h;->e:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/mosaicture/zoom/h;->f:F

    iget v2, p0, Lcom/mosaicture/zoom/h;->d:F

    invoke-static {v0, v1, v2}, Lcom/mosaicture/zoom/b;->a(FFF)F

    move-result v1

    iget v2, p0, Lcom/mosaicture/zoom/h;->g:F

    iget v3, p0, Lcom/mosaicture/zoom/h;->d:F

    invoke-static {v0, v2, v3}, Lcom/mosaicture/zoom/b;->a(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/mosaicture/zoom/h;->c:Lcom/mosaicture/zoom/ImageZoomViewTouchBase;

    iget v4, p0, Lcom/mosaicture/zoom/h;->a:F

    sub-float v4, v1, v4

    iget v5, p0, Lcom/mosaicture/zoom/h;->b:F

    sub-float v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->c(FF)V

    iput v1, p0, Lcom/mosaicture/zoom/h;->a:F

    iput v2, p0, Lcom/mosaicture/zoom/h;->b:F

    iget v1, p0, Lcom/mosaicture/zoom/h;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/mosaicture/zoom/h;->c:Lcom/mosaicture/zoom/ImageZoomViewTouchBase;

    iget-object v0, v0, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->k:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mosaicture/zoom/h;->c:Lcom/mosaicture/zoom/ImageZoomViewTouchBase;

    invoke-virtual {v0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->d()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/mosaicture/zoom/h;->c:Lcom/mosaicture/zoom/ImageZoomViewTouchBase;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v0}, Lcom/mosaicture/zoom/ImageZoomViewTouchBase;->b(FF)V

    goto :goto_0
.end method
