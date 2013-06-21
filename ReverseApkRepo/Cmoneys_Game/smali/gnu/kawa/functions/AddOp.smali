.class public Lgnu/kawa/functions/AddOp;
.super Lgnu/kawa/functions/ArithOp;
.source "AddOp.java"


# static fields
.field public static final $Mn:Lgnu/kawa/functions/AddOp;

.field public static final $Pl:Lgnu/kawa/functions/AddOp;


# instance fields
.field plusOrMinus:I


# direct methods
.method public static $Mn(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "arg1"

    .prologue
    .line 94
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 95
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 116
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Numeric;->neg()Lgnu/math/Numeric;

    move-result-object v1

    :goto_0
    return-object v1

    .line 98
    :pswitch_0
    new-instance v1, Ljava/lang/Integer;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v2

    neg-int v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 100
    :pswitch_1
    new-instance v1, Ljava/lang/Long;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v2

    neg-long v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 104
    :pswitch_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0

    .line 106
    :pswitch_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_0

    .line 108
    :pswitch_5
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/RatNum;->neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v1

    goto :goto_0

    .line 110
    :pswitch_6
    new-instance v1, Ljava/lang/Float;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v2

    neg-float v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    goto :goto_0

    .line 112
    :pswitch_7
    new-instance v1, Ljava/lang/Double;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    neg-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 114
    :pswitch_8
    new-instance v1, Lgnu/math/DFloNum;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    neg-double v2, v2

    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_0

    .line 95
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
    .end packed-switch
.end method

.method public static $Mn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 89
    const/4 v0, -0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Mn$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "rest"

    .prologue
    const/4 v1, -0x1

    .line 130
    invoke-static {v1, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Pl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Pl$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "rest"

    .prologue
    const/4 v1, 0x1

    .line 124
    invoke-static {v1, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lgnu/kawa/functions/AddOp;

    const-string v1, "+"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 28
    new-instance v0, Lgnu/kawa/functions/AddOp;

    const-string v1, "-"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "plusOrMinus"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    .line 24
    iput p2, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    .line 25
    return-void
.end method

.method public static apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "plusOrMinus"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 32
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 33
    .local v0, code1:I
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v1

    .line 38
    .local v1, code2:I
    if-ge v0, v1, :cond_0

    move v0, v1

    .line 39
    .local v0, code:I
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 76
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p1

    .line 77
    .local p1, num1:Lgnu/math/Numeric;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p2

    .line 78
    .local p2, num2:Lgnu/math/Numeric;
    invoke-virtual {p1, p2, p0}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object p0

    .end local v0           #code:I
    .end local v1           #code2:I
    .end local p0
    .end local p1           #num1:Lgnu/math/Numeric;
    .end local p2           #num2:Lgnu/math/Numeric;
    :goto_0
    return-object p0

    .line 42
    .restart local v0       #code:I
    .restart local v1       #code2:I
    .restart local p0
    .local p1, arg1:Ljava/lang/Object;
    .local p2, arg2:Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p1

    .line 43
    .local p1, i1:I
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p2

    .line 44
    .local p2, i2:I
    new-instance v0, Ljava/lang/Integer;

    .end local v0           #code:I
    if-lez p0, :cond_1

    add-int p0, p1, p2

    .end local p0
    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    goto :goto_0

    .restart local p0
    :cond_1
    sub-int p0, p1, p2

    goto :goto_1

    .line 46
    .restart local v0       #code:I
    .local p1, arg1:Ljava/lang/Object;
    .local p2, arg2:Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v0

    .line 47
    .end local v1           #code2:I
    .local v0, l1:J
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide p1

    .line 48
    .end local p2           #arg2:Ljava/lang/Object;
    .local p1, l2:J
    new-instance v2, Ljava/lang/Long;

    if-lez p0, :cond_2

    add-long p0, v0, p1

    .end local p0
    :goto_2
    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v2

    goto :goto_0

    .restart local p0
    :cond_2
    sub-long p0, v0, p1

    goto :goto_2

    .line 50
    .local v0, code:I
    .restart local v1       #code2:I
    .local p1, arg1:Ljava/lang/Object;
    .restart local p2       #arg2:Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    .line 51
    .local p1, bi1:Ljava/math/BigInteger;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p2

    .line 52
    .local p2, bi2:Ljava/math/BigInteger;
    if-lez p0, :cond_3

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 54
    .local p1, arg1:Ljava/lang/Object;
    .local p2, arg2:Ljava/lang/Object;
    :pswitch_3
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1

    .end local p1           #arg1:Ljava/lang/Object;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    .end local p2           #arg2:Ljava/lang/Object;
    invoke-static {p1, p2, p0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_0

    .line 57
    .restart local p1       #arg1:Ljava/lang/Object;
    .restart local p2       #arg2:Ljava/lang/Object;
    :pswitch_4
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 58
    .local p1, bd1:Ljava/math/BigDecimal;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 59
    .local p2, bd2:Ljava/math/BigDecimal;
    if-lez p0, :cond_4

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0

    .line 61
    .local p1, arg1:Ljava/lang/Object;
    .local p2, arg2:Ljava/lang/Object;
    :pswitch_5
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p1

    .end local p1           #arg1:Ljava/lang/Object;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p2

    .end local p2           #arg2:Ljava/lang/Object;
    invoke-static {p1, p2, p0}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object p0

    goto :goto_0

    .line 64
    .restart local p1       #arg1:Ljava/lang/Object;
    .restart local p2       #arg2:Ljava/lang/Object;
    :pswitch_6
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p1

    .line 65
    .local p1, f1:F
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p2

    .line 66
    .local p2, f2:F
    new-instance v0, Ljava/lang/Float;

    .end local v0           #code:I
    if-lez p0, :cond_5

    add-float p0, p1, p2

    .end local p0
    :goto_3
    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v0

    goto/16 :goto_0

    .restart local p0
    :cond_5
    sub-float p0, p1, p2

    goto :goto_3

    .line 68
    .restart local v0       #code:I
    .local p1, arg1:Ljava/lang/Object;
    .local p2, arg2:Ljava/lang/Object;
    :pswitch_7
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 69
    .end local v1           #code2:I
    .local v0, d1:D
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p1

    .line 70
    .end local p2           #arg2:Ljava/lang/Object;
    .local p1, d2:D
    new-instance v2, Ljava/lang/Double;

    if-lez p0, :cond_6

    add-double p0, v0, p1

    .end local p0
    :goto_4
    invoke-direct {v2, p0, p1}, Ljava/lang/Double;-><init>(D)V

    move-object p0, v2

    goto/16 :goto_0

    .restart local p0
    :cond_6
    sub-double p0, v0, p1

    goto :goto_4

    .line 72
    .local v0, code:I
    .restart local v1       #code2:I
    .local p1, arg1:Ljava/lang/Object;
    .restart local p2       #arg2:Ljava/lang/Object;
    :pswitch_8
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 73
    .end local v1           #code2:I
    .local v0, d1:D
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p1

    .line 74
    .end local p2           #arg2:Ljava/lang/Object;
    .local p1, d2:D
    new-instance v2, Lgnu/math/DFloNum;

    if-lez p0, :cond_7

    add-double p0, v0, p1

    .end local p0
    :goto_5
    invoke-direct {v2, p0, p1}, Lgnu/math/DFloNum;-><init>(D)V

    move-object p0, v2

    goto/16 :goto_0

    .restart local p0
    :cond_7
    sub-double p0, v0, p1

    goto :goto_5

    .line 39
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
    .end packed-switch
.end method

.method public static applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "plusOrMinus"
    .parameter "init"
    .parameter "args"

    .prologue
    .line 148
    array-length v1, p2

    .line 149
    .local v1, len:I
    move-object v2, p1

    .line 150
    .local v2, result:Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 151
    aget-object v3, p2, v0

    invoke-static {p0, v2, v3}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-object v2
.end method

.method public static applyN(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "plusOrMinus"
    .parameter "args"

    .prologue
    .line 135
    array-length v1, p1

    .line 136
    .local v1, len:I
    if-nez v1, :cond_0

    .line 137
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v3

    .line 143
    :goto_0
    return-object v3

    .line 138
    :cond_0
    const/4 v3, 0x0

    aget-object v2, p1, v3

    .line 139
    .local v2, result:Ljava/lang/Object;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    if-gez p0, :cond_1

    .line 140
    invoke-static {v2}, Lgnu/kawa/functions/AddOp;->$Mn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 142
    aget-object v3, p1, v0

    invoke-static {p0, v2, v3}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 143
    goto :goto_0
.end method

.method public static pairwise(Lgnu/mapping/Procedure;Lgnu/expr/Expression;[Lgnu/expr/Expression;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 9
    .parameter "proc"
    .parameter "rproc"
    .parameter "args"
    .parameter "walker"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 166
    array-length v3, p2

    .line 167
    .local v3, len:I
    aget-object v5, p2, v7

    .line 168
    .local v5, prev:Lgnu/expr/Expression;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 170
    const/4 v6, 0x2

    new-array v1, v6, [Lgnu/expr/Expression;

    .line 171
    .local v1, args2:[Lgnu/expr/Expression;
    aput-object v5, v1, v7

    .line 172
    aget-object v6, p2, v2

    aput-object v6, v1, v8

    .line 173
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, p1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 174
    .local v4, next:Lgnu/expr/ApplyExp;
    instance-of v6, p0, Lgnu/expr/CanInline;

    if-eqz v6, :cond_0

    .line 175
    move-object v0, p0

    check-cast v0, Lgnu/expr/CanInline;

    move-object v6, v0

    invoke-interface {v6, v4, p3, v8}, Lgnu/expr/CanInline;->inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;

    move-result-object v5

    .line 168
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    move-object v5, v4

    goto :goto_1

    .line 179
    .end local v1           #args2:[Lgnu/expr/Expression;
    .end local v4           #next:Lgnu/expr/ApplyExp;
    :cond_1
    return-object v5
.end method

.method public static primInline(ILgnu/expr/ApplyExp;)Lgnu/expr/Expression;
    .locals 14
    .parameter "opcode"
    .parameter "exp"

    .prologue
    const/16 v13, 0x4a

    const/16 v12, 0x46

    const/16 v11, 0x44

    const/16 v10, 0x43

    const/4 v9, 0x0

    .line 250
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 251
    .local v0, args:[Lgnu/expr/Expression;
    array-length v7, v0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 253
    aget-object v7, v0, v9

    invoke-virtual {v7}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 254
    .local v5, type0:Lgnu/bytecode/Type;
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-virtual {v7}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 255
    .local v6, type1:Lgnu/bytecode/Type;
    instance-of v7, v5, Lgnu/bytecode/PrimType;

    if-eqz v7, :cond_8

    instance-of v7, v6, Lgnu/bytecode/PrimType;

    if-eqz v7, :cond_8

    .line 257
    invoke-virtual {v5}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 258
    .local v2, sig0:C
    invoke-virtual {v6}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 259
    .local v3, sig1:C
    const/4 v4, 0x0

    .line 260
    .local v4, type:Lgnu/bytecode/Type;
    const/16 v7, 0x56

    if-eq v2, v7, :cond_0

    const/16 v7, 0x5a

    if-eq v2, v7, :cond_0

    if-eq v2, v10, :cond_0

    const/16 v7, 0x56

    if-eq v3, v7, :cond_0

    const/16 v7, 0x5a

    if-eq v3, v7, :cond_0

    if-ne v3, v10, :cond_1

    .line 284
    :cond_0
    :goto_0
    if-eqz v4, :cond_8

    .line 286
    invoke-static {p0, v4}, Lgnu/expr/PrimProcedure;->makeBuiltinBinary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;

    move-result-object v1

    .line 288
    .local v1, prim:Lgnu/expr/PrimProcedure;
    new-instance v7, Lgnu/expr/ApplyExp;

    invoke-direct {v7, v1, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 292
    .end local v1           #prim:Lgnu/expr/PrimProcedure;
    .end local v2           #sig0:C
    .end local v3           #sig1:C
    .end local v4           #type:Lgnu/bytecode/Type;
    .end local v5           #type0:Lgnu/bytecode/Type;
    .end local v6           #type1:Lgnu/bytecode/Type;
    :goto_1
    return-object v7

    .line 265
    .restart local v2       #sig0:C
    .restart local v3       #sig1:C
    .restart local v4       #type:Lgnu/bytecode/Type;
    .restart local v5       #type0:Lgnu/bytecode/Type;
    .restart local v6       #type1:Lgnu/bytecode/Type;
    :cond_1
    if-eq v2, v11, :cond_2

    if-ne v3, v11, :cond_3

    .line 267
    :cond_2
    add-int/lit8 p0, p0, 0x3

    .line 268
    sget-object v4, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_0

    .line 270
    :cond_3
    if-eq v2, v12, :cond_4

    if-ne v3, v12, :cond_5

    .line 272
    :cond_4
    add-int/lit8 p0, p0, 0x2

    .line 273
    sget-object v4, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_0

    .line 275
    :cond_5
    if-eq v2, v13, :cond_6

    if-ne v3, v13, :cond_7

    .line 277
    :cond_6
    add-int/lit8 p0, p0, 0x1

    .line 278
    sget-object v4, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_0

    .line 282
    :cond_7
    sget-object v4, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_0

    .end local v2           #sig0:C
    .end local v3           #sig1:C
    .end local v4           #type:Lgnu/bytecode/Type;
    .end local v5           #type0:Lgnu/bytecode/Type;
    .end local v6           #type1:Lgnu/bytecode/Type;
    :cond_8
    move-object v7, p1

    .line 292
    goto :goto_1
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"

    .prologue
    .line 157
    iget v0, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    invoke-static {v0, p1}, Lgnu/kawa/functions/AddOp;->applyN(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 11
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 185
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 188
    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v7

    iget-boolean v7, v7, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v7, :cond_0

    move-object v7, p1

    .line 240
    :goto_0
    return-object v7

    .line 190
    :cond_0
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v1

    .line 191
    .local v1, folded:Lgnu/expr/Expression;
    if-eq v1, p1, :cond_1

    move-object v7, v1

    .line 192
    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 194
    .local v0, args:[Lgnu/expr/Expression;
    array-length v7, v0

    if-le v7, v10, :cond_2

    .line 195
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v7

    invoke-static {p0, v7, v0, p2}, Lgnu/kawa/functions/AddOp;->pairwise(Lgnu/mapping/Procedure;Lgnu/expr/Expression;[Lgnu/expr/Expression;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v7

    goto :goto_0

    .line 196
    :cond_2
    array-length v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    iget v7, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    if-gez v7, :cond_8

    .line 198
    aget-object v7, v0, v9

    invoke-virtual {v7}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 199
    .local v6, type0:Lgnu/bytecode/Type;
    instance-of v7, v6, Lgnu/bytecode/PrimType;

    if-eqz v7, :cond_8

    .line 201
    invoke-virtual {v6}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 202
    .local v4, sig0:C
    const/4 v5, 0x0

    .line 203
    .local v5, type:Lgnu/bytecode/Type;
    const/4 v2, 0x0

    .line 204
    .local v2, opcode:I
    const/16 v7, 0x56

    if-eq v4, v7, :cond_3

    const/16 v7, 0x5a

    if-eq v4, v7, :cond_3

    const/16 v7, 0x43

    if-ne v4, v7, :cond_4

    .line 228
    :cond_3
    :goto_1
    if-eqz v5, :cond_8

    .line 230
    invoke-static {v2, v5}, Lgnu/expr/PrimProcedure;->makeBuiltinUnary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;

    move-result-object v3

    .line 232
    .local v3, prim:Lgnu/expr/PrimProcedure;
    new-instance v7, Lgnu/expr/ApplyExp;

    invoke-direct {v7, v3, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_0

    .line 208
    .end local v3           #prim:Lgnu/expr/PrimProcedure;
    :cond_4
    const/16 v7, 0x44

    if-ne v4, v7, :cond_5

    .line 210
    const/16 v2, 0x77

    .line 211
    sget-object v5, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_1

    .line 213
    :cond_5
    const/16 v7, 0x46

    if-ne v4, v7, :cond_6

    .line 215
    const/16 v2, 0x76

    .line 216
    sget-object v5, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_1

    .line 218
    :cond_6
    const/16 v7, 0x4a

    if-ne v4, v7, :cond_7

    .line 220
    const/16 v2, 0x75

    .line 221
    sget-object v5, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_1

    .line 225
    :cond_7
    const/16 v2, 0x74

    .line 226
    sget-object v5, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/kawa/lispexpr/LangPrimType;

    goto :goto_1

    .line 236
    .end local v2           #opcode:I
    .end local v4           #sig0:C
    .end local v5           #type:Lgnu/bytecode/Type;
    .end local v6           #type0:Lgnu/bytecode/Type;
    :cond_8
    array-length v7, v0

    if-ne v7, v10, :cond_9

    .line 238
    invoke-virtual {p0}, Lgnu/kawa/functions/AddOp;->primitiveOpcode()I

    move-result v7

    invoke-static {v7, p1}, Lgnu/kawa/functions/AddOp;->primInline(ILgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v7

    goto :goto_0

    :cond_9
    move-object v7, p1

    .line 240
    goto :goto_0
.end method

.method public primitiveOpcode()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    if-lez v0, :cond_0

    const/16 v0, 0x60

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method
