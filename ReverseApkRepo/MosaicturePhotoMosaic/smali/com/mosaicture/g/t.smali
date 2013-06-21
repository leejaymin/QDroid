.class public final Lcom/mosaicture/g/t;
.super Lcom/mosaicture/g/f;


# instance fields
.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mosaicture/g/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 5

    int-to-float v0, p1

    const/high16 v1, 0x447a

    div-float v1, v0, v1

    invoke-virtual {p0}, Lcom/mosaicture/g/t;->c()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/mosaicture/g/t;->g:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/mosaicture/g/t;->h:F

    iget v3, p0, Lcom/mosaicture/g/t;->b:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    :goto_0
    iget v2, p0, Lcom/mosaicture/g/t;->a:F

    iget v3, p0, Lcom/mosaicture/g/t;->b:F

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    mul-float/2addr v4, v0

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/mosaicture/g/t;->a:F

    iget v2, p0, Lcom/mosaicture/g/t;->b:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/mosaicture/g/t;->b:F

    return-void

    :cond_0
    iget v0, p0, Lcom/mosaicture/g/t;->f:F

    neg-float v0, v0

    iget v2, p0, Lcom/mosaicture/g/t;->b:F

    mul-float/2addr v0, v2

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    const/high16 v0, 0x4000

    iput v0, p0, Lcom/mosaicture/g/t;->f:F

    return-void
.end method

.method public final e()V
    .locals 3

    const/high16 v0, 0x4248

    iput v0, p0, Lcom/mosaicture/g/t;->g:F

    const/high16 v0, 0x4000

    const-wide/high16 v1, 0x4049

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/mosaicture/g/t;->h:F

    return-void
.end method
