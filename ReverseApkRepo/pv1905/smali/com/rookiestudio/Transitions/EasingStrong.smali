.class public Lcom/rookiestudio/Transitions/EasingStrong;
.super Ljava/lang/Object;
.source "EasingStrong.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static easeIn(DDDD)D
    .locals 2
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 5
    div-double/2addr p0, p6

    mul-double v0, p4, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static easeInOut(DDDD)D
    .locals 6
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 11
    div-double v0, p6, v4

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    div-double v0, p4, v4

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    add-double/2addr v0, p2

    .line 12
    :goto_0
    return-wide v0

    :cond_0
    div-double v0, p4, v4

    sub-double/2addr p0, v4

    mul-double v2, p0, p0

    mul-double/2addr v2, p0

    mul-double/2addr v2, p0

    mul-double/2addr v2, p0

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, p2

    goto :goto_0
.end method

.method public static easeOut(DDDD)D
    .locals 4
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    const-wide/high16 v2, 0x3ff0

    .line 8
    div-double v0, p0, p6

    sub-double p0, v0, v2

    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    add-double/2addr v0, v2

    mul-double/2addr v0, p4

    add-double/2addr v0, p2

    return-wide v0
.end method
