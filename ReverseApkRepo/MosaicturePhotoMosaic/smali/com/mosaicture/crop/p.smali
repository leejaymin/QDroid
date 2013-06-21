.class final Lcom/mosaicture/crop/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mosaicture/crop/ImageViewTouchBase;

.field private final synthetic b:F

.field private final synthetic c:J

.field private final synthetic d:F

.field private final synthetic e:F

.field private final synthetic f:F

.field private final synthetic g:F


# direct methods
.method constructor <init>(Lcom/mosaicture/crop/ImageViewTouchBase;JFFFF)V
    .locals 1

    iput-object p1, p0, Lcom/mosaicture/crop/p;->a:Lcom/mosaicture/crop/ImageViewTouchBase;

    const/high16 v0, 0x4396

    iput v0, p0, Lcom/mosaicture/crop/p;->b:F

    iput-wide p2, p0, Lcom/mosaicture/crop/p;->c:J

    iput p4, p0, Lcom/mosaicture/crop/p;->d:F

    iput p5, p0, Lcom/mosaicture/crop/p;->e:F

    iput p6, p0, Lcom/mosaicture/crop/p;->f:F

    iput p7, p0, Lcom/mosaicture/crop/p;->g:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/mosaicture/crop/p;->b:F

    iget-wide v3, p0, Lcom/mosaicture/crop/p;->c:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/mosaicture/crop/p;->d:F

    iget v2, p0, Lcom/mosaicture/crop/p;->e:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/mosaicture/crop/p;->a:Lcom/mosaicture/crop/ImageViewTouchBase;

    iget v3, p0, Lcom/mosaicture/crop/p;->f:F

    iget v4, p0, Lcom/mosaicture/crop/p;->g:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/mosaicture/crop/ImageViewTouchBase;->a(FFF)V

    iget v1, p0, Lcom/mosaicture/crop/p;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/crop/p;->a:Lcom/mosaicture/crop/ImageViewTouchBase;

    iget-object v0, v0, Lcom/mosaicture/crop/ImageViewTouchBase;->m:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
