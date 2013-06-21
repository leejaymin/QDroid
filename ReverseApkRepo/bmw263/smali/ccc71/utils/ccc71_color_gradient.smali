.class public Lccc71/utils/ccc71_color_gradient;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Lccc71/utils/m;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p0}, Lccc71/utils/ccc71_color_gradient;->getWidth()I

    move-result v8

    .line 48
    invoke-virtual {p0}, Lccc71/utils/ccc71_color_gradient;->getHeight()I

    move-result v9

    .line 49
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v3, v8

    int-to-float v4, v9

    const/4 v2, 0x3

    new-array v5, v2, [I

    const/4 v2, -0x1

    aput v2, v5, v10

    iget v2, p0, Lccc71/utils/ccc71_color_gradient;->b:I

    aput v2, v5, v11

    const/4 v2, 0x2

    const/high16 v6, -0x100

    aput v6, v5, v2

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 51
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    int-to-float v0, v8

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    const/16 v0, 0x40

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_color_gradient;->setMeasuredDimension(II)V

    .line 62
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v7, 0xff

    const v6, 0xff00

    const/high16 v1, 0x4348

    const/high16 v5, 0x42c8

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 75
    cmpl-float v3, v2, v1

    if-lez v3, :cond_2

    move v0, v1

    .line 80
    :cond_0
    :goto_0
    cmpl-float v2, v0, v5

    if-lez v2, :cond_3

    .line 82
    sub-float v2, v1, v0

    iget v3, p0, Lccc71/utils/ccc71_color_gradient;->b:I

    and-int/2addr v3, v7

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x64

    .line 83
    sub-float v3, v1, v0

    iget v4, p0, Lccc71/utils/ccc71_color_gradient;->b:I

    and-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x64

    .line 84
    sub-float v0, v1, v0

    iget v1, p0, Lccc71/utils/ccc71_color_gradient;->b:I

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x64

    .line 85
    and-int v1, v2, v7

    .line 86
    and-int v2, v3, v6

    .line 87
    and-int/lit16 v0, v0, 0xff

    .line 89
    const/high16 v3, -0x100

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 103
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 114
    :cond_1
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_2
    cmpg-float v3, v2, v0

    if-ltz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 93
    :cond_3
    sub-float v1, v5, v0

    const/high16 v2, 0x4b7f

    mul-float/2addr v1, v2

    iget v2, p0, Lccc71/utils/ccc71_color_gradient;->b:I

    and-int/2addr v2, v7

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    .line 94
    sub-float v2, v5, v0

    const/high16 v3, 0x477f

    mul-float/2addr v2, v3

    iget v3, p0, Lccc71/utils/ccc71_color_gradient;->b:I

    and-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 95
    sub-float v3, v5, v0

    const/high16 v4, 0x437f

    mul-float/2addr v3, v4

    iget v4, p0, Lccc71/utils/ccc71_color_gradient;->b:I

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 96
    and-int/2addr v1, v7

    .line 97
    and-int/2addr v2, v6

    .line 98
    and-int/lit16 v0, v0, 0xff

    .line 100
    const/high16 v3, -0x100

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_1

    .line 107
    :pswitch_0
    iget-object v1, p0, Lccc71/utils/ccc71_color_gradient;->a:Lccc71/utils/m;

    if-eqz v1, :cond_1

    .line 108
    :pswitch_1
    iget-object v1, p0, Lccc71/utils/ccc71_color_gradient;->a:Lccc71/utils/m;

    invoke-interface {v1, v0}, Lccc71/utils/m;->a(I)V

    goto :goto_2

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setInitialColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lccc71/utils/ccc71_color_gradient;->b:I

    if-eq v0, p1, :cond_0

    .line 37
    iput p1, p0, Lccc71/utils/ccc71_color_gradient;->b:I

    .line 38
    invoke-virtual {p0}, Lccc71/utils/ccc71_color_gradient;->invalidate()V

    .line 40
    :cond_0
    return-void
.end method

.method public setOnColorChangeUpdater(Lccc71/utils/m;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lccc71/utils/ccc71_color_gradient;->a:Lccc71/utils/m;

    .line 31
    return-void
.end method
