.class public Lcom/jellybus/fx_sub/BorderView;
.super Landroid/view/View;
.source "BorderView.java"


# instance fields
.field public final FILM:I

.field public final GRAY:I

.field public final PATTERN_START_NUM:I

.field public final POLA:I

.field public border_idx:[Ljava/lang/Integer;

.field public border_max_size:F

.field public border_round:F

.field public border_size:F

.field public border_vertical_max_size:F

.field public border_vertical_size:F

.field private gray:Landroid/graphics/Bitmap;

.field private height:I

.field public isViewSet:Z

.field public isWhite:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mShader:Landroid/graphics/Shader;

.field private pattern:Landroid/graphics/Bitmap;

.field public pattern_ratio_h:F

.field public pattern_ratio_w:F

.field private rect:Landroid/graphics/RectF;

.field private rectPaint:Landroid/graphics/Paint;

.field public selected_border:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 94
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    iput v7, p0, Lcom/jellybus/fx_sub/BorderView;->PATTERN_START_NUM:I

    .line 24
    iput v4, p0, Lcom/jellybus/fx_sub/BorderView;->POLA:I

    .line 25
    iput v5, p0, Lcom/jellybus/fx_sub/BorderView;->FILM:I

    .line 26
    iput v6, p0, Lcom/jellybus/fx_sub/BorderView;->GRAY:I

    .line 50
    iput v3, p0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    .line 51
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/BorderView;->isWhite:Z

    .line 62
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 63
    const v2, 0x7f020040

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    const v1, 0x7f020041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 65
    const v2, 0x7f020042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    const v1, 0x7f020043

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 67
    const v1, 0x7f020025

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 68
    const v1, 0x7f020026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 69
    const v1, 0x7f020027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x7

    .line 70
    const v2, 0x7f020028

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 71
    const v2, 0x7f020029

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 72
    const v2, 0x7f02002a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 73
    const v2, 0x7f02002b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 74
    const v2, 0x7f02002c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 75
    const v2, 0x7f02002d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 76
    const v2, 0x7f02002e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 77
    const v2, 0x7f020030

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 78
    const v2, 0x7f020031

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 79
    const v2, 0x7f020032

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 80
    const v2, 0x7f020033

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 81
    const v2, 0x7f020034

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 82
    const v2, 0x7f020035

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 83
    const v2, 0x7f020036

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 84
    const v2, 0x7f020037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 85
    const v2, 0x7f020038

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 86
    const v2, 0x7f020039

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 87
    const v2, 0x7f02003b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 88
    const v2, 0x7f02003c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 89
    const v2, 0x7f02003d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_idx:[Ljava/lang/Integer;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v7, p0, Lcom/jellybus/fx_sub/BorderView;->PATTERN_START_NUM:I

    .line 24
    iput v4, p0, Lcom/jellybus/fx_sub/BorderView;->POLA:I

    .line 25
    iput v5, p0, Lcom/jellybus/fx_sub/BorderView;->FILM:I

    .line 26
    iput v6, p0, Lcom/jellybus/fx_sub/BorderView;->GRAY:I

    .line 50
    iput v3, p0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    .line 51
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/BorderView;->isWhite:Z

    .line 62
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 63
    const v2, 0x7f020040

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    const v1, 0x7f020041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 65
    const v2, 0x7f020042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    const v1, 0x7f020043

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 67
    const v1, 0x7f020025

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 68
    const v1, 0x7f020026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 69
    const v1, 0x7f020027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x7

    .line 70
    const v2, 0x7f020028

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 71
    const v2, 0x7f020029

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 72
    const v2, 0x7f02002a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 73
    const v2, 0x7f02002b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 74
    const v2, 0x7f02002c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 75
    const v2, 0x7f02002d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 76
    const v2, 0x7f02002e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 77
    const v2, 0x7f020030

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 78
    const v2, 0x7f020031

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 79
    const v2, 0x7f020032

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 80
    const v2, 0x7f020033

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 81
    const v2, 0x7f020034

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 82
    const v2, 0x7f020035

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 83
    const v2, 0x7f020036

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 84
    const v2, 0x7f020037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 85
    const v2, 0x7f020038

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 86
    const v2, 0x7f020039

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 87
    const v2, 0x7f02003b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 88
    const v2, 0x7f02003c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 89
    const v2, 0x7f02003d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_idx:[Ljava/lang/Integer;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->mPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->rectPaint:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    return-void
.end method

.method private setRectSize()V
    .locals 6

    .prologue
    .line 235
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->border_vertical_size:F

    iget v3, p0, Lcom/jellybus/fx_sub/BorderView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/BorderView;->border_vertical_size:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_0
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    iget v3, p0, Lcom/jellybus/fx_sub/BorderView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/BorderView;->border_vertical_size:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    iget v3, p0, Lcom/jellybus/fx_sub/BorderView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v8, -0x100

    const/4 v1, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    iget-boolean v2, p0, Lcom/jellybus/fx_sub/BorderView;->isViewSet:Z

    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 138
    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 140
    iget-boolean v2, p0, Lcom/jellybus/fx_sub/BorderView;->isWhite:Z

    if-eqz v2, :cond_2

    .line 141
    iget-object v2, p0, Lcom/jellybus/fx_sub/BorderView;->rectPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    :cond_0
    :goto_0
    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 147
    .local v6, border:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 148
    .local v0, canvasResult:Landroid/graphics/Canvas;
    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 149
    iget-object v2, p0, Lcom/jellybus/fx_sub/BorderView;->gray:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/jellybus/fx_sub/BorderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    :goto_1
    iget-object v2, p0, Lcom/jellybus/fx_sub/BorderView;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 153
    iget-object v2, p0, Lcom/jellybus/fx_sub/BorderView;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/jellybus/fx_sub/BorderView;->border_round:F

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->border_round:F

    iget-object v5, p0, Lcom/jellybus/fx_sub/BorderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 154
    iget-object v2, p0, Lcom/jellybus/fx_sub/BorderView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 156
    iget-object v2, p0, Lcom/jellybus/fx_sub/BorderView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 161
    .local v7, paint:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    const/high16 v1, 0x4020

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    const/16 v1, 0x46

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 166
    iget-object v1, p0, Lcom/jellybus/fx_sub/BorderView;->rect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->border_round:F

    iget v3, p0, Lcom/jellybus/fx_sub/BorderView;->border_round:F

    invoke-virtual {p1, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 170
    .end local v0           #canvasResult:Landroid/graphics/Canvas;
    .end local v6           #border:Landroid/graphics/Bitmap;
    .end local v7           #paint:Landroid/graphics/Paint;
    :cond_1
    return-void

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/jellybus/fx_sub/BorderView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 151
    .restart local v0       #canvasResult:Landroid/graphics/Canvas;
    .restart local v6       #border:Landroid/graphics/Bitmap;
    :cond_3
    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->width:I

    int-to-float v3, v2

    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    int-to-float v4, v2

    iget-object v5, p0, Lcom/jellybus/fx_sub/BorderView;->rectPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const v3, 0x3e4ccccd

    const v2, 0x3db851ec

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 113
    iput p1, p0, Lcom/jellybus/fx_sub/BorderView;->width:I

    .line 114
    iput p2, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    .line 116
    sget v0, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_max_size:F

    .line 122
    :goto_0
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->width:I

    int-to-float v0, v0

    sget v1, Lcom/jellybus/fx_sub/PictureController;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/BorderView;->pattern_ratio_w:F

    .line 123
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    int-to-float v0, v0

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/BorderView;->pattern_ratio_h:F

    .line 125
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    int-to-float v0, v0

    const v1, 0x3ecccccd

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_vertical_max_size:F

    .line 127
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_max_size:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    .line 128
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_vertical_max_size:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_vertical_size:F

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    iget v3, p0, Lcom/jellybus/fx_sub/BorderView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->rect:Landroid/graphics/RectF;

    .line 130
    return-void

    .line 119
    :cond_0
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_max_size:F

    goto :goto_0
.end method

.method public removeGray()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->gray:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->gray:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->gray:Landroid/graphics/Bitmap;

    .line 193
    :cond_0
    return-void
.end method

.method public removePattern()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->pattern:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->pattern:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->pattern:Landroid/graphics/Bitmap;

    .line 199
    :cond_0
    return-void
.end method

.method public setCurrentBorder(I)V
    .locals 7
    .parameter "idx"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 203
    iput p1, p0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    .line 204
    iget-object v3, p0, Lcom/jellybus/fx_sub/BorderView;->rectPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 205
    iget v3, p0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/BorderView;->removePattern()V

    .line 209
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 210
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 211
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 212
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/BorderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx_sub/BorderView;->border_idx:[Ljava/lang/Integer;

    iget v5, p0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    add-int/lit8 v5, v5, -0x6

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/jellybus/fx_sub/BorderView;->pattern:Landroid/graphics/Bitmap;

    .line 214
    iget-object v3, p0, Lcom/jellybus/fx_sub/BorderView;->pattern:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 215
    .local v2, w:I
    iget-object v3, p0, Lcom/jellybus/fx_sub/BorderView;->pattern:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 217
    .local v0, h:I
    int-to-float v3, v2

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->pattern_ratio_w:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 218
    int-to-float v3, v0

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->pattern_ratio_h:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 219
    iget-object v3, p0, Lcom/jellybus/fx_sub/BorderView;->pattern:Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/jellybus/fx_sub/BorderView;->pattern:Landroid/graphics/Bitmap;

    .line 221
    new-instance v3, Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/jellybus/fx_sub/BorderView;->pattern:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lcom/jellybus/fx_sub/BorderView;->mShader:Landroid/graphics/Shader;

    .line 222
    iget-object v3, p0, Lcom/jellybus/fx_sub/BorderView;->rectPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/jellybus/fx_sub/BorderView;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 229
    .end local v0           #h:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #w:I
    :goto_0
    invoke-direct {p0}, Lcom/jellybus/fx_sub/BorderView;->setRectSize()V

    .line 230
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/BorderView;->invalidate()V

    .line 231
    return-void

    .line 224
    :cond_0
    if-eq p1, v6, :cond_1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 225
    :cond_1
    iput-boolean v6, p0, Lcom/jellybus/fx_sub/BorderView;->isWhite:Z

    goto :goto_0

    .line 227
    :cond_2
    iput-boolean v5, p0, Lcom/jellybus/fx_sub/BorderView;->isWhite:Z

    goto :goto_0
.end method

.method public setRoundSize(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 259
    int-to-float v0, p1

    iput v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_round:F

    .line 260
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/BorderView;->invalidate()V

    .line 261
    return-void
.end method

.method public setScaleSize(I)V
    .locals 6
    .parameter "progress"

    .prologue
    const v2, 0x3c23d70a

    .line 245
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_max_size:F

    int-to-float v1, p1

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    .line 246
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_vertical_max_size:F

    int-to-float v1, p1

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/BorderView;->border_vertical_size:F

    .line 248
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->border_vertical_size:F

    iget v3, p0, Lcom/jellybus/fx_sub/BorderView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/BorderView;->border_vertical_size:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 255
    :goto_0
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/BorderView;->invalidate()V

    .line 256
    return-void

    .line 250
    :cond_0
    iget v0, p0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    iget v3, p0, Lcom/jellybus/fx_sub/BorderView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/BorderView;->border_vertical_size:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx_sub/BorderView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    iget v2, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    iget v3, p0, Lcom/jellybus/fx_sub/BorderView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jellybus/fx_sub/BorderView;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method public toGrayscale(Landroid/graphics/Bitmap;II)V
    .locals 7
    .parameter "bmpOriginal"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v6, 0x0

    .line 175
    const/4 v5, 0x1

    invoke-static {p1, p2, p3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 177
    .local v3, origin:Landroid/graphics/Bitmap;
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/jellybus/fx_sub/BorderView;->gray:Landroid/graphics/Bitmap;

    .line 178
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/jellybus/fx_sub/BorderView;->gray:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 179
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 180
    .local v4, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 181
    .local v1, cm:Landroid/graphics/ColorMatrix;
    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 182
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 183
    .local v2, f:Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 184
    invoke-virtual {v0, v3, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 185
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    return-void
.end method
