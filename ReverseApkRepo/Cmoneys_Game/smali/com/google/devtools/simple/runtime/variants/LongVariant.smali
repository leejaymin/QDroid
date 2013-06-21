.class public final Lcom/google/devtools/simple/runtime/variants/LongVariant;
.super Lcom/google/devtools/simple/runtime/variants/Variant;
.source "LongVariant.java"


# instance fields
.field private value:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 32
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/variants/Variant;-><init>(B)V

    .line 33
    iput-wide p1, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    .line 34
    return-void
.end method

.method public static final getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 25
    new-instance v0, Lcom/google/devtools/simple/runtime/variants/LongVariant;

    invoke-direct {v0, p0, p1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->add(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

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
    .end packed-switch
.end method

.method public and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 253
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 228
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I

    move-result v2

    neg-int v2, v2

    .line 239
    :goto_0
    return v2

    .line 235
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v0

    .line 236
    .local v0, rvalue:J
    iget-wide v2, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 237
    const/4 v2, 0x0

    goto :goto_0

    .line 239
    :cond_0
    iget-wide v2, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->div(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean()Z
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->long2boolean(J)Z

    move-result v0

    return v0
.end method

.method public getByte()B
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->long2byte(J)B

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public getInteger()I
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    return-wide v0
.end method

.method public getShort()S
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->long2short(J)S

    move-result v0

    return v0
.end method

.method public getSingle()F
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

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

    .line 153
    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ExprHelpers;->idiv(FF)F

    move-result v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getDouble()D

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
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public mod(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->mod(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 176
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public neg()Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    neg-long v0, v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    return-object v0
.end method

.method public not()Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/variants/LongVariant;->value:J

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 270
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->or(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pow(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->pow(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public shl(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    long-to-int v2, v2

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public shr(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    long-to-int v2, v2

    shr-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sub(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->sub(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 103
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 110
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public xor(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 287
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->xor(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
