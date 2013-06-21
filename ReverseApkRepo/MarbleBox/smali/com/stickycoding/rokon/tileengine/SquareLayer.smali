.class public Lcom/stickycoding/rokon/tileengine/SquareLayer;
.super Lcom/stickycoding/rokon/tileengine/RectangularLayer;
.source "SquareLayer.java"


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/Scene;IF)V
    .locals 0
    .parameter "parentScene"
    .parameter "maximumDrawableObjects"
    .parameter "size"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/stickycoding/rokon/tileengine/RectangularLayer;-><init>(Lcom/stickycoding/rokon/Scene;IFF)V

    .line 15
    return-void
.end method
