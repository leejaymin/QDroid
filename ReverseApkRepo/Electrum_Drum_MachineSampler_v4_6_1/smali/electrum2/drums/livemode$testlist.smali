.class public Lelectrum2/drums/livemode$testlist;
.super Landroid/widget/ImageView;
.source "livemode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/livemode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "testlist"
.end annotation


# static fields
.field public static drawfromcode:Z

.field public static selecteditem:I

.field public static yoffset:I


# instance fields
.field OldX:F

.field OldY:F

.field ismoving:Z

.field paintobj:Landroid/graphics/Paint;

.field paintobj2:Landroid/graphics/Paint;

.field paintobj3:Landroid/graphics/Paint;

.field paintobj4:Landroid/graphics/Paint;

.field paintobj5:Landroid/graphics/Paint;

.field paintobj6:Landroid/graphics/Paint;

.field samplespermeasure:I

.field samplesperslot:I

.field secondspermeasure:F

.field twoPlaces:Ljava/text/DecimalFormat;

.field wasmoved:Z

.field ysize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    sput v0, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Lelectrum2/drums/livemode$testlist;->drawfromcode:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v6, 0x4270

    const/high16 v5, 0x4160

    const/high16 v4, 0x4120

    const/4 v3, 0x0

    const/16 v2, 0x85

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    .line 108
    iput-boolean v3, p0, Lelectrum2/drums/livemode$testlist;->ismoving:Z

    .line 109
    iput-boolean v3, p0, Lelectrum2/drums/livemode$testlist;->wasmoved:Z

    .line 120
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lelectrum2/drums/livemode$testlist;->twoPlaces:Ljava/text/DecimalFormat;

    .line 141
    sput v3, Lelectrum2/drums/livemode$testlist;->yoffset:I

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj:Landroid/graphics/Paint;

    .line 145
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 146
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj5:Landroid/graphics/Paint;

    .line 150
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj5:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 151
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj5:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj5:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj4:Landroid/graphics/Paint;

    .line 155
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj4:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 156
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj4:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj4:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj6:Landroid/graphics/Paint;

    .line 160
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj6:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj6:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj6:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj2:Landroid/graphics/Paint;

    .line 166
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj2:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj3:Landroid/graphics/Paint;

    .line 170
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj3:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0x5d

    const/16 v4, 0x21

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lelectrum2/drums/livemode$testlist;->paintobj3:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    sput-object p0, Lelectrum2/drums/livemode;->insideclass:Lelectrum2/drums/livemode$testlist;

    .line 175
    sget v0, Lelectrum2/drums/electrum;->bpm:F

    div-float v0, v6, v0

    sget v1, Lelectrum2/drums/electrum;->samplefrequency:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget v1, Lelectrum2/drums/electrum;->slotspermeasure:I

    div-int/lit8 v1, v1, 0x4

    div-int/2addr v0, v1

    iput v0, p0, Lelectrum2/drums/livemode$testlist;->samplesperslot:I

    .line 177
    iget v0, p0, Lelectrum2/drums/livemode$testlist;->samplesperslot:I

    sget v1, Lelectrum2/drums/electrum;->numberofslots:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x46ac4400

    div-float/2addr v0, v1

    iput v0, p0, Lelectrum2/drums/livemode$testlist;->secondspermeasure:F

    .line 179
    iget v0, p0, Lelectrum2/drums/livemode$testlist;->samplesperslot:I

    sget v1, Lelectrum2/drums/electrum;->numberofslots:I

    mul-int/2addr v0, v1

    iput v0, p0, Lelectrum2/drums/livemode$testlist;->samplespermeasure:I

    .line 182
    return-void
.end method

