.class public Lcom/jellybus/fx_sub/HistogramGraphView;
.super Landroid/view/View;
.source "HistogramGraphView.java"


# instance fields
.field private final Center:I

.field private final Left:I

.field private final Right:I

.field private button_size:I

.field public centerX:F

.field private center_center:I

.field private center_off:Landroid/graphics/Bitmap;

.field private center_on:Landroid/graphics/Bitmap;

.field private center_ratio:F

.field private height:I

.field public isLine:Z

.field private isRecycle:Z

.field private isViewSet:Z

.field public line_index:I

.field private line_on_left:Landroid/graphics/Bitmap;

.field private line_on_right:Landroid/graphics/Bitmap;

.field public mRect:Landroid/graphics/RectF;

.field private minSize:I

.field private touchSize:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_ratio:F

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->Left:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->Center:I

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->Right:I

    .line 38
    const/16 v0, 0x26

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->button_size:I

    .line 39
    const/16 v0, 0x4c

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->minSize:I

    .line 40
    const/16 v0, 0x13

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->touchSize:I

    .line 45
    return-void
.end method

.method private clipValue(F)F
    .locals 1
    .parameter "x"

    .prologue
    .line 180
    const/high16 v0, 0x4120

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 181
    const/high16 p1, 0x4120

    .line 184
    :cond_0
    :goto_0
    return p1

    .line 182
    :cond_1
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->width:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 183
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->width:I

    int-to-float p1, v0

    goto :goto_0
.end method

.method private getCenterRatio()V
    .locals 3

    .prologue
    .line 206
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_ratio:F

    .line 207
    return-void
.end method

.method private selectedLine(F)V
    .locals 5
    .parameter "x"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 189
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->touchSize:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->button_size:I

    iget v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->touchSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 190
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isLine:Z

    .line 191
    iput v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    .line 202
    :goto_0
    return-void

    .line 192
    :cond_0
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_on:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 193
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isLine:Z

    .line 194
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->touchSize:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->button_size:I

    iget v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->touchSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 196
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isLine:Z

    .line 197
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    goto :goto_0

    .line 199
    :cond_2
    iput-boolean v4, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isLine:Z

    .line 200
    iput v4, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    goto :goto_0
.end method

.method private setCenter()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_ratio:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    .line 212
    return-void
.end method

.method private setPoints()V
    .locals 5

    .prologue
    .line 100
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x4120

    const/4 v2, 0x0

    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->height:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    .line 101
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    .line 103
    invoke-direct {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->getCenterRatio()V

    .line 104
    return-void
.end method


# virtual methods
.method public getCenterX()F
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isViewSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isRecycle:Z

    if-nez v0, :cond_0

    .line 218
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 219
    .local v5, p:Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 220
    const/high16 v0, -0x100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    const/16 v0, 0xb4

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 223
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 224
    const-string v0, "#bfbfbf"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    const/16 v0, 0xb4

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 226
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 228
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 230
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 234
    const-string v0, "#bfbfbf"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    const/high16 v0, 0x3f80

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isLine:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 237
    const-string v0, "#00eaff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    sub-float v1, v0, v1

    const/4 v2, 0x0

    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    const/high16 v3, 0x3f00

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 239
    const-string v0, "#bfbfbf"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    :goto_0
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isLine:Z

    if-eqz v0, :cond_4

    .line 246
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 248
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_on:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 250
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 252
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 284
    .end local v5           #p:Landroid/graphics/Paint;
    :cond_0
    :goto_1
    return-void

    .line 241
    .restart local v5       #p:Landroid/graphics/Paint;
    :cond_1
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    sub-float v1, v0, v1

    const/4 v2, 0x0

    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    const/high16 v3, 0x3f00

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 253
    :cond_2
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 255
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_off:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 257
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_on_left:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_on_left:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 259
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 260
    :cond_3
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_off:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 264
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 266
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_on_right:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_off:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 272
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 274
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 117
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isViewSet:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->setPoints()V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->invalidate()V

    .line 120
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 173
    :goto_0
    return v1

    .line 125
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/jellybus/fx_sub/HistogramGraphView;->selectedLine(F)V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-boolean v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isLine:Z

    if-eqz v3, :cond_7

    .line 131
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    if-ne v2, v1, :cond_2

    .line 132
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    add-float v0, v2, v3

    .line 133
    .local v0, move:F
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->minSize:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/HistogramGraphView;->clipValue(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 138
    :goto_1
    invoke-direct {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->setCenter()V

    .line 158
    .end local v0           #move:F
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->invalidate()V

    goto :goto_0

    .line 136
    .restart local v0       #move:F
    :cond_1
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->minSize:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 139
    .end local v0           #move:F
    :cond_2
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    if-ne v2, v4, :cond_5

    .line 140
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    sub-float/2addr v3, v4

    add-float v0, v2, v3

    .line 141
    .restart local v0       #move:F
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 142
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 143
    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    goto :goto_2

    .line 144
    :cond_3
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    .line 145
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    goto :goto_2

    .line 146
    :cond_4
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_on:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    goto/16 :goto_2

    .line 148
    .end local v0           #move:F
    :cond_5
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 149
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    add-float v0, v2, v3

    .line 150
    .restart local v0       #move:F
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->minSize:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 151
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/HistogramGraphView;->clipValue(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 155
    :goto_3
    invoke-direct {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->setCenter()V

    goto/16 :goto_2

    .line 153
    :cond_6
    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->minSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .end local v0           #move:F
    :cond_7
    move v1, v2

    .line 161
    goto/16 :goto_0

    .line 163
    :pswitch_2
    iget-boolean v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isLine:Z

    if-eqz v3, :cond_9

    .line 164
    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    if-ne v3, v4, :cond_8

    .line 165
    invoke-direct {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->getCenterRatio()V

    .line 166
    :cond_8
    iput-boolean v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isLine:Z

    .line 167
    iput v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_index:I

    .line 168
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->invalidate()V

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 171
    goto/16 :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeBitmap()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isRecycle:Z

    .line 71
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_on_left:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 72
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_on_right:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_off:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    return-void
.end method

.method public resetPoint()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    const/high16 v1, 0x4120

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 62
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->width:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 63
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    .line 64
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->invalidate()V

    .line 66
    return-void
.end method

.method public setAutoPosition(FF)V
    .locals 2
    .parameter "left"
    .parameter "right"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 55
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->right:F

    .line 56
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->centerX:F

    .line 57
    return-void
.end method

.method public setControllViewSize(II)V
    .locals 8
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 80
    add-int/lit8 v0, p1, -0xa

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->width:I

    .line 81
    iput p2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->height:I

    .line 82
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 83
    .local v5, matrix:Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v0, v7, v7, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 84
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->height:I

    int-to-float v4, v4

    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 83
    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 86
    iput-boolean v6, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->isViewSet:Z

    .line 88
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020080

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_off:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020081

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_on:Landroid/graphics/Bitmap;

    .line 90
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->center_center:I

    .line 92
    new-instance v5, Landroid/graphics/Matrix;

    .end local v5           #matrix:Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 93
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    const/high16 v0, -0x4080

    const/high16 v2, 0x3f80

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 94
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02007c

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_on_left:Landroid/graphics/Bitmap;

    .line 95
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_on_left:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_on_left:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_on_left:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->line_on_right:Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method

.method public setMinSize(I)V
    .locals 1
    .parameter "button_size"

    .prologue
    .line 108
    iput p1, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->button_size:I

    .line 109
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->minSize:I

    .line 110
    div-int/lit8 v0, p1, 0x4

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramGraphView;->touchSize:I

    .line 111
    return-void
.end method
