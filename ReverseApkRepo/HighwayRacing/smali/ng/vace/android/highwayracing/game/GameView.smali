.class public Lng/vace/android/highwayracing/game/GameView;
.super Lng/vace/android/highwayracing/game/GameSurfaceView;
.source "GameView.java"


# instance fields
.field application:Lng/vace/android/highwayracing/HighwayPatrol;

.field background:Lng/vace/android/highwayracing/game/gui/Background;

.field backgroundFactory:Lng/vace/android/highwayracing/util/BackgroundFactory;

.field backgroundResource:I

.field final bonusRect:Landroid/graphics/RectF;

.field final bonuses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lng/vace/android/highwayracing/game/gui/Bonus;",
            ">;"
        }
    .end annotation
.end field

.field final bonusesToBeRemoved:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lng/vace/android/highwayracing/game/gui/Bonus;",
            ">;"
        }
    .end annotation
.end field

.field final canvasText:Landroid/graphics/Paint;

.field car:Lng/vace/android/highwayracing/game/gui/Car;

.field final carBackRect:Landroid/graphics/RectF;

.field final carCenterRect:Landroid/graphics/RectF;

.field carFactory:Lng/vace/android/highwayracing/util/CarFactory;

.field final carFrontRect:Landroid/graphics/RectF;

.field final carRect:Landroid/graphics/RectF;

.field final carsToBeRemoved:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lng/vace/android/highwayracing/game/gui/Car;",
            ">;"
        }
    .end annotation
.end field

.field cols:I

.field private currentView:Landroid/graphics/RectF;

.field damage:F

.field difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

.field dragging:Z

.field effectFactory:Lng/vace/android/highwayracing/util/EffectFactory;

.field endX:F

.field endY:F

.field health:F

.field healthPaint:Landroid/graphics/Paint;

.field height:I

.field private highscore:Z

.field initialized:Z

.field intersectionTest:Landroid/graphics/Paint;

.field final left:Landroid/graphics/Paint;

.field level:I

.field levelEndTimeMs:J

.field levelStartTimeMs:J

.field logoImage:Landroid/graphics/Bitmap;

.field massBonus:F

.field massBonusStartTime:D

.field mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

.field newCar:Z

.field private nextLevelStartTime:J

.field numCars:I

.field final otherCarBackRect:Landroid/graphics/RectF;

.field final otherCarCenterRect:Landroid/graphics/RectF;

.field final otherCarFrontRect:Landroid/graphics/RectF;

.field final otherCarHitRect:Landroid/graphics/RectF;

.field final otherCarHitRect2:Landroid/graphics/RectF;

.field final otherCarRect:Landroid/graphics/RectF;

.field final otherCarRect2:Landroid/graphics/RectF;

.field otherCars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lng/vace/android/highwayracing/game/gui/Car;",
            ">;"
        }
    .end annotation
.end field

.field final peopleToBeRemoved:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lng/vace/android/highwayracing/game/gui/Person;",
            ">;"
        }
    .end annotation
.end field

.field final personRect:Landroid/graphics/RectF;

.field final persons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lng/vace/android/highwayracing/game/gui/Person;",
            ">;"
        }
    .end annotation
.end field

.field pressing:Z

.field previousMode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

.field private radians:D

.field final random:Ljava/util/Random;

.field private rotatedX:F

.field private rotatedXInversed:F

.field private rotatedY:F

.field private rotatedYInversed:F

.field rows:I

.field score:I

.field scorePaint:Landroid/graphics/Paint;

.field final scores:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lng/vace/android/highwayracing/game/gui/Score;",
            ">;"
        }
    .end annotation
.end field

.field final scoresToBeRemoved:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lng/vace/android/highwayracing/game/gui/Score;",
            ">;"
        }
    .end annotation
.end field

.field private showBonusAnvil:Z

.field private showBonusLightning:Z

.field showingNextLevel:Z

.field speedBonus:F

.field speedBonusStartTime:D

.field speedX:F

.field speedY:F

.field startX:F

.field startY:F

.field final transparency:Landroid/graphics/Paint;

.field final transparentCanvas:Landroid/graphics/Paint;

.field final visibleRect:Landroid/graphics/RectF;

.field width:I

.field worldBorderPaint:Landroid/graphics/Paint;

.field worldHeight:F

.field final worldRect:Landroid/graphics/RectF;

.field worldWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Lng/vace/android/highwayracing/game/GameSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonus:F

    .line 39
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->massBonus:F

    .line 40
    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonusStartTime:D

    .line 41
    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->massBonusStartTime:D

    .line 46
    iput-boolean v4, p0, Lng/vace/android/highwayracing/game/GameView;->initialized:Z

    .line 47
    iput-boolean v4, p0, Lng/vace/android/highwayracing/game/GameView;->showingNextLevel:Z

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->left:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->transparency:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->transparentCanvas:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->visibleRect:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->personRect:Landroid/graphics/RectF;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carRect:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carCenterRect:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carBackRect:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect:Landroid/graphics/RectF;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect2:Landroid/graphics/RectF;

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarHitRect:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarHitRect2:Landroid/graphics/RectF;

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarCenterRect:Landroid/graphics/RectF;

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarFrontRect:Landroid/graphics/RectF;

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarBackRect:Landroid/graphics/RectF;

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->bonusRect:Landroid/graphics/RectF;

    .line 89
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->currentView:Landroid/graphics/RectF;

    .line 91
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->random:Ljava/util/Random;

    .line 95
    const v0, 0x7f020003

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    .line 99
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->startX:F

    .line 100
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->startY:F

    .line 101
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->endX:F

    .line 102
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->endY:F

    .line 105
    iput v4, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    .line 106
    iput v4, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->scores:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->bonuses:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->persons:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carsToBeRemoved:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->scoresToBeRemoved:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->bonusesToBeRemoved:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->peopleToBeRemoved:Ljava/util/ArrayList;

    .line 127
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SHOW_SPLASH:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    .line 128
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->previousMode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    .line 130
    iput-boolean v4, p0, Lng/vace/android/highwayracing/game/GameView;->highscore:Z

    .line 131
    iput-boolean v4, p0, Lng/vace/android/highwayracing/game/GameView;->newCar:Z

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/game/GameView;->setKeepScreenOn(Z)V

    .line 146
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carFactory:Lng/vace/android/highwayracing/util/CarFactory;

    if-nez v0, :cond_0

    new-instance v0, Lng/vace/android/highwayracing/util/CarFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lng/vace/android/highwayracing/util/CarFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carFactory:Lng/vace/android/highwayracing/util/CarFactory;

    .line 147
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->effectFactory:Lng/vace/android/highwayracing/util/EffectFactory;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lng/vace/android/highwayracing/util/EffectFactory;->getInstance(Landroid/content/Context;)Lng/vace/android/highwayracing/util/EffectFactory;

    move-result-object v0

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->effectFactory:Lng/vace/android/highwayracing/util/EffectFactory;

    .line 148
    :cond_1
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundFactory:Lng/vace/android/highwayracing/util/BackgroundFactory;

    if-nez v0, :cond_2

    new-instance v0, Lng/vace/android/highwayracing/util/BackgroundFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lng/vace/android/highwayracing/util/BackgroundFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundFactory:Lng/vace/android/highwayracing/util/BackgroundFactory;

    .line 150
    :cond_2
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->logoImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020025

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->logoImage:Landroid/graphics/Bitmap;

    .line 152
    :cond_3
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->setupColors()V

    .line 153
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->setupTextProperties()V

    .line 154
    return-void
.end method

.method private calculateDetailedCarRects(Landroid/graphics/Canvas;Lng/vace/android/highwayracing/game/gui/Car;)V
    .locals 6
    .parameter "c"
    .parameter "car"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x4170

    .line 940
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getRotation()F

    move-result v0

    const/high16 v1, 0x42b4

    sub-float/2addr v0, v1

    invoke-static {v0}, Lng/vace/android/highwayracing/util/ImageUtil;->toRadians(F)D

    move-result-wide v0

    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->radians:D

    .line 942
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 943
    :cond_0
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->radians:D

    .line 945
    :cond_1
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-wide v2, p0, Lng/vace/android/highwayracing/game/GameView;->radians:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedX:F

    .line 946
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-wide v2, p0, Lng/vace/android/highwayracing/game/GameView;->radians:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedY:F

    .line 948
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedX:F

    sub-float/2addr v1, v5

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedY:F

    sub-float/2addr v2, v5

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedX:F

    add-float/2addr v3, v5

    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedY:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 953
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-wide v2, p0, Lng/vace/android/highwayracing/game/GameView;->radians:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedXInversed:F

    .line 954
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-wide v2, p0, Lng/vace/android/highwayracing/game/GameView;->radians:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedYInversed:F

    .line 956
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carCenterRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v1

    sub-float/2addr v1, v5

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v2

    sub-float/2addr v2, v5

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v3

    add-float/2addr v3, v5

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v4

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 963
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carBackRect:Landroid/graphics/RectF;

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedXInversed:F

    sub-float/2addr v1, v5

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedYInversed:F

    sub-float/2addr v2, v5

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedXInversed:F

    add-float/2addr v3, v5

    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedYInversed:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 973
    return-void
.end method

