.class public Lcom/inmobi/androidsdk/ai/container/IMCustomView;
.super Landroid/view/View;
.source "IMCustomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;
    }
.end annotation


# static fields
.field private static synthetic h:[I


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4040

    const/high16 v2, 0x4000

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->f:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    .line 27
    iput p2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    .line 28
    const/16 v0, 0xf

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    .line 29
    const/high16 v0, 0x4248

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    .line 30
    const/high16 v0, 0x41f0

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->c:F

    .line 31
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->c:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->d:F

    .line 32
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->c:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->e:F

    .line 33
    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->values()[Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->BACK:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->FORWARD_ACTIVE:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->REFRESH:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->h:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const/high16 v2, 0x40a0

    const/high16 v9, -0x100

    const/high16 v7, 0x4040

    const/4 v6, 0x1

    const/high16 v8, 0x4000

    .line 36
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 39
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->f:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 41
    :pswitch_0
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->c:F

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->d:F

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->d:F

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->e:F

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->e:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 49
    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->d:F

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->e:F

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->e:F

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->d:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 50
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->c:F

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->b:F

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 62
    :pswitch_2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 63
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 64
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 65
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 67
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 70
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 78
    :pswitch_3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 79
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 80
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 86
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    const v1, -0xbbbbbc

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 94
    :pswitch_4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 95
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 96
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 97
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 99
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 102
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 110
    :pswitch_5
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v4, v4

    iget v6, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v4, v6

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v6, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v6, v6

    iget v7, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v4, v6

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 116
    const/4 v2, 0x0

    const/high16 v3, 0x4387

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 118
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 119
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 120
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 121
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 122
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 123
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 125
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 130
    :pswitch_6
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v8

    sub-float v1, v0, v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    sub-float v2, v0, v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v4, v4

    iget v6, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v4, v6

    div-float/2addr v4, v8

    add-float/2addr v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v8

    sub-float v1, v0, v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->g:I

    int-to-float v4, v4

    iget v6, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->a:F

    mul-float/2addr v4, v6

    div-float/2addr v4, v8

    sub-float v4, v0, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSwitchInt(Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->f:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    .line 144
    return-void
.end method
