.class public Lcom/rookiestudio/Transitions/EasingElastic;
.super Ljava/lang/Object;
.source "EasingElastic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static easeIn(DDDD)D
    .locals 12
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 5
    const-wide v0, 0x3fd3333333333333L

    mul-double v10, p6, v0

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    invoke-static/range {v0 .. v11}, Lcom/rookiestudio/Transitions/EasingElastic;->easeIn(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static easeIn(DDDDDD)D
    .locals 8
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "a"
    .parameter "p"

    .prologue
    .line 8
    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_0

    .line 16
    .end local p2
    :goto_0
    return-wide p2

    .line 9
    .restart local p2
    :cond_0
    div-double/2addr p0, p6

    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_1

    add-double/2addr p2, p4

    goto :goto_0

    .line 10
    :cond_1
    const-wide/16 v0, 0x0

    .line 11
    .local v0, s:D
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, p8, v2

    if-gez v2, :cond_2

    .line 12
    move-wide/from16 p8, p4

    const-wide/high16 v2, 0x4010

    div-double v0, p10, v2

    .line 16
    :goto_1
    const-wide/high16 v2, 0x4000

    const-wide/high16 v4, 0x4024

    const-wide/high16 v6, 0x3ff0

    sub-double/2addr p0, v6

    mul-double/2addr v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p8

    mul-double v4, p0, p6

    sub-double/2addr v4, v0

    const-wide v6, 0x401921fb54442d18L

    mul-double/2addr v4, v6

    div-double v4, v4, p10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    neg-double v2, v2

    add-double/2addr p2, v2

    goto :goto_0

    .line 14
    :cond_2
    const-wide v2, 0x401921fb54442d18L

    div-double v2, p10, v2

    div-double v4, p4, p8

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    goto :goto_1
.end method

.method public static easeInOut(DDDD)D
    .locals 12
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 33
    const-wide v0, 0x3fdcccccccccccccL

    mul-double v10, p6, v0

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    invoke-static/range {v0 .. v11}, Lcom/rookiestudio/Transitions/EasingElastic;->easeOut(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static easeInOut(DDDDDD)D
    .locals 10
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "a"
    .parameter "p"

    .prologue
    .line 36
    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_0

    .line 45
    .end local p2
    :goto_0
    return-wide p2

    .line 37
    .restart local p2
    :cond_0
    const-wide/high16 v2, 0x4000

    div-double v2, p6, v2

    div-double/2addr p0, v2

    const-wide/high16 v2, 0x4000

    cmpl-double v2, p0, v2

    if-nez v2, :cond_1

    add-double/2addr p2, p4

    goto :goto_0

    .line 38
    :cond_1
    const-wide/16 v0, 0x0

    .line 39
    .local v0, s:D
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, p8, v2

    if-gez v2, :cond_2

    .line 40
    move-wide/from16 p8, p4

    const-wide/high16 v2, 0x4010

    div-double v0, p10, v2

    .line 44
    :goto_1
    const-wide/high16 v2, 0x3ff0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_3

    const-wide/high16 v2, -0x4020

    const-wide/high16 v4, 0x4000

    const-wide/high16 v6, 0x4024

    const-wide/high16 v8, 0x3ff0

    sub-double/2addr p0, v8

    mul-double/2addr v6, p0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, p8

    mul-double v6, p0, p6

    sub-double/2addr v6, v0

    const-wide v8, 0x401921fb54442d18L

    mul-double/2addr v6, v8

    div-double v6, v6, p10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr p2, v2

    goto :goto_0

    .line 42
    :cond_2
    const-wide v2, 0x401921fb54442d18L

    div-double v2, p10, v2

    div-double v4, p4, p8

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    goto :goto_1

    .line 45
    :cond_3
    const-wide/high16 v2, 0x4000

    const-wide/high16 v4, -0x3fdc

    const-wide/high16 v6, 0x3ff0

    sub-double/2addr p0, v6

    mul-double/2addr v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p8

    mul-double v4, p0, p6

    sub-double/2addr v4, v0

    const-wide v6, 0x401921fb54442d18L

    mul-double/2addr v4, v6

    div-double v4, v4, p10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    add-double/2addr v2, p4

    add-double/2addr p2, v2

    goto :goto_0
.end method

.method public static easeOut(DDDD)D
    .locals 12
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 19
    const-wide v0, 0x3fd3333333333333L

    mul-double v10, p6, v0

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    invoke-static/range {v0 .. v11}, Lcom/rookiestudio/Transitions/EasingElastic;->easeOut(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static easeOut(DDDDDD)D
    .locals 8
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "a"
    .parameter "p"

    .prologue
    .line 22
    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_0

    .line 30
    .end local p2
    :goto_0
    return-wide p2

    .line 23
    .restart local p2
    :cond_0
    div-double/2addr p0, p6

    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_1

    add-double/2addr p2, p4

    goto :goto_0

    .line 24
    :cond_1
    const-wide/16 v0, 0x0

    .line 25
    .local v0, s:D
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, p8, v2

    if-gez v2, :cond_2

    .line 26
    move-wide/from16 p8, p4

    const-wide/high16 v2, 0x4010

    div-double v0, p10, v2

    .line 30
    :goto_1
    const-wide/high16 v2, 0x4000

    const-wide/high16 v4, -0x3fdc

    mul-double/2addr v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p8

    mul-double v4, p0, p6

    sub-double/2addr v4, v0

    const-wide v6, 0x401921fb54442d18L

    mul-double/2addr v4, v6

    div-double v4, v4, p10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, p4

    add-double/2addr p2, v2

    goto :goto_0

    .line 28
    :cond_2
    const-wide v2, 0x401921fb54442d18L

    div-double v2, p10, v2

    div-double v4, p4, p8

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    goto :goto_1
.end method
