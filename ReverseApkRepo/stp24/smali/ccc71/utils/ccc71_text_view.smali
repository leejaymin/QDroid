.class public Lccc71/utils/ccc71_text_view;
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

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/ccc71_text_view;->b:Landroid/content/Context;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lccc71/utils/ccc71_text_view;->e:I

    .line 21
    iput-object v1, p0, Lccc71/utils/ccc71_text_view;->f:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lccc71/utils/ccc71_text_view;->g:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lccc71/utils/ccc71_text_view;->h:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    if-eqz p0, :cond_0

    .line 109
    sget-object v0, Lccc71/utils/ccc71_text_view;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 110
    if-le v0, p1, :cond_3

    .line 112
    const/4 v0, 0x0

    .line 113
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 125
    :cond_0
    :goto_1
    return-object v3

    .line 115
    :cond_1
    sget-object v1, Lccc71/utils/ccc71_text_view;->c:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, p1

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    .line 116
    add-int v4, v0, v1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    if-nez v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static setFontSize(Landroid/content/Context;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 27
    .line 28
    sput-object p0, Lccc71/utils/ccc71_text_view;->b:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 31
    sput-object v0, Lccc71/utils/ccc71_text_view;->c:Landroid/graphics/Paint;

    sget-object v1, Lccc71/utils/ccc71_text_view;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    sget-object v0, Lccc71/utils/ccc71_text_view;->c:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    sget-object v0, Lccc71/utils/ccc71_text_view;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 36
    sget-object v1, Lccc71/utils/ccc71_text_view;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 37
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    sput v1, Lccc71/utils/ccc71_text_view;->a:F

    .line 38
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    sput v0, Lccc71/utils/ccc71_text_view;->d:F

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lccc71/utils/ccc71_text_view;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccc71/utils/ccc71_text_view;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lccc71/utils/ccc71_text_view;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lccc71/utils/ccc71_text_view;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 85
    sget-object v0, Lccc71/utils/ccc71_text_view;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 86
    iget v0, p0, Lccc71/utils/ccc71_text_view;->e:I

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lccc71/utils/ccc71_text_view;->c:Landroid/graphics/Paint;

    iget v2, p0, Lccc71/utils/ccc71_text_view;->e:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lccc71/utils/ccc71_text_view;->h:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    .line 96
    int-to-float v3, v7

    sget-object v5, Lccc71/utils/ccc71_text_view;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    int-to-float v2, v8

    int-to-float v3, v7

    int-to-float v4, v8

    sget-object v5, Lccc71/utils/ccc71_text_view;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    iget v0, p0, Lccc71/utils/ccc71_text_view;->e:I

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lccc71/utils/ccc71_text_view;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    :cond_1
    return-void

    .line 91
    :cond_2
    iget-object v2, p0, Lccc71/utils/ccc71_text_view;->h:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget v3, Lccc71/utils/ccc71_text_view;->d:F

    sget v4, Lccc71/utils/ccc71_text_view;->a:F

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Lccc71/utils/ccc71_text_view;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 132
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 134
    iget-object v0, p0, Lccc71/utils/ccc71_text_view;->h:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lccc71/utils/ccc71_text_view;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Lccc71/utils/ccc71_text_view;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    iget-object v3, p0, Lccc71/utils/ccc71_text_view;->g:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lccc71/utils/ccc71_text_view;->g:Ljava/lang/String;

    invoke-static {v3, v2}, Lccc71/utils/ccc71_text_view;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lccc71/utils/ccc71_text_view;->h:[Ljava/lang/String;

    .line 142
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 145
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 160
    :goto_0
    invoke-virtual {p0, v2, v0}, Lccc71/utils/ccc71_text_view;->setMeasuredDimension(II)V

    .line 161
    return-void

    :sswitch_0
    move v0, v1

    .line 153
    goto :goto_0

    .line 156
    :sswitch_1
    iget-object v0, p0, Lccc71/utils/ccc71_text_view;->h:[Ljava/lang/String;

    array-length v0, v0

    int-to-float v0, v0

    sget v1, Lccc71/utils/ccc71_text_view;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 58
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccc71/utils/ccc71_text_view;->f:Ljava/lang/String;

    .line 61
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/ccc71_text_view;->g:Ljava/lang/String;

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Lccc71/utils/ccc71_text_view;->f:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/ccc71_text_view;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lccc71/utils/ccc71_text_view;->e:I

    .line 73
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 165
    return-void
.end method
