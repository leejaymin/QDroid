.class public Lorg/tf/util/MathHelpers;
.super Ljava/lang/Object;
.source "MathHelpers.java"


# static fields
.field public static final DEGREES_TO_RADIANS:F = 0.017453292f

.field public static final PI:F = 3.1415927f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static float2fixed(F)I
    .locals 1
    .parameter "value"

    .prologue
    .line 44
    const/high16 v0, 0x4780

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static round(F)I
    .locals 2
    .parameter "value"

    .prologue
    const/high16 v1, 0x3f00

    .line 36
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 37
    add-float v0, p0, v1

    float-to-int v0, v0

    .line 39
    :goto_0
    return v0

    :cond_0
    sub-float v0, p0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static roundUpPower2(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 26
    add-int/lit8 p0, p0, -0x1

    .line 27
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 28
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 29
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 30
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 31
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 32
    add-int/lit8 v0, p0, 0x1

    return v0
.end method
