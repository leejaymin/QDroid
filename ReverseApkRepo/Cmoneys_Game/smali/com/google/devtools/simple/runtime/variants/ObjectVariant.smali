.class public final Lcom/google/devtools/simple/runtime/variants/ObjectVariant;
.super Lcom/google/devtools/simple/runtime/variants/Variant;
.source "ObjectVariant.java"


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 35
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/variants/Variant;-><init>(B)V

    .line 36
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->value:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method private convertArguments([Ljava/lang/Class;[Lcom/google/devtools/simple/runtime/variants/Variant;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/google/devtools/simple/runtime/variants/Variant;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v1, p1

    .line 138
    .local v1, len:I
    new-array v2, v1, [Ljava/lang/Object;

    .line 139
    .local v2, objArgs:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 140
    aget-object v3, p1, v0

    aget-object v4, p2, v0

    invoke-direct {p0, v3, v4}, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->convertVariant(Ljava/lang/Class;Lcom/google/devtools/simple/runtime/variants/Variant;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-object v2
.end method

.method private convertObject(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 2
    .parameter
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/devtools/simple/runtime/variants/Variant;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 130
    .end local p2
    :goto_0
    return-object v0

    .line 102
    .restart local p2
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 103
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/BooleanVariant;->getBooleanVariant(Z)Lcom/google/devtools/simple/runtime/variants/BooleanVariant;

    move-result-object v0

    goto :goto_0

    .line 105
    .restart local p2
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 106
    check-cast p2, Ljava/lang/Byte;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->integer2byte(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/ByteVariant;->getByteVariant(B)Lcom/google/devtools/simple/runtime/variants/ByteVariant;

    move-result-object v0

    goto :goto_0

    .line 108
    .restart local p2
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 109
    check-cast p2, Ljava/lang/Short;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->integer2short(I)S

    move-result v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/ShortVariant;->getShortVariant(S)Lcom/google/devtools/simple/runtime/variants/ShortVariant;

    move-result-object v0

    goto :goto_0

    .line 111
    .restart local p2
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 112
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    goto :goto_0

    .line 114
    .restart local p2
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 115
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/LongVariant;->getLongVariant(J)Lcom/google/devtools/simple/runtime/variants/LongVariant;

    move-result-object v0

    goto :goto_0

    .line 117
    .restart local p2
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 118
    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/SingleVariant;->getSingleVariant(F)Lcom/google/devtools/simple/runtime/variants/SingleVariant;

    move-result-object v0

    goto :goto_0

    .line 120
    .restart local p2
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 121
    check-cast p2, Ljava/lang/Double;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/variants/DoubleVariant;->getDoubleVariant(D)Lcom/google/devtools/simple/runtime/variants/DoubleVariant;

    move-result-object v0

    goto :goto_0

    .line 123
    .restart local p2
    :cond_7
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_8

    .line 124
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Lcom/google/devtools/simple/runtime/variants/StringVariant;->getStringVariant(Ljava/lang/String;)Lcom/google/devtools/simple/runtime/variants/StringVariant;

    move-result-object v0

    goto :goto_0

    .line 126
    .restart local p2
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    invoke-static {p2}, Lcom/google/devtools/simple/runtime/variants/ArrayVariant;->getArrayVariant(Ljava/lang/Object;)Lcom/google/devtools/simple/runtime/variants/ArrayVariant;

    move-result-object v0

    goto/16 :goto_0

    .line 130
    :cond_9
    invoke-static {p2}, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->getObjectVariant(Ljava/lang/Object;)Lcom/google/devtools/simple/runtime/variants/ObjectVariant;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private convertVariant(Ljava/lang/Class;Lcom/google/devtools/simple/runtime/variants/Variant;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "variant"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/devtools/simple/runtime/variants/Variant;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getArray()Ljava/lang/Object;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 66
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 67
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 70
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 73
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 76
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getInteger()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 79
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    .line 82
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getSingle()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 85
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_7
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_8

    .line 88
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_8
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/variants/Variant;->getObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getObjectVariant(Ljava/lang/Object;)Lcom/google/devtools/simple/runtime/variants/ObjectVariant;
    .locals 1
    .parameter "value"

    .prologue
    .line 28
    new-instance v0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public dataMember(Ljava/lang/String;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 5
    .parameter "name"

    .prologue
    .line 183
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 185
    .local v2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 186
    .local v0, field:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->value:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->convertObject(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/devtools/simple/runtime/variants/Variant;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 194
    .end local v0           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 187
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 189
    .local v1, nsfe:Ljava/lang/NoSuchFieldException;
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/devtools/simple/runtime/variants/Variant;

    invoke-virtual {p0, p1, v3}, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->function(Ljava/lang/String;[Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v3

    goto :goto_0

    .line 190
    .end local v1           #nsfe:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    .line 194
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public dataMember(Ljava/lang/String;Lcom/google/devtools/simple/runtime/variants/Variant;)V
    .locals 5
    .parameter "name"
    .parameter "variant"

    .prologue
    .line 199
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 201
    .local v2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 202
    .local v0, field:Ljava/lang/reflect/Field;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->convertVariant(Ljava/lang/Class;Lcom/google/devtools/simple/runtime/variants/Variant;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    .end local v0           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 205
    .local v1, nsfe:Ljava/lang/NoSuchFieldException;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/devtools/simple/runtime/variants/Variant;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->function(Ljava/lang/String;[Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    goto :goto_0

    .line 206
    .end local v1           #nsfe:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public function(Ljava/lang/String;[Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 11
    .parameter "name"
    .parameter "args"

    .prologue
    .line 147
    iget-object v9, p0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->value:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 152
    .local v8, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/reflect/Method;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v1, v3

    .line 153
    .local v6, method:Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 154
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 155
    .local v0, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v9, v0

    array-length v10, p2

    if-ne v9, v10, :cond_0

    .line 157
    invoke-direct {p0, v0, p2}, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->convertArguments([Ljava/lang/Class;[Lcom/google/devtools/simple/runtime/variants/Variant;)[Ljava/lang/Object;

    move-result-object v2

    .line 160
    .local v2, convertedArgs:[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 162
    .local v7, result:Ljava/lang/Object;
    :try_start_0
    iget-object v9, p0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->value:Ljava/lang/Object;

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 171
    .end local v7           #result:Ljava/lang/Object;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {p0, v9, v7}, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->convertObject(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object v9

    return-object v9

    .line 165
    .restart local v7       #result:Ljava/lang/Object;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 167
    .local v4, ite:Ljava/lang/reflect/InvocationTargetException;
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v9}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v9

    .line 152
    .end local v0           #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v2           #convertedArgs:[Ljava/lang/Object;
    .end local v4           #ite:Ljava/lang/reflect/InvocationTargetException;
    .end local v7           #result:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v6           #method:Ljava/lang/reflect/Method;
    :cond_1
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v9}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v9

    .line 163
    .restart local v0       #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v2       #convertedArgs:[Ljava/lang/Object;
    .restart local v6       #method:Ljava/lang/reflect/Method;
    .restart local v7       #result:Ljava/lang/Object;
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public identical(Lcom/google/devtools/simple/runtime/variants/Variant;)Z
    .locals 2
    .parameter "rightOp"

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getKind()B

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 48
    invoke-super {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->identical(Lcom/google/devtools/simple/runtime/variants/Variant;)Z

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->value:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getObject()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public typeof(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/variants/ObjectVariant;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
