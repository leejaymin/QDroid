.class public Lng/vace/android/highwayracing/game/gui/World;
.super Ljava/lang/Object;
.source "World.java"


# instance fields
.field final maxWorldX:F

.field final maxWorldY:F

.field worldX:F

.field worldY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .parameter "maxWorldX"
    .parameter "maxWorldY"

    .prologue
    const/high16 v1, 0x4000

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lng/vace/android/highwayracing/game/gui/World;->maxWorldX:F

    .line 11
    iput p2, p0, Lng/vace/android/highwayracing/game/gui/World;->maxWorldY:F

    .line 12
    div-float v0, p1, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/World;->worldX:F

    .line 13
    div-float v0, p2, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/World;->worldY:F

    .line 14
    return-void
.end method


# virtual methods
.method public getMaxWorldX()F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/World;->maxWorldX:F

    return v0
.end method

.method public getMaxWorldY()F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/World;->maxWorldY:F

    return v0
.end method

.method public getWorldX()F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/World;->worldX:F

    return v0
.end method

.method public getWorldY()F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/World;->worldY:F

    return v0
.end method

.method public setWorldPos(FF)V
    .locals 2
    .parameter "worldX"
    .parameter "worldY"

    .prologue
    const/4 v1, 0x0

    .line 33
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lng/vace/android/highwayracing/game/gui/World;->maxWorldX:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 34
    iput p1, p0, Lng/vace/android/highwayracing/game/gui/World;->worldX:F

    .line 36
    :cond_0
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lng/vace/android/highwayracing/game/gui/World;->maxWorldY:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 37
    iput p2, p0, Lng/vace/android/highwayracing/game/gui/World;->worldY:F

    .line 38
    :cond_1
    return-void
.end method
