.class public Lcom/jellybus/fx_sub/TimeControllView;
.super Landroid/view/View;
.source "TimeControllView.java"


# instance fields
.field private final DEFAULT_HDIP_DESTINY_SCALE:F

.field private final START_YEAR:I

.field private bm_center:F

.field public button_x:F

.field private colorString:Ljava/lang/String;

.field public current_year:I

.field public isLine:Z

.field private isViewSet:Z

.field public line_x:F

.field public line_y:F

.field private matrix_button:Landroid/graphics/Bitmap;

.field private matrix_button_sub:Landroid/graphics/Bitmap;

.field private max_bottom:F

.field private max_top:F

.field private textSize:I

.field private touch_size:F

.field private year_size:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x7da

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    iput v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->START_YEAR:I

    .line 30
    iput v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    .line 31
    const-string v0, "#ffffff"

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->colorString:Ljava/lang/String;

    .line 37
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->DEFAULT_HDIP_DESTINY_SCALE:F

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v0, 0x7da

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->START_YEAR:I

    .line 30
    iput v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    .line 31
    const-string v0, "#ffffff"

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->colorString:Ljava/lang/String;

    .line 37
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->DEFAULT_HDIP_DESTINY_SCALE:F

    .line 47
    return-void
.end method

.method private clipValue(F)F
    .locals 1
    .parameter "y"

    .prologue
    .line 123
    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 124
    iget p1, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    .line 128
    :cond_0
    :goto_0
    return p1

    .line 125
    :cond_1
    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_bottom:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 126
    iget p1, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_bottom:F

    goto :goto_0
.end method

.method private selectLine(F)V
    .locals 2
    .parameter "y"

    .prologue
    const/high16 v1, 0x4220

    .line 116
    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->isLine:Z

    .line 119
    :cond_0
    return-void
.end method

.method private setBitmapYear()V
    .locals 6

    .prologue
    const/16 v5, 0x7d0

    const/16 v4, 0x7c6

    const/16 v3, 0x7bc

    const/16 v2, 0x7b2

    const/16 v1, 0x7a8

    .line 179
    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    if-lt v0, v5, :cond_1

    .line 180
    iget-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    .line 182
    const-string v0, "#00bfff"

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->colorString:Ljava/lang/String;

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    if-ge v0, v5, :cond_2

    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    if-lt v0, v4, :cond_2

    .line 184
    iget-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201fd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    .line 186
    const-string v0, "#807fff"

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->colorString:Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_2
    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    if-ge v0, v4, :cond_3

    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    if-lt v0, v3, :cond_3

    .line 188
    iget-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201fc

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    .line 190
    const-string v0, "#ac59ff"

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->colorString:Ljava/lang/String;

    goto :goto_0

    .line 191
    :cond_3
    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    if-ge v0, v3, :cond_4

    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    if-lt v0, v2, :cond_4

    .line 192
    iget-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201fb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    .line 194
    const-string v0, "#ff0055"

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->colorString:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_4
    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    if-ge v0, v2, :cond_5

    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    if-lt v0, v1, :cond_5

    .line 196
    iget-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201fa

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    .line 198
    const-string v0, "#ff1500"

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->colorString:Ljava/lang/String;

    goto :goto_0

    .line 199
    :cond_5
    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    const/16 v1, 0x79e

    if-lt v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    .line 202
    const-string v0, "#ff7f00"

    iput-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->colorString:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x41e0

    const/high16 v6, 0x40f0

    const/4 v1, 0x0

    .line 210
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->isViewSet:Z

    if-eqz v0, :cond_0

    .line 212
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 213
    .local v5, p:Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->colorString:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    const/high16 v0, 0x3f80

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 215
    iget v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_x:F

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 217
    iget-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button_sub:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->bm_center:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 218
    iget-object v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->button_x:F

    iget v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->bm_center:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 220
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 221
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->textSize:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    iget v0, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    const/16 v1, 0x7da

    if-ne v0, v1, :cond_1

    .line 224
    const-string v0, "Present"

    iget v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->button_x:F

    add-float/2addr v1, v7

    iget v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    add-float/2addr v2, v6

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    .end local v5           #p:Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 226
    .restart local v5       #p:Landroid/graphics/Paint;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->button_x:F

    add-float/2addr v1, v7

    iget v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    add-float/2addr v2, v6

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 52
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 101
    :goto_0
    return v1

    .line 81
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/jellybus/fx_sub/TimeControllView;->selectLine(F)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-boolean v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->isLine:Z

    if-eqz v2, :cond_0

    .line 86
    iget v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    sub-float/2addr v3, v4

    add-float v0, v2, v3

    .line 87
    .local v0, move:F
    invoke-direct {p0, v0}, Lcom/jellybus/fx_sub/TimeControllView;->clipValue(F)F

    move-result v2

    iput v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jellybus/fx_sub/TimeControllView;->setYear(F)I

    move-result v2

    iput v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    .line 89
    invoke-direct {p0}, Lcom/jellybus/fx_sub/TimeControllView;->setBitmapYear()V

    .line 91
    .end local v0           #move:F
    :cond_0
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->invalidate()V

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201fe

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    .line 96
    const-string v3, "#ffffff"

    iput-object v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->colorString:Ljava/lang/String;

    .line 97
    iput-boolean v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->isLine:Z

    .line 98
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->invalidate()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setControllViewSize(FF)V
    .locals 3
    .parameter "padding_top"
    .parameter "padding_bot"

    .prologue
    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->isViewSet:Z

    .line 57
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201fe

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201f7

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button_sub:Landroid/graphics/Bitmap;

    .line 60
    iget-object v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->bm_center:F

    .line 61
    iput p1, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    .line 62
    add-float v1, p1, p2

    iput v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_bottom:F

    .line 63
    iput p2, p0, Lcom/jellybus/fx_sub/TimeControllView;->touch_size:F

    .line 64
    iget v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->touch_size:F

    const/high16 v2, 0x40c0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    .line 66
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iput v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_x:F

    .line 67
    iget v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    iput v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    .line 68
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->matrix_button:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->button_x:F

    .line 70
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/TimeControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 71
    .local v0, scale:F
    const v1, 0x41555555

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->textSize:I

    .line 72
    return-void
