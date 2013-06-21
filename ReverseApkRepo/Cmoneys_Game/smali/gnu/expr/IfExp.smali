.class public Lgnu/expr/IfExp;
.super Lgnu/expr/Expression;
.source "IfExp.java"


# instance fields
.field else_clause:Lgnu/expr/Expression;

.field test:Lgnu/expr/Expression;

.field then_clause:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 0
    .parameter "i"
    .parameter "t"
    .parameter "e"

    .prologue
    .line 20
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    iput-object p2, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    iput-object p3, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 22
    return-void
.end method

.method public static compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 14
    .parameter "test"
    .parameter "then_clause"
    .parameter "else_clause"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 50
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v9

    .line 51
    .local v9, language:Lgnu/expr/Language;
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    .line 52
    .local v5, code:Lgnu/bytecode/CodeAttr;
    const/4 v8, 0x0

    .line 57
    .local v8, falseLabel:Lgnu/bytecode/Label;
    move-object/from16 v0, p4

    instance-of v0, v0, Lgnu/expr/ConditionalTarget;

    move v13, v0

    if-eqz v13, :cond_4

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move v13, v0

    if-eqz v13, :cond_4

    .line 60
    const/4 v7, 0x1

    .line 61
    .local v7, falseInherited:Z
    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 62
    .local v12, value:Ljava/lang/Object;
    invoke-virtual {v9, v12}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 63
    move-object/from16 v0, p4

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v13, v0

    iget-object v8, v13, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    .line 76
    .end local v12           #value:Ljava/lang/Object;
    :goto_0
    if-nez v8, :cond_0

    .line 78
    new-instance v8, Lgnu/bytecode/Label;

    .end local v8           #falseLabel:Lgnu/bytecode/Label;
    invoke-direct {v8, v5}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 83
    .restart local v8       #falseLabel:Lgnu/bytecode/Label;
    :cond_0
    if-ne p0, p1, :cond_6

    move-object/from16 v0, p4

    instance-of v0, v0, Lgnu/expr/ConditionalTarget;

    move v13, v0

    if-eqz v13, :cond_6

    instance-of v13, p1, Lgnu/expr/ReferenceExp;

    if-eqz v13, :cond_6

    .line 86
    const/4 v10, 0x1

    .line 87
    .local v10, trueInherited:Z
    move-object/from16 v0, p4

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v13, v0

    iget-object v11, v13, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    .line 94
    .local v11, trueLabel:Lgnu/bytecode/Label;
    :goto_1
    new-instance v6, Lgnu/expr/ConditionalTarget;

    invoke-direct {v6, v11, v8, v9}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    .line 96
    .local v6, ctarget:Lgnu/expr/ConditionalTarget;
    if-eqz v10, :cond_1

    .line 97
    const/4 v13, 0x0

    iput-boolean v13, v6, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 98
    :cond_1
    move-object v0, p0

    move-object/from16 v1, p3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 99
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitIfThen()V

    .line 100
    if-nez v10, :cond_2

    .line 102
    invoke-virtual {v11, v5}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 106
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v4, v0

    .line 107
    .local v4, callContextSave:Lgnu/bytecode/Variable;
    move-object v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 108
    move-object v0, v4

    move-object/from16 v1, p3

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 110
    .end local v4           #callContextSave:Lgnu/bytecode/Variable;
    :cond_2
    if-nez v7, :cond_8

    .line 112
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 113
    invoke-virtual {v8, v5}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 115
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v4, v0

    .line 116
    .restart local v4       #callContextSave:Lgnu/bytecode/Variable;
    if-nez p2, :cond_7

    .line 117
    sget-object v13, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p3

    move-object v1, v13

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 120
    :goto_2
    move-object v0, v4

    move-object/from16 v1, p3

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 124
    .end local v4           #callContextSave:Lgnu/bytecode/Variable;
    :goto_3
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 125
    return-void

    .line 65
    .end local v6           #ctarget:Lgnu/expr/ConditionalTarget;
    .end local v10           #trueInherited:Z
    .end local v11           #trueLabel:Lgnu/bytecode/Label;
    .restart local v12       #value:Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p4

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v13, v0

    iget-object v8, v13, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    goto :goto_0

    .line 67
    .end local v7           #falseInherited:Z
    .end local v12           #value:Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/ExitExp;

    move v13, v0

    if-eqz v13, :cond_5

    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/ExitExp;

    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    instance-of v13, v13, Lgnu/expr/QuoteExp;

    if-eqz v13, :cond_5

    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/ExitExp;

    move-object v13, v0

    iget-object v3, v13, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    .local v3, block:Lgnu/expr/BlockExp;
    iget-object v13, v3, Lgnu/expr/BlockExp;->exitTarget:Lgnu/expr/Target;

    instance-of v13, v13, Lgnu/expr/IgnoreTarget;

    if-eqz v13, :cond_5

    iget-object v13, v3, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v13}, Lgnu/bytecode/ExitableBlock;->exitIsGoto()Lgnu/bytecode/Label;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 72
    const/4 v7, 0x1

    .restart local v7       #falseInherited:Z
    goto/16 :goto_0

    .line 75
    .end local v3           #block:Lgnu/expr/BlockExp;
    .end local v7           #falseInherited:Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #falseInherited:Z
    goto/16 :goto_0

    .line 91
    :cond_6
    const/4 v10, 0x0

    .line 92
    .restart local v10       #trueInherited:Z
    new-instance v11, Lgnu/bytecode/Label;

    invoke-direct {v11, v5}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .restart local v11       #trueLabel:Lgnu/bytecode/Label;
    goto/16 :goto_1

    .line 119
    .restart local v4       #callContextSave:Lgnu/bytecode/Variable;
    .restart local v6       #ctarget:Lgnu/expr/ConditionalTarget;
    :cond_7
    invoke-virtual/range {p2 .. p4}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_2

    .line 123
    .end local v4           #callContextSave:Lgnu/bytecode/Variable;
    :cond_8
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    goto :goto_3
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lgnu/expr/IfExp;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 41
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    iget-object v1, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    iget-object v2, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v2, :cond_0

    sget-object v2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    :goto_0
    invoke-static {v0, v1, v2, p1, p2}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 44
    return-void

    .line 41
    :cond_0
    iget-object v2, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    goto :goto_0
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 143
    iget-object v2, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 144
    .local v0, t1:Lgnu/bytecode/Type;
    iget-object v2, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v2, :cond_0

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object v1, v2

    .line 145
    .local v1, t2:Lgnu/bytecode/Type;
    :goto_0
    if-ne v0, v1, :cond_1

    move-object v2, v0

    .line 149
    :goto_1
    return-object v2

    .line 144
    .end local v1           #t2:Lgnu/bytecode/Type;
    :cond_0
    iget-object v2, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 149
    .restart local v1       #t2:Lgnu/bytecode/Type;
    :cond_1
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_1
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 4
    .parameter "out"

    .prologue
    const/4 v2, 0x0

    const-string v3, ")"

    .line 154
    const-string v0, "(If "

    const-string v1, ")"

    invoke-virtual {p1, v0, v2, v3}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 155
    const/4 v0, -0x2

    invoke-virtual {p1, v0, v2}, Lgnu/mapping/OutPort;->setIndentation(IZ)V

    .line 156
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 157
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 158
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 159
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 162
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 164
    :cond_0
    const-string v0, ")"

    invoke-virtual {p1, v3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method protected walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "walker"

    .prologue
    .line 129
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkIfExp(Lgnu/expr/IfExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkChildren(Lgnu/expr/ExpWalker;)V
    .locals 1
    .parameter "walker"

    .prologue
    .line 134
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    .line 135
    iget-object v0, p1, Lgnu/expr/ExpWalker;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v0}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    .line 137
    :cond_0
    iget-object v0, p1, Lgnu/expr/ExpWalker;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v0}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 139
    :cond_1
    return-void
.end method
