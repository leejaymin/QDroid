.class public Lcom/garageapps/android/spacetracks/game/Game;
.super Ljava/lang/Object;
.source "Game.java"


# instance fields
.field private PLAYER_MIN_SPEED:I

.field private PLAYER_SPEED_INC:I

.field private PLAYER_SPEED_INERTIA:I

.field public directionX:I

.field public directionXspeed:I

.field public directionY:F

.field public directionZ:F

.field public directionZangle:I

.field public directionZspeed:I

.field public jumpAngle:F

.field public jumpTurn:I

.field public jumpY:F

.field public mapCrashX:I

.field public mapCrashZ:I

.field public mapX:I

.field public mapZ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, -0x32

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_MIN_SPEED:I

    .line 14
    const/4 v0, 0x6

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INC:I

    .line 15
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INC:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INERTIA:I

    .line 34
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/game/Game;->initVars()V

    .line 35
    return-void
.end method


# virtual methods
.method public getMapCrashX(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 147
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapCrashX:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getMapCrashZ()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapCrashZ:I

    return v0
.end method

.method public getMapX(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 142
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapX:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getMapZ()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapZ:I

    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionX:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    neg-float v0, v0

    return v0
.end method

.method public getZangle()F
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZangle:I

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    return v0
.end method

.method public getZspeed()F
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method public initVars()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionX:I

    .line 40
    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    .line 41
    iput v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    .line 42
    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    .line 43
    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZangle:I

    .line 44
    iput v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionY:F

    .line 45
    iput v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->jumpY:F

    .line 46
    iput v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->jumpAngle:F

    .line 47
    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->jumpTurn:I

    .line 48
    return-void
.end method

.method public moveAngle(F)V
    .locals 3
    .parameter "angle"

    .prologue
    .line 67
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    neg-float v1, p1

    const/high16 v2, 0x40c0

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    .line 68
    return-void
.end method

.method public moveBackward()V
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INC:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    .line 162
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_MIN_SPEED:I

    if-ge v0, v1, :cond_0

    .line 164
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_MIN_SPEED:I

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    .line 166
    :cond_0
    return-void
.end method

.method public moveForward(I)V
    .locals 2
    .parameter "maxZspeed"

    .prologue
    .line 152
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INC:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    .line 153
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    if-le v0, p1, :cond_0

    .line 155
    iput p1, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    .line 157
    :cond_0
    return-void
.end method

.method public moveLeft()V
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INC:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    .line 58
    return-void
.end method

.method public moveRight()V
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INC:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    .line 63
    return-void
.end method

.method public moveSensorX(F)V
    .locals 2
    .parameter "sensor"

    .prologue
    .line 72
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    const/high16 v1, 0x4040

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    .line 73
    return-void
.end method

.method public moveSensorY(FI)V
    .locals 2
    .parameter "sensor"
    .parameter "maxZspeed"

    .prologue
    .line 77
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    const/high16 v1, 0x4040

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    .line 79
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    if-le v0, p2, :cond_0

    .line 81
    iput p2, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    .line 84
    :cond_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_MIN_SPEED:I

    if-ge v0, v1, :cond_1

    .line 86
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_MIN_SPEED:I

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    .line 88
    :cond_1
    return-void
.end method

.method public reverseX()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f00

    .line 113
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    neg-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    .line 114
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionX:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionX:I

    .line 115
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    .line 117
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/game/Game;->getX()F

    move-result v0

    sub-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapX:I

    .line 119
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    if-ltz v0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/game/Game;->getX()F

    move-result v0

    sub-float/2addr v0, v2

    const v1, 0x3dcccccd

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapCrashX:I

    .line 124
    :cond_0
    :goto_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    if-lez v0, :cond_3

    .line 126
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INERTIA:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    .line 133
    :cond_1
    :goto_1
    return-void

    .line 121
    :cond_2
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    if-gez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/game/Game;->getX()F

    move-result v0

    sub-float/2addr v0, v2

    const v1, 0x3e4ccccd

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapCrashX:I

    goto :goto_0

    .line 129
    :cond_3
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    if-gez v0, :cond_1

    .line 131
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INERTIA:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    goto :goto_1
.end method

.method public reverseZ()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    .line 187
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    neg-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    .line 188
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZangle:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    iget v2, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INC:I

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZangle:I

    .line 189
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    add-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapZ:I

    .line 191
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    if-ltz v0, :cond_1

    .line 192
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    add-float/2addr v0, v4

    add-float/2addr v0, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapCrashZ:I

    .line 196
    :cond_0
    :goto_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    .line 198
    return-void

    .line 193
    :cond_1
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    if-gez v0, :cond_0

    .line 194
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    add-float/2addr v0, v4

    add-float/2addr v0, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapCrashZ:I

    goto :goto_0
.end method

.method public stopZ()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    .line 171
    return-void
.end method

.method public updateScore(I)I
    .locals 2
    .parameter "score"

    .prologue
    .line 52
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    div-int/lit8 v0, v0, 0x1e

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p1, v0

    return p1
.end method

.method public updateX()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f00

    .line 92
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionX:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionX:I

    .line 93
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/game/Game;->getX()F

    move-result v0

    sub-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapX:I

    .line 95
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    if-ltz v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/game/Game;->getX()F

    move-result v0

    sub-float/2addr v0, v2

    const v1, 0x3dcccccd

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapCrashX:I

    .line 100
    :cond_0
    :goto_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    if-lez v0, :cond_3

    .line 102
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INERTIA:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    .line 109
    :cond_1
    :goto_1
    return-void

    .line 97
    :cond_2
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    if-gez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/game/Game;->getX()F

    move-result v0

    sub-float/2addr v0, v2

    const v1, 0x3e4ccccd

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapCrashX:I

    goto :goto_0

    .line 105
    :cond_3
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    if-gez v0, :cond_1

    .line 107
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INERTIA:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionXspeed:I

    goto :goto_1
.end method

.method public updateZ()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    .line 175
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    int-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    .line 176
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZangle:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    iget v2, p0, Lcom/garageapps/android/spacetracks/game/Game;->PLAYER_SPEED_INC:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZangle:I

    .line 177
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    add-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapZ:I

    .line 179
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    if-ltz v0, :cond_1

    .line 180
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    add-float/2addr v0, v4

    add-float/2addr v0, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapCrashZ:I

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZspeed:I

    if-gez v0, :cond_0

    .line 182
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->directionZ:F

    add-float/2addr v0, v4

    add-float/2addr v0, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/Game;->mapCrashZ:I

    goto :goto_0
.end method
