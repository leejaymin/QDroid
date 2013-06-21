.class public Lcom/jellybus/fx_sub/Stamp;
.super Ljava/lang/Object;
.source "Stamp.java"


# instance fields
.field public basicDegree:F

.field public bitmapIdx:I

.field public bmCenterX:F

.field public bmCenterY:F

.field public bmH:F

.field public bmW:F

.field public curAngle:F

.field public curX:F

.field public curY:F

.field public isPhotoStamp:Z

.field public isTextStamp:Z

.field public multiDegree:F

.field public multiScale:F

.field public path:Ljava/lang/String;

.field public rect:Landroid/graphics/RectF;

.field public rect_but:Landroid/graphics/RectF;

.field public rect_size:Landroid/graphics/RectF;

.field public scale:F

.field public stamp_index:I

.field public startAngle:F

.field public startDegree:F

.field public startDistance:F

.field public startScale:F


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 10
    .parameter "bitmapIdx"
    .parameter "width"
    .parameter "height"
    .parameter "isPhotoStamp"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/jellybus/fx_sub/Stamp;->scale:F

    .line 30
    const/4 v4, 0x0

    iput v4, p0, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    .line 41
    iput p1, p0, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    .line 42
    iput-boolean p4, p0, Lcom/jellybus/fx_sub/Stamp;->isPhotoStamp:Z

    .line 44
    int-to-float v4, p2

    iput v4, p0, Lcom/jellybus/fx_sub/Stamp;->bmW:F

    .line 45
    int-to-float v4, p3

    iput v4, p0, Lcom/jellybus/fx_sub/Stamp;->bmH:F

    .line 46
    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    iput v4, p0, Lcom/jellybus/fx_sub/Stamp;->bmCenterX:F

    .line 47
    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    iput v4, p0, Lcom/jellybus/fx_sub/Stamp;->bmCenterY:F

    .line 50
    sget v4, Lcom/jellybus/fx_sub/StampControllView;->viewW:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/Stamp;->bmCenterX:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/jellybus/fx_sub/Stamp;->curX:F

    .line 51
    sget v4, Lcom/jellybus/fx_sub/StampControllView;->viewH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/Stamp;->bmCenterY:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/jellybus/fx_sub/Stamp;->curY:F

    .line 53
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/jellybus/fx_sub/Stamp;->curX:F

    iget v6, p0, Lcom/jellybus/fx_sub/Stamp;->curY:F

    iget v7, p0, Lcom/jellybus/fx_sub/Stamp;->curX:F

    iget v8, p0, Lcom/jellybus/fx_sub/Stamp;->bmW:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/jellybus/fx_sub/Stamp;->curY:F

    iget v9, p0, Lcom/jellybus/fx_sub/Stamp;->bmH:F

    add-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    .line 55
    sget v3, Lcom/jellybus/fx_sub/StampControllView;->but_center:I

    .line 56
    .local v3, but_center:I
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    int-to-float v6, v3

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    int-to-float v7, v3

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    int-to-float v9, v3

    add-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    .line 59
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, p0, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    .line 62
    iget-object v4, p0, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, p0, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, p0, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 63
    .local v2, basicRadian:F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/jellybus/fx_sub/Stamp;->basicDegree:F

    iput v4, p0, Lcom/jellybus/fx_sub/Stamp;->startAngle:F

    .line 65
    iget-object v4, p0, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 66
    .local v0, basicDX:F
    iget-object v4, p0, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 67
    .local v1, basicDY:F
    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/jellybus/fx_sub/Stamp;->startDistance:F

    .line 68
    return-void
.end method


# virtual methods
.method public setPhotoStampPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jellybus/fx_sub/Stamp;->path:Ljava/lang/String;

    .line 72
    return-void
.end method
