.class public Lgnu/expr/ObjectExp;
.super Lgnu/expr/ClassExp;
.source "ObjectExp.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgnu/expr/ClassExp;-><init>(Z)V

    .line 9
    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 6
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lgnu/expr/ObjectExp;->compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    .line 19
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 20
    .local v2, code:Lgnu/bytecode/CodeAttr;
    iget-object v4, p0, Lgnu/expr/ObjectExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 21
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 22
    iget-object v4, p0, Lgnu/expr/ObjectExp;->type:Lgnu/bytecode/ClassType;

    invoke-static {v4, p0}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v3

    .line 23
    .local v3, init:Lgnu/bytecode/Method;
    iget-object v4, p0, Lgnu/expr/ObjectExp;->closureEnvField:Lgnu/bytecode/Field;

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {p0}, Lgnu/expr/ObjectExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 26
    .local v0, caller:Lgnu/expr/LambdaExp;
    sget v4, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    invoke-virtual {p0}, Lgnu/expr/ObjectExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v4

    iget-object v4, v4, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object v1, v4

    .line 29
    .local v1, closureEnv:Lgnu/bytecode/Variable;
    :goto_0
    if-nez v1, :cond_3

    .line 30
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 34
    .end local v0           #caller:Lgnu/expr/LambdaExp;
    .end local v1           #closureEnv:Lgnu/bytecode/Variable;
    :cond_0
    :goto_1
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 36
    invoke-virtual {p0, p1}, Lgnu/expr/ObjectExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 37
    return-void

    .line 26
    .restart local v0       #caller:Lgnu/expr/LambdaExp;
    :cond_1
    iget-object v4, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object v1, v4

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object v1, v4

    goto :goto_0

    .line 32
    .restart local v1       #closureEnv:Lgnu/bytecode/Variable;
    :cond_3
    invoke-virtual {v2, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_1
.end method

.method protected walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "walker"

    .prologue
    .line 13
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkObjectExp(Lgnu/expr/ObjectExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