.method private calculateDetailedOtherCarRects(Landroid/graphics/Canvas;Lng/vace/android/highwayracing/game/gui/Car;)V
    .locals 6
    .parameter "c"
    .parameter "otherCar"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x4170

    .line 902
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getRotation()F

    move-result v0

    const/high16 v1, 0x42b4

    sub-float/2addr v0, v1

    invoke-static {v0}, Lng/vace/android/highwayracing/util/ImageUtil;->toRadians(F)D

    move-result-wide v0

    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->radians:D

    .line 904
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 905
    :cond_0
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->radians:D

    .line 907
    :cond_1
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-wide v2, p0, Lng/vace/android/highwayracing/game/GameView;->radians:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedX:F

    .line 908
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-wide v2, p0, Lng/vace/android/highwayracing/game/GameView;->radians:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedY:F

    .line 910
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarFrontRect:Landroid/graphics/RectF;

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedX:F

    sub-float/2addr v1, v5

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedY:F

    sub-float/2addr v2, v5

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedX:F

    add-float/2addr v3, v5

    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedY:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 917
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarCenterRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v1

    sub-float/2addr v1, v5

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v2

    sub-float/2addr v2, v5

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v3

    add-float/2addr v3, v5

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v4

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 924
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-wide v2, p0, Lng/vace/android/highwayracing/game/GameView;->radians:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedXInversed:F

    .line 925
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-wide v2, p0, Lng/vace/android/highwayracing/game/GameView;->radians:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedYInversed:F

    .line 927
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarBackRect:Landroid/graphics/RectF;

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedXInversed:F

    sub-float/2addr v1, v5

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedYInversed:F

    sub-float/2addr v2, v5

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedXInversed:F

    add-float/2addr v3, v5

    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->rotatedYInversed:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 937
    return-void
.end method

.method private calculateScore(Lng/vace/android/highwayracing/game/gui/Car;I)I
    .locals 8
    .parameter "otherCar"
    .parameter "points"

    .prologue
    .line 187
    const/high16 v6, 0x3f80

    .line 188
    .local v6, factor:F
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->MEDIUM:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    if-ne v0, v1, :cond_0

    const/high16 v6, 0x3fc0

    .line 189
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->HARD:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    if-ne v0, v1, :cond_1

    const/high16 v6, 0x4000

    .line 190
    :cond_1
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    int-to-float v0, v0

    int-to-float v1, p2

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    .line 191
    iget-object v7, p0, Lng/vace/android/highwayracing/game/GameView;->scores:Ljava/util/ArrayList;

    new-instance v0, Lng/vace/android/highwayracing/game/gui/Score;

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v1

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    int-to-float v5, p2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct/range {v0 .. v5}, Lng/vace/android/highwayracing/game/gui/Score;-><init>(FFFFI)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    return p2
.end method

.method private checkIfCarCrashesWithWorldBorder(Lng/vace/android/highwayracing/game/gui/Car;Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "car"
    .parameter "c"

    .prologue
    const/high16 v5, 0x4248

    .line 871
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v1

    sub-float/2addr v1, v5

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v2

    sub-float/2addr v2, v5

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v3

    add-float/2addr v3, v5

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v4

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 876
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->carRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 877
    invoke-direct {p0, p2, p1}, Lng/vace/android/highwayracing/game/GameView;->calculateDetailedCarRects(Landroid/graphics/Canvas;Lng/vace/android/highwayracing/game/gui/Car;)V

    .line 883
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 884
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->releaseControl()V

    .line 885
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getMaxHealth()I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    .line 886
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->checkIfCrashCausedDeath(Lng/vace/android/highwayracing/game/gui/Car;)V

    .line 888
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 889
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    .line 893
    :cond_0
    :goto_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 894
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    .line 899
    :cond_1
    :goto_1
    return-void

    .line 890
    :cond_2
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 891
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    goto :goto_0

    .line 895
    :cond_3
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 896
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    goto :goto_1
.end method

.method private checkIfCrashCausedDeath(Lng/vace/android/highwayracing/game/gui/Car;)V
    .locals 2
    .parameter "car"

    .prologue
    .line 986
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->health:F

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 987
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASHBIG:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->playSound(Lng/vace/android/highwayracing/game/GameEnums$SoundType;)V

    .line 988
    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->die()V

    .line 992
    :goto_0
    return-void

    .line 990
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/HighwayPatrol;->playRandomCrashSound()V

    goto :goto_0
.end method

.method private cleanupAndExit()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/HighwayPatrol;->cleanupAndExit()V

    .line 483
    return-void
.end method

.method private crashDraw(Lng/vace/android/highwayracing/game/gui/Car;)V
    .locals 4
    .parameter "otherCar"

    .prologue
    const/high16 v3, 0x4000

    .line 995
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lng/vace/android/highwayracing/game/gui/Car;->setIntersected(Z)V

    .line 996
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/HighwayPatrol;->vibrate()V

    .line 997
    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v0

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v1

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lng/vace/android/highwayracing/game/gui/Car;->setPosition(FF)V

    .line 999
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->setCarRandomSpeed(Lng/vace/android/highwayracing/game/gui/Car;)V

    .line 1000
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v1

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v2

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getMaxHealth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    .line 1001
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/HighwayPatrol;->playRandomHornSound()V

    .line 1002
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-direct {p0, v0}, Lng/vace/android/highwayracing/game/GameView;->checkIfCrashCausedDeath(Lng/vace/android/highwayracing/game/gui/Car;)V

    .line 1003
    return-void
.end method

.method private crashLoose(Lng/vace/android/highwayracing/game/gui/Car;Lng/vace/android/highwayracing/game/gui/Car;)V
    .locals 4
    .parameter "car"
    .parameter "otherCar"

    .prologue
    const/high16 v3, 0x4000

    .line 976
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lng/vace/android/highwayracing/game/gui/Car;->setIntersected(Z)V

    .line 977
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/HighwayPatrol;->vibrate()V

    .line 978
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v0

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v1

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lng/vace/android/highwayracing/game/gui/Car;->setPosition(FF)V

    .line 980
    invoke-direct {p0, p2}, Lng/vace/android/highwayracing/game/GameView;->setCarRandomSpeed(Lng/vace/android/highwayracing/game/gui/Car;)V

    .line 981
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v1

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v2

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getMaxHealth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    .line 982
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->checkIfCrashCausedDeath(Lng/vace/android/highwayracing/game/gui/Car;)V

    .line 983
    return-void
.end method

.method private crashWin(Lng/vace/android/highwayracing/game/gui/Car;Lng/vace/android/highwayracing/game/gui/Car;)V
    .locals 7
    .parameter "car"
    .parameter "otherCar"

    .prologue
    const/high16 v6, 0x4000

    .line 1022
    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v4

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonus:F

    add-float v2, v4, v5

    .line 1023
    .local v2, speedX:F
    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v4

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonus:F

    add-float v3, v4, v5

    .line 1025
    .local v3, speedY:F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getMaxHealth()I

    move-result v5

    div-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->massBonus:F

    add-float v0, v4, v5

    .line 1027
    .local v0, impact:F
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getHealth()I

    move-result v4

    float-to-int v5, v0

    sub-int/2addr v4, v5

    if-gez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p2, v4}, Lng/vace/android/highwayracing/game/gui/Car;->setHealth(I)V

    .line 1028
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v4, v2

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v5

    div-float/2addr v5, v6

    add-float/2addr v5, v3

    invoke-virtual {p2, v4, v5}, Lng/vace/android/highwayracing/game/gui/Car;->setSpeed(FF)V

    .line 1032
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getHealth()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1033
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->die()V

    .line 1034
    invoke-direct {p0, p2, v2, v3}, Lng/vace/android/highwayracing/game/GameView;->createEscapedPerson(Lng/vace/android/highwayracing/game/gui/Car;FF)V

    .line 1035
    invoke-direct {p0, v0}, Lng/vace/android/highwayracing/game/GameView;->createBonus(F)V

    .line 1036
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    sget-object v5, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASHBIG:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    invoke-virtual {v4, v5}, Lng/vace/android/highwayracing/HighwayPatrol;->playSound(Lng/vace/android/highwayracing/game/GameEnums$SoundType;)V

    .line 1037
    const/16 v1, 0x19

    .line 1044
    .local v1, points:I
    :goto_1
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/HighwayPatrol;->vibrate()V

    .line 1046
    float-to-int v4, v0

    add-int/2addr v4, v1

    invoke-direct {p0, p2, v4}, Lng/vace/android/highwayracing/game/GameView;->calculateScore(Lng/vace/android/highwayracing/game/gui/Car;I)I

    .line 1047
    return-void

    .line 1027
    .end local v1           #points:I
    :cond_0
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getHealth()I

    move-result v4

    float-to-int v5, v0

    sub-int/2addr v4, v5

    goto :goto_0

    .line 1039
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lng/vace/android/highwayracing/game/gui/Car;->setIntersected(Z)V

    .line 1040
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/HighwayPatrol;->playRandomCrashSound()V

    .line 1041
    const/4 v1, 0x5

    .restart local v1       #points:I
    goto :goto_1
.end method

.method private createBackground(FF)V
    .locals 10
    .parameter "worldWidth"
    .parameter "worldHeight"

    .prologue
    const/4 v1, 0x0

    .line 157
    new-instance v0, Lng/vace/android/highwayracing/game/gui/Background;

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundFactory:Lng/vace/android/highwayracing/util/BackgroundFactory;

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    invoke-virtual {v2, v3}, Lng/vace/android/highwayracing/util/BackgroundFactory;->getBackgroundImage(I)Landroid/graphics/Bitmap;

    move-result-object v5

    neg-float v2, p1

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v8, v2, v3

    neg-float v2, p2

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    add-float v9, v2, v3

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v9}, Lng/vace/android/highwayracing/game/gui/Background;-><init>(FFFFLandroid/graphics/Bitmap;FFFF)V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    .line 158
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldX()F

    move-result v1

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldY()F

    move-result v2

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Background;->getMaxWorldX()F

    move-result v3

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldX()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/game/gui/Background;->getMaxWorldY()F

    move-result v4

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v5}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    return-void
.end method

.method private createBonus(F)V
    .locals 2
    .parameter "impactSpeed"

    .prologue
    .line 1063
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1064
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->createRandomBonus()V

    .line 1066
    :cond_0
    return-void
.end method

.method private createBossFight(I)V
    .locals 0
    .parameter "bossLevel"

    .prologue
    .line 290
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->createCars()V

    .line 291
    return-void
