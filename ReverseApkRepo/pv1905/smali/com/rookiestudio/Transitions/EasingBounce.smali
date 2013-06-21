.class public Lcom/rookiestudio/Transitions/EasingBounce;
.super Ljava/lang/Object;
.source "EasingBounce.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static easeIn(DDDD)D
    .locals 8
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 16
    sub-double v0, p6, p0

    const-wide/16 v2, 0x0

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lcom/rookiestudio/Transitions/EasingBounce;->easeOut(DDDD)D

    move-result-wide v0

    sub-double v0, p4, v0

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static easeInOut(DDDD)D
    .locals 8
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 19
    const-wide/high16 v0, 0x4000

    div-double v0, p6, v0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x4000

    mul-double/2addr v0, p0

    const-wide/16 v2, 0x0

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lcom/rookiestudio/Transitions/EasingBounce;->easeIn(DDDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    add-double/2addr v0, p2

    .line 20
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4000

    mul-double/2addr v0, p0

    sub-double/2addr v0, p6

    const-wide/16 v2, 0x0

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lcom/rookiestudio/Transitions/EasingBounce;->easeOut(DDDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

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
    const-wide v2, 0x401e400000000000L

    .line 5
    div-double/2addr p0, p6

    const-wide v0, 0x3fd745d1745d1746L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 6
    mul-double v0, v2, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p4

    add-double/2addr v0, p2

    .line 12
    :goto_0
    return-wide v0

    .line 7
    :cond_0
    const-wide v0, 0x3fe745d1745d1746L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 8
    const-wide v0, 0x3fe1745d1745d174L

    sub-double/2addr p0, v0

    mul-double v0, v2, p0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x3fe8

    add-double/2addr v0, v2

    mul-double/2addr v0, p4

    add-double/2addr v0, p2

    goto :goto_0

    .line 9
    :cond_1
    const-wide v0, 0x3fed1745d1745d17L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    .line 10
    const-wide v0, 0x3fea2e8ba2e8ba2fL

    sub-double/2addr p0, v0

    mul-double v0, v2, p0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x3fee

    add-double/2addr v0, v2

    mul-double/2addr v0, p4

    add-double/2addr v0, p2

    goto :goto_0

    .line 12
    :cond_2
    const-wide v0, 0x3fee8ba2e8ba2e8cL

    sub-double/2addr p0, v0

    mul-double v0, v2, p0

    mul-double/2addr v0, p0

    const-wide v2, 0x3fef800000000000L

    add-double/2addr v0, v2

    mul-double/2addr v0, p4

    add-double/2addr v0, p2

    goto :goto_0
.end method
