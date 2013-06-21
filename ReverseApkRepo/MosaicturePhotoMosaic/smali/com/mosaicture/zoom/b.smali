.class public final Lcom/mosaicture/zoom/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(FFF)F
    .locals 3

    const/high16 v2, 0x3f80

    div-float v0, p0, p2

    sub-float/2addr v0, v2

    mul-float v1, v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    mul-float/2addr v0, p1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    return v0
.end method