.end method

.method private createCars()V
    .locals 4

    .prologue
    .line 165
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->numCars:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    .line 167
    const/4 v1, 0x0

    .local v1, row:I
    :goto_0
    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->rows:I

    if-ge v1, v2, :cond_1

    .line 168
    const/4 v0, 0x0

    .local v0, col:I
    :goto_1
    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->cols:I

    if-ge v0, v2, :cond_0

    .line 169
    invoke-direct {p0, v1, v0}, Lng/vace/android/highwayracing/game/GameView;->createOffscreenCar(II)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0           #col:I
    :cond_1
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 173
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lng/vace/android/highwayracing/game/GameView;->numCars:I

    .line 174
    return-void
.end method

.method private createEscapedPerson(Lng/vace/android/highwayracing/game/gui/Car;FF)V
    .locals 9
    .parameter "otherCar"
    .parameter "speedX"
    .parameter "speedY"

    .prologue
    const/high16 v4, 0x4120

    .line 1056
    const/high16 v0, 0x4040

    invoke-static {v0, p2, p3}, Lng/vace/android/highwayracing/util/CarFactory;->findIntersectionPoint(FFF)Landroid/graphics/PointF;

    move-result-object v7

    .line 1059
    .local v7, intersectionPoint:Landroid/graphics/PointF;
    iget-object v8, p0, Lng/vace/android/highwayracing/game/GameView;->persons:Ljava/util/ArrayList;

    new-instance v0, Lng/vace/android/highwayracing/game/gui/Person;

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v1

    iget v2, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v2

    iget v3, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v7, Landroid/graphics/PointF;->x:F

    iget v4, v7, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/gui/Person;-><init>(FFFFFLandroid/graphics/Bitmap;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    return-void
.end method

.method private createOffscreenCar(II)V
    .locals 4
    .parameter "row"
    .parameter "col"

    .prologue
    .line 177
    const/16 v0, 0xf

    .line 178
    .local v0, trafficPercentage:I
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    sget-object v2, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->MEDIUM:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    invoke-virtual {v1, v2}, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x19

    .line 179
    :cond_0
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    sget-object v2, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->HARD:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    invoke-virtual {v1, v2}, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x23

    .line 181
    :cond_1
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->random:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 182
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->carFactory:Lng/vace/android/highwayracing/util/CarFactory;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, p1, p2}, Lng/vace/android/highwayracing/util/CarFactory;->getRandomCar(Landroid/graphics/RectF;II)Lng/vace/android/highwayracing/game/gui/Car;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_2
    return-void
.end method

