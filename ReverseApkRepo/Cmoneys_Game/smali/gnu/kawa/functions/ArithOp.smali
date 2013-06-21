.class public abstract Lgnu/kawa/functions/ArithOp;
.super Lgnu/mapping/ProcedureN;
.source "ArithOp.java"

# interfaces
.implements Lgnu/expr/CanInline;
.implements Lgnu/expr/Inlineable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static classify(Lgnu/bytecode/Type;)I
    .locals 6
    .parameter "type"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, kind:I
    instance-of v2, p0, Lgnu/bytecode/PrimType;

    if-eqz v2, :cond_4

    .line 34
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 35
    .local v1, sig:C
    const/16 v2, 0x56

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x43

    if-ne v1, v2, :cond_1

    :cond_0
    move v2, v3

    .line 51
    .end local v1           #sig:C
    :goto_0
    return v2

    .line 37
    .restart local v1       #sig:C
    :cond_1
    const/16 v2, 0x44

    if-eq v1, v2, :cond_2

    const/16 v2, 0x46

    if-ne v1, v2, :cond_3

    :cond_2
    move v2, v4

    .line 38
    goto :goto_0

    :cond_3
    move v2, v5

    .line 40
    goto :goto_0

    .line 42
    .end local v1           #sig:C
    :cond_4
    sget-object v2, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v5

    .line 43
    goto :goto_0

    .line 44
    :cond_5
    sget-object v2, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_6
    sget-object v2, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 47
    const/4 v2, 0x2

    goto :goto_0

    .line 48
    :cond_7
    sget-object v2, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 49
    const/4 v2, 0x1

    goto :goto_0

    :cond_8
    move v2, v3

    .line 51
    goto :goto_0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 15
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 56
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 57
    .local v3, args:[Lgnu/expr/Expression;
    array-length v7, v3

    .line 58
    .local v7, len:I
    if-nez v7, :cond_0

    .line 60
    invoke-virtual {p0}, Lgnu/kawa/functions/ArithOp;->defaultResult()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 135
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v13, 0x1

    if-eq v7, v13, :cond_1

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move v13, v0

    if-eqz v13, :cond_2

    .line 66
    :cond_1
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0, v3}, Lgnu/kawa/functions/ArithOp;->getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v10

    .line 70
    .local v10, type:Lgnu/bytecode/Type;
    invoke-static {v10}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v6

    .line 71
    .local v6, kind:I
    if-nez v6, :cond_3

    .line 73
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    .line 77
    .local v8, targetType:Lgnu/bytecode/Type;
    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v9

    .line 79
    .local v9, tkind:I
    const/4 v13, 0x1

    if-eq v9, v13, :cond_4

    const/4 v13, 0x2

    if-ne v9, v13, :cond_6

    :cond_4
    const/4 v13, 0x1

    if-lt v6, v13, :cond_6

    const/4 v13, 0x4

    if-gt v6, v13, :cond_6

    .line 82
    move v6, v9

    .line 83
    const/4 v13, 0x1

    if-ne v9, v13, :cond_5

    sget-object v13, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/kawa/lispexpr/LangPrimType;

    move-object v12, v13

    .line 106
    .local v12, wtype:Lgnu/bytecode/Type;
    :goto_1
    const/4 v13, 0x1

    if-eq v6, v13, :cond_d

    const/4 v13, 0x2

    if-eq v6, v13, :cond_d

    const/4 v13, 0x7

    if-eq v6, v13, :cond_d

    const/16 v13, 0x8

    if-eq v6, v13, :cond_d

    .line 112
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 83
    .end local v12           #wtype:Lgnu/bytecode/Type;
    :cond_5
    sget-object v13, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/kawa/lispexpr/LangPrimType;

    move-object v12, v13

    goto :goto_1

    .line 86
    :cond_6
    const/16 v13, 0x8

    if-eq v9, v13, :cond_7

    const/4 v13, 0x7

    if-ne v9, v13, :cond_9

    :cond_7
    if-lez v6, :cond_9

    const/16 v13, 0xa

    if-gt v6, v13, :cond_9

    .line 91
    move v6, v9

    .line 92
    const/4 v13, 0x7

    if-ne v9, v13, :cond_8

    sget-object v13, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/kawa/lispexpr/LangPrimType;

    move-object v12, v13

    .restart local v12       #wtype:Lgnu/bytecode/Type;
    :goto_2
    goto :goto_1

    .end local v12           #wtype:Lgnu/bytecode/Type;
    :cond_8
    sget-object v13, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/kawa/lispexpr/LangPrimType;

    move-object v12, v13

    goto :goto_2

    .line 96
    :cond_9
    const/4 v13, 0x7

    if-ne v6, v13, :cond_a

    .line 97
    sget-object v12, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/kawa/lispexpr/LangPrimType;

    .restart local v12       #wtype:Lgnu/bytecode/Type;
    goto :goto_1

    .line 98
    .end local v12           #wtype:Lgnu/bytecode/Type;
    :cond_a
    const/16 v13, 0x8

    if-eq v6, v13, :cond_b

    const/16 v13, 0x9

    if-ne v6, v13, :cond_c

    .line 100
    :cond_b
    const/16 v6, 0x8

    .line 101
    sget-object v12, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/kawa/lispexpr/LangPrimType;

    .restart local v12       #wtype:Lgnu/bytecode/Type;
    goto :goto_1

    .line 104
    .end local v12           #wtype:Lgnu/bytecode/Type;
    :cond_c
    move-object v12, v10

    .restart local v12       #wtype:Lgnu/bytecode/Type;
    goto :goto_1

    .line 116
    :cond_d
    invoke-static {v12}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v11

    .line 118
    .local v11, wtarget:Lgnu/expr/Target;
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    .line 119
    .local v4, code:Lgnu/bytecode/CodeAttr;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v7, :cond_f

    .line 121
    aget-object v13, v3, v5

    move-object v0, v13

    move-object/from16 v1, p2

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 122
    if-nez v5, :cond_e

    .line 119
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 124
    :cond_e
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_4

    .line 130
    :pswitch_1
    invoke-virtual {p0}, Lgnu/kawa/functions/ArithOp;->primitiveOpcode()I

    move-result v14

    move-object v0, v12

    check-cast v0, Lgnu/bytecode/PrimType;

    move-object v13, v0

    invoke-virtual {v4, v14, v13}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    goto :goto_4

    .line 134
    :cond_f
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto/16 :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public defaultResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 7
    .parameter "args"

    .prologue
    .line 139
    array-length v4, p1

    .line 140
    .local v4, len:I
    if-nez v4, :cond_0

    .line 141
    sget-object v6, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/bytecode/ClassType;

    .line 152
    :goto_0
    return-object v6

    .line 142
    :cond_0
    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 143
    .local v5, type:Lgnu/bytecode/Type;
    const/4 v3, 0x0

    .line 144
    .local v3, kindr:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 146
    aget-object v0, p1, v1

    .line 147
    .local v0, arg:Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-static {v6}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v2

    .line 149
    .local v2, kind:I
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-le v2, v3, :cond_2

    .line 150
    :cond_1
    move v3, v2

    .line 144
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    .end local v0           #arg:Lgnu/expr/Expression;
    .end local v2           #kind:I
    :cond_3
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object v6

    goto :goto_0
.end method

.method public abstract primitiveOpcode()I
.end method
