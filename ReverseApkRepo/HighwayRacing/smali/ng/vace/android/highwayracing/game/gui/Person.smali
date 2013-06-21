.class public Lng/vace/android/highwayracing/game/gui/Person;
.super Lng/vace/android/highwayracing/game/gui/MovingImage;
.source "Person.java"


# static fields
.field static final armPaint:Landroid/graphics/Paint;

.field static c:Landroid/graphics/Canvas;

.field static final headPaint:Landroid/graphics/Paint;

.field static final images:[Landroid/graphics/Bitmap;

.field static final legPaint:Landroid/graphics/Paint;


# instance fields
.field animationCounter:I

.field current:I

.field currentMod:I

.field private fled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v4, 0x10

    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/high16 v8, 0x40a0

    .line 15
    new-array v0, v9, [Landroid/graphics/Bitmap;

    sput-object v0, Lng/vace/android/highwayracing/game/gui/Person;->images:[Landroid/graphics/Bitmap;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lng/vace/android/highwayracing/game/gui/Person;->headPaint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lng/vace/android/highwayracing/game/gui/Person;->armPaint:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lng/vace/android/highwayracing/game/gui/Person;->legPaint:Landroid/graphics/Paint;

    .line 30
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->armPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->armPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->armPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 34
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->legPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->legPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->legPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 38
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->images:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/16 v2, 0x14

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 39
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->images:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    const/16 v2, 0x14

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 40
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->images:[Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    const/16 v2, 0x14

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 42
    const/16 v6, 0xa

    .line 43
    .local v6, centerX:I
    const/16 v7, 0x8

    .line 45
    .local v7, centerY:I
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lng/vace/android/highwayracing/game/gui/Person;->images:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lng/vace/android/highwayracing/game/gui/Person;->c:Landroid/graphics/Canvas;

    .line 46
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->c:Landroid/graphics/Canvas;

    sub-int v1, v6, v10

    int-to-float v1, v1

    const/4 v2, 0x5

    sub-int v2, v7, v2

    int-to-float v2, v2

    add-int/lit8 v3, v6, 0x4

    int-to-float v3, v3

    add-int/lit8 v4, v7, 0x5

    int-to-float v4, v4

    sget-object v5, Lng/vace/android/highwayracing/game/gui/Person;->legPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 47
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->c:Landroid/graphics/Canvas;

    sub-int v1, v6, v11

    int-to-float v1, v1

    add-int/lit8 v2, v7, 0x3

    int-to-float v2, v2

    add-int/lit8 v3, v6, 0x8

    int-to-float v3, v3

    sub-int v4, v7, v9

    int-to-float v4, v4

    sget-object v5, Lng/vace/android/highwayracing/game/gui/Person;->armPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->c:Landroid/graphics/Canvas;

    int-to-float v1, v6

    int-to-float v2, v7

    sget-object v3, Lng/vace/android/highwayracing/game/gui/Person;->headPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 50
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lng/vace/android/highwayracing/game/gui/Person;->images:[Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lng/vace/android/highwayracing/game/gui/Person;->c:Landroid/graphics/Canvas;

    .line 51
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->c:Landroid/graphics/Canvas;

    sub-int v1, v6, v10

    int-to-float v1, v1

    int-to-float v2, v7

    add-int/lit8 v3, v6, 0x4

    int-to-float v3, v3

    int-to-float v4, v7

    sget-object v5, Lng/vace/android/highwayracing/game/gui/Person;->legPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 52
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->c:Landroid/graphics/Canvas;

    sub-int v1, v6, v11

    int-to-float v1, v1

    int-to-float v2, v7

    add-int/lit8 v3, v6, 0x8

    int-to-float v3, v3

    int-to-float v4, v7

    sget-object v5, Lng/vace/android/highwayracing/game/gui/Person;->armPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->c:Landroid/graphics/Canvas;

    int-to-float v1, v6

    int-to-float v2, v7

    sget-object v3, Lng/vace/android/highwayracing/game/gui/Person;->headPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 55
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lng/vace/android/highwayracing/game/gui/Person;->images:[Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lng/vace/android/highwayracing/game/gui/Person;->c:Landroid/graphics/Canvas;

    .line 56
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->c:Landroid/graphics/Canvas;

    sub-int v1, v6, v10

    int-to-float v1, v1

    add-int/lit8 v2, v7, 0x5

    int-to-float v2, v2

    add-int/lit8 v3, v6, 0x4

    int-to-float v3, v3

    const/4 v4, 0x5

    sub-int v4, v7, v4

    int-to-float v4, v4

    sget-object v5, Lng/vace/android/highwayracing/game/gui/Person;->legPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->c:Landroid/graphics/Canvas;

    sub-int v1, v6, v11

    int-to-float v1, v1

    sub-int v2, v7, v9

    int-to-float v2, v2

    add-int/lit8 v3, v6, 0x8

    int-to-float v3, v3

    add-int/lit8 v4, v7, 0x3

    int-to-float v4, v4

    sget-object v5, Lng/vace/android/highwayracing/game/gui/Person;->armPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 58
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->c:Landroid/graphics/Canvas;

    int-to-float v1, v6

    int-to-float v2, v7

    sget-object v3, Lng/vace/android/highwayracing/game/gui/Person;->headPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 59
    return-void
.end method

.method public constructor <init>(FFFFFLandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "speedX"
    .parameter "speedY"
    .parameter "rotation"
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct/range {p0 .. p6}, Lng/vace/android/highwayracing/game/gui/MovingImage;-><init>(FFFFFLandroid/graphics/Bitmap;)V

    .line 20
    iput v1, p0, Lng/vace/android/highwayracing/game/gui/Person;->current:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->currentMod:I

    .line 22
    iput v1, p0, Lng/vace/android/highwayracing/game/gui/Person;->animationCounter:I

    .line 23
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/gui/Person;->fled:Z

    .line 27
    return-void
.end method


# virtual methods
.method public flee()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->fled:Z

    .line 96
    return-void
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 62
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->dead:Z

    if-nez v0, :cond_3

    .line 63
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->animationCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->animationCounter:I

    .line 64
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->animationCounter:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 65
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->current:I

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Person;->currentMod:I

    add-int/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->current:I

    .line 66
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->current:I

    sget-object v1, Lng/vace/android/highwayracing/game/gui/Person;->images:[Landroid/graphics/Bitmap;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->current:I

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->currentMod:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->currentMod:I

    .line 67
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->animationCounter:I

    .line 69
    :cond_2
    sget-object v0, Lng/vace/android/highwayracing/game/gui/Person;->images:[Landroid/graphics/Bitmap;

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Person;->current:I

    aget-object v0, v0, v1

    .line 71
    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 91
    iput-object p1, p0, Lng/vace/android/highwayracing/game/gui/Person;->image:Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method

.method public updatePosition(Landroid/graphics/RectF;FFLandroid/graphics/RectF;F)V
    .locals 3
    .parameter "area"
    .parameter "worldDeltaX"
    .parameter "worldDeltaY"
    .parameter "worldRect"
    .parameter "screenHeight"

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->dead:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->fled:Z

    if-eqz v0, :cond_4

    .line 77
    :cond_0
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->x:F

    add-float/2addr v0, p2

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->x:F

    .line 78
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->y:F

    add-float/2addr v0, p3

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->y:F

    .line 79
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->alpha:I

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->alpha:I

    .line 80
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->alpha:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->alpha:I

    .line 82
    :cond_1
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->x:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->x:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->y:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->y:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->alpha:I

    if-nez v0, :cond_3

    .line 83
    :cond_2
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/gui/Person;->remove()V

    .line 88
    :cond_3
    :goto_0
    return-void

    .line 85
    :cond_4
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->x:F

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Person;->speedX:F

    add-float/2addr v0, v1

    add-float/2addr v0, p2

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->x:F

    .line 86
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->y:F

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Person;->speedY:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Person;->y:F

    goto :goto_0
.end method
