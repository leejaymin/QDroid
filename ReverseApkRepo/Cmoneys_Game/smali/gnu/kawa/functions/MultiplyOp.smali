.class public Lgnu/kawa/functions/MultiplyOp;
.super Lgnu/kawa/functions/ArithOp;
.source "MultiplyOp.java"


# static fields
.field public static final $St:Lgnu/kawa/functions/MultiplyOp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lgnu/kawa/functions/MultiplyOp;

    const-string v1, "*"

    invoke-direct {v0, v1}, Lgnu/kawa/functions/MultiplyOp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 36
    check-cast p0, Lgnu/math/Numeric;

    .end local p0
    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .parameter "args"

    .prologue
    .line 41
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    .line 42
    .local v22, len:I
    if-nez v22, :cond_0

    .line 43
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v24

    .line 102
    :goto_0
    return-object v24

    .line 44
    :cond_0
    const/16 v24, 0x0

    aget-object v23, p1, v24

    check-cast v23, Ljava/lang/Number;

    .line 45
    .local v23, result:Ljava/lang/Number;
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v7

    .line 46
    .local v7, code:I
    const/4 v15, 0x1

    .local v15, i:I
    :goto_1
    move v0, v15

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 48
    aget-object v2, p1, v15

    .line 49
    .local v2, arg2:Ljava/lang/Object;
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v8

    .line 50
    .local v8, code2:I
    if-ge v7, v8, :cond_1

    move v7, v8

    .line 52
    :cond_1
    packed-switch v7, :pswitch_data_0

    .line 98
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v24

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v23

    .line 46
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 55
    :pswitch_0
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v16

    .line 56
    .local v16, i1:I
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v17

    .line 57
    .local v17, i2:I
    new-instance v23, Ljava/lang/Integer;

    .end local v23           #result:Ljava/lang/Number;
    mul-int v24, v16, v17

    invoke-direct/range {v23 .. v24}, Ljava/lang/Integer;-><init>(I)V

    .line 58
    .restart local v23       #result:Ljava/lang/Number;
    goto :goto_2

    .line 60
    .end local v16           #i1:I
    .end local v17           #i2:I
    :pswitch_1
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v18

    .line 61
    .local v18, l1:J
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v20

    .line 62
    .local v20, l2:J
    new-instance v23, Ljava/lang/Long;

    .end local v23           #result:Ljava/lang/Number;
    mul-long v24, v18, v20

    invoke-direct/range {v23 .. v25}, Ljava/lang/Long;-><init>(J)V

    .line 63
    .restart local v23       #result:Ljava/lang/Number;
    goto :goto_2

    .line 65
    .end local v18           #l1:J
    .end local v20           #l2:J
    :pswitch_2
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v5

    .line 66
    .local v5, bi1:Ljava/math/BigInteger;
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v6

    .line 67
    .local v6, bi2:Ljava/math/BigInteger;
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    .line 68
    goto :goto_2

    .line 70
    .end local v5           #bi1:Ljava/math/BigInteger;
    .end local v6           #bi2:Ljava/math/BigInteger;
    :pswitch_3
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v24

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v23

    .line 72
    goto :goto_2

    .line 74
    :pswitch_4
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 75
    .local v3, bd1:Ljava/math/BigDecimal;
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 76
    .local v4, bd2:Ljava/math/BigDecimal;
    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v23

    .line 77
    goto :goto_2

    .line 79
    .end local v3           #bd1:Ljava/math/BigDecimal;
    .end local v4           #bd2:Ljava/math/BigDecimal;
    :pswitch_5
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v24

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v23

    .line 81
    goto :goto_2

    .line 83
    :pswitch_6
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v13

    .line 84
    .local v13, f1:F
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v14

    .line 85
    .local v14, f2:F
    new-instance v23, Ljava/lang/Float;

    .end local v23           #result:Ljava/lang/Number;
    mul-float v24, v13, v14

    invoke-direct/range {v23 .. v24}, Ljava/lang/Float;-><init>(F)V

    .line 86
    .restart local v23       #result:Ljava/lang/Number;
    goto :goto_2

    .line 88
    .end local v13           #f1:F
    .end local v14           #f2:F
    :pswitch_7
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v9

    .line 89
    .local v9, d1:D
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v11

    .line 90
    .local v11, d2:D
    new-instance v23, Ljava/lang/Double;

    .end local v23           #result:Ljava/lang/Number;
    mul-double v24, v9, v11

    invoke-direct/range {v23 .. v25}, Ljava/lang/Double;-><init>(D)V

    .line 91
    .restart local v23       #result:Ljava/lang/Number;
    goto :goto_2

    .line 93
    .end local v9           #d1:D
    .end local v11           #d2:D
    :pswitch_8
    invoke-static/range {v23 .. v23}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v9

    .line 94
    .restart local v9       #d1:D
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v11

    .line 95
    .restart local v11       #d2:D
    new-instance v23, Lgnu/math/DFloNum;

    .end local v23           #result:Ljava/lang/Number;
    mul-double v24, v9, v11

    invoke-direct/range {v23 .. v25}, Lgnu/math/DFloNum;-><init>(D)V

    .line 96
    .restart local v23       #result:Ljava/lang/Number;
    goto/16 :goto_2

    .end local v2           #arg2:Ljava/lang/Object;
    .end local v8           #code2:I
    .end local v9           #d1:D
    .end local v11           #d2:D
    :cond_2
    move-object/from16 v24, v23

    .line 102
    goto/16 :goto_0

    .line 52
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

.method public defaultResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    const/4 v3, 0x2

    .line 108
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 109
    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    iget-boolean v2, v2, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v2, :cond_0

    move-object v2, p1

    .line 120
    :goto_0
    return-object v2

    .line 111
    :cond_0
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v1

    .line 112
    .local v1, folded:Lgnu/expr/Expression;
    if-eq v1, p1, :cond_1

    move-object v2, v1

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 115
    .local v0, args:[Lgnu/expr/Expression;
    array-length v2, v0

    if-le v2, v3, :cond_2

    .line 116
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v2

    invoke-static {p0, v2, v0, p2}, Lgnu/kawa/functions/AddOp;->pairwise(Lgnu/mapping/Procedure;Lgnu/expr/Expression;[Lgnu/expr/Expression;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_0

    .line 117
    :cond_2
    array-length v2, v0

    if-ne v2, v3, :cond_3

    .line 118
    const/16 v2, 0x68

    invoke-static {v2, p1}, Lgnu/kawa/functions/AddOp;->primInline(ILgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 120
    goto :goto_0
.end method

.method public primitiveOpcode()I
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x68

    return v0
.end method
