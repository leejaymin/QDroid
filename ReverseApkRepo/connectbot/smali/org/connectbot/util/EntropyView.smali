.class public Lorg/connectbot/util/EntropyView;
.super Landroid/view/View;
.source "EntropyView.java"


# instance fields
.field private lastX:F

.field private lastY:F

.field private listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/connectbot/util/OnEntropyGatheredListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEntropy:[B

.field private mEntropyBitIndex:I

.field private mEntropyByteIndex:I

.field private mFlipFlop:Z

.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mLastTime:J

.field private mPaint:Landroid/graphics/Paint;

.field private splitText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/connectbot/util/EntropyView;->splitText:I

    .line 50
    iput v1, p0, Lorg/connectbot/util/EntropyView;->lastX:F

    iput v1, p0, Lorg/connectbot/util/EntropyView;->lastY:F

    .line 55
    invoke-direct {p0}, Lorg/connectbot/util/EntropyView;->setUpEntropy()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/connectbot/util/EntropyView;->splitText:I

    .line 50
    iput v1, p0, Lorg/connectbot/util/EntropyView;->lastX:F

    iput v1, p0, Lorg/connectbot/util/EntropyView;->lastY:F

    .line 61
    invoke-direct {p0}, Lorg/connectbot/util/EntropyView;->setUpEntropy()V

    .line 62
    return-void
.end method

.method private setUpEntropy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 68
    iget-object v0, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 69
    iget-object v0, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/util/EntropyView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 73
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/connectbot/util/EntropyView;->mEntropy:[B

    .line 74
    iput v2, p0, Lorg/connectbot/util/EntropyView;->mEntropyByteIndex:I

    .line 75
    iput v2, p0, Lorg/connectbot/util/EntropyView;->mEntropyBitIndex:I

    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/connectbot/util/EntropyView;->listeners:Ljava/util/Vector;

    .line 78
    return-void
.end method


# virtual methods
.method public addOnEntropyGatheredListener(Lorg/connectbot/util/OnEntropyGatheredListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 81
    iget-object v0, p0, Lorg/connectbot/util/EntropyView;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "c"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x4000

    .line 90
    invoke-virtual {p0}, Lorg/connectbot/util/EntropyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    const-wide/high16 v3, 0x4059

    iget v5, p0, Lorg/connectbot/util/EntropyView;->mEntropyByteIndex:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x4034

    div-double/2addr v5, v7

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const-wide/high16 v4, 0x4014

    iget v6, p0, Lorg/connectbot/util/EntropyView;->mEntropyBitIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4020

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    .line 90
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, prompt:Ljava/lang/String;
    iget v1, p0, Lorg/connectbot/util/EntropyView;->splitText:I

    if-gtz v1, :cond_0

    .line 93
    iget-object v1, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0}, Lorg/connectbot/util/EntropyView;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 94
    :cond_0
    iget v1, p0, Lorg/connectbot/util/EntropyView;->splitText:I

    if-nez v1, :cond_1

    .line 95
    const-string v1, " "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/connectbot/util/EntropyView;->splitText:I

    .line 97
    :cond_1
    iget v1, p0, Lorg/connectbot/util/EntropyView;->splitText:I

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lorg/connectbot/util/EntropyView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    .line 99
    invoke-virtual {p0}, Lorg/connectbot/util/EntropyView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    iget-object v4, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    iget-object v5, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 100
    iget-object v4, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 101
    iget v1, p0, Lorg/connectbot/util/EntropyView;->splitText:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lorg/connectbot/util/EntropyView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    .line 103
    invoke-virtual {p0}, Lorg/connectbot/util/EntropyView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    iget-object v4, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    iget-object v5, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 104
    iget-object v4, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    .line 101
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_2
    invoke-virtual {p0}, Lorg/connectbot/util/EntropyView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    .line 108
    invoke-virtual {p0}, Lorg/connectbot/util/EntropyView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    iget-object v3, p0, Lorg/connectbot/util/EntropyView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget-object v4, p0, Lorg/connectbot/util/EntropyView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v4

    div-float/2addr v3, v10

    sub-float/2addr v2, v3

    .line 109
    iget-object v3, p0, Lorg/connectbot/util/EntropyView;->mPaint:Landroid/graphics/Paint;

    .line 106
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v12, 0x14

    const/4 v7, 0x1

    .line 115
    iget v5, p0, Lorg/connectbot/util/EntropyView;->mEntropyByteIndex:I

    if-ge v5, v12, :cond_0

    .line 116
    iget v5, p0, Lorg/connectbot/util/EntropyView;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_0

    .line 117
    iget v5, p0, Lorg/connectbot/util/EntropyView;->lastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    cmpl-float v5, v5, v8

    if-nez v5, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v7

    .line 121
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 122
    .local v3, now:J
    iget-wide v8, p0, Lorg/connectbot/util/EntropyView;->mLastTime:J

    sub-long v8, v3, v8

    const-wide/16 v10, 0x32

    cmp-long v5, v8, v10

    if-ltz v5, :cond_0

    .line 125
    iput-wide v3, p0, Lorg/connectbot/util/EntropyView;->mLastTime:J

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lorg/connectbot/util/EntropyView;->lastX:F

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lorg/connectbot/util/EntropyView;->lastY:F

    .line 134
    iget-boolean v5, p0, Lorg/connectbot/util/EntropyView;->mFlipFlop:Z

    if-eqz v5, :cond_4

    .line 135
    iget v5, p0, Lorg/connectbot/util/EntropyView;->lastX:F

    float-to-int v5, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    iget v8, p0, Lorg/connectbot/util/EntropyView;->lastY:F

    float-to-int v8, v8

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v5, v8

    int-to-byte v1, v5

    .line 138
    .local v1, input:B
    :goto_1
    iget-boolean v5, p0, Lorg/connectbot/util/EntropyView;->mFlipFlop:Z

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lorg/connectbot/util/EntropyView;->mFlipFlop:Z

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    const/4 v5, 0x4

    if-ge v0, v5, :cond_2

    iget v5, p0, Lorg/connectbot/util/EntropyView;->mEntropyByteIndex:I

    if-lt v5, v12, :cond_6

    .line 159
    :cond_2
    iget v5, p0, Lorg/connectbot/util/EntropyView;->mEntropyByteIndex:I

    if-lt v5, v12, :cond_3

    .line 160
    iget-object v5, p0, Lorg/connectbot/util/EntropyView;->listeners:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_a

    .line 165
    :cond_3
    invoke-virtual {p0}, Lorg/connectbot/util/EntropyView;->invalidate()V

    goto :goto_0

    .line 137
    .end local v0           #i:I
    .end local v1           #input:B
    :cond_4
    iget v5, p0, Lorg/connectbot/util/EntropyView;->lastY:F

    float-to-int v5, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    iget v8, p0, Lorg/connectbot/util/EntropyView;->lastX:F

    float-to-int v8, v8

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v5, v8

    int-to-byte v1, v5

    .restart local v1       #input:B
    goto :goto_1

    :cond_5
    move v5, v7

    .line 138
    goto :goto_2

    .line 141
    .restart local v0       #i:I
    :cond_6
    and-int/lit8 v5, v1, 0x3

    if-ne v5, v7, :cond_9

    .line 142
    iget-object v5, p0, Lorg/connectbot/util/EntropyView;->mEntropy:[B

    iget v8, p0, Lorg/connectbot/util/EntropyView;->mEntropyByteIndex:I

    aget-byte v9, v5, v8

    shl-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 143
    iget-object v5, p0, Lorg/connectbot/util/EntropyView;->mEntropy:[B

    iget v8, p0, Lorg/connectbot/util/EntropyView;->mEntropyByteIndex:I

    aget-byte v9, v5, v8

    or-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 144
    iget v5, p0, Lorg/connectbot/util/EntropyView;->mEntropyBitIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/connectbot/util/EntropyView;->mEntropyBitIndex:I

    .line 145
    shr-int/lit8 v5, v1, 0x2

    int-to-byte v1, v5

    .line 152
    :cond_7
    :goto_5
    iget v5, p0, Lorg/connectbot/util/EntropyView;->mEntropyBitIndex:I

    const/16 v8, 0x8

    if-lt v5, v8, :cond_8

    .line 153
    iput v6, p0, Lorg/connectbot/util/EntropyView;->mEntropyBitIndex:I

    .line 154
    iget v5, p0, Lorg/connectbot/util/EntropyView;->mEntropyByteIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/connectbot/util/EntropyView;->mEntropyByteIndex:I

    .line 140
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 146
    :cond_9
    and-int/lit8 v5, v1, 0x3

    const/4 v8, 0x2

    if-ne v5, v8, :cond_7

    .line 147
    iget-object v5, p0, Lorg/connectbot/util/EntropyView;->mEntropy:[B

    iget v8, p0, Lorg/connectbot/util/EntropyView;->mEntropyByteIndex:I

    aget-byte v9, v5, v8

    shl-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 148
    iget v5, p0, Lorg/connectbot/util/EntropyView;->mEntropyBitIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/connectbot/util/EntropyView;->mEntropyBitIndex:I

    .line 149
    shr-int/lit8 v5, v1, 0x2

    int-to-byte v1, v5

    goto :goto_5

    .line 160
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/connectbot/util/OnEntropyGatheredListener;

    .line 161
    .local v2, listener:Lorg/connectbot/util/OnEntropyGatheredListener;
    iget-object v6, p0, Lorg/connectbot/util/EntropyView;->mEntropy:[B

    invoke-interface {v2, v6}, Lorg/connectbot/util/OnEntropyGatheredListener;->onEntropyGathered([B)V

    goto :goto_4
.end method
