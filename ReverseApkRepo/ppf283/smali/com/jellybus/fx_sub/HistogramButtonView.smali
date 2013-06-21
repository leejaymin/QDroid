.class public Lcom/jellybus/fx_sub/HistogramButtonView;
.super Landroid/view/View;
.source "HistogramButtonView.java"


# instance fields
.field private final B1:I

.field private final B2:I

.field private final B3:I

.field private button:Landroid/graphics/Bitmap;

.field public button1:F

.field public button2:F

.field public button3:F

.field private button_center:I

.field public button_index:I

.field private button_on:Landroid/graphics/Bitmap;

.field private center_ratio:F

.field public isLine:Z

.field private isRecycle:Z

.field private isViewSet:Z

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->B1:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->B2:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->B3:I

    .line 42
    return-void
.end method

.method private clipValue(F)F
    .locals 2
    .parameter "x"

    .prologue
    .line 158
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 159
    const/4 p1, 0x0

    .line 162
    :cond_0
    :goto_0
    return p1

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->width:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 161
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->width:I

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float p1, v0

    goto :goto_0
.end method

.method private getCenter()F
    .locals 3

    .prologue
    .line 189
    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    add-float v0, v1, v2

    .line 190
    .local v0, center:F
    return v0
.end method

.method private getCenterRatio()V
    .locals 3

    .prologue
    .line 195
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->center_ratio:F

    .line 196
    return-void
.end method

.method private selectedButton(F)V
    .locals 4
    .parameter "x"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 168
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 169
    iput-boolean v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->isLine:Z

    .line 170
    iput v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    .line 183
    :goto_0
    return-void

    .line 172
    :cond_0
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 173
    iput-boolean v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->isLine:Z

    .line 174
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    goto :goto_0

    .line 176
    :cond_1
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 177
    iput-boolean v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->isLine:Z

    .line 178
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    goto :goto_0

    .line 180
    :cond_2
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->isLine:Z

    .line 181
    iput v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    goto :goto_0
.end method

.method private setCenter()V
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->center_ratio:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    .line 201
    return-void
.end method


# virtual methods
.method public getButtonSize()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 208
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->isViewSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->isRecycle:Z

    if-nez v0, :cond_0

    .line 209
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->isLine:Z

    if-eqz v0, :cond_3

    .line 210
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 212
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_on:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 213
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 215
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_on:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 216
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 217
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 218
    :cond_2
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 220
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 221
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_on:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 225
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 226
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 92
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramButtonView;->invalidate()V

    .line 93
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 152
    :goto_0
    return v1

    .line 100
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/jellybus/fx_sub/HistogramButtonView;->selectedButton(F)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-boolean v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->isLine:Z

    if-eqz v3, :cond_7

    .line 106
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    if-ne v2, v1, :cond_2

    .line 107
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    sub-float/2addr v3, v4

    add-float v0, v2, v3

    .line 108
    .local v0, move:F
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_center:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 109
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 110
    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/HistogramButtonView;->clipValue(F)F

    move-result v2

    iput v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    .line 115
    :goto_1
    invoke-direct {p0}, Lcom/jellybus/fx_sub/HistogramButtonView;->setCenter()V

    .line 137
    .end local v0           #move:F
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramButtonView;->invalidate()V

    goto :goto_0

    .line 112
    .restart local v0       #move:F
    :cond_1
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 113
    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    goto :goto_1

    .line 116
    .end local v0           #move:F
    :cond_2
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    if-ne v2, v4, :cond_5

    .line 117
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    sub-float/2addr v3, v4

    add-float v0, v2, v3

    .line 118
    .restart local v0       #move:F
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_center:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 119
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 120
    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/HistogramButtonView;->clipValue(F)F

    move-result v2

    iput v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    goto :goto_2

    .line 121
    :cond_3
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    .line 122
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    goto :goto_2

    .line 123
    :cond_4
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 124
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    goto/16 :goto_2

    .line 126
    .end local v0           #move:F
    :cond_5
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 127
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    sub-float/2addr v3, v4

    add-float v0, v2, v3

    .line 128
    .restart local v0       #move:F
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_center:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 129
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    .line 130
    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/HistogramButtonView;->clipValue(F)F

    move-result v2

    iput v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    .line 135
    :goto_3
    invoke-direct {p0}, Lcom/jellybus/fx_sub/HistogramButtonView;->setCenter()V

    goto/16 :goto_2

    .line 132
    :cond_6
    iget v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    iget-object v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 133
    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    goto :goto_3

    .end local v0           #move:F
    :cond_7
    move v1, v2

    .line 140
    goto/16 :goto_0

    .line 142
    :pswitch_2
    iget-boolean v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->isLine:Z

    if-eqz v3, :cond_9

    .line 143
    iget v3, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    if-ne v3, v4, :cond_8

    .line 144
    invoke-direct {p0}, Lcom/jellybus/fx_sub/HistogramButtonView;->getCenterRatio()V

    .line 145
    :cond_8
    iput-boolean v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->isLine:Z

    .line 146
    iput v2, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_index:I

    .line 147
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramButtonView;->invalidate()V

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 150
    goto/16 :goto_0

    .line 98
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
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->isRecycle:Z

    .line 47
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 48
    return-void
.end method

.method public resetPoint()V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    .line 60
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->width:I

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    .line 61
    invoke-direct {p0}, Lcom/jellybus/fx_sub/HistogramButtonView;->getCenter()F

    move-result v0

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    .line 62
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramButtonView;->invalidate()V

    .line 63
    return-void
.end method

.method public setAutoPosition(FFF)V
    .locals 1
    .parameter "button1"
    .parameter "button2"
    .parameter "button3"

    .prologue
    .line 52
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_center:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    .line 53
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_center:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p2, v0

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    .line 54
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_center:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p3, v0

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    .line 55
    return-void
.end method

.method public setControllViewSize(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 68
    iput p1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->width:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->isViewSet:Z

    .line 71
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_on:Landroid/graphics/Bitmap;

    .line 73
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/HistogramButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    .line 74
    iget-object v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button_center:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button1:F

    .line 77
    iget v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->width:I

    iget-object v1, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button3:F

    .line 78
    invoke-direct {p0}, Lcom/jellybus/fx_sub/HistogramButtonView;->getCenter()F

    move-result v0

    iput v0, p0, Lcom/jellybus/fx_sub/HistogramButtonView;->button2:F

    .line 80
    invoke-direct {p0}, Lcom/jellybus/fx_sub/HistogramButtonView;->getCenterRatio()V

    .line 81
    return-void
.end method
