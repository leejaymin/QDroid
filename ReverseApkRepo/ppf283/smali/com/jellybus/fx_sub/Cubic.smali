.class public Lcom/jellybus/fx_sub/Cubic;
.super Ljava/lang/Object;
.source "Cubic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static easeOut(FFFF)F
    .locals 2
    .parameter "time"
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    const/high16 v1, 0x3f80

    .line 7
    div-float v0, p0, p3

    sub-float p0, v0, v1

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method
