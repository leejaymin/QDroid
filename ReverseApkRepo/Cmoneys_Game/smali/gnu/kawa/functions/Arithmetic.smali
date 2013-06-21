.class public Lgnu/kawa/functions/Arithmetic;
.super Ljava/lang/Object;
.source "Arithmetic.java"


# static fields
.field public static final BIGDECIMAL_CODE:I = 0x5

.field public static final BIGINTEGER_CODE:I = 0x3

.field public static final DOUBLE_CODE:I = 0x8

.field public static final FLOAT_CODE:I = 0x7

.field public static final FLONUM_CODE:I = 0x9

.field public static final INTNUM_CODE:I = 0x4

.field public static final INT_CODE:I = 0x1

.field public static final LONG_CODE:I = 0x2

.field public static final NUMERIC_CODE:I = 0xb

.field public static final RATNUM_CODE:I = 0x6

.field public static final REALNUM_CODE:I = 0xa

.field public static final ten_exp_9:Lgnu/math/IntNum;

.field static typeDFloNum:Lgnu/bytecode/ClassType;

.field static typeIntNum:Lgnu/bytecode/ClassType;

.field static typeNumber:Lgnu/bytecode/ClassType;

.field static typeNumeric:Lgnu/bytecode/ClassType;

.field static typeRatNum:Lgnu/bytecode/ClassType;

