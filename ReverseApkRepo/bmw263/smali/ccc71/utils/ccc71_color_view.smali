.class public Lccc71/utils/ccc71_color_view;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private final c:[I

.field private d:Lccc71/utils/n;

.field private e:Lccc71/utils/m;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 47
    iput-object v0, p0, Lccc71/utils/ccc71_color_view;->c:[I

    .line 52
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lccc71/utils/ccc71_color_view;->c:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lccc71/utils/ccc71_color_view;->a:Landroid/graphics/Paint;

    .line 55
    iget-object v1, p0, Lccc71/utils/ccc71_color_view;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 56
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x4200

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    return-void

    .line 48
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 64
    iput-object v0, p0, Lccc71/utils/ccc71_color_view;->c:[I

    .line 69
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lccc71/utils/ccc71_color_view;->c:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lccc71/utils/ccc71_color_view;->a:Landroid/graphics/Paint;

    .line 72
    iget-object v1, p0, Lccc71/utils/ccc71_color_view;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 73
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x4200

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    return-void

    .line 65
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
    .end array-data
.end method

.method private static a(IIF)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    sub-int v0, p1, p0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x4200

    const/high16 v2, 0x42c8

    const/4 v4, 0x0

    .line 83
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    .line 85
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    new-instance v1, Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-direct {v1, v2, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 88
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->a:Landroid/graphics/Paint;

    iput-object v0, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    .line 90
    :cond_0
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    iget-boolean v0, p0, Lccc71/utils/ccc71_color_view;->f:Z

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 95
    iget-object v1, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-boolean v1, p0, Lccc71/utils/ccc71_color_view;->g:Z

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    :goto_0
    iget-object v1, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    add-float/2addr v1, v5

    iget-object v2, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 107
    iget-object v1, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v1, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    :cond_1
    return-void

    .line 103
    :cond_2
    iget-object v1, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/16 v0, 0xc8

    .line 115
    invoke-virtual {p0, v0, v0}, Lccc71/utils/ccc71_color_view;->setMeasuredDimension(II)V

    .line 116
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/high16 v4, 0x42c8

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float v3, v0, v4

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float v4, v0, v4

    .line 159
    mul-float v0, v3, v3

    mul-float v5, v4, v4

    add-float/2addr v0, v5

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    const/high16 v5, 0x4200

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_1

    move v0, v1

    .line 161
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 208
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 159
    goto :goto_0

    .line 164
    :pswitch_0
    iput-boolean v0, p0, Lccc71/utils/ccc71_color_view;->f:Z

    .line 165
    if-eqz v0, :cond_2

    .line 167
    iput-boolean v1, p0, Lccc71/utils/ccc71_color_view;->g:Z

    .line 168
    invoke-virtual {p0}, Lccc71/utils/ccc71_color_view;->invalidate()V

    goto :goto_1

    .line 172
    :cond_2
    :pswitch_1
    iget-boolean v5, p0, Lccc71/utils/ccc71_color_view;->f:Z

    if-eqz v5, :cond_3

    .line 174
    iget-boolean v2, p0, Lccc71/utils/ccc71_color_view;->g:Z

    if-eq v2, v0, :cond_0

    .line 176
    iput-boolean v0, p0, Lccc71/utils/ccc71_color_view;->g:Z

    .line 177
    invoke-virtual {p0}, Lccc71/utils/ccc71_color_view;->invalidate()V

    goto :goto_1

    .line 182
    :cond_3
    float-to-double v4, v4

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v0, v3

    .line 184
    const v3, 0x40c90fda

    div-float/2addr v0, v3

    .line 185
    cmpg-float v3, v0, v8

    if-gez v3, :cond_4

    .line 187
    add-float/2addr v0, v9

    .line 189
    :cond_4
    iget-object v3, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    iget-object v4, p0, Lccc71/utils/ccc71_color_view;->c:[I

    cmpg-float v5, v0, v8

    if-gtz v5, :cond_6

    aget v0, v4, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->e:Lccc71/utils/m;

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->e:Lccc71/utils/m;

    iget-object v2, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-interface {v0, v2}, Lccc71/utils/m;->a(I)V

    .line 193
    :cond_5
    invoke-virtual {p0}, Lccc71/utils/ccc71_color_view;->invalidate()V

    goto :goto_1

    .line 189
    :cond_6
    cmpl-float v2, v0, v9

    if-ltz v2, :cond_7

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget v0, v4, v0

    goto :goto_2

    :cond_7
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v2, v0

    int-to-float v5, v2

    sub-float/2addr v0, v5

    aget v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    aget v2, v4, v2

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    invoke-static {v4, v6, v0}, Lccc71/utils/ccc71_color_view;->a(IIF)I

    move-result v4

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v6, v7, v0}, Lccc71/utils/ccc71_color_view;->a(IIF)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v7, v8, v0}, Lccc71/utils/ccc71_color_view;->a(IIF)I

    move-result v7

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v5, v2, v0}, Lccc71/utils/ccc71_color_view;->a(IIF)I

    move-result v0

    invoke-static {v4, v6, v7, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_2

    .line 197
    :pswitch_2
    iget-boolean v3, p0, Lccc71/utils/ccc71_color_view;->f:Z

    if-eqz v3, :cond_0

    .line 199
    if-eqz v0, :cond_8

    .line 201
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->d:Lccc71/utils/n;

    iget-object v3, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-interface {v0, v3}, Lccc71/utils/n;->a(I)V

    .line 203
    :cond_8
    iput-boolean v2, p0, Lccc71/utils/ccc71_color_view;->f:Z

    .line 204
    invoke-virtual {p0}, Lccc71/utils/ccc71_color_view;->invalidate()V

    goto/16 :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setInitialColor(I)V
    .locals 2
    .parameter

    .prologue
    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lccc71/utils/ccc71_color_view;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    invoke-virtual {p0}, Lccc71/utils/ccc71_color_view;->invalidate()V

    .line 41
    return-void
.end method

.method public setOnColorChangeUpdater(Lccc71/utils/m;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lccc71/utils/ccc71_color_view;->e:Lccc71/utils/m;

    .line 33
    return-void
.end method

.method public setOnColorSelectedListener(Lccc71/utils/n;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lccc71/utils/ccc71_color_view;->d:Lccc71/utils/n;

    .line 28
    return-void
.end method