.method static formatIntoHHMMSS(I)Ljava/lang/String;
    .locals 7
    .parameter "secsIn"

    .prologue
    const/16 v6, 0xa

    .line 128
    div-int/lit16 v0, p0, 0xe10

    .line 129
    .local v0, hours:I
    rem-int/lit16 v2, p0, 0xe10

    .line 130
    .local v2, remainder:I
    div-int/lit8 v1, v2, 0x3c

    .line 131
    .local v1, minutes:I
    rem-int/lit8 v3, v2, 0x3c

    .line 133
    .local v3, seconds:I
    new-instance v5, Ljava/lang/StringBuilder;

    if-ge v1, v6, :cond_0

    const-string v4, "0"

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 134
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v3, v6, :cond_1

    const-string v4, "0"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-string v4, ""

    goto :goto_0

    .line 134
    :cond_1
    const-string v4, ""

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 279
    sget-object v4, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    sget-object v4, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 283
    sget-boolean v4, Lelectrum2/drums/livemode$testlist;->drawfromcode:Z

    if-eqz v4, :cond_0

    .line 286
    sget v4, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    iget v5, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    mul-int/2addr v4, v5

    neg-int v4, v4

    sput v4, Lelectrum2/drums/livemode$testlist;->yoffset:I

    .line 290
    :cond_0
    const/4 v4, 0x0

    sput-boolean v4, Lelectrum2/drums/livemode$testlist;->drawfromcode:Z

    .line 294
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    sget-object v4, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 344
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 350
    .end local v0           #count:I
    :cond_1
    return-void

    .line 302
    .restart local v0       #count:I
    :cond_2
    iget v4, p0, Lelectrum2/drums/livemode$testlist;->secondspermeasure:F

    int-to-float v5, v0

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 305
    .local v1, currtimeinsecs:I
    sget v4, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    if-eq v0, v4, :cond_3

    .line 307
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 308
    .local v3, temprect:Landroid/graphics/RectF;
    iget v4, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    mul-int/2addr v4, v0

    sget v5, Lelectrum2/drums/livemode$testlist;->yoffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 309
    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 310
    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40a0

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 311
    iget v4, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    mul-int/2addr v4, v0

    sget v5, Lelectrum2/drums/livemode$testlist;->yoffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 313
    const/high16 v4, 0x40a0

    const/high16 v5, 0x40a0

    iget-object v6, p0, Lelectrum2/drums/livemode$testlist;->paintobj2:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 314
    sget-object v4, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x4160

    mul-float/2addr v5, v6

    iget v6, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    mul-int/2addr v6, v0

    sget v7, Lelectrum2/drums/livemode$testlist;->yoffset:I

    add-int/2addr v6, v7

    int-to-double v6, v6

    iget-object v8, p0, Lelectrum2/drums/livemode$testlist;->paintobj:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff8

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    iget-object v7, p0, Lelectrum2/drums/livemode$testlist;->paintobj:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 317
    invoke-static {v1}, Lelectrum2/drums/livemode$testlist;->formatIntoHHMMSS(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, secondtime:Ljava/lang/String;
    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x4220

    mul-float/2addr v4, v5

    iget v5, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    mul-int/2addr v5, v0

    sget v6, Lelectrum2/drums/livemode$testlist;->yoffset:I

    add-int/2addr v5, v6

    int-to-double v5, v5

    iget-object v7, p0, Lelectrum2/drums/livemode$testlist;->paintobj:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff8

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v5, v5

    iget-object v6, p0, Lelectrum2/drums/livemode$testlist;->paintobj5:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 294
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 325
    .end local v2           #secondtime:Ljava/lang/String;
    .end local v3           #temprect:Landroid/graphics/RectF;
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 326
    .restart local v3       #temprect:Landroid/graphics/RectF;
    iget v4, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    mul-int/2addr v4, v0

    sget v5, Lelectrum2/drums/livemode$testlist;->yoffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 327
    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 328
    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40a0

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 329
    iget v4, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    mul-int/2addr v4, v0

    sget v5, Lelectrum2/drums/livemode$testlist;->yoffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 331
    const/high16 v4, 0x40a0

    const/high16 v5, 0x40a0

    iget-object v6, p0, Lelectrum2/drums/livemode$testlist;->paintobj3:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 332
    sget-object v4, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x4160

    mul-float/2addr v5, v6

    iget v6, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    mul-int/2addr v6, v0

    sget v7, Lelectrum2/drums/livemode$testlist;->yoffset:I

    add-int/2addr v6, v7

    int-to-double v6, v6

    iget-object v8, p0, Lelectrum2/drums/livemode$testlist;->paintobj:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff8

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    iget-object v7, p0, Lelectrum2/drums/livemode$testlist;->paintobj4:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 335
    invoke-static {v1}, Lelectrum2/drums/livemode$testlist;->formatIntoHHMMSS(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    .restart local v2       #secondtime:Ljava/lang/String;
    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x4220

    mul-float/2addr v4, v5

    iget v5, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    mul-int/2addr v5, v0

    sget v6, Lelectrum2/drums/livemode$testlist;->yoffset:I

    add-int/2addr v5, v6

    int-to-double v5, v5

    iget-object v7, p0, Lelectrum2/drums/livemode$testlist;->paintobj:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff8

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v5, v5

    iget-object v6, p0, Lelectrum2/drums/livemode$testlist;->paintobj6:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 194
    .local v0, action:I
    if-nez v0, :cond_0

    .line 196
    iput-boolean v7, p0, Lelectrum2/drums/livemode$testlist;->ismoving:Z

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lelectrum2/drums/livemode$testlist;->OldX:F

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lelectrum2/drums/livemode$testlist;->OldY:F

    .line 199
    iput-boolean v6, p0, Lelectrum2/drums/livemode$testlist;->wasmoved:Z

    .line 203
    :cond_0
    if-ne v0, v7, :cond_4

    .line 205
    iput-boolean v6, p0, Lelectrum2/drums/livemode$testlist;->ismoving:Z

    .line 207
    iget-boolean v3, p0, Lelectrum2/drums/livemode$testlist;->wasmoved:Z

    if-nez v3, :cond_3

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 214
    .local v2, ypos:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v4, Lelectrum2/drums/livemode$testlist;->yoffset:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lelectrum2/drums/livemode$testlist;->ysize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 215
    .local v1, positionclicked:I
    sput v1, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    .line 218
    sget v3, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    sget-object v4, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 221
    sget-object v3, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sput v3, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    .line 224
    :cond_1
    sget v3, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    if-gez v3, :cond_2

    sput v6, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    .line 227
    :cond_2
    sget v3, Lelectrum2/drums/livemode$testlist;->selecteditem:I

    sput v3, Lelectrum2/drums/livemode;->currselection:I

    .line 230
    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->invalidate()V

    .line 234
    .end local v1           #positionclicked:I
    .end local v2           #ypos:F
    :cond_3
    iput-boolean v6, p0, Lelectrum2/drums/livemode$testlist;->wasmoved:Z

    .line 237
    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 239
    iget-boolean v3, p0, Lelectrum2/drums/livemode$testlist;->ismoving:Z

    if-eqz v3, :cond_7

    .line 241
    sget-object v3, Lelectrum2/drums/globalSounds;->songsequence:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 243
    sget v3, Lelectrum2/drums/livemode$testlist;->yoffset:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lelectrum2/drums/livemode$testlist;->OldY:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sput v3, Lelectrum2/drums/livemode$testlist;->yoffset:I

    .line 244
    sget v3, Lelectrum2/drums/livemode$testlist;->yoffset:I

    if-lez v3, :cond_5

    sput v6, Lelectrum2/drums/livemode$testlist;->yoffset:I

    .line 249
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lelectrum2/drums/livemode$testlist;->OldY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x4080

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 251
    iput-boolean v7, p0, Lelectrum2/drums/livemode$testlist;->wasmoved:Z

    .line 255
    :cond_6
    invoke-virtual {p0}, Lelectrum2/drums/livemode$testlist;->invalidate()V

    .line 261
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lelectrum2/drums/livemode$testlist;->OldX:F

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lelectrum2/drums/livemode$testlist;->OldY:F

    .line 269
    :cond_8
    return v7
.end method
