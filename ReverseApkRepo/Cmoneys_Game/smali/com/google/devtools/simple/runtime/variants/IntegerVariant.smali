.class public final Lcom/google/devtools/simple/runtime/variants/IntegerVariant;
.super Lcom/google/devtools/simple/runtime/variants/Variant;
.source "IntegerVariant.java"


# instance fields
.field private value:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 32
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/variants/Variant;-><init>(B)V

    .line 34
    iput p1, p0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->value:I

    .line 35
    return-void
.end method

.method public static final getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 25
    new-instance v0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->add(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
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
    .line 254
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    .line 263
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 267
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I

    move-result v0

    neg-int v0, v0

    .line 243
    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->value:I

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .line 132
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getDouble()D

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
    .line 39
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->value:I

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->integer2boolean(I)Z

    move-result v0

    return v0
.end method

.method public getByte()B
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->value:I

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->integer2byte(I)B

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getInteger()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->value:I

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getShort()S
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->value:I

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->integer2short(I)S

    move-result v0

    return v0
.end method

.method public getSingle()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public idiv(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->idiv(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    div-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ExprHelpers;->idiv(FF)F

    move-result v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 156
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/helpers/ExprHelpers;->idiv(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public mod(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->mod(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 171
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 181
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public neg()Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->value:I

    neg-int v0, v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    return-object v0
.end method

.method public not()Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->value:I

    xor-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->or(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    .line 282
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 286
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public pow(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getDouble()D

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
    .line 197
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 200
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    .line 206
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    shl-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 210
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    long-to-int v2, v2

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public shr(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 225
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    shr-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 229
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    long-to-int v2, v2

    shr-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
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

    .line 112
    :goto_0
    return-object v0

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getDouble()D

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
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public xor(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 295
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->xor(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    .line 301
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 305
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
