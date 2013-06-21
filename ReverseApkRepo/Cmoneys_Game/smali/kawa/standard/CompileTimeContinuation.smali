.class Lkawa/standard/CompileTimeContinuation;
.super Lgnu/mapping/ProcedureN;
.source "callcc.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field blockTarget:Lgnu/expr/Target;

.field exitableBlock:Lgnu/bytecode/ExitableBlock;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 226
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 227
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 228
    .local v0, args:[Lgnu/expr/Expression;
    array-length v3, v0

    .line 229
    .local v3, nargs:I
    iget-object v6, p0, Lkawa/standard/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    instance-of v6, v6, Lgnu/expr/IgnoreTarget;

    if-nez v6, :cond_0

    iget-object v6, p0, Lkawa/standard/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    instance-of v6, v6, Lgnu/expr/ConsumerTarget;

    if-eqz v6, :cond_2

    :cond_0
    move v4, v8

    .line 231
    .local v4, noStack:Z
    :goto_0
    if-eqz v4, :cond_3

    const/4 v6, 0x0

    move-object v5, v6

    .line 232
    .local v5, typeNeeded:Lgnu/bytecode/Type;
    :goto_1
    if-nez v4, :cond_1

    if-ne v3, v8, :cond_4

    aget-object v6, v0, v7

    invoke-virtual {v6}, Lgnu/expr/Expression;->isSingleValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 234
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 235
    aget-object v6, v0, v2

    iget-object v7, p0, Lkawa/standard/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    invoke-virtual {v6, p2, v7}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2           #i:I
    .end local v4           #noStack:Z
    .end local v5           #typeNeeded:Lgnu/bytecode/Type;
    :cond_2
    move v4, v7

    .line 229
    goto :goto_0

    .line 231
    .restart local v4       #noStack:Z
    :cond_3
    invoke-virtual {p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    move-object v5, v6

    goto :goto_1

    .line 239
    .restart local v5       #typeNeeded:Lgnu/bytecode/Type;
    :cond_4
    new-instance v6, Lgnu/expr/ApplyExp;

    sget-object v7, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v8, "make"

    sget-object v9, Lgnu/expr/Compilation;->applyNargs:[Lgnu/bytecode/Type;

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    iget-object v7, p0, Lkawa/standard/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    invoke-virtual {v6, p2, v7}, Lgnu/expr/ApplyExp;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 244
    :cond_5
    iget-object v6, p0, Lkawa/standard/CompileTimeContinuation;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v6}, Lgnu/bytecode/ExitableBlock;->exit()V

    .line 245
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 249
    sget-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    return-object v0
.end method
