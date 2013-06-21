.class public Lgnu/bytecode/PrimType;
.super Lgnu/bytecode/Type;
.source "PrimType.java"


# direct methods
.method protected constructor <init>(Lgnu/bytecode/PrimType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 14
    iget-object v0, p1, Lgnu/bytecode/PrimType;->this_name:Ljava/lang/String;

    iget-object v1, p1, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lgnu/bytecode/Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget v0, p1, Lgnu/bytecode/PrimType;->size:I

    iput v0, p0, Lgnu/bytecode/PrimType;->size:I

    .line 16
    iget-object v0, p1, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    iput-object v0, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .parameter "nam"
    .parameter "sig"
    .parameter "siz"
    .parameter "reflectClass"

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput p3, p0, Lgnu/bytecode/PrimType;->size:I

    .line 8
    iput-object p4, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    .line 9
    invoke-static {p4, p0}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V

    .line 10
    return-void
.end method

.method public static booleanValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 50
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compare(Lgnu/bytecode/PrimType;Lgnu/bytecode/PrimType;)I
    .locals 8
    .parameter "type1"
    .parameter "type2"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x3

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 135
    iget-object v2, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 136
    .local v0, sig1:C
    iget-object v2, p1, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 138
    .local v1, sig2:C
    if-ne v0, v1, :cond_0

    move v2, v6

    .line 179
    :goto_0
    return v2

    .line 142
    :cond_0
    const/16 v2, 0x56

    if-ne v0, v2, :cond_1

    move v2, v4

    .line 143
    goto :goto_0

    .line 144
    :cond_1
    const/16 v2, 0x56

    if-ne v1, v2, :cond_2

    move v2, v3

    .line 145
    goto :goto_0

    .line 150
    :cond_2
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_3

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_4

    :cond_3
    move v2, v5

    .line 151
    goto :goto_0

    .line 153
    :cond_4
    const/16 v2, 0x43

    if-ne v0, v2, :cond_6

    .line 154
    iget v2, p1, Lgnu/bytecode/PrimType;->size:I

    if-le v2, v7, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_0

    .line 155
    :cond_6
    const/16 v2, 0x43

    if-ne v1, v2, :cond_8

    .line 156
    iget v2, p0, Lgnu/bytecode/PrimType;->size:I

    if-le v2, v7, :cond_7

    move v2, v4

    goto :goto_0

    :cond_7
    move v2, v5

    goto :goto_0

    .line 158
    :cond_8
    const/16 v2, 0x44

    if-ne v0, v2, :cond_9

    move v2, v4

    .line 159
    goto :goto_0

    .line 160
    :cond_9
    const/16 v2, 0x44

    if-ne v1, v2, :cond_a

    move v2, v3

    .line 161
    goto :goto_0

    .line 162
    :cond_a
    const/16 v2, 0x46

    if-ne v0, v2, :cond_b

    move v2, v4

    .line 163
    goto :goto_0

    .line 164
    :cond_b
    const/16 v2, 0x46

    if-ne v1, v2, :cond_c

    move v2, v3

    .line 165
    goto :goto_0

    .line 166
    :cond_c
    const/16 v2, 0x4a

    if-ne v0, v2, :cond_d

    move v2, v4

    .line 167
    goto :goto_0

    .line 168
    :cond_d
    const/16 v2, 0x4a

    if-ne v1, v2, :cond_e

    move v2, v3

    .line 169
    goto :goto_0

    .line 170
    :cond_e
    const/16 v2, 0x49

    if-ne v0, v2, :cond_f

    move v2, v4

    .line 171
    goto :goto_0

    .line 172
    :cond_f
    const/16 v2, 0x49

    if-ne v1, v2, :cond_10

    move v2, v3

    .line 173
    goto :goto_0

    .line 174
    :cond_10
    const/16 v2, 0x53

    if-ne v0, v2, :cond_11

    move v2, v4

    .line 175
    goto :goto_0

    .line 176
    :cond_11
    const/16 v2, 0x53

    if-ne v1, v2, :cond_12

    move v2, v3

    .line 177
    goto :goto_0

    :cond_12
    move v2, v5

    .line 179
    goto :goto_0
.end method


# virtual methods
.method public charValue(Ljava/lang/Object;)C
    .locals 1
    .parameter "value"

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "obj"

    .prologue
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    move-object v1, p1

    .line 32
    .end local p1
    :goto_0
    return-object v1

    .line 23
    .restart local p1
    :cond_0
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    :cond_1
    const/16 v1, 0x20

    move v0, v1

    .line 25
    .local v0, sig1:C
    :goto_1
    sparse-switch v0, :sswitch_data_0

    .line 34
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "don\'t know how to coerce "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    .end local v0           #sig1:C
    :cond_2
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    goto :goto_1

    .line 27
    .restart local v0       #sig1:C
    :sswitch_0
    new-instance v1, Ljava/lang/Byte;

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_0

    .line 28
    .restart local p1
    :sswitch_1
    new-instance v1, Ljava/lang/Short;

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(S)V

    goto :goto_0

    .line 29
    .restart local p1
    :sswitch_2
    new-instance v1, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 30
    .restart local p1
    :sswitch_3
    new-instance v1, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 31
    .restart local p1
    :sswitch_4
    new-instance v1, Ljava/lang/Float;

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    goto/16 :goto_0

    .line 32
    .restart local p1
    :sswitch_5
    new-instance v1, Ljava/lang/Double;

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_0

    .line 25
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_2
        0x4a -> :sswitch_3
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 8
    .parameter "other"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v7, "java.lang.Float"

    const-string v6, "java.lang.Double"

    const-string v5, "gnu.math.DFloNum"

    .line 195
    instance-of v2, p1, Lgnu/bytecode/PrimType;

    if-eqz v2, :cond_0

    .line 196
    check-cast p1, Lgnu/bytecode/PrimType;

    .end local p1
    invoke-static {p0, p1}, Lgnu/bytecode/PrimType;->compare(Lgnu/bytecode/PrimType;Lgnu/bytecode/PrimType;)I

    move-result v2

    .line 244
    :goto_0
    return v2

    .line 197
    .restart local p1
    :cond_0
    instance-of v2, p1, Lgnu/bytecode/ClassType;

    if-nez v2, :cond_2

    .line 199
    instance-of v2, p1, Lgnu/bytecode/ArrayType;

    if-eqz v2, :cond_1

    .line 200
    const/4 v2, -0x3

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v2

    invoke-static {v2}, Lgnu/bytecode/PrimType;->swappedCompareResult(I)I

    move-result v2

    goto :goto_0

    .line 204
    :cond_2
    iget-object v2, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 205
    .local v1, sig1:C
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, otherName:Ljava/lang/String;
    if-nez v0, :cond_3

    move v2, v3

    .line 207
    goto :goto_0

    .line 208
    :cond_3
    sparse-switch v1, :sswitch_data_0

    .line 236
    :cond_4
    const-string v2, "java.lang.Double"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "java.lang.Float"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "gnu.math.DFloNum"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_5
    move v2, v3

    .line 239
    goto :goto_0

    .line 211
    :sswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 216
    :sswitch_1
    const-string v2, "java.lang.Double"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "gnu.math.DFloNum"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v2, v4

    .line 218
    goto :goto_0

    .line 219
    :cond_7
    const-string v2, "java.lang.Float"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 220
    const/4 v2, 0x1

    goto :goto_0

    .line 223
    :sswitch_2
    const-string v2, "java.lang.Double"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "gnu.math.DFloNum"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move v2, v3

    .line 225
    goto :goto_0

    .line 226
    :cond_9
    const-string v2, "java.lang.Float"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v4

    .line 227
    goto :goto_0

    .line 230
    :sswitch_3
    const-string v2, "java.lang.Integer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v4

    .line 231
    goto/16 :goto_0

    .line 232
    :cond_a
    const-string v2, "gnu.math.IntNum"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 233
    goto/16 :goto_0

    .line 241
    :cond_b
    :sswitch_4
    const-string v2, "java.lang.Object"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lgnu/bytecode/PrimType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v2, :cond_d

    :cond_c
    move v2, v3

    .line 243
    goto/16 :goto_0

    .line 244
    :cond_d
    const/4 v2, -0x2

    goto/16 :goto_0

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_4
        0x44 -> :sswitch_1
        0x46 -> :sswitch_2
        0x49 -> :sswitch_3
        0x56 -> :sswitch_0
        0x5a -> :sswitch_4
    .end sparse-switch
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 4
    .parameter "code"

    .prologue
    const/4 v3, 0x1

    .line 107
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_0
    const/16 v1, 0x20

    move v0, v1

    .line 109
    .local v0, sig1:C
    :goto_0
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2

    .line 111
    sget-object v1, Lgnu/bytecode/PrimType;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 112
    sget-object v1, Lgnu/bytecode/PrimType;->booleanValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 131
    :goto_1
    return-void

    .line 107
    .end local v0           #sig1:C
    :cond_1
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    goto :goto_0

    .line 114
    .restart local v0       #sig1:C
    :cond_2
    const/16 v1, 0x56

    if-ne v0, v1, :cond_3

    .line 115
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    goto :goto_1

    .line 118
    :cond_3
    sget-object v1, Lgnu/bytecode/PrimType;->javalangNumberType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 119
    const/16 v1, 0x49

    if-eq v0, v1, :cond_4

    const/16 v1, 0x53

    if-eq v0, v1, :cond_4

    const/16 v1, 0x42

    if-ne v0, v1, :cond_5

    .line 120
    :cond_4
    sget-object v1, Lgnu/bytecode/PrimType;->intValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 121
    :cond_5
    const/16 v1, 0x4a

    if-ne v0, v1, :cond_6

    .line 122
    sget-object v1, Lgnu/bytecode/PrimType;->longValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 123
    :cond_6
    const/16 v1, 0x44

    if-ne v0, v1, :cond_7

    .line 124
    sget-object v1, Lgnu/bytecode/PrimType;->doubleValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 125
    :cond_7
    const/16 v1, 0x46

    if-ne v0, v1, :cond_8

    .line 126
    sget-object v1, Lgnu/bytecode/PrimType;->floatValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 129
    :cond_8
    invoke-super {p0, p1}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 7
    .parameter "code"

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 60
    .local v4, sig1:C
    sparse-switch v4, :sswitch_data_0

    .line 77
    const/4 v2, 0x0

    .line 79
    .local v2, cname:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 80
    .local v1, clas:Lgnu/bytecode/ClassType;
    const/4 v5, 0x1

    new-array v0, v5, [Lgnu/bytecode/Type;

    .line 81
    .local v0, args:[Lgnu/bytecode/Type;
    aput-object p0, v0, v6

    .line 82
    const-string v5, "<init>"

    invoke-virtual {v1, v5, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    .line 83
    .local v3, method:Lgnu/bytecode/Method;
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 84
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 85
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 86
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 87
    .end local v0           #args:[Lgnu/bytecode/Type;
    .end local v2           #cname:Ljava/lang/String;
    .end local v3           #method:Lgnu/bytecode/Method;
    :goto_1
    return-void

    .line 63
    .end local v1           #clas:Lgnu/bytecode/ClassType;
    :sswitch_0
    const-string v5, "java.lang.Boolean"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 64
    .restart local v1       #clas:Lgnu/bytecode/ClassType;
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 65
    const-string v5, "TRUE"

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    invoke-virtual {p1, v5}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 66
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 67
    const-string v5, "FALSE"

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    invoke-virtual {p1, v5}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 68
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_1

    .line 70
    .end local v1           #clas:Lgnu/bytecode/ClassType;
    :sswitch_1
    const-string v2, "java.lang.Character"

    .restart local v2       #cname:Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v2           #cname:Ljava/lang/String;
    :sswitch_2
    const-string v2, "java.lang.Byte"

    .restart local v2       #cname:Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v2           #cname:Ljava/lang/String;
    :sswitch_3
    const-string v2, "java.lang.Short"

    .restart local v2       #cname:Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local v2           #cname:Ljava/lang/String;
    :sswitch_4
    const-string v2, "java.lang.Integer"

    .restart local v2       #cname:Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v2           #cname:Ljava/lang/String;
    :sswitch_5
    const-string v2, "java.lang.Long"

    .restart local v2       #cname:Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v2           #cname:Ljava/lang/String;
    :sswitch_6
    const-string v2, "java.lang.Float"

    .restart local v2       #cname:Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v2           #cname:Ljava/lang/String;
    :sswitch_7
    const-string v2, "java.lang.Double"

    .restart local v2       #cname:Ljava/lang/String;
    goto :goto_0

    .line 60
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x53 -> :sswitch_3
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .locals 4
    .parameter "code"

    .prologue
    const/4 v3, 0x1

    .line 91
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_0
    const/16 v1, 0x20

    move v0, v1

    .line 93
    .local v0, sig1:C
    :goto_0
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2

    .line 94
    sget-object v1, Lgnu/bytecode/PrimType;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, p1}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 103
    :goto_1
    return-void

    .line 91
    .end local v0           #sig1:C
    :cond_1
    iget-object v1, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    goto :goto_0

    .line 95
    .restart local v0       #sig1:C
    :cond_2
    const/16 v1, 0x56

    if-ne v0, v1, :cond_3

    .line 97
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 98
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_1

    .line 102
    :cond_3
    sget-object v1, Lgnu/bytecode/PrimType;->javalangNumberType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, p1}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1
.end method

.method public promotedType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 189
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    :goto_0
    return-object v0

    .line 187
    :sswitch_0
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x49 -> :sswitch_0
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method