.end method

.method public setPointY(I)V
    .locals 3
    .parameter "year"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, temp_year:F
    rsub-int v1, p1, 0x7da

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    iget v2, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float v0, v1, v2

    .line 171
    iget v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    .line 172
    iput p1, p0, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    .line 173
    return-void
.end method

.method public setYear(F)I
    .locals 10
    .parameter "y"

    .prologue
    const/high16 v9, 0x40c0

    const/high16 v8, 0x40a0

    const/high16 v7, 0x4080

    const/high16 v6, 0x4040

    const/high16 v5, 0x4000

    .line 133
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    sub-float v1, p1, v3

    .line 134
    .local v1, start:F
    const/4 v0, 0x0

    .line 135
    .local v0, cur_year:I
    const/4 v2, 0x0

    .line 136
    .local v2, year_index:I
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_2

    .line 137
    const/4 v2, 0x0

    .line 157
    :cond_0
    :goto_0
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    div-float v3, v1, v3

    const/high16 v4, 0x4120

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v2

    rsub-int v0, v3, 0x7da

    .line 159
    const/16 v3, 0x7da

    if-le v0, v3, :cond_8

    .line 160
    const/16 v0, 0x7da

    .line 164
    :cond_1
    :goto_1
    return v0

    .line 138
    :cond_2
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_3

    .line 139
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    sub-float/2addr v1, v3

    .line 140
    const/16 v2, 0xa

    goto :goto_0

    .line 141
    :cond_3
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_4

    .line 142
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    .line 143
    const/16 v2, 0x14

    goto :goto_0

    .line 144
    :cond_4
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v7

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_5

    .line 145
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    .line 146
    const/16 v2, 0x1e

    goto :goto_0

    .line 147
    :cond_5
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v7

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_6

    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v8

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_6

    .line 148
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v7

    sub-float/2addr v1, v3

    .line 149
    const/16 v2, 0x28

    goto :goto_0

    .line 150
    :cond_6
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v8

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_7

    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v9

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_7

    .line 151
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v8

    sub-float/2addr v1, v3

    .line 152
    const/16 v2, 0x32

    goto/16 :goto_0

    .line 153
    :cond_7
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v9

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    const/high16 v4, 0x40e0

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/TimeControllView;->max_top:F

    add-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    .line 154
    iget v3, p0, Lcom/jellybus/fx_sub/TimeControllView;->year_size:F

    mul-float/2addr v3, v9

    sub-float/2addr v1, v3

    .line 155
    const/16 v2, 0x3c

    goto/16 :goto_0

    .line 161
    :cond_8
    const/16 v3, 0x79e

    if-ge v0, v3, :cond_1

    .line 162
    const/16 v0, 0x79e

    goto/16 :goto_1
.end method
