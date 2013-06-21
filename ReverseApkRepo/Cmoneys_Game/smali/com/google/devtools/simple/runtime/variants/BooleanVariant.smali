.class public final Lcom/google/devtools/simple/runtime/variants/BooleanVariant;
.super Lcom/google/devtools/simple/runtime/variants/Variant;
.source "BooleanVariant.java"


# instance fields
.field private value:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/variants/Variant;-><init>(B)V

    .line 32
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    .line 33
    return-void
.end method

.method public static final getBooleanVariant(Z)Lcom/google/devtools/simple/runtime/variants/BooleanVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 24
    new-instance v0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->add(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 77
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
    .line 224
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 227
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 230
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getBoolean()Z

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getBooleanVariant(Z)Lcom/google/devtools/simple/runtime/variants/BooleanVariant;

    move-result-object v0

    goto :goto_0

    .line 235
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 207
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I

    move-result v0

    neg-int v0, v0

    .line 213
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 205
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
    .line 130
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getDouble()D

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
    .line 37
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    return v0
.end method

.method public getByte()B
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->boolean2integer(Z)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->boolean2double(Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInteger()I
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->boolean2integer(Z)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->boolean2long(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->boolean2integer(Z)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getSingle()F
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->boolean2single(Z)F

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->boolean2string(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public idiv(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->idiv(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    div-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getSingle()F

    move-result v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->idiv(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    goto :goto_0

    .line 154
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->idiv(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    goto :goto_0

    .line 135
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
    .line 160
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->sub(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 175
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 179
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    goto :goto_0

    .line 160
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
    .line 116
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    invoke-virtual {p1, p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 116
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
    .line 190
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    return-object v0
.end method

.method public not()Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getBooleanVariant(Z)Lcom/google/devtools/simple/runtime/variants/BooleanVariant;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public or(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 245
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->or(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 251
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getBoolean()Z

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getBooleanVariant(Z)Lcom/google/devtools/simple/runtime/variants/BooleanVariant;

    move-result-object v0

    goto :goto_0

    .line 256
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 260
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public pow(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->pow(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public shl(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 0
    .parameter "rightOp"

    .prologue
    .line 195
    return-object p0
.end method

.method public shr(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 0
    .parameter "rightOp"

    .prologue
    .line 200
    return-object p0
.end method

.method public sub(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 4
    .parameter "rightOp"

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->sub(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getSingle()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 110
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    goto :goto_0

    .line 91
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
    .line 266
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 269
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->xor(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 272
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->value:Z

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getBoolean()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getBooleanVariant(Z)Lcom/google/devtools/simple/runtime/variants/BooleanVariant;

    move-result-object v0

    goto :goto_0

    .line 277
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 281
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getInteger()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
