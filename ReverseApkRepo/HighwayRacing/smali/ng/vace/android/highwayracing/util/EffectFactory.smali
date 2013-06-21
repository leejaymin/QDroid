.class public Lng/vace/android/highwayracing/util/EffectFactory;
.super Ljava/lang/Object;
.source "EffectFactory.java"


# static fields
.field private static factory:Lng/vace/android/highwayracing/util/EffectFactory;


# instance fields
.field anvilBitmap:Landroid/graphics/Bitmap;

.field anvilIcon:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field dollarBitmap:Landroid/graphics/Bitmap;

.field lastScoreBitmap:I

.field lightningBitmap:Landroid/graphics/Bitmap;

.field lightningIcon:Landroid/graphics/Bitmap;

.field random:Ljava/util/Random;

.field scoreBitmap:Landroid/graphics/Bitmap;

.field final scoreBitmaps:[Landroid/graphics/Bitmap;

.field scoreCanvas:Landroid/graphics/Canvas;

.field splatBitmap:Landroid/graphics/Bitmap;

.field text:Landroid/graphics/Paint;

.field timeBitmap:Landroid/graphics/Bitmap;

.field wrenchBitmap:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->random:Ljava/util/Random;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->scoreBitmaps:[Landroid/graphics/Bitmap;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->lastScoreBitmap:I

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->text:Landroid/graphics/Paint;

    .line 16
    iput-object p1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->context:Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Lng/vace/android/highwayracing/util/EffectFactory;->initializeBitmaps()V

    .line 18
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lng/vace/android/highwayracing/util/EffectFactory;
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    sget-object v0, Lng/vace/android/highwayracing/util/EffectFactory;->factory:Lng/vace/android/highwayracing/util/EffectFactory;

    if-nez v0, :cond_0

    new-instance v0, Lng/vace/android/highwayracing/util/EffectFactory;

    invoke-direct {v0, p0}, Lng/vace/android/highwayracing/util/EffectFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lng/vace/android/highwayracing/util/EffectFactory;->factory:Lng/vace/android/highwayracing/util/EffectFactory;

    .line 22
    :cond_0
    sget-object v0, Lng/vace/android/highwayracing/util/EffectFactory;->factory:Lng/vace/android/highwayracing/util/EffectFactory;

    return-object v0
.end method

.method private initializeBitmaps()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 42
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->text:Landroid/graphics/Paint;

    const/16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->text:Landroid/graphics/Paint;

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->text:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->text:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 47
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->text:Landroid/graphics/Paint;

    const-string v2, "XXX"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lng/vace/android/highwayracing/util/EffectFactory;->text:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lng/vace/android/highwayracing/util/EffectFactory;->text:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->scoreBitmap:Landroid/graphics/Bitmap;

    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->scoreBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->scoreBitmaps:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lng/vace/android/highwayracing/util/EffectFactory;->scoreBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020020

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->timeBitmap:Landroid/graphics/Bitmap;

    .line 54
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020027

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->wrenchBitmap:Landroid/graphics/Bitmap;

    .line 55
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020021

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->dollarBitmap:Landroid/graphics/Bitmap;

    .line 56
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020026

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->splatBitmap:Landroid/graphics/Bitmap;

    .line 57
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->anvilBitmap:Landroid/graphics/Bitmap;

    .line 58
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->anvilIcon:Landroid/graphics/Bitmap;

    .line 59
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020023

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->lightningBitmap:Landroid/graphics/Bitmap;

    .line 60
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020024

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->lightningIcon:Landroid/graphics/Bitmap;

    .line 61
    return-void
.end method


# virtual methods
.method public createBonus(Landroid/graphics/RectF;I)Lng/vace/android/highwayracing/game/gui/Bonus;
    .locals 6
    .parameter "currentView"
    .parameter "bonusType"

    .prologue
    .line 76
    new-instance v0, Lng/vace/android/highwayracing/game/gui/Bonus;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lng/vace/android/highwayracing/util/EffectFactory;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lng/vace/android/highwayracing/util/EffectFactory;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Lng/vace/android/highwayracing/util/EffectFactory;->getBonusBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lng/vace/android/highwayracing/game/gui/Bonus;-><init>(FFFLandroid/graphics/Bitmap;I)V

    return-object v0
.end method

.method public createRandomBonus(Landroid/graphics/RectF;)Lng/vace/android/highwayracing/game/gui/Bonus;
    .locals 7
    .parameter "currentView"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 80
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->random:Ljava/util/Random;

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 81
    .local v0, bonusNumber:I
    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0, p1, v2}, Lng/vace/android/highwayracing/util/EffectFactory;->createBonus(Landroid/graphics/RectF;I)Lng/vace/android/highwayracing/game/gui/Bonus;

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    .line 83
    :cond_0
    if-ne v0, v2, :cond_1

    .line 84
    invoke-virtual {p0, p1, v3}, Lng/vace/android/highwayracing/util/EffectFactory;->createBonus(Landroid/graphics/RectF;I)Lng/vace/android/highwayracing/game/gui/Bonus;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_1
    if-ne v0, v3, :cond_2

    .line 86
    invoke-virtual {p0, p1, v4}, Lng/vace/android/highwayracing/util/EffectFactory;->createBonus(Landroid/graphics/RectF;I)Lng/vace/android/highwayracing/game/gui/Bonus;

    move-result-object v1

    goto :goto_0

    .line 87
    :cond_2
    if-ne v0, v4, :cond_3

    .line 88
    invoke-virtual {p0, p1, v5}, Lng/vace/android/highwayracing/util/EffectFactory;->createBonus(Landroid/graphics/RectF;I)Lng/vace/android/highwayracing/game/gui/Bonus;

    move-result-object v1

    goto :goto_0

    .line 89
    :cond_3
    if-ne v0, v5, :cond_4

    .line 90
    invoke-virtual {p0, p1, v6}, Lng/vace/android/highwayracing/util/EffectFactory;->createBonus(Landroid/graphics/RectF;I)Lng/vace/android/highwayracing/game/gui/Bonus;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You are a stupid coder"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createScoreBitmap(I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "points"

    .prologue
    .line 64
    iget v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->lastScoreBitmap:I

    .line 65
    .local v0, currentBitmap:I
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lng/vace/android/highwayracing/util/EffectFactory;->scoreBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->scoreCanvas:Landroid/graphics/Canvas;

    .line 66
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->scoreCanvas:Landroid/graphics/Canvas;

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 67
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->scoreCanvas:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lng/vace/android/highwayracing/util/EffectFactory;->text:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v4, v4

    iget-object v5, p0, Lng/vace/android/highwayracing/util/EffectFactory;->text:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 69
    iget v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->lastScoreBitmap:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->lastScoreBitmap:I

    .line 70
    iget v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->lastScoreBitmap:I

    iget-object v2, p0, Lng/vace/android/highwayracing/util/EffectFactory;->scoreBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->lastScoreBitmap:I

    .line 72
    :cond_0
    iget-object v1, p0, Lng/vace/android/highwayracing/util/EffectFactory;->scoreBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getBonusBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bonusType"

    .prologue
    .line 100
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->wrenchBitmap:Landroid/graphics/Bitmap;

    .line 104
    :goto_0
    return-object v0

    .line 101
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->anvilBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->lightningBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 103
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->dollarBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 104
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->timeBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 105
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You are a stupid coder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBonusIcon(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bonusType"

    .prologue
    .line 109
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->anvilIcon:Landroid/graphics/Bitmap;

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->lightningIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You are a stupid coder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSplatBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lng/vace/android/highwayracing/util/EffectFactory;->splatBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
