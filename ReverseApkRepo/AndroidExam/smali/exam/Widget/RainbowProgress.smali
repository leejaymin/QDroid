.class Lexam/Widget/RainbowProgress;
.super Landroid/view/View;
.source "RainbowTest.java"


# instance fields
.field mMax:I

.field mPos:I

.field mProgHeight:I

.field mShader:Landroid/graphics/LinearGradient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->init()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->init()V

    .line 58
    return-void
.end method


# virtual methods
.method getMax()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lexam/Widget/RainbowProgress;->mMax:I

    return v0
.end method

.method getPos()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lexam/Widget/RainbowProgress;->mPos:I

    return v0
.end method

.method init()V
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x64

    iput v0, p0, Lexam/Widget/RainbowProgress;->mMax:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lexam/Widget/RainbowProgress;->mPos:I

    .line 73
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lexam/Widget/RainbowProgress;->mShader:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lexam/Widget/RainbowProgress;->mProgHeight:I

    .line 97
    const/4 v0, 0x4

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    .line 98
    .local v5, colors:[I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lexam/Widget/RainbowProgress;->mProgHeight:I

    int-to-float v4, v2

    .line 99
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 98
    iput-object v0, p0, Lexam/Widget/RainbowProgress;->mShader:Landroid/graphics/LinearGradient;

    .line 102
    .end local v5           #colors:[I
    :cond_0
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 103
    .local v10, rt:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 104
    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 105
    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lexam/Widget/RainbowProgress;->mProgHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 106
    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lexam/Widget/RainbowProgress;->mProgHeight:I

    iget v2, p0, Lexam/Widget/RainbowProgress;->mPos:I

    mul-int/2addr v1, v2

    iget v2, p0, Lexam/Widget/RainbowProgress;->mMax:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->top:F

    .line 108
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 109
    .local v8, fillpnt:Landroid/graphics/Paint;
    iget-object v0, p0, Lexam/Widget/RainbowProgress;->mShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 110
    invoke-virtual {p1, v10, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 112
    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v10, Landroid/graphics/RectF;->top:F

    .line 113
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 114
    .local v9, outpnt:Landroid/graphics/Paint;
    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    invoke-virtual {p1, v10, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 117
    return-void

    .line 97
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 120
    const/16 v1, 0x1a

    .local v1, Width:I
    const/16 v0, 0x64

    .line 122
    .local v0, Height:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 131
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 140
    :goto_1
    invoke-virtual {p0, v1, v0}, Lexam/Widget/RainbowProgress;->setMeasuredDimension(II)V

    .line 141
    return-void

    .line 124
    :sswitch_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 125
    goto :goto_0

    .line 127
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_0

    .line 133
    :sswitch_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 134
    goto :goto_1

    .line 136
    :sswitch_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    .line 122
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 131
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method setMax(I)V
    .locals 0
    .parameter "aMax"

    .prologue
    .line 76
    if-lez p1, :cond_0

    .line 77
    iput p1, p0, Lexam/Widget/RainbowProgress;->mMax:I

    .line 78
    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->invalidate()V

    .line 80
    :cond_0
    return-void
.end method

.method setPos(I)V
    .locals 1
    .parameter "aPos"

    .prologue
    .line 85
    if-ltz p1, :cond_0

    iget v0, p0, Lexam/Widget/RainbowProgress;->mMax:I

    if-le p1, v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iput p1, p0, Lexam/Widget/RainbowProgress;->mPos:I

    .line 89
    invoke-virtual {p0}, Lexam/Widget/RainbowProgress;->invalidate()V

    goto :goto_0
.end method
