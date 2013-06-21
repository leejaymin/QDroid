.class public Ljay/sunclock24/Timeconvert;
.super Ljava/lang/Object;
.source "Timeconvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public convertdeg(F)F
    .locals 2
    .parameter "deg"

    .prologue
    const/high16 v1, 0x42b4

    .line 31
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 32
    sub-float/2addr p1, v1

    .line 34
    :goto_0
    return p1

    .line 33
    :cond_0
    const/high16 v0, 0x4387

    add-float/2addr p1, v0

    goto :goto_0
.end method

.method public convertrad(D)D
    .locals 3
    .parameter "rad"

    .prologue
    const-wide v1, 0x3ff921fb54442d18L

    .line 39
    cmpl-double v0, p1, v1

    if-lez v0, :cond_0

    .line 40
    sub-double/2addr p1, v1

    .line 42
    :goto_0
    return-wide p1

    .line 41
    :cond_0
    const-wide v0, 0x4012d97c7f3321d2L

    add-double/2addr p1, v0

    goto :goto_0
.end method

.method public cp(F)F
    .locals 5
    .parameter "x"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    move v0, p1

    .line 57
    .local v0, y:F
    const/high16 v1, 0x4387

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    move v1, v4

    :goto_0
    const/high16 v2, 0x42b4

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    move v2, v4

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 58
    const/high16 v1, 0x4270

    sub-float/2addr v0, v1

    .line 60
    :goto_2
    return v0

    :cond_0
    move v1, v3

    .line 57
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 59
    :cond_2
    const/high16 v1, 0x41f0

    add-float/2addr v0, v1

    goto :goto_2
.end method

.method public getX(F)F
    .locals 9
    .parameter "hours"

    .prologue
    .line 16
    const/high16 v5, 0x41c0

    div-float v5, p1, v5

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L

    mul-double v2, v5, v7

    .line 17
    .local v2, rad:D
    const-wide/high16 v5, 0x4054

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4064

    add-double v0, v5, v7

    .line 18
    .local v0, X2:D
    double-to-float v4, v0

    .line 19
    .local v4, x:F
    return v4
.end method

.method public getY(F)F
    .locals 11
    .parameter "hours"

    .prologue
    .line 24
    const/high16 v5, 0x41c0

    div-float v5, p1, v5

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L

    mul-double v2, v5, v7

    .line 25
    .local v2, rad:D
    const-wide/high16 v5, 0x4069

    const-wide/high16 v7, 0x4054

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    const-wide/high16 v9, -0x4010

    mul-double/2addr v7, v9

    sub-double v0, v5, v7

    .line 26
    .local v0, Y2:D
    double-to-float v4, v0

    .line 27
    .local v4, y:F
    return v4
.end method

.method public prov(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2
    .parameter "x"

    .prologue
    .line 68
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v0, "gps"

    .line 73
    .local v0, y:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 71
    .end local v0           #y:Ljava/lang/String;
    :cond_0
    const-string v0, "network"

    .restart local v0       #y:Ljava/lang/String;
    goto :goto_0
.end method

.method public sl(F)F
    .locals 1
    .parameter "x"

    .prologue
    .line 48
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 49
    const/high16 v0, 0x43b4

    add-float/2addr p1, v0

    .line 50
    :cond_0
    return p1
.end method
