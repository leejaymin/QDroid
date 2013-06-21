.class public final Lcom/google/devtools/simple/runtime/helpers/ExprHelpers;
.super Ljava/lang/Object;
.source "ExprHelpers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static idiv(DD)D
    .locals 2
    .parameter "leftOp"
    .parameter "rightOp"

    .prologue
    .line 35
    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static idiv(FF)F
    .locals 1
    .parameter "leftOp"
    .parameter "rightOp"

    .prologue
    .line 24
    div-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static like(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "string"
    .parameter "pattern"

    .prologue
    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static pow(FF)F
    .locals 4
    .parameter "leftOp"
    .parameter "rightOp"

    .prologue
    .line 70
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static pow(II)I
    .locals 4
    .parameter "leftOp"
    .parameter "rightOp"

    .prologue
    .line 59
    int-to-double v0, p0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
