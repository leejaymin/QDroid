.class public Lng/vace/android/highwayracing/game/gui/StaticImage;
.super Lng/vace/android/highwayracing/game/gui/GameElement;
.source "StaticImage.java"


# instance fields
.field private rotation:F


# direct methods
.method public constructor <init>(FFFLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "rotation"
    .parameter "image"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p4}, Lng/vace/android/highwayracing/game/gui/GameElement;-><init>(FFLandroid/graphics/Bitmap;)V

    .line 14
    iput p3, p0, Lng/vace/android/highwayracing/game/gui/StaticImage;->rotation:F

    .line 15
    return-void
.end method


# virtual methods
.method public getRotation()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/StaticImage;->rotation:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/StaticImage;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/StaticImage;->y:F

    return v0
.end method

.method public updatePosition(FF)V
    .locals 2
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 30
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/StaticImage;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/StaticImage;->x:F

    .line 31
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/StaticImage;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/StaticImage;->y:F

    .line 32
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/StaticImage;->rotation:F

    const/high16 v1, 0x40a0

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/StaticImage;->rotation:F

    .line 33
    return-void
.end method
