.class public Lgnu/expr/ProcInitializer;
.super Lgnu/expr/Initializer;
.source "ProcInitializer.java"


# instance fields
.field proc:Lgnu/expr/LambdaExp;


# direct methods
.method public constructor <init>(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V
    .locals 2
    .parameter "lexp"
    .parameter "comp"
    .parameter "field"

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/expr/Initializer;-><init>()V

    .line 11
    iput-object p3, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    .line 12
    iput-object p1, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    .line 13
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    move-object v0, v1

    .line 15
    .local v0, heapLambda:Lgnu/expr/LambdaExp;
    :goto_0
    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object v1, p0, Lgnu/expr/ProcInitializer;->next:Lgnu/expr/Initializer;

    .line 18
    iput-object p0, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 25
    :goto_1
    return-void

    .line 13
    .end local v0           #heapLambda:Lgnu/expr/LambdaExp;
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 22
    .restart local v0       #heapLambda:Lgnu/expr/LambdaExp;
    :cond_1
    iget-object v1, v0, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    iput-object v1, p0, Lgnu/expr/ProcInitializer;->next:Lgnu/expr/Initializer;

    .line 23
    iput-object p0, v0, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    goto :goto_1
.end method

.method public static emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V
    .locals 6
    .parameter "proc"
    .parameter "comp"

    .prologue
    .line 30
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 31
    .local v0, code:Lgnu/bytecode/CodeAttr;
    sget-object v2, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 32
    .local v2, procClass:Lgnu/bytecode/ClassType;
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 34
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    .line 36
    .local v1, owning:Lgnu/expr/LambdaExp;
    :goto_0
    instance-of v3, v1, Lgnu/expr/ClassExp;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v3, :cond_2

    .line 37
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v1

    .end local v1           #owning:Lgnu/expr/LambdaExp;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 67
    :goto_1
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 68
    iget-object v1, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    :goto_2
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v1, v3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 73
    iget v1, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget-object v3, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v3, :cond_8

    iget v3, p0, Lgnu/expr/LambdaExp;->max_args:I

    :goto_3
    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 75
    const-string v1, "<init>"

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 76
    .local v1, initModuleMethod:Lgnu/bytecode/Method;
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 79
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    .end local v1           #initModuleMethod:Lgnu/bytecode/Method;
    if-eqz v1, :cond_a

    .line 81
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    array-length v3, v1

    .line 82
    .local v3, len:I
    const/4 v1, 0x0

    .end local v2           #procClass:Lgnu/bytecode/ClassType;
    .local v1, i:I
    :goto_4
    if-ge v1, v3, :cond_a

    .line 84
    iget-object v2, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 86
    .local v2, key:Ljava/lang/Object;
    if-eqz v2, :cond_0

    sget-object v4, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    if-eq v2, v4, :cond_0

    .line 88
    iget-object v4, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    .line 89
    .local v4, val:Ljava/lang/Object;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 90
    invoke-virtual {p1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 91
    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    .line 92
    .local v2, target:Lgnu/expr/Target;
    instance-of v5, v4, Lgnu/expr/Expression;

    if-eqz v5, :cond_9

    .line 93
    check-cast v4, Lgnu/expr/Expression;

    .end local v4           #val:Ljava/lang/Object;
    invoke-virtual {v4, p1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 96
    :goto_5
    const-string v2, "gnu.mapping.PropertySet"

    .end local v2           #target:Lgnu/expr/Target;
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v4, "setProperty"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 98
    .local v2, m:Lgnu/bytecode/Method;
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 82
    .end local v2           #m:Lgnu/bytecode/Method;
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    .line 34
    .end local v1           #i:I
    .end local v3           #len:I
    .local v2, procClass:Lgnu/bytecode/ClassType;
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    goto/16 :goto_0

    .line 38
    .local v1, owning:Lgnu/expr/LambdaExp;
    :cond_2
    instance-of v1, v1, Lgnu/expr/ModuleExp;

    .end local v1           #owning:Lgnu/expr/LambdaExp;
    if-eqz v1, :cond_3

    iget-object v1, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v3, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne v1, v3, :cond_4

    iget-object v1, p1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_4

    .line 41
    :cond_3
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    goto/16 :goto_1

    .line 44
    :cond_4
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    if-nez v1, :cond_5

    .line 46
    iget-object v1, v0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    iget-object v3, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    const-string v4, "$instance"

    invoke-virtual {v1, v0, v3, v4}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v1

    iput-object v1, p1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    .line 50
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v3, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v1

    if-nez v1, :cond_6

    .line 52
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 53
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 54
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v1, v1, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 55
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    const-string v3, "$main"

    iget-object v4, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v1

    iput-object v1, p1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    .line 57
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 58
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 59
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 63
    :goto_6
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 65
    :cond_5
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto/16 :goto_1

    .line 62
    :cond_6
    iget-object v1, p1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_6

    .line 68
    :cond_7
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 73
    :cond_8
    const/4 v3, -0x1

    goto/16 :goto_3

    .line 95
    .local v1, i:I
    .local v2, target:Lgnu/expr/Target;
    .restart local v3       #len:I
    .restart local v4       #val:Ljava/lang/Object;
    :cond_9
    invoke-virtual {p1, v4, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto/16 :goto_5

    .line 102
    .end local v1           #i:I
    .end local v2           #target:Lgnu/expr/Target;
    .end local v3           #len:I
    .end local v4           #val:Ljava/lang/Object;
    :cond_a
    return-void
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 106
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 107
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 110
    :cond_0
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-static {v1, p1}, Lgnu/expr/ProcInitializer;->emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 112
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method public reportError(Ljava/lang/String;Lgnu/expr/Compilation;)V
    .locals 7
    .parameter "message"
    .parameter "comp"

    .prologue
    .line 120
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, saveFile:Ljava/lang/String;
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v3

    .line 122
    .local v3, saveLine:I
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v1

    .line 123
    .local v1, saveColumn:I
    iget-object v5, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-virtual {p2, v5}, Lgnu/expr/Compilation;->setLocation(Lgnu/text/SourceLocator;)V

    .line 124
    iget-object v5, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 126
    .local v4, sbuf:Ljava/lang/StringBuffer;
    if-nez v0, :cond_0

    .line 127
    const-string v5, "unnamed procedure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :goto_0
    const/16 v5, 0x65

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 134
    invoke-virtual {p2, v2, v3, v1}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 135
    return-void

    .line 130
    :cond_0
    const-string v5, "procedure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
