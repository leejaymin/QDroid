.class public final Lcom/google/devtools/simple/runtime/variants/DoubleVariant;
.super Lcom/google/devtools/simple/runtime/variants/Variant;
.source "DoubleVariant.java"


# instance fields
.field private value:D


# direct methods
.method private constructor <init>(D)V
    .locals 1
    .parameter "value"

    .prologue
    .line 32
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/variants/Variant;-><init>(B)V

    .line 33
    iput-wide p1, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    .line 34
    return-void
.end method

.method public static final getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 25
    new-instance v0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    invoke-direct {v0, p0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    return-object v0
.end method

.method public cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v0

    .line 119
    .local v0, rightValue:D
    iget-wide v2, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    cmpl-double v2, v2, v0

    if-nez v2, :cond_0

    .line 120
    const/4 v2, 0x0

    .line 122
    :goto_0
    return v2

    :cond_0
    iget-wide v2, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public div(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean()Z
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->double2boolean(D)Z

    move-result v0

    return v0
.end method

.method public getByte()B
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->double2byte(D)B

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    return-wide v0
.end method

.method public getInteger()I
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public getShort()S
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->double2short(D)S

    move-result v0

    return v0
.end method

.method public getSingle()F
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public idiv(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/helpers/ExprHelpers;->idiv(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    return-object v0
.end method

.method public mod(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    return-object v0
.end method

.method public mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    return-object v0
.end method

.method public neg()Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    neg-double v0, v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    return-object v0
.end method

.method public pow(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    return-object v0
.end method

.method public sub(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->value:D

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    return-object v0
.end method
