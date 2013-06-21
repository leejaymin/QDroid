.class public final Lcom/google/devtools/simple/runtime/variants/StringVariant;
.super Lcom/google/devtools/simple/runtime/variants/Variant;
.source "StringVariant.java"


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 32
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/variants/Variant;-><init>(B)V

    .line 33
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/variants/StringVariant;->value:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static final getStringVariant(Ljava/lang/String;)Lcom/google/devtools/simple/runtime/variants/StringVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 25
    new-instance v0, Lcom/google/devtools/simple/runtime/variants/StringVariant;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->add(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->and(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I
    .locals 2
    .parameter "rightOp"

    .prologue
    const/16 v1, 0x8

    .line 128
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getKind()B

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/StringVariant;->value:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I

    move-result v0

    goto :goto_0
.end method

.method public div(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getDouble()D

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
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/StringVariant;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->string2boolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getByte()B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/StringVariant;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->string2byte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/StringVariant;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->string2double(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInteger()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/StringVariant;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->string2integer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/StringVariant;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->string2long(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/StringVariant;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->string2short(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public getSingle()F
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/StringVariant;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->string2single(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/StringVariant;->value:Ljava/lang/String;

    return-object v0
.end method

.method public idiv(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->idiv(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public like(Lcom/google/devtools/simple/runtime/variants/Variant;)Z
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/StringVariant;->value:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ExprHelpers;->like(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public mod(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->mod(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public neg()Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->neg()Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public not()Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->not()Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->or(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public pow(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->pow(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public shl(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->shl(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public shr(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->shr(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public sub(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->sub(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method

.method public xor(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->xor(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v0

    return-object v0
.end method
