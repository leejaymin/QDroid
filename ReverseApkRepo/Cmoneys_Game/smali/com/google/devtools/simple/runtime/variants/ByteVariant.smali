.class public final Lcom/google/devtools/simple/runtime/variants/ByteVariant;
.super Lcom/google/devtools/simple/runtime/variants/Variant;
.source "ByteVariant.java"


# instance fields
.field private value:B


# direct methods
.method private constructor <init>(B)V
    .locals 1
    .parameter "value"

    .prologue
    .line 32
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/variants/Variant;-><init>(B)V

    .line 33
    iput-byte p1, p0, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->value:B

    .line 34
    return-void
.end method

.method public static final getByteVariant(B)Lcom/google/devtools/simple/runtime/variants/ByteVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 25
    new-instance v0, Lcom/google/devtools/simple/runtime/variants/ByteVariant;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;-><init>(B)V

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

    .line 86
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 78
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
    .line 253
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    .line 262
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 266
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 253
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
    .line 234
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 236
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I

    move-result v0

    neg-int v0, v0

    .line 242
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 234
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
    .line 131
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getDouble()D

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
    iget-byte v0, p0, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->value:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getByte()B
    .locals 1

    .prologue
    .line 43
    iget-byte v0, p0, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->value:B

    return v0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 68
    iget-byte v0, p0, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->value:B

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->byte2integer(B)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public getInteger()I
    .locals 1

    .prologue
    .line 53
    iget-byte v0, p0, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->value:B

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->byte2integer(B)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 58
    iget-byte v0, p0, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->value:B

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->byte2integer(B)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getShort()S
    .locals 1

    .prologue
    .line 48
    iget-byte v0, p0, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->value:B

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->byte2integer(B)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getSingle()F
    .locals 1

    .prologue
    .line 63
    iget-byte v0, p0, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->value:B

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->byte2integer(B)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-byte v0, p0, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->value:B

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->byte2integer(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

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

    .line 155
    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    div-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ExprHelpers;->idiv(FF)F

    move-result v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getDouble()D

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
    .line 161
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->mod(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 170
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 173
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 176
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    goto :goto_0

    .line 161
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
    .line 117
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 117
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
    .line 191
    iget-byte v0, p0, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->value:B

    neg-int v0, v0

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getByteVariant(B)Lcom/google/devtools/simple/runtime/variants/ByteVariant;

    move-result-object v0

    return-object v0
.end method

.method public not()Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1

    .prologue
    .line 248
    iget-byte v0, p0, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->value:B

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getByteVariant(B)Lcom/google/devtools/simple/runtime/variants/ByteVariant;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 275
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->or(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    .line 281
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 285
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 272
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
    .line 186
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getDouble()D

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
    .line 196
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 205
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    shl-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    long-to-int v2, v2

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 196
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
    .line 215
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 218
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 224
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    shr-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    long-to-int v2, v2

    shr-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 215
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
    .line 92
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->sub(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 101
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 107
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    goto :goto_0

    .line 92
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
    .line 291
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 294
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->xor(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    .line 300
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 304
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 291
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