.method private createRandomBonus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1069
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->currentView:Landroid/graphics/RectF;

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    int-to-float v1, v1

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1070
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->currentView:Landroid/graphics/RectF;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 1072
    iget-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->levelEndTimeMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->effectFactory:Lng/vace/android/highwayracing/util/EffectFactory;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->currentView:Landroid/graphics/RectF;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lng/vace/android/highwayracing/util/EffectFactory;->createBonus(Landroid/graphics/RectF;I)Lng/vace/android/highwayracing/game/gui/Bonus;

    .line 1076
    :goto_0
    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->bonuses:Ljava/util/ArrayList;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->effectFactory:Lng/vace/android/highwayracing/util/EffectFactory;

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->currentView:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lng/vace/android/highwayracing/util/EffectFactory;->createRandomBonus(Landroid/graphics/RectF;)Lng/vace/android/highwayracing/game/gui/Bonus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private createSplatFestIntermission()V
    .locals 13

    .prologue
    const/high16 v12, 0x42c8

    const/high16 v11, 0x4080

    const/high16 v10, 0x4000

    .line 297
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/16 v0, 0x19

    if-ge v8, v0, :cond_0

    .line 298
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v11

    sub-float v3, v0, v10

    .line 299
    .local v3, speedX:F
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v11

    sub-float v4, v0, v10

    .line 301
    .local v4, speedY:F
    const/high16 v0, 0x42a0

    mul-float v1, v3, v12

    mul-float v2, v4, v12

    invoke-static {v0, v1, v2}, Lng/vace/android/highwayracing/util/CarFactory;->findIntersectionPoint(FFF)Landroid/graphics/PointF;

    move-result-object v7

    .line 304
    .local v7, distancePoint:Landroid/graphics/PointF;
    iget-object v9, p0, Lng/vace/android/highwayracing/game/GameView;->persons:Ljava/util/ArrayList;

    new-instance v0, Lng/vace/android/highwayracing/game/gui/Person;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v1

    iget v2, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v2

    iget v5, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/gui/Person;-><init>(FFFFFLandroid/graphics/Bitmap;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 306
    .end local v3           #speedX:F
    .end local v4           #speedY:F
    .end local v7           #distancePoint:Landroid/graphics/PointF;
    :cond_0
    return-void
.end method

.method private decideHighScore()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->setScore(I)V

    .line 209
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/HighwayPatrol;->getHighestScore()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->setHighestScore(I)V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->highscore:Z

    .line 213
    :cond_0
    return-void
.end method

.method private dragCar()V
    .locals 8

    .prologue
    .line 1102
    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->startX:F

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->endX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1103
    .local v2, xDiff:F
    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->startY:F

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->endY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1105
    .local v3, yDiff:F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    .line 1107
    .local v1, totalSpeed:F
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/HighwayPatrol;->getCarLevel()I

    move-result v4

    invoke-static {v4}, Lng/vace/android/highwayracing/util/CarFactory;->getSpeed(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonus:F

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    .line 1108
    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->endX:F

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->startX:F

    sub-float/2addr v4, v5

    iput v4, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    .line 1109
    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->endY:F

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->startY:F

    sub-float/2addr v4, v5

    iput v4, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    .line 1120
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/HighwayPatrol;->getCarLevel()I

    move-result v4

    invoke-static {v4}, Lng/vace/android/highwayracing/util/CarFactory;->getSpeed(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonus:F

    add-float/2addr v4, v5

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->endX:F

    iget v6, p0, Lng/vace/android/highwayracing/game/GameView;->startX:F

    sub-float/2addr v5, v6

    iget v6, p0, Lng/vace/android/highwayracing/game/GameView;->endY:F

    iget v7, p0, Lng/vace/android/highwayracing/game/GameView;->startY:F

    sub-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Lng/vace/android/highwayracing/util/CarFactory;->findIntersectionPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 1115
    .local v0, intersectionPoint:Landroid/graphics/PointF;
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iput v4, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    .line 1116
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iput v4, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    goto :goto_0
.end method

.method private drawAbout(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v5, 0x4

    .line 1285
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    sub-int v4, v0, v5

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    sub-int v5, v0, v5

    const/high16 v6, 0x4160

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1286
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 368
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    if-nez v0, :cond_0

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldWidth:F

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->worldHeight:F

    invoke-direct {p0, v0, v1}, Lng/vace/android/highwayracing/game/GameView;->createBackground(FF)V

    .line 369
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    neg-float v1, v1

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lng/vace/android/highwayracing/game/gui/Background;->setSpeed(FF)V

    .line 370
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    invoke-virtual {v0, p1, v1, v2}, Lng/vace/android/highwayracing/game/gui/Background;->draw(Landroid/graphics/Canvas;II)V

    .line 371
    return-void
.end method

.method private drawBonusImages(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1136
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->bonuses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lng/vace/android/highwayracing/game/gui/Bonus;

    .line 1137
    .local v0, bonus:Lng/vace/android/highwayracing/game/gui/Bonus;
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Background;->getSpeedX()F

    move-result v2

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Background;->getSpeedY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lng/vace/android/highwayracing/game/gui/Bonus;->updatePosition(FF)V

    .line 1138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1139
    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Bonus;->getRotation()F

    move-result v2

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Bonus;->getX()F

    move-result v3

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Bonus;->getY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1140
    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Bonus;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Bonus;->getX()F

    move-result v3

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Bonus;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Bonus;->getY()F

    move-result v4

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Bonus;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 1143
    .end local v0           #bonus:Lng/vace/android/highwayracing/game/gui/Bonus;
    :cond_0
    return-void
.end method

.method private drawBonuses(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1242
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->showBonusAnvil:Z

    if-eqz v0, :cond_0

    .line 1243
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lng/vace/android/highwayracing/util/EffectFactory;->getInstance(Landroid/content/Context;)Lng/vace/android/highwayracing/util/EffectFactory;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/util/EffectFactory;->getBonusIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x41a0

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1246
    :cond_0
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->showBonusLightning:Z

    if-eqz v0, :cond_1

    .line 1247
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lng/vace/android/highwayracing/util/EffectFactory;->getInstance(Landroid/content/Context;)Lng/vace/android/highwayracing/util/EffectFactory;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/util/EffectFactory;->getBonusIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x4220

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1249
    :cond_1
    return-void
.end method

.method private drawCanvas(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x4248

    .line 553
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SHOW_SPLASH:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->GAME_OVER:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SUBMIT_SCORE:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->PAUSED:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x40a0

    const/high16 v2, 0x4170

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    const/16 v5, 0xf

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->transparentCanvas:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 558
    :cond_1
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->PAUSED:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawPaused(Landroid/graphics/Canvas;)V

    .line 575
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawAbout(Landroid/graphics/Canvas;)V

    .line 576
    return-void

    .line 560
    :cond_3
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SUBMIT_SCORE:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 561
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawSubmitScores(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 562
    :cond_4
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->GAME_OVER:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 563
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawGameOver(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 564
    :cond_5
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SHOW_SPLASH:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 565
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawSplash(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 567
    :cond_6
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawGameInfo(Landroid/graphics/Canvas;)V

    .line 569
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->showingNextLevel:Z

    if-eqz v0, :cond_7

    .line 570
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawNextLevel(Landroid/graphics/Canvas;)V

    .line 571
    :cond_7
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->showBonusAnvil:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->showBonusLightning:Z

    if-eqz v0, :cond_2

    .line 572
    :cond_8
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawBonuses(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawCar(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 1079
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    invoke-virtual {v0, v1, v2}, Lng/vace/android/highwayracing/game/gui/Car;->setSpeed(FF)V

    .line 1080
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    neg-float v2, v2

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    neg-float v3, v3

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lng/vace/android/highwayracing/game/gui/Car;->updatePosition(Landroid/graphics/RectF;FFLandroid/graphics/RectF;F)V

    .line 1082
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 1083
    .local v7, halfImageWidth:I
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 1085
    .local v6, halfImageHeight:I
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v1

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v2

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v3

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v4

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v5}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1090
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->transparency:Landroid/graphics/Paint;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1092
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1093
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getRotation()F

    move-result v0

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v1

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1094
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 1095
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v1

    int-to-float v2, v7

    sub-float/2addr v1, v2

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v2

    int-to-float v3, v6

    sub-float/2addr v2, v3

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->transparency:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1098
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1099
    return-void

    .line 1097
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v1

    int-to-float v2, v7

    sub-float/2addr v1, v2

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v2

    int-to-float v3, v6

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawGameInfo(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x4190

    const/4 v7, 0x4

    const-string v8, " "

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    sub-int v4, v0, v7

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    add-int/lit8 v5, v0, 0x4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    sub-int v5, v0, v7

    move-object v0, p0

    move-object v1, p1

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1282
    return-void
.end method

.method private drawGameOver(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/high16 v13, 0x4190

    const/high16 v6, 0x41a0

    .line 1256
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    add-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v11, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int v12, v0, v1

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v13}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1258
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v11, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v12, v0, v1

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v13}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1259
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    invoke-static {v0, v1}, Lng/vace/android/highwayracing/util/TextUtil;->getRankFromScore(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x4

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1261
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->highscore:Z

    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1263
    :cond_0
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->newCar:Z

    if-eqz v0, :cond_1

    .line 1264
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060040

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x8

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1265
    :cond_1
    return-void
.end method

.method private drawHealthLeft(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 1191
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->health:F

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    sub-float v7, v0, v2

    .line 1192
    .local v7, remaining:F
    const/high16 v0, 0x437f

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->health:F

    div-float/2addr v0, v2

    mul-float v6, v0, v7

    .line 1193
    .local v6, fullRed:F
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->left:Landroid/graphics/Paint;

    const/16 v2, 0x80

    const/16 v3, 0xff

    float-to-int v4, v6

    sub-int/2addr v3, v4

    float-to-int v4, v6

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1194
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    int-to-float v0, v0

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->health:F

    div-float/2addr v0, v2

    mul-float v3, v0, v7

    const/high16 v4, 0x41a0

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->left:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1195
    return-void
.end method

.method private drawNextLevel(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x41a0

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v5, v0, 0xa

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1294
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    invoke-static {v0, v1}, Lng/vace/android/highwayracing/util/TextUtil;->getLevelText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v5, v0, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1295
    return-void
.end method

.method private drawOtherCar(Landroid/graphics/Canvas;Lng/vace/android/highwayracing/game/gui/Car;FF)V
    .locals 2
    .parameter "canvas"
    .parameter "otherCar"
    .parameter "carXPos"
    .parameter "carYPos"

    .prologue
    .line 359
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 360
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->transparency:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 363
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->transparency:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawOtherCars(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/high16 v10, 0x42a0

    .line 324
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lng/vace/android/highwayracing/game/gui/Car;

    .line 325
    .local v0, otherCar:Lng/vace/android/highwayracing/game/gui/Car;
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    neg-float v2, v4

    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    neg-float v3, v4

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lng/vace/android/highwayracing/game/gui/Car;->updatePosition(Landroid/graphics/RectF;FFLandroid/graphics/RectF;F)V

    .line 327
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v4

    sub-float/2addr v4, v10

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v5

    sub-float/2addr v5, v10

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v6

    add-float/2addr v6, v10

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v8

    add-float/2addr v8, v10

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 332
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->visibleRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->visibleRect:Landroid/graphics/RectF;

    invoke-static {v1, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    :cond_1
    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v1

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v2, v1, v4

    .line 334
    .local v2, carXPos:F
    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v1

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v3, v1, v4

    .line 336
    .local v3, carYPos:F
    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getHealthBarLength()F

    move-result v1

    add-float v4, v2, v1

    iget-object v6, p0, Lng/vace/android/highwayracing/game/GameView;->healthPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 341
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v4

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v5

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v6

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x3

    int-to-float v8, v8

    add-float/2addr v6, v8

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v8

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 346
    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getRotation()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    .line 347
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 348
    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getRotation()F

    move-result v1

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v4

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v5

    invoke-virtual {p1, v1, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 349
    invoke-direct {p0, p1, v0, v2, v3}, Lng/vace/android/highwayracing/game/GameView;->drawOtherCar(Landroid/graphics/Canvas;Lng/vace/android/highwayracing/game/gui/Car;FF)V

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 352
    :cond_2
    invoke-direct {p0, p1, v0, v2, v3}, Lng/vace/android/highwayracing/game/GameView;->drawOtherCar(Landroid/graphics/Canvas;Lng/vace/android/highwayracing/game/gui/Car;FF)V

    goto/16 :goto_0

    .line 356
    .end local v0           #otherCar:Lng/vace/android/highwayracing/game/gui/Car;
    .end local v2           #carXPos:F
    .end local v3           #carYPos:F
    :cond_3
    return-void
.end method

.method private drawPaused(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1289
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v5, v0, 0x2

    const/high16 v6, 0x41a0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1290
    return-void
.end method

.method private drawPersons(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v8, 0x4100

    const/high16 v7, 0x4170

    .line 616
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->persons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lng/vace/android/highwayracing/game/gui/Person;

    .line 617
    .local v0, person:Lng/vace/android/highwayracing/game/gui/Person;
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    neg-float v2, v2

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    neg-float v3, v3

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lng/vace/android/highwayracing/game/gui/Person;->updatePosition(Landroid/graphics/RectF;FFLandroid/graphics/RectF;F)V

    .line 619
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->personRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Person;->getX()F

    move-result v2

    sub-float/2addr v2, v7

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Person;->getY()F

    move-result v3

    sub-float/2addr v3, v7

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Person;->getX()F

    move-result v4

    add-float/2addr v4, v7

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Person;->getY()F

    move-result v5

    add-float/2addr v5, v7

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 624
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->visibleRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->personRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->personRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->visibleRect:Landroid/graphics/RectF;

    invoke-static {v1, v2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 626
    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Person;->getRotation()F

    move-result v1

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Person;->getX()F

    move-result v2

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Person;->getY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 627
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->transparency:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Person;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 628
    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Person;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Person;->getX()F

    move-result v2

    sub-float/2addr v2, v8

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Person;->getY()F

    move-result v3

    sub-float/2addr v3, v8

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->transparency:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 629
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 632
    .end local v0           #person:Lng/vace/android/highwayracing/game/gui/Person;
    :cond_2
    return-void
.end method

.method private drawScores(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1123
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->scores:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lng/vace/android/highwayracing/game/gui/Score;

    .line 1124
    .local v1, score:Lng/vace/android/highwayracing/game/gui/Score;
    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Score;->updatePosition()V

    .line 1125
    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Score;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->scoresToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Score;->getScore()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Score;->getX()F

    move-result v3

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Score;->getY()F

    move-result v4

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->scorePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1129
    .end local v1           #score:Lng/vace/android/highwayracing/game/gui/Score;
    :cond_1
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->scoresToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1130
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->scores:Ljava/util/ArrayList;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->scoresToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1131
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->scoresToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1133
    :cond_2
    return-void
.end method

.method private drawSplash(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v7, 0x4180

    .line 1268
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->logoImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->logoImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1270
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0xa

    add-int v5, v0, v1

    const/high16 v6, 0x41a0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1271
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1272
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v5, v0, 0x2

    move-object v0, p0

    move-object v1, p1

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1273
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1274
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x5

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1275
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x7

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1276
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x9

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1277
    return-void
.end method

.method private drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V
    .locals 4
    .parameter "canvas"
    .parameter "outputText"
    .parameter "align"
    .parameter "textX"
    .parameter "textY"
    .parameter "textSize"

    .prologue
    .line 1298
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1299
    .local v0, oldTextSize:F
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1300
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1301
    int-to-float v1, p4

    int-to-float v2, p5

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1302
    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1303
    return-void
.end method

.method private drawSubmitScores(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1252
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    div-int/lit8 v4, v0, 0x2

    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    div-int/lit8 v5, v0, 0x2

    const/high16 v6, 0x4160

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/GameView;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint$Align;IIF)V

    .line 1253
    return-void
.end method

.method private drawTimeLeft(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 579
    iget-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->levelEndTimeMs:J

    iget-wide v4, p0, Lng/vace/android/highwayracing/game/GameView;->levelStartTimeMs:J

    sub-long v9, v0, v4

    .line 580
    .local v9, totalTimeMs:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lng/vace/android/highwayracing/game/GameView;->levelStartTimeMs:J

    sub-long/2addr v0, v4

    long-to-float v8, v0

    .line 581
    .local v8, passedMs:F
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    int-to-float v0, v0

    long-to-float v1, v9

    div-float/2addr v0, v1

    long-to-float v1, v9

    mul-float v6, v0, v1

    .line 582
    .local v6, fullBarWidth:F
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    int-to-float v0, v0

    long-to-float v1, v9

    div-float/2addr v0, v1

    mul-float/2addr v0, v8

    sub-float v3, v6, v0

    .line 583
    .local v3, remainingBarWidth:F
    const/high16 v0, 0x437f

    long-to-float v1, v9

    div-float/2addr v0, v1

    mul-float v7, v0, v8

    .line 584
    .local v7, fullRed:F
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->left:Landroid/graphics/Paint;

    const/16 v1, 0x80

    const/16 v2, 0xff

    float-to-int v4, v7

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    float-to-int v5, v7

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 585
    const/4 v1, 0x0

    const/high16 v2, 0x41a0

    const/high16 v4, 0x4220

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->left:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 586
    return-void
.end method

.method private drawWorldBorder(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/16 v2, 0xff

    const/high16 v8, 0x41a0

    const/high16 v7, 0x4120

    const/4 v6, 0x0

    .line 607
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldBorderPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 608
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldX()F

    move-result v1

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldY()F

    move-result v2

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Background;->getMaxWorldX()F

    move-result v0

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldX()F

    move-result v3

    add-float/2addr v3, v0

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Background;->getMaxWorldY()F

    move-result v0

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldY()F

    move-result v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->worldBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 609
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldBorderPaint:Landroid/graphics/Paint;

    const/16 v1, 0x4b

    invoke-static {v1, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 610
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldX()F

    move-result v0

    sub-float v1, v0, v7

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldY()F

    move-result v0

    sub-float v2, v0, v7

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Background;->getMaxWorldX()F

    move-result v0

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldX()F

    move-result v3

    add-float/2addr v0, v3

    add-float v3, v0, v7

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Background;->getMaxWorldY()F

    move-result v0

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldY()F

    move-result v4

    add-float/2addr v0, v4

    add-float v4, v0, v7

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->worldBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 611
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldBorderPaint:Landroid/graphics/Paint;

    const/16 v1, 0x32

    invoke-static {v1, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 612
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldX()F

    move-result v0

    sub-float v1, v0, v8

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldY()F

    move-result v0

    sub-float v2, v0, v8

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Background;->getMaxWorldX()F

    move-result v0

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldX()F

    move-result v3

    add-float/2addr v0, v3

    add-float v3, v0, v8

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Background;->getMaxWorldY()F

    move-result v0

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldY()F

    move-result v4

    add-float/2addr v0, v4

    add-float v4, v0, v8

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->worldBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 613
    return-void
.end method

.method private endGameIfConditionsAreMet()V
    .locals 4

    .prologue
    .line 1146
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->RUNNING:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    if-ne v0, v1, :cond_1

    .line 1147
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->gameOver()V

    .line 1148
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lng/vace/android/highwayracing/game/GameView;->levelEndTimeMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->gameOver()V

    .line 1150
    :cond_1
    return-void
.end method

.method private gameOver()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 196
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->GAME_OVER:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    .line 198
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    div-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v0, v2

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/HighwayPatrol;->getUnlockLevel()I

    move-result v1

    if-le v0, v1, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->newCar:Z

    .line 200
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->newCar:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/HighwayPatrol;->getUnlockLevel()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->setUnlockLevel(I)V

    .line 203
    :cond_0
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->decideHighScore()V

    .line 204
    return-void

    .line 198
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEndTime()J
    .locals 6

    .prologue
    .line 281
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->EASY:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->worldHeight:F

    float-to-long v2, v2

    const-wide/16 v4, 0x5

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 286
    :goto_0
    return-wide v0

    .line 283
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->MEDIUM:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->worldHeight:F

    float-to-long v2, v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0

    .line 286
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->worldHeight:F

    float-to-long v2, v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/high16 v4, -0x100

    const/4 v3, 0x1

    const/high16 v2, 0x4040

    .line 1153
    iput-boolean v3, p0, Lng/vace/android/highwayracing/game/GameView;->initialized:Z

    .line 1155
    invoke-virtual {p0, v3}, Lng/vace/android/highwayracing/game/GameView;->setFocusable(Z)V

    .line 1156
    invoke-virtual {p0, v3}, Lng/vace/android/highwayracing/game/GameView;->setFocusableInTouchMode(Z)V

    .line 1158
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->healthPaint:Landroid/graphics/Paint;

    .line 1159
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->healthPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1160
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->healthPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1161
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->healthPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1162
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->healthPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldBorderPaint:Landroid/graphics/Paint;

    .line 1165
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1166
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1167
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1168
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->scorePaint:Landroid/graphics/Paint;

    .line 1171
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->scorePaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1172
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->scorePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1173
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->scorePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1174
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->scorePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1175
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->scorePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->intersectionTest:Landroid/graphics/Paint;

    .line 1178
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->intersectionTest:Landroid/graphics/Paint;

    const-string v1, "#8000ff00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1179
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->intersectionTest:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1181
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getWidth()I

    move-result v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    .line 1182
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getHeight()I

    move-result v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    .line 1184
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    int-to-float v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldWidth:F

    .line 1185
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    int-to-float v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldHeight:F

    .line 1187
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->initSplash()V

    .line 1188
    return-void
.end method

.method private nextLevel()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x42a0

    const v5, 0x7f020005

    const v4, 0x7f020004

    const v3, 0x7f020003

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->levelStartTimeMs:J

    .line 217
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lng/vace/android/highwayracing/game/gui/Car;->setPosition(FF)V

    .line 218
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->resetSpeed()V

    .line 219
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/HighwayPatrol;->getCarLevel()I

    move-result v0

    invoke-static {v0}, Lng/vace/android/highwayracing/util/CarFactory;->getSpeed(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    .line 220
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    .line 222
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    mul-int/lit16 v0, v0, 0x1f4

    add-int/lit16 v0, v0, 0x2710

    int-to-float v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldHeight:F

    .line 224
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->levelEndTimeMs:J

    .line 226
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldWidth:F

    .line 228
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    if-ne v0, v7, :cond_1

    .line 229
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    .line 260
    :cond_0
    :goto_0
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldWidth:F

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->worldHeight:F

    invoke-direct {p0, v0, v1}, Lng/vace/android/highwayracing/game/GameView;->createBackground(FF)V

    .line 262
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->cols:I

    .line 263
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->rows:I

    .line 265
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_f

    .line 266
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->createSplatFestIntermission()V

    .line 275
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->nextLevelStartTime:J

    .line 276
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->RUNNING:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    .line 277
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->postNextLevel()V

    .line 278
    return-void

    .line 230
    :cond_1
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 231
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto :goto_0

    .line 232
    :cond_2
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 233
    iput v4, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto :goto_0

    .line 234
    :cond_3
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 235
    iput v5, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto :goto_0

    .line 236
    :cond_4
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 237
    const v0, 0x7f020002

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto :goto_0

    .line 238
    :cond_5
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 239
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto :goto_0

    .line 240
    :cond_6
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 241
    iput v5, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto :goto_0

    .line 242
    :cond_7
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 243
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto :goto_0

    .line 244
    :cond_8
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 245
    iput v5, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto/16 :goto_0

    .line 246
    :cond_9
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 247
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto/16 :goto_0

    .line 248
    :cond_a
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    .line 249
    iput v4, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto/16 :goto_0

    .line 250
    :cond_b
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    .line 251
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto/16 :goto_0

    .line 252
    :cond_c
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/16 v1, 0xd

    if-ne v0, v1, :cond_d

    .line 253
    iput v4, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto/16 :goto_0

    .line 254
    :cond_d
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    const/16 v1, 0xe

    if-ne v0, v1, :cond_e

    .line 255
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto/16 :goto_0

    .line 256
    :cond_e
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    rem-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    .line 257
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->backgroundResource:I

    goto/16 :goto_0

    .line 267
    :cond_f
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_10

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lng/vace/android/highwayracing/game/GameView;->createBossFight(I)V

    goto/16 :goto_1

    .line 269
    :cond_10
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_11

    .line 270
    invoke-direct {p0, v7}, Lng/vace/android/highwayracing/game/GameView;->createBossFight(I)V

    goto/16 :goto_1

    .line 272
    :cond_11
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->createCars()V

    goto/16 :goto_1
.end method

.method private nextLevelIfConditionsAreMet()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->persons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->nextLevel()V

    .line 780
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v0

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->nextLevel()V

    .line 781
    :cond_1
    return-void
.end method

.method private postBonus(IZ)V
    .locals 3
    .parameter "bonusType"
    .parameter "show"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 764
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 765
    if-eqz p2, :cond_0

    .line 766
    iput-boolean v2, p0, Lng/vace/android/highwayracing/game/GameView;->showBonusAnvil:Z

    .line 776
    :goto_0
    return-void

    .line 768
    :cond_0
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/GameView;->showBonusAnvil:Z

    goto :goto_0

    .line 769
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 770
    if-eqz p2, :cond_2

    .line 771
    iput-boolean v2, p0, Lng/vace/android/highwayracing/game/GameView;->showBonusLightning:Z

    goto :goto_0

    .line 773
    :cond_2
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/GameView;->showBonusLightning:Z

    goto :goto_0

    .line 775
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You are a stupid coder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private postNextLevel()V
    .locals 1

    .prologue
    .line 1198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->showingNextLevel:Z

    .line 1199
    return-void
.end method

.method private postNextLevelEnd()V
    .locals 1

    .prologue
    .line 1202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->showingNextLevel:Z

    .line 1203
    return-void
.end method

.method private releaseControl()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 315
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/GameView;->pressing:Z

    .line 316
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/GameView;->dragging:Z

    .line 317
    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->startX:F

    .line 318
    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->endX:F

    .line 319
    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->startY:F

    .line 320
    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->endY:F

    .line 321
    return-void
.end method

.method private removeHitCars()V
    .locals 4

    .prologue
    .line 784
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lng/vace/android/highwayracing/game/gui/Car;

    .line 785
    .local v1, movingImage:Lng/vace/android/highwayracing/game/gui/Car;
    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->carsToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    .end local v1           #movingImage:Lng/vace/android/highwayracing/game/gui/Car;
    :cond_1
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->carsToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 790
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->carsToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 791
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->carsToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 793
    :cond_2
    return-void
.end method

.method private removeHitPeople()V
    .locals 4

    .prologue
    .line 796
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->persons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lng/vace/android/highwayracing/game/gui/Person;

    .line 797
    .local v1, person:Lng/vace/android/highwayracing/game/gui/Person;
    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Person;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->peopleToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 801
    .end local v1           #person:Lng/vace/android/highwayracing/game/gui/Person;
    :cond_1
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->peopleToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 802
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->persons:Ljava/util/ArrayList;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->peopleToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 803
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->peopleToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 805
    :cond_2
    return-void
.end method

.method private resetSpeed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 309
    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    .line 310
    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    .line 311
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->releaseControl()V

    .line 312
    return-void
.end method

.method private resolveAICrash(Lng/vace/android/highwayracing/game/gui/Car;Lng/vace/android/highwayracing/game/gui/Car;)V
    .locals 3
    .parameter "winner"
    .parameter "loser"

    .prologue
    .line 1050
    invoke-virtual {p2}, Lng/vace/android/highwayracing/game/gui/Car;->die()V

    .line 1051
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASHBIG:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->playSound(Lng/vace/android/highwayracing/game/GameEnums$SoundType;)V

    .line 1052
    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v0

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v1

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lng/vace/android/highwayracing/game/gui/Car;->setSpeed(FF)V

    .line 1053
    return-void
.end method

.method private resolveBonusEffect(Lng/vace/android/highwayracing/game/gui/Bonus;)V
    .locals 7
    .parameter "bonus"

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 734
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->BONUS:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->playSound(Lng/vace/android/highwayracing/game/GameEnums$SoundType;)V

    .line 736
    const/4 v5, 0x0

    .line 738
    .local v5, points:I
    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Bonus;->getBonusType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 739
    const/16 v5, 0xfa

    .line 759
    :cond_0
    :goto_0
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    add-int/2addr v0, v5

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    .line 760
    iget-object v6, p0, Lng/vace/android/highwayracing/game/GameView;->scores:Ljava/util/ArrayList;

    new-instance v0, Lng/vace/android/highwayracing/game/gui/Score;

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Bonus;->getX()F

    move-result v1

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Bonus;->getY()F

    move-result v2

    const/high16 v4, -0x4000

    invoke-direct/range {v0 .. v5}, Lng/vace/android/highwayracing/game/gui/Score;-><init>(FFFFI)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    return-void

    .line 740
    :cond_1
    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Bonus;->getBonusType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 741
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    const/high16 v1, 0x41c8

    sub-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    .line 742
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    .line 743
    :cond_2
    const/16 v5, 0x19

    goto :goto_0

    .line 744
    :cond_3
    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Bonus;->getBonusType()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 745
    const/high16 v0, 0x42c8

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->massBonus:F

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->massBonusStartTime:D

    .line 747
    const/16 v5, 0x19

    .line 748
    invoke-direct {p0, v4, v2}, Lng/vace/android/highwayracing/game/GameView;->postBonus(IZ)V

    goto :goto_0

    .line 749
    :cond_4
    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Bonus;->getBonusType()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 750
    const/high16 v0, 0x40a0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonus:F

    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonusStartTime:D

    .line 752
    const/16 v5, 0x19

    .line 753
    invoke-direct {p0, v6, v2}, Lng/vace/android/highwayracing/game/GameView;->postBonus(IZ)V

    goto :goto_0

    .line 754
    :cond_5
    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Bonus;->getBonusType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 755
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lng/vace/android/highwayracing/game/GameView;->levelEndTimeMs:J

    .line 756
    const/16 v5, 0xa

    goto :goto_0
.end method

.method private resolveBonusPickups(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "c"

    .prologue
    const/high16 v7, 0x4170

    .line 711
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->bonuses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lng/vace/android/highwayracing/game/gui/Bonus;

    .line 712
    .local v0, bonus:Lng/vace/android/highwayracing/game/gui/Bonus;
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->bonusRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Bonus;->getX()F

    move-result v3

    sub-float/2addr v3, v7

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Bonus;->getY()F

    move-result v4

    sub-float/2addr v4, v7

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Bonus;->getX()F

    move-result v5

    add-float/2addr v5, v7

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Bonus;->getY()F

    move-result v6

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 721
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->bonusRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->carRect:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->bonusesToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-direct {p0, v0}, Lng/vace/android/highwayracing/game/GameView;->resolveBonusEffect(Lng/vace/android/highwayracing/game/gui/Bonus;)V

    goto :goto_0

    .line 727
    .end local v0           #bonus:Lng/vace/android/highwayracing/game/gui/Bonus;
    :cond_1
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->bonusesToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 728
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->bonuses:Ljava/util/ArrayList;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->bonusesToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 729
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->bonusesToBeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 731
    :cond_2
    return-void
.end method

.method private resolveCarAI(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "c"

    .prologue
    const/high16 v13, 0x42a0

    const/high16 v12, 0x41c8

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/high16 v9, 0x4248

    .line 635
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_d

    .line 636
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lng/vace/android/highwayracing/game/gui/Car;

    .line 638
    .local v2, otherCar:Lng/vace/android/highwayracing/game/gui/Car;
    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v4

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getMaxSpeed()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 639
    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v4

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v5

    const/high16 v6, 0x3e80

    sub-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Lng/vace/android/highwayracing/game/gui/Car;->setSpeed(FF)V

    .line 641
    :cond_0
    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->isIntersected()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->isDead()Z

    move-result v4

    if-nez v4, :cond_c

    .line 642
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v5

    sub-float/2addr v5, v12

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v6

    sub-float/2addr v6, v13

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v7

    add-float/2addr v7, v12

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v8

    add-float/2addr v8, v13

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 647
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->visibleRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->visibleRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 648
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_1
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 649
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lng/vace/android/highwayracing/game/gui/Car;

    .line 651
    .local v3, otherCar2:Lng/vace/android/highwayracing/game/gui/Car;
    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->isIntersected()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->isDead()Z

    move-result v4

    if-nez v4, :cond_4

    .line 652
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect2:Landroid/graphics/RectF;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v5

    sub-float/2addr v5, v12

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v6

    sub-float/2addr v6, v13

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v7

    add-float/2addr v7, v12

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v8

    add-float/2addr v8, v13

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 657
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect2:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 659
    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v4

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    .line 660
    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v4

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v5

    add-float/2addr v5, v11

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_5

    move v5, v10

    :goto_2
    invoke-virtual {v3, v4, v5}, Lng/vace/android/highwayracing/game/gui/Car;->setSpeed(FF)V

    .line 664
    :goto_3
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->visibleRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect2:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->visibleRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect2:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 665
    :cond_2
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarHitRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v5

    sub-float/2addr v5, v9

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v6

    sub-float/2addr v6, v9

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v7

    add-float/2addr v7, v9

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v8

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 670
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarHitRect2:Landroid/graphics/RectF;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v5

    sub-float/2addr v5, v9

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v6

    sub-float/2addr v6, v9

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v7

    add-float/2addr v7, v9

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v8

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 675
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarHitRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarHitRect2:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 676
    invoke-direct {p0, p1, v2}, Lng/vace/android/highwayracing/game/GameView;->calculateDetailedCarRects(Landroid/graphics/Canvas;Lng/vace/android/highwayracing/game/gui/Car;)V

    .line 677
    invoke-direct {p0, p1, v3}, Lng/vace/android/highwayracing/game/GameView;->calculateDetailedOtherCarRects(Landroid/graphics/Canvas;Lng/vace/android/highwayracing/game/gui/Car;)V

    .line 679
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarBackRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarCenterRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 681
    :cond_3
    invoke-direct {p0, v2, v3}, Lng/vace/android/highwayracing/game/GameView;->resolveAICrash(Lng/vace/android/highwayracing/game/gui/Car;Lng/vace/android/highwayracing/game/gui/Car;)V

    .line 648
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 660
    :cond_5
    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v5

    add-float/2addr v5, v11

    goto :goto_2

    .line 662
    :cond_6
    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedX()F

    move-result v4

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v5

    add-float/2addr v5, v11

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_7

    move v5, v10

    :goto_5
    invoke-virtual {v2, v4, v5}, Lng/vace/android/highwayracing/game/gui/Car;->setSpeed(FF)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getSpeedY()F

    move-result v5

    add-float/2addr v5, v11

    goto :goto_5

    .line 682
    :cond_8
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarFrontRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->carBackRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarBackRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 683
    :cond_9
    invoke-direct {p0, v2, v3}, Lng/vace/android/highwayracing/game/GameView;->resolveAICrash(Lng/vace/android/highwayracing/game/gui/Car;Lng/vace/android/highwayracing/game/gui/Car;)V

    goto :goto_4

    .line 684
    :cond_a
    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarFrontRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->carBackRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarFrontRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->carCenterRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 685
    :cond_b
    invoke-direct {p0, v3, v2}, Lng/vace/android/highwayracing/game/GameView;->resolveAICrash(Lng/vace/android/highwayracing/game/gui/Car;Lng/vace/android/highwayracing/game/gui/Car;)V

    goto :goto_4

    .line 635
    .end local v1           #j:I
    .end local v3           #otherCar2:Lng/vace/android/highwayracing/game/gui/Car;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 695
    .end local v2           #otherCar:Lng/vace/android/highwayracing/game/gui/Car;
    :cond_d
    return-void
.end method

.method private resolvePersonAI()V
    .locals 8

    .prologue
    const/high16 v7, 0x4170

    .line 698
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->persons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lng/vace/android/highwayracing/game/gui/Person;

    .line 699
    .local v1, person:Lng/vace/android/highwayracing/game/gui/Person;
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->personRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Person;->getX()F

    move-result v3

    sub-float/2addr v3, v7

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Person;->getY()F

    move-result v4

    sub-float/2addr v4, v7

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Person;->getX()F

    move-result v5

    add-float/2addr v5, v7

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Person;->getY()F

    move-result v6

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 704
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->visibleRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->personRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->personRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 705
    :cond_1
    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Person;->flee()V

    goto :goto_0

    .line 708
    .end local v1           #person:Lng/vace/android/highwayracing/game/gui/Person;
    :cond_2
    return-void
.end method

.method private resolvePlayerCarCrashes(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "c"

    .prologue
    const/high16 v7, 0x4248

    .line 842
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-direct {p0, v2, p1}, Lng/vace/android/highwayracing/game/GameView;->checkIfCarCrashesWithWorldBorder(Lng/vace/android/highwayracing/game/gui/Car;Landroid/graphics/Canvas;)V

    .line 844
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->otherCars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lng/vace/android/highwayracing/game/gui/Car;

    .line 845
    .local v1, otherCar:Lng/vace/android/highwayracing/game/gui/Car;
    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->isDead()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->isIntersected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 846
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v3

    sub-float/2addr v3, v7

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v4

    sub-float/2addr v4, v7

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v5

    add-float/2addr v5, v7

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v6

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 854
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->carRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarRect:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-direct {p0, p1, v2}, Lng/vace/android/highwayracing/game/GameView;->calculateDetailedCarRects(Landroid/graphics/Canvas;Lng/vace/android/highwayracing/game/gui/Car;)V

    .line 856
    invoke-direct {p0, p1, v1}, Lng/vace/android/highwayracing/game/GameView;->calculateDetailedOtherCarRects(Landroid/graphics/Canvas;Lng/vace/android/highwayracing/game/gui/Car;)V

    .line 858
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarBackRect:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarCenterRect:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 859
    :cond_1
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-direct {p0, v2, v1}, Lng/vace/android/highwayracing/game/GameView;->crashWin(Lng/vace/android/highwayracing/game/gui/Car;Lng/vace/android/highwayracing/game/gui/Car;)V

    goto :goto_0

    .line 860
    :cond_2
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarFrontRect:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->carBackRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarBackRect:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 861
    :cond_3
    invoke-direct {p0, v1}, Lng/vace/android/highwayracing/game/GameView;->crashDraw(Lng/vace/android/highwayracing/game/gui/Car;)V

    goto :goto_0

    .line 862
    :cond_4
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarFrontRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->carBackRect:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->otherCarFrontRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->carCenterRect:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    :cond_5
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-direct {p0, v2, v1}, Lng/vace/android/highwayracing/game/GameView;->crashLoose(Lng/vace/android/highwayracing/game/gui/Car;Lng/vace/android/highwayracing/game/gui/Car;)V

    goto/16 :goto_0

    .line 868
    .end local v1           #otherCar:Lng/vace/android/highwayracing/game/gui/Car;
    :cond_6
    return-void
.end method

.method private resolveSplats(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "c"

    .prologue
    const/high16 v5, 0x4248

    const/high16 v9, 0x4170

    .line 808
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v1

    sub-float/2addr v1, v5

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v2

    sub-float/2addr v2, v5

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Car;->getX()F

    move-result v3

    add-float/2addr v3, v5

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/game/gui/Car;->getY()F

    move-result v4

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 813
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->persons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lng/vace/android/highwayracing/game/gui/Person;

    .line 814
    .local v6, anim:Lng/vace/android/highwayracing/game/gui/Person;
    invoke-virtual {v6}, Lng/vace/android/highwayracing/game/gui/Person;->isDead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->personRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Lng/vace/android/highwayracing/game/gui/Person;->getX()F

    move-result v1

    sub-float/2addr v1, v9

    invoke-virtual {v6}, Lng/vace/android/highwayracing/game/gui/Person;->getY()F

    move-result v2

    sub-float/2addr v2, v9

    invoke-virtual {v6}, Lng/vace/android/highwayracing/game/gui/Person;->getX()F

    move-result v3

    add-float/2addr v3, v9

    invoke-virtual {v6}, Lng/vace/android/highwayracing/game/gui/Person;->getY()F

    move-result v4

    add-float/2addr v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 825
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->personRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-direct {p0, p1, v0}, Lng/vace/android/highwayracing/game/GameView;->calculateDetailedCarRects(Landroid/graphics/Canvas;Lng/vace/android/highwayracing/game/gui/Car;)V

    .line 828
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carFrontRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->personRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carBackRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->personRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->carCenterRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->personRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    :cond_1
    invoke-virtual {v6}, Lng/vace/android/highwayracing/game/gui/Person;->die()V

    .line 830
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->effectFactory:Lng/vace/android/highwayracing/util/EffectFactory;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/util/EffectFactory;->getSplatBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Lng/vace/android/highwayracing/game/gui/Person;->setImage(Landroid/graphics/Bitmap;)V

    .line 831
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    add-int/lit8 v0, v0, 0x32

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    .line 832
    iget-object v8, p0, Lng/vace/android/highwayracing/game/GameView;->scores:Ljava/util/ArrayList;

    new-instance v0, Lng/vace/android/highwayracing/game/gui/Score;

    invoke-virtual {v6}, Lng/vace/android/highwayracing/game/gui/Person;->getX()F

    move-result v1

    invoke-virtual {v6}, Lng/vace/android/highwayracing/game/gui/Person;->getY()F

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, -0x4000

    const/16 v5, 0x32

    invoke-direct/range {v0 .. v5}, Lng/vace/android/highwayracing/game/gui/Score;-><init>(FFFFI)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->SPLAT:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->playSound(Lng/vace/android/highwayracing/game/GameEnums$SoundType;)V

    .line 834
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/HighwayPatrol;->vibrate()V

    goto/16 :goto_0

    .line 839
    .end local v6           #anim:Lng/vace/android/highwayracing/game/gui/Person;
    :cond_2
    return-void
.end method

.method private resolveTimers()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide v5, 0x40c3880000000000L

    const/4 v4, 0x0

    .line 589
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->showingNextLevel:Z

    if-eqz v0, :cond_0

    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lng/vace/android/highwayracing/game/GameView;->nextLevelStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 591
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->postNextLevelEnd()V

    .line 593
    :cond_0
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->massBonus:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lng/vace/android/highwayracing/game/GameView;->massBonusStartTime:D

    sub-double/2addr v0, v2

    cmpl-double v0, v0, v5

    if-ltz v0, :cond_1

    .line 595
    iput v4, p0, Lng/vace/android/highwayracing/game/GameView;->massBonus:F

    .line 596
    const/4 v0, 0x3

    invoke-direct {p0, v0, v7}, Lng/vace/android/highwayracing/game/GameView;->postBonus(IZ)V

    .line 599
    :cond_1
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonus:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonusStartTime:D

    sub-double/2addr v0, v2

    cmpl-double v0, v0, v5

    if-ltz v0, :cond_2

    .line 601
    iput v4, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonus:F

    .line 602
    const/4 v0, 0x4

    invoke-direct {p0, v0, v7}, Lng/vace/android/highwayracing/game/GameView;->postBonus(IZ)V

    .line 604
    :cond_2
    return-void
.end method

.method private setCarRandomSpeed(Lng/vace/android/highwayracing/game/gui/Car;)V
    .locals 6
    .parameter "otherCar"

    .prologue
    const/high16 v5, 0x4000

    .line 1006
    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getMaxSpeed()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v3, v4

    .line 1007
    .local v1, speedX:F
    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getMaxSpeed()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v3, v4

    .line 1009
    .local v2, speedY:F
    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v1

    div-float v4, v1, v5

    sub-float v1, v3, v4

    .line 1010
    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v2

    div-float v4, v2, v5

    sub-float v2, v3, v4

    .line 1012
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    invoke-virtual {p1}, Lng/vace/android/highwayracing/game/gui/Car;->getMaxSpeed()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1013
    const/high16 v3, 0x4040

    invoke-static {v3, v1, v2}, Lng/vace/android/highwayracing/util/CarFactory;->findIntersectionPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 1015
    .local v0, intersectionPoint:Landroid/graphics/PointF;
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v4}, Lng/vace/android/highwayracing/game/gui/Car;->setSpeed(FF)V

    .line 1019
    .end local v0           #intersectionPoint:Landroid/graphics/PointF;
    :goto_0
    return-void

    .line 1017
    :cond_0
    invoke-virtual {p1, v1, v2}, Lng/vace/android/highwayracing/game/gui/Car;->setSpeed(FF)V

    goto :goto_0
.end method

.method private setupColors()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 1306
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    const-string v1, "#FFFF00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1307
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->transparentCanvas:Landroid/graphics/Paint;

    invoke-static {v3, v3, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1308
    return-void
.end method

.method private setupTextProperties()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x4040

    .line 1311
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1312
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1313
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->canvasText:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1314
    return-void
.end method


# virtual methods
.method protected doDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 501
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->initialized:Z

    if-nez v0, :cond_0

    .line 502
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->initialize()V

    .line 550
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldX()F

    move-result v1

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldY()F

    move-result v2

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Background;->getMaxWorldX()F

    move-result v3

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldX()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/game/gui/Background;->getMaxWorldY()F

    move-result v4

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v5}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 509
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->visibleRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldX()F

    move-result v1

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldY()F

    move-result v2

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldX()F

    move-result v3

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->background:Lng/vace/android/highwayracing/game/gui/Background;

    invoke-virtual {v4}, Lng/vace/android/highwayracing/game/gui/Background;->getWorldY()F

    move-result v4

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->worldRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 518
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 520
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->RUNNING:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    if-ne v0, v1, :cond_2

    .line 521
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/gui/Car;->isDead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 522
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->resolvePersonAI()V

    .line 523
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->resolveCarAI(Landroid/graphics/Canvas;)V

    .line 524
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->resolvePlayerCarCrashes(Landroid/graphics/Canvas;)V

    .line 525
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->resolveSplats(Landroid/graphics/Canvas;)V

    .line 526
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->resolveBonusPickups(Landroid/graphics/Canvas;)V

    .line 529
    :cond_1
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawPersons(Landroid/graphics/Canvas;)V

    .line 530
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawBonusImages(Landroid/graphics/Canvas;)V

    .line 531
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawCar(Landroid/graphics/Canvas;)V

    .line 532
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawOtherCars(Landroid/graphics/Canvas;)V

    .line 533
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawWorldBorder(Landroid/graphics/Canvas;)V

    .line 535
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawTimeLeft(Landroid/graphics/Canvas;)V

    .line 536
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawHealthLeft(Landroid/graphics/Canvas;)V

    .line 537
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawScores(Landroid/graphics/Canvas;)V

    .line 539
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->removeHitCars()V

    .line 540
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->removeHitPeople()V

    .line 542
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->resolveTimers()V

    .line 544
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->nextLevelIfConditionsAreMet()V

    .line 545
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->endGameIfConditionsAreMet()V

    .line 548
    :cond_2
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/game/GameView;->drawCanvas(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public initSplash()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    .line 1231
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    int-to-float v0, v0

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lng/vace/android/highwayracing/game/GameView;->createBackground(FF)V

    .line 1232
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SHOW_SPLASH:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    .line 1233
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    .line 1234
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    .line 1235
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldWidth"
    .parameter "oldHeight"

    .prologue
    .line 375
    iput p1, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    .line 376
    iput p2, p0, Lng/vace/android/highwayracing/game/GameView;->height:I

    .line 377
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->width:I

    if-eq p3, v0, :cond_0

    .line 378
    iget v0, p0, Lng/vace/android/highwayracing/game/GameView;->worldWidth:F

    iget v1, p0, Lng/vace/android/highwayracing/game/GameView;->worldHeight:F

    invoke-direct {p0, v0, v1}, Lng/vace/android/highwayracing/game/GameView;->createBackground(FF)V

    .line 380
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lng/vace/android/highwayracing/game/gui/Car;->setPosition(FF)V

    .line 383
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "motionEvent"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 418
    const-wide/16 v0, 0x19

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->RUNNING:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    if-ne v0, v1, :cond_7

    .line 423
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->pressing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->dragging:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 424
    :cond_0
    iput-boolean v2, p0, Lng/vace/android/highwayracing/game/GameView;->pressing:Z

    .line 425
    iput-boolean v3, p0, Lng/vace/android/highwayracing/game/GameView;->dragging:Z

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->startX:F

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->startY:F

    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->endX:F

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->endY:F

    move v0, v2

    .line 478
    :goto_1
    return v0

    .line 433
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 434
    iput-boolean v3, p0, Lng/vace/android/highwayracing/game/GameView;->pressing:Z

    .line 435
    iput-boolean v2, p0, Lng/vace/android/highwayracing/game/GameView;->dragging:Z

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->endX:F

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->endY:F

    .line 439
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->dragCar()V

    move v0, v2

    .line 441
    goto :goto_1

    .line 444
    :cond_2
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/GameView;->dragging:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 445
    :cond_4
    iput-boolean v3, p0, Lng/vace/android/highwayracing/game/GameView;->dragging:Z

    .line 446
    iput-boolean v3, p0, Lng/vace/android/highwayracing/game/GameView;->pressing:Z

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->endX:F

    .line 448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->endY:F

    move v0, v2

    .line 450
    goto :goto_1

    .line 453
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 454
    :cond_6
    iput-boolean v3, p0, Lng/vace/android/highwayracing/game/GameView;->dragging:Z

    .line 455
    iput-boolean v3, p0, Lng/vace/android/highwayracing/game/GameView;->pressing:Z

    move v0, v2

    .line 457
    goto :goto_1

    .line 459
    :cond_7
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SHOW_SPLASH:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    if-ne v0, v1, :cond_9

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 461
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->startGame()V

    .line 478
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Lng/vace/android/highwayracing/game/GameSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 463
    :cond_9
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->GAME_OVER:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    if-ne v0, v1, :cond_a

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 465
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SUBMIT_SCORE:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    goto :goto_2

    .line 467
    :cond_a
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SUBMIT_SCORE:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    if-ne v0, v1, :cond_b

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 469
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->cleanupAndExit()V

    goto :goto_2

    .line 471
    :cond_b
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->PAUSED:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    if-ne v0, v1, :cond_8

    .line 472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 473
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->previousMode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    .line 474
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->resumeGame()V

    goto :goto_2

    .line 419
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "motionEvent"

    .prologue
    const/high16 v4, 0x40a0

    .line 388
    const-wide/16 v2, 0x19

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v3, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->RUNNING:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    if-ne v2, v3, :cond_1

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 394
    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    .line 395
    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    .line 397
    iget v2, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    mul-float/2addr v2, v3

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    .line 399
    .local v1, totalSpeed:F
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/HighwayPatrol;->getCarLevel()I

    move-result v2

    invoke-static {v2}, Lng/vace/android/highwayracing/util/CarFactory;->getSpeed(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonus:F

    add-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 400
    iget-object v2, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v2}, Lng/vace/android/highwayracing/HighwayPatrol;->getCarLevel()I

    move-result v2

    invoke-static {v2}, Lng/vace/android/highwayracing/util/CarFactory;->getSpeed(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonus:F

    add-float/2addr v2, v3

    iget v3, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    iget v4, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    invoke-static {v2, v3, v4}, Lng/vace/android/highwayracing/util/CarFactory;->findIntersectionPoint(FFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 404
    .local v0, intersectionPoint:Landroid/graphics/PointF;
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iput v2, p0, Lng/vace/android/highwayracing/game/GameView;->speedX:F

    .line 405
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iput v2, p0, Lng/vace/android/highwayracing/game/GameView;->speedY:F

    .line 408
    .end local v0           #intersectionPoint:Landroid/graphics/PointF;
    :cond_0
    const/4 v2, 0x1

    .line 412
    .end local v1           #totalSpeed:F
    :goto_1
    return v2

    :cond_1
    invoke-super {p0, p1}, Lng/vace/android/highwayracing/game/GameSurfaceView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 389
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public pauseGame()V
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->PAUSED:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->previousMode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    .line 1220
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->RUNNING:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    if-ne v0, v1, :cond_1

    .line 1221
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->PAUSED:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->mode:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    .line 1223
    :cond_1
    return-void
.end method

.method public resumeGame()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1226
    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/game/GameView;->setFocusable(Z)V

    .line 1227
    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/game/GameView;->setFocusableInTouchMode(Z)V

    .line 1228
    return-void
.end method

.method public setApplication(Lng/vace/android/highwayracing/HighwayPatrol;)V
    .locals 0
    .parameter "application"

    .prologue
    .line 1238
    iput-object p1, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    .line 1239
    return-void
.end method

.method public setDifficulty(Lng/vace/android/highwayracing/game/GameEnums$Difficulty;)V
    .locals 2
    .parameter "diff"

    .prologue
    .line 1206
    iput-object p1, p0, Lng/vace/android/highwayracing/game/GameView;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    .line 1208
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->EASY:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    if-ne v0, v1, :cond_1

    .line 1209
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/HighwayPatrol;->getCarLevel()I

    move-result v0

    invoke-static {v0}, Lng/vace/android/highwayracing/util/CarFactory;->getHealth(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->health:F

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->MEDIUM:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    if-ne v0, v1, :cond_2

    .line 1211
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/HighwayPatrol;->getCarLevel()I

    move-result v0

    invoke-static {v0}, Lng/vace/android/highwayracing/util/CarFactory;->getHealth(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->health:F

    goto :goto_0

    .line 1212
    :cond_2
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->HARD:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    if-ne v0, v1, :cond_0

    .line 1213
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/HighwayPatrol;->getCarLevel()I

    move-result v0

    invoke-static {v0}, Lng/vace/android/highwayracing/util/CarFactory;->getHealth(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lng/vace/android/highwayracing/game/GameView;->health:F

    goto :goto_0
.end method

.method public startGame()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 486
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->speedBonus:F

    .line 487
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->massBonus:F

    .line 488
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->scores:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 489
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/HighwayPatrol;->startMusic()V

    .line 490
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/game/GameView;->setDifficulty(Lng/vace/android/highwayracing/game/GameEnums$Difficulty;)V

    .line 491
    iput v1, p0, Lng/vace/android/highwayracing/game/GameView;->score:I

    .line 492
    iput v1, p0, Lng/vace/android/highwayracing/game/GameView;->level:I

    .line 493
    iput v3, p0, Lng/vace/android/highwayracing/game/GameView;->damage:F

    .line 494
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/GameView;->highscore:Z

    .line 495
    new-instance v0, Lng/vace/android/highwayracing/game/gui/Car;

    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/GameView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, p0, Lng/vace/android/highwayracing/game/GameView;->carFactory:Lng/vace/android/highwayracing/util/CarFactory;

    iget-object v5, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v5}, Lng/vace/android/highwayracing/HighwayPatrol;->getCarLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Lng/vace/android/highwayracing/util/CarFactory;->getCarImage(I)Landroid/graphics/Bitmap;

    move-result-object v6

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lng/vace/android/highwayracing/game/gui/Car;-><init>(FFFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    .line 496
    iget-object v0, p0, Lng/vace/android/highwayracing/game/GameView;->car:Lng/vace/android/highwayracing/game/gui/Car;

    iget-object v1, p0, Lng/vace/android/highwayracing/game/GameView;->application:Lng/vace/android/highwayracing/HighwayPatrol;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/HighwayPatrol;->getCarLevel()I

    move-result v1

    invoke-static {v1}, Lng/vace/android/highwayracing/util/CarFactory;->getHealth(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/game/gui/Car;->setMaxHealth(I)V

    .line 497
    invoke-direct {p0}, Lng/vace/android/highwayracing/game/GameView;->nextLevel()V

    .line 498
    return-void
.end method
