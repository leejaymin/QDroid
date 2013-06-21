.class public Lcom/rookiestudio/Transitions/EasingBack;
.super Ljava/lang/Object;
.source "EasingBack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static easeIn(DDDD)D
    .locals 10
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 5
    const-wide v8, 0x3ffb39abf3387161L

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/rookiestudio/Transitions/EasingBack;->easeIn(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static easeIn(DDDDD)D
    .locals 4
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "s"

    .prologue
    .line 8
    div-double/2addr p0, p6

    mul-double v0, p4, p0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v2, p8

    mul-double/2addr v2, p0

    sub-double/2addr v2, p8

    mul-double/2addr v0, v2

    add-double/2addr v0, p2

    return-wide v0
.end method

.method public static easeInOut(DDDD)D
    .locals 10
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 17
    const-wide v8, 0x3ffb39abf3387161L

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/rookiestudio/Transitions/EasingBack;->easeInOut(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static easeInOut(DDDDD)D
    .locals 6
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "s"

    .prologue
    .line 20
    const-wide/high16 v0, 0x4000

    div-double v0, p6, v0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x4000

    div-double v0, p4, v0

    mul-double v2, p0, p0

    const-wide v4, 0x3ff8666666666666L

    mul-double/2addr p8, v4

    const-wide/high16 v4, 0x3ff0

    add-double/2addr v4, p8

    mul-double/2addr v4, p0

    sub-double/2addr v4, p8

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, p2

    .line 21
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4000

    div-double v0, p4, v0

    const-wide/high16 v2, 0x4000

    sub-double/2addr p0, v2

    mul-double v2, p0, p0

    const-wide v4, 0x3ff8666666666666L

    mul-double/2addr p8, v4

    const-wide/high16 v4, 0x3ff0

    add-double/2addr v4, p8

    mul-double/2addr v4, p0

    add-double/2addr v4, p8

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, p2

    goto :goto_0
.end method

.method public static easeOut(DDDD)D
    .locals 10
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 11
    const-wide v8, 0x3ffb39abf3387161L

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/rookiestudio/Transitions/EasingBack;->easeOut(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static easeOut(DDDDD)D
    .locals 6
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "s"

    .prologue
    const-wide/high16 v4, 0x3ff0

    .line 14
    div-double v0, p0, p6

    sub-double p0, v0, v4

    mul-double v0, p0, p0

    add-double v2, p8, v4

    mul-double/2addr v2, p0

    add-double/2addr v2, p8

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    mul-double/2addr v0, p4

    add-double/2addr v0, p2

    return-wide v0
.end method