.field static typeRealNum:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-string v0, "gnu.math.DFloNum"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/bytecode/ClassType;

    .line 108
    const-string v0, "gnu.math.RatNum"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/bytecode/ClassType;

    .line 109
    const-string v0, "gnu.math.RealNum"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/bytecode/ClassType;

    .line 110
    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumber:Lgnu/bytecode/ClassType;

    .line 111
    const-string v0, "gnu.math.Numeric"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    .line 112
    const-string v0, "gnu.math.IntNum"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/bytecode/ClassType;

    .line 222
    const v0, 0x3b9aca00

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arithmetic;->ten_exp_9:Lgnu/math/IntNum;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 2
    .parameter "value"

    .prologue
    .line 212
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 213
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0
    move-object v0, p0

    .line 219
    :goto_0
    return-object v0

    .line 214
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 215
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    .end local p0
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 216
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 218
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 219
    .restart local p0
    :cond_3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 2
    .parameter "value"

    .prologue
    .line 182
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 183
    check-cast p0, Ljava/math/BigInteger;

    .end local p0
    move-object v0, p0

    .line 186
    :goto_0
    return-object v0

    .line 184
    .restart local p0
    :cond_0
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_1

    .line 185
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public static asDouble(Ljava/lang/Object;)D
    .locals 2
    .parameter "value"

    .prologue
    .line 177
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static asFloat(Ljava/lang/Object;)F
    .locals 1
    .parameter "value"

    .prologue
    .line 172
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public static asInt(Ljava/lang/Object;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 162
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    .locals 2
    .parameter "value"

    .prologue
    .line 201
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 202
    check-cast p0, Lgnu/math/IntNum;

    .end local p0
    move-object v0, p0

    .line 207
    :goto_0
    return-object v0

    .line 203
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 206
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 207
    .restart local p0
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0
.end method

.method public static asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;
    .locals 2
    .parameter "value"

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static asIntNum(Ljava/math/BigInteger;)Lgnu/math/IntNum;
    .locals 2
    .parameter "value"

    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static asLong(Ljava/lang/Object;)J
    .locals 2
    .parameter "value"

    .prologue
    .line 167
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 3
    .parameter "value"

    .prologue
    .line 264
    instance-of v0, p0, Lgnu/math/Numeric;

    if-nez v0, :cond_4

    .line 266
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    .line 275
    .end local p0
    :goto_0
    return-object v0

    .line 270
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 271
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 273
    :cond_3
    new-instance v0, Lgnu/math/DFloNum;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_0

    .line 275
    :cond_4
    check-cast p0, Lgnu/math/Numeric;

    .end local p0
    move-object v0, p0

    goto :goto_0
.end method

.method public static asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;
    .locals 7
    .parameter "value"

    .prologue
    const/16 v6, 0xa

    .line 226
    instance-of v5, p0, Lgnu/math/RatNum;

    if-eqz v5, :cond_0

    .line 227
    check-cast p0, Lgnu/math/RatNum;

    .end local p0
    move-object v5, p0

    .line 259
    :goto_0
    return-object v5

    .line 228
    .restart local p0
    :cond_0
    instance-of v5, p0, Ljava/math/BigInteger;

    if-eqz v5, :cond_1

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v5

    goto :goto_0

    .line 230
    :cond_1
    instance-of v5, p0, Ljava/math/BigDecimal;

    if-eqz v5, :cond_6

    .line 232
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    move-object v1, v0

    .line 233
    .local v1, d:Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v4

    .line 234
    .local v4, v:Lgnu/math/RatNum;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    .line 235
    .local v2, scale:I
    :goto_1
    const/16 v5, 0x9

    if-lt v2, v5, :cond_2

    .line 236
    sget-object v5, Lgnu/kawa/functions/Arithmetic;->ten_exp_9:Lgnu/math/IntNum;

    invoke-static {v4, v5}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v4

    .line 235
    add-int/lit8 v2, v2, -0x9

    goto :goto_1

    .line 237
    :cond_2
    :goto_2
    const/16 v5, -0x9

    if-gt v2, v5, :cond_3

    .line 238
    sget-object v5, Lgnu/kawa/functions/Arithmetic;->ten_exp_9:Lgnu/math/IntNum;

    invoke-static {v4, v5}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v4

    .line 237
    add-int/lit8 v2, v2, 0x9

    goto :goto_2

    .line 240
    :cond_3
    if-lez v2, :cond_4

    move v5, v2

    :goto_3
    packed-switch v5, :pswitch_data_0

    move-object v5, v4

    .line 251
    goto :goto_0

    .line 240
    :cond_4
    neg-int v5, v2

    goto :goto_3

    .line 242
    :pswitch_0
    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    .line 253
    .local v3, scaleVal:Lgnu/math/IntNum;
    :goto_4
    if-lez v2, :cond_5

    .line 254
    invoke-static {v4, v3}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v5

    goto :goto_0

    .line 243
    .end local v3           #scaleVal:Lgnu/math/IntNum;
    :pswitch_1
    const/16 v5, 0x64

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    .restart local v3       #scaleVal:Lgnu/math/IntNum;
    goto :goto_4

    .line 244
    .end local v3           #scaleVal:Lgnu/math/IntNum;
    :pswitch_2
    const/16 v5, 0x3e8

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    .restart local v3       #scaleVal:Lgnu/math/IntNum;
    goto :goto_4

    .line 245
    .end local v3           #scaleVal:Lgnu/math/IntNum;
    :pswitch_3
    const/16 v5, 0x2710

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    .restart local v3       #scaleVal:Lgnu/math/IntNum;
    goto :goto_4

    .line 246
    .end local v3           #scaleVal:Lgnu/math/IntNum;
    :pswitch_4
    const v5, 0x186a0

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    .restart local v3       #scaleVal:Lgnu/math/IntNum;
    goto :goto_4

    .line 247
    .end local v3           #scaleVal:Lgnu/math/IntNum;
    :pswitch_5
    const v5, 0xf4240

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    .restart local v3       #scaleVal:Lgnu/math/IntNum;
    goto :goto_4

    .line 248
    .end local v3           #scaleVal:Lgnu/math/IntNum;
    :pswitch_6
    const v5, 0x989680

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    .restart local v3       #scaleVal:Lgnu/math/IntNum;
    goto :goto_4

    .line 249
    .end local v3           #scaleVal:Lgnu/math/IntNum;
    :pswitch_7
    const v5, 0x5f5e100

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    .restart local v3       #scaleVal:Lgnu/math/IntNum;
    goto :goto_4

    .line 256
    :cond_5
    invoke-static {v4, v3}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v5

    goto/16 :goto_0

    .line 259
    .end local v1           #d:Ljava/math/BigDecimal;
    .end local v2           #scale:I
    .end local v3           #scaleVal:Lgnu/math/IntNum;
    .end local v4           #v:Lgnu/math/RatNum;
    :cond_6
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v5

    goto/16 :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static classifyType(Lgnu/bytecode/Type;)I
    .locals 9
    .parameter "type"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, kind:I
    instance-of v3, p0, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_5

    .line 119
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 120
    .local v1, sig:C
    const/16 v3, 0x56

    if-eq v1, v3, :cond_0

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_0

    const/16 v3, 0x43

    if-ne v1, v3, :cond_1

    :cond_0
    move v3, v4

    .line 157
    .end local v1           #sig:C
    :goto_0
    return v3

    .line 122
    .restart local v1       #sig:C
    :cond_1
    const/16 v3, 0x44

    if-ne v1, v3, :cond_2

    move v3, v8

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    const/16 v3, 0x46

    if-ne v1, v3, :cond_3

    move v3, v7

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    const/16 v3, 0x4a

    if-ne v1, v3, :cond_4

    move v3, v6

    .line 127
    goto :goto_0

    :cond_4
    move v3, v5

    .line 129
    goto :goto_0

    .line 131
    .end local v1           #sig:C
    :cond_5
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, tname:Ljava/lang/String;
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 133
    const/4 v3, 0x4

    goto :goto_0

    .line 134
    :cond_6
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 135
    const/4 v3, 0x6

    goto :goto_0

    .line 136
    :cond_7
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 137
    const/16 v3, 0x9

    goto :goto_0

    .line 138
    :cond_8
    const-string v3, "java.lang.Double"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v8

    .line 139
    goto :goto_0

    .line 140
    :cond_9
    const-string v3, "java.lang.Float"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v7

    .line 141
    goto :goto_0

    .line 142
    :cond_a
    const-string v3, "java.lang.Long"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v6

    .line 143
    goto :goto_0

    .line 144
    :cond_b
    const-string v3, "java.lang.Integer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "java.lang.Short"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "java.lang.Byte"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    move v3, v5

    .line 147
    goto :goto_0

    .line 148
    :cond_d
    const-string v3, "java.math.BigInteger"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 149
    const/4 v3, 0x3

    goto :goto_0

    .line 150
    :cond_e
    const-string v3, "java.math.BigDecimal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 151
    const/4 v3, 0x5

    goto/16 :goto_0

    .line 152
    :cond_f
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 153
    const/16 v3, 0xa

    goto/16 :goto_0

    .line 154
    :cond_10
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 155
    const/16 v3, 0xb

    goto/16 :goto_0

    :cond_11
    move v3, v4

    .line 157
    goto/16 :goto_0
.end method

.method public static classifyValue(Ljava/lang/Object;)I
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, -0x1

    .line 37
    instance-of v0, p0, Lgnu/math/Numeric;

    if-eqz v0, :cond_4

    .line 39
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x4

    .line 69
    :goto_0
    return v0

    .line 41
    :cond_0
    instance-of v0, p0, Lgnu/math/RatNum;

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x6

    goto :goto_0

    .line 43
    :cond_1
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_2

    .line 44
    const/16 v0, 0x9

    goto :goto_0

    .line 45
    :cond_2
    instance-of v0, p0, Lgnu/math/RealNum;

    if-eqz v0, :cond_3

    .line 46
    const/16 v0, 0xa

    goto :goto_0

    .line 48
    :cond_3
    const/16 v0, 0xb

    goto :goto_0

    .line 50
    :cond_4
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_c

    .line 52
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    .line 54
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_6
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 56
    const/4 v0, 0x2

    goto :goto_0

    .line 57
    :cond_7
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 58
    const/4 v0, 0x7

    goto :goto_0

    .line 59
    :cond_8
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 60
    const/16 v0, 0x8

    goto :goto_0

    .line 61
    :cond_9
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_a

    .line 62
    const/4 v0, 0x3

    goto :goto_0

    .line 63
    :cond_a
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_b

    .line 64
    const/4 v0, 0x5

    goto :goto_0

    :cond_b
    move v0, v1

    .line 66
    goto :goto_0

    :cond_c
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .parameter "value"
    .parameter "code"

    .prologue
    .line 319
    packed-switch p1, :pswitch_data_0

    .line 374
    check-cast p0, Ljava/lang/Number;

    .end local p0
    move-object v6, p0

    :goto_0
    return-object v6

    .line 322
    .restart local p0
    :pswitch_0
    instance-of v6, p0, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    move-object v6, p0

    .line 323
    goto :goto_0

    .line 324
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 326
    .local v3, i:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 331
    .end local v3           #i:I
    .restart local p0
    :pswitch_1
    instance-of v6, p0, Ljava/lang/Long;

    if-eqz v6, :cond_1

    move-object v6, p0

    .line 332
    goto :goto_0

    .line 333
    :cond_1
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 335
    .local v4, l:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    .line 340
    .end local v4           #l:J
    .restart local p0
    :pswitch_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_0

    .line 342
    :pswitch_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v6

    goto :goto_0

    .line 344
    :pswitch_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v6

    goto :goto_0

    .line 346
    :pswitch_5
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v6

    goto :goto_0

    .line 348
    :pswitch_6
    instance-of v6, p0, Ljava/lang/Float;

    if-eqz v6, :cond_2

    move-object v6, p0

    .line 349
    goto :goto_0

    .line 350
    :cond_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v2

    .line 352
    .local v2, f:F
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_0

    .line 357
    .end local v2           #f:F
    :pswitch_7
    instance-of v6, p0, Ljava/lang/Double;

    if-eqz v6, :cond_3

    move-object v6, p0

    .line 358
    goto :goto_0

    .line 359
    :cond_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 361
    .local v0, d:D
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_0

    .line 366
    .end local v0           #d:D
    :pswitch_8
    instance-of v6, p0, Lgnu/math/DFloNum;

    if-eqz v6, :cond_4

    move-object v6, p0

    .line 367
    goto :goto_0

    .line 368
    :cond_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v6

    goto :goto_0

    .line 370
    :pswitch_9
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v6

    goto :goto_0

    .line 372
    :pswitch_a
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/math/RealNum;

    move-object v6, p0

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static kindType(I)Lgnu/bytecode/Type;
    .locals 1
    .parameter "kind"

    .prologue
    .line 74
    packed-switch p0, :pswitch_data_0

    .line 99
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_0

    .line 79
    :pswitch_1
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_0

    .line 81
    :pswitch_2
    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0

    .line 83
    :pswitch_3
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 85
    :pswitch_4
    const-string v0, "java.math.BigDecimal"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0

    .line 87
    :pswitch_5
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 89
    :pswitch_6
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_0

    .line 91
    :pswitch_7
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_0

    .line 93
    :pswitch_8
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 95
    :pswitch_9
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 97
    :pswitch_a
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static toString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "radix"

    .prologue
    const/16 v1, 0xa

    .line 284
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 285
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 309
    :cond_0
    :pswitch_0
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/math/Numeric;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 288
    :pswitch_1
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 290
    :pswitch_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 292
    :pswitch_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 294
    :pswitch_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 296
    :pswitch_5
    if-ne p1, v1, :cond_1

    .line 297
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 300
    :cond_1
    :pswitch_6
    if-ne p1, v1, :cond_2

    .line 301
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 305
    :cond_2
    :pswitch_7
    if-ne p1, v1, :cond_0

    .line 306
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
