.class public Lgnu/expr/QuoteExp;
.super Lgnu/expr/Expression;
.source "QuoteExp.java"


# static fields
.field public static abstractExp:Lgnu/expr/QuoteExp;

.field public static final classObjectExp:Lgnu/expr/QuoteExp;

.field public static falseExp:Lgnu/expr/QuoteExp;

.field public static nullExp:Lgnu/expr/QuoteExp;

.field public static trueExp:Lgnu/expr/QuoteExp;

.field public static undefined_exp:Lgnu/expr/QuoteExp;

.field public static voidExp:Lgnu/expr/QuoteExp;


# instance fields
.field protected type:Lgnu/bytecode/Type;

.field value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    .line 35
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    .line 37
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-direct {v0, v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 39
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    .line 40
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    .line 41
    new-instance v0, Lgnu/expr/QuoteExp;

    const/4 v1, 0x0

    sget-object v2, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    invoke-direct {v0, v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    .line 43
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 62
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "val"
    .parameter "type"

    .prologue
    .line 64
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    iput-object p2, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;
    .locals 1
    .parameter "value"

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    sget-object v0, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    .line 59
    .end local p0
    :goto_0
    return-object v0

    .line 50
    .restart local p0
    :cond_0
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_1

    .line 51
    sget-object v0, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    if-ne p0, v0, :cond_2

    .line 53
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 54
    :cond_2
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_3

    .line 55
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 57
    :cond_3
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 58
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    :cond_4
    sget-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 59
    .restart local p0
    :cond_5
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 70
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 75
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v0, v1, :cond_0

    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    iget-object v1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-static {v1}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 83
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {p2, p1, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 0
    .parameter "mapper"

    .prologue
    .line 89
    return-object p0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    .line 30
    :goto_0
    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v1, :cond_1

    .line 24
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 26
    sget-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    goto :goto_0

    .line 27
    :cond_2
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne p0, v0, :cond_3

    .line 28
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 30
    :cond_3
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/expr/Declaration;Z)Lgnu/expr/Expression;
    .locals 16
    .parameter "exp"
    .parameter "walker"
    .parameter "decl"
    .parameter "argsInlined"

    .prologue
    .line 100
    sget-object v13, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, p0

    move-object v1, v13

    if-ne v0, v1, :cond_0

    move-object/from16 v13, p1

    .line 151
    :goto_0
    return-object v13

    .line 102
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 103
    .local v6, fval:Ljava/lang/Object;
    instance-of v13, v6, Lgnu/mapping/Procedure;

    if-nez v13, :cond_3

    .line 104
    if-eqz p3, :cond_1

    if-nez v6, :cond_2

    :cond_1
    const-string v13, "called value is not a procedure"

    :goto_1
    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v13

    goto :goto_0

    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "calling "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " which is a "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 107
    :cond_3
    move-object v0, v6

    check-cast v0, Lgnu/mapping/Procedure;

    move-object v12, v0

    .line 108
    .local v12, proc:Lgnu/mapping/Procedure;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v10

    .line 109
    .local v10, nargs:I
    invoke-static {v12, v10}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, msg:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 111
    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v13

    goto :goto_0

    .line 112
    :cond_4
    instance-of v13, v12, Lgnu/expr/CanInline;

    if-eqz v13, :cond_5

    .line 113
    check-cast v12, Lgnu/expr/CanInline;

    .end local v12           #proc:Lgnu/mapping/Procedure;
    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-interface {v0, v1, v2, v3}, Lgnu/expr/CanInline;->inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;

    move-result-object v13

    goto :goto_0

    .line 114
    .restart local v12       #proc:Lgnu/mapping/Procedure;
    :cond_5
    if-nez p4, :cond_6

    .line 115
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v13, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v14, v0

    array-length v14, v14

    move-object/from16 v0, p2

    move-object v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->walkExps([Lgnu/expr/Expression;I)[Lgnu/expr/Expression;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 116
    :cond_6
    const/4 v13, 0x2

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 118
    move-object/from16 v0, p1

    move-object v1, v12

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v5

    .line 119
    .local v5, e:Lgnu/expr/Expression;
    move-object v0, v5

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_7

    .line 120
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v13

    goto/16 :goto_0

    .line 122
    .end local v5           #e:Lgnu/expr/Expression;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v4

    .line 123
    .local v4, comp:Lgnu/expr/Compilation;
    invoke-virtual {v4, v12}, Lgnu/expr/Compilation;->inlineOk(Lgnu/mapping/Procedure;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 125
    instance-of v13, v12, Lgnu/expr/Inlineable;

    if-eqz v13, :cond_9

    .line 127
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_8

    move-object/from16 v13, p1

    .line 128
    goto/16 :goto_0

    .line 129
    :cond_8
    new-instance v13, Lgnu/expr/ApplyExp;

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v14

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v13

    goto/16 :goto_0

    .line 131
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v13, v0

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v14

    move-object v0, v12

    move-object/from16 v1, p3

    move-object v2, v13

    move-object v3, v14

    invoke-static {v0, v1, v2, v3}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v8

    .line 134
    .local v8, mproc:Lgnu/expr/PrimProcedure;
    if-eqz v8, :cond_d

    .line 137
    invoke-virtual {v8}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v13

    if-nez v13, :cond_a

    if-nez p3, :cond_b

    .line 138
    :cond_a
    new-instance v11, Lgnu/expr/ApplyExp;

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v13, v0

    invoke-direct {v11, v8, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 148
    .local v11, nexp:Lgnu/expr/ApplyExp;
    :goto_2
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v13

    goto/16 :goto_0

    .line 139
    .end local v11           #nexp:Lgnu/expr/ApplyExp;
    :cond_b
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object v13, v0

    if-nez v13, :cond_c

    move-object/from16 v13, p1

    .line 140
    goto/16 :goto_0

    .line 143
    :cond_c
    add-int/lit8 v13, v10, 0x1

    new-array v7, v13, [Lgnu/expr/Expression;

    .line 144
    .local v7, margs:[Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v13, v14, v7, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    const/4 v13, 0x0

    new-instance v14, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object v15, v0

    invoke-direct {v14, v15}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v14, v7, v13

    .line 146
    new-instance v11, Lgnu/expr/ApplyExp;

    invoke-direct {v11, v8, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .restart local v11       #nexp:Lgnu/expr/ApplyExp;
    goto :goto_2

    .end local v7           #margs:[Lgnu/expr/Expression;
    .end local v8           #mproc:Lgnu/expr/PrimProcedure;
    .end local v11           #nexp:Lgnu/expr/ApplyExp;
    :cond_d
    move-object/from16 v13, p1

    .line 151
    goto/16 :goto_0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 5
    .parameter "out"

    .prologue
    const-string v4, ")"

    .line 163
    const-string v2, "(Quote"

    const-string v3, ")"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v4, v3}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 165
    iget-object v1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    .line 166
    .local v1, val:Ljava/lang/Object;
    instance-of v2, v1, Lgnu/expr/Expression;

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .end local v1           #val:Ljava/lang/Object;
    :cond_0
    iget-object v0, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 171
    .local v0, saveFormat:Lgnu/lists/AbstractFormat;
    :try_start_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->getFormat(Z)Lgnu/lists/AbstractFormat;

    move-result-object v2

    iput-object v2, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 172
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iput-object v0, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 185
    const-string v2, ")"

    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 186
    return-void

    .line 183
    :catchall_0
    move-exception v2

    iput-object v0, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    throw v2
.end method

.method public side_effects()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuoteExp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final valueIfConstant()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lgnu/expr/QuoteExp;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "walker"

    .prologue
    .line 94
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkQuoteExp(Lgnu/expr/QuoteExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
