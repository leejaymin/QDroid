.class public Lccc71/utils/ccc71_scale_view;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field public static a:F

.field private static b:Landroid/content/Context;

.field private static c:Landroid/graphics/Paint;

.field private static d:F


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/ccc71_scale_view;->b:Landroid/content/Context;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    iput v1, p0, Lccc71/utils/ccc71_scale_view;->e:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_scale_view;->f:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lccc71/utils/ccc71_scale_view;->g:Z

    .line 46
    return-void
.end method

.method public static setFontSize(Landroid/content/Context;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    .line 25
    sput-object p0, Lccc71/utils/ccc71_scale_view;->b:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    sput-object v0, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x4120

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 29
    sget-object v0, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    sget-object v0, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 33
    sget-object v1, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 34
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    sget-object v2, Lccc71/utils/ccc71_scale_view;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    sput v1, Lccc71/utils/ccc71_scale_view;->a:F

    .line 36
    sget-object v1, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    sget v2, Lccc71/utils/ccc71_scale_view;->a:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    sget-object v1, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 38
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    sput v1, Lccc71/utils/ccc71_scale_view;->a:F

    .line 39
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    sput v0, Lccc71/utils/ccc71_scale_view;->d:F

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 74
    sget-object v0, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 75
    iget v0, p0, Lccc71/utils/ccc71_scale_view;->e:I

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    iget v2, p0, Lccc71/utils/ccc71_scale_view;->e:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lccc71/utils/ccc71_scale_view;->getWidth()I

    move-result v0

    .line 79
    sget-object v2, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    iget-object v3, p0, Lccc71/utils/ccc71_scale_view;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 80
    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    .line 82
    sget-object v3, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 83
    iget-object v0, p0, Lccc71/utils/ccc71_scale_view;->f:Ljava/lang/String;

    sget v2, Lccc71/utils/ccc71_scale_view;->d:F

    sget-object v3, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 84
    sget-object v0, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 91
    :goto_0
    iget-boolean v0, p0, Lccc71/utils/ccc71_scale_view;->g:Z

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    :cond_1
    iget v0, p0, Lccc71/utils/ccc71_scale_view;->e:I

    if-eqz v0, :cond_2

    .line 97
    sget-object v0, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    :cond_2
    return-void

    .line 88
    :cond_3
    iget-object v3, p0, Lccc71/utils/ccc71_scale_view;->f:Ljava/lang/String;

    int-to-float v0, v0

    sub-float/2addr v0, v2

    const/high16 v2, 0x40a0

    sub-float/2addr v0, v2

    sget v2, Lccc71/utils/ccc71_scale_view;->d:F

    sget-object v4, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 104
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 106
    iget-object v2, p0, Lccc71/utils/ccc71_scale_view;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 118
    :cond_0
    :goto_0
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 128
    :goto_1
    :sswitch_1
    invoke-virtual {p0, v0, v1}, Lccc71/utils/ccc71_scale_view;->setMeasuredDimension(II)V

    .line 129
    return-void

    .line 114
    :sswitch_2
    sget-object v0, Lccc71/utils/ccc71_scale_view;->c:Landroid/graphics/Paint;

    iget-object v2, p0, Lccc71/utils/ccc71_scale_view;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x40a0

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 124
    :sswitch_3
    sget v1, Lccc71/utils/ccc71_scale_view;->a:F

    float-to-int v1, v1

    goto :goto_1

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 118
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_3
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lccc71/utils/ccc71_scale_view;->f:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lccc71/utils/ccc71_scale_view;->invalidate()V

    .line 62
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lccc71/utils/ccc71_scale_view;->e:I

    .line 67
    return-void
.end method

.method public setUnderline(Z)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lccc71/utils/ccc71_scale_view;->g:Z

    .line 51
    return-void
.end method
