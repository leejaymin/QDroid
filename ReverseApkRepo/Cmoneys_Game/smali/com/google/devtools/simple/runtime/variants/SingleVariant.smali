.class public final Lcom/google/devtools/simple/runtime/variants/SingleVariant;
.super Lcom/google/devtools/simple/runtime/variants/Variant;
.source "SingleVariant.java"


# instance fields
.field private value:F


# direct methods
.method private constructor <init>(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 32
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/variants/Variant;-><init>(B)V

    .line 33
    iput p1, p0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->value:F

    .line 34
    return-void
.end method

.method public static final getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 25
    new-instance v0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->add(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 190
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I

    move-result v1

    neg-int v1, v1

    .line 202
    :goto_0
    return v1

    .line 198
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v0

    .line 199
    .local v0, rvalue:F
    iget v1, p0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->value:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    .line 200
    const/4 v1, 0x0

    goto :goto_0

    .line 202
    :cond_0
    iget v1, p0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->value:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public div(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->div(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->value:F

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->single2boolean(F)Z

    move-result v0

    return v0
.end method

.method public getByte()B
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->value:F

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->single2byte(F)B

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getInteger()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public getShort()S
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->value:F

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->single2short(F)S

    move-result v0

    return v0
.end method

.method public getSingle()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->value:F

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public idiv(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->idiv(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 147
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ExprHelpers;->idiv(FF)F

    move-result v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/helpers/ExprHelpers;->idiv(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public mod(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->mod(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 117
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public neg()Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->value:F

    neg-float v0, v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    return-object v0
.end method

.method public pow(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getDouble()D

    move-result-wide v0

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
    .line 94
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->sub(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
