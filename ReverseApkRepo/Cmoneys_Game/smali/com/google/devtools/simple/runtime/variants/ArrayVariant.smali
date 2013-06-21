.class public final Lcom/google/devtools/simple/runtime/variants/ArrayVariant;
.super Lcom/google/devtools/simple/runtime/variants/Variant;
.source "ArrayVariant.java"


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 31
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/variants/Variant;-><init>(B)V

    .line 32
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;->value:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private getArrayOfLastDimension([Lcom/google/devtools/simple/runtime/variants/Variant;)Ljava/lang/Object;
    .locals 5
    .parameter "indices"

    .prologue
    .line 54
    array-length v3, p1

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .line 55
    .local v2, lastDimension:I
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;->value:Ljava/lang/Object;

    .line 56
    .local v0, array:Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 57
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-object v0
.end method

.method public static final getArrayVariant(Ljava/lang/Object;)Lcom/google/devtools/simple/runtime/variants/ArrayVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 24
    new-instance v0, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public array([Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 5
    .parameter "indices"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;->getArrayOfLastDimension([Lcom/google/devtools/simple/runtime/variants/Variant;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, array:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 66
    .local v1, elementType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v2

    .line 68
    .local v2, lastIndex:I
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_0

    .line 69
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v3

    invoke-static {v3}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getBooleanVariant(Z)Lcom/google/devtools/simple/runtime/variants/BooleanVariant;

    move-result-object v3

    .line 85
    .end local p0
    :goto_0
    return-object v3

    .line 70
    .restart local p0
    :cond_0
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_1

    .line 71
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v3

    invoke-static {v3}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getByteVariant(B)Lcom/google/devtools/simple/runtime/variants/ByteVariant;

    move-result-object v3

    goto :goto_0

    .line 72
    :cond_1
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_2

    .line 73
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->getShort(Ljava/lang/Object;I)S

    move-result v3

    invoke-static {v3}, Lcom/google/devtools/simple/runtime/variants/ShortVariant;->getShortVariant(S)Lcom/google/devtools/simple/runtime/variants/ShortVariant;

    move-result-object v3

    goto :goto_0

    .line 74
    :cond_2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_3

    .line 75
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v3

    goto :goto_0

    .line 76
    :cond_3
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_4

    .line 77
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v3

    goto :goto_0

    .line 78
    :cond_4
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_5

    .line 79
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v3

    invoke-static {v3}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v3

    goto :goto_0

    .line 80
    :cond_5
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_6

    .line 81
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v3

    goto :goto_0

    .line 82
    :cond_6
    const-class v3, Ljava/lang/String;

    if-ne v1, v3, :cond_7

    .line 83
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getStringVariant(Ljava/lang/String;)Lcom/google/devtools/simple/runtime/variants/StringVariant;

    move-result-object v3

    goto :goto_0

    .line 85
    .restart local p0
    :cond_7
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->getObjectVariant(Ljava/lang/Object;)Lcom/google/devtools/simple/runtime/variants/ObjectVariant;

    move-result-object v3

    goto :goto_0
.end method

.method public array([Lcom/google/devtools/simple/runtime/variants/Variant;Lcom/google/devtools/simple/runtime/variants/Variant;)V
    .locals 5
    .parameter "indices"
    .parameter "variant"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;->getArrayOfLastDimension([Lcom/google/devtools/simple/runtime/variants/Variant;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, array:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 93
    .local v1, elementType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v2

    .line 95
    .local v2, lastIndex:I
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_0

    .line 96
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 114
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_1

    .line 98
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getByte()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_1
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_2

    .line 100
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_3

    .line 102
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_3
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_4

    .line 104
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_4
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_5

    .line 106
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_5
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_6

    .line 108
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_6
    const-class v3, Ljava/lang/String;

    if-ne v1, v3, :cond_7

    .line 110
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_7
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getArray()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public identical(Lcom/google/devtools/simple/runtime/variants/Variant;)Z
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 44
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->identical(Lcom/google/devtools/simple/runtime/variants/Variant;)Z

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;->value:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getArray()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
