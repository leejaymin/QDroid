.class public Lgnu/expr/TryExp;
.super Lgnu/expr/Expression;
.source "TryExp.java"


# instance fields
.field catch_clauses:Lgnu/expr/CatchClause;

.field finally_clause:Lgnu/expr/Expression;

.field try_clause:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 0
    .parameter "try_clause"
    .parameter "finally_clause"

    .prologue
    .line 26
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 27
    iput-object p1, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 28
    iput-object p2, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    .line 29
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v2, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    if-eqz v2, :cond_0

    .line 36
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "internal error - TryExp.eval called"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 40
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iget-object v2, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    .line 56
    return-void

    .line 42
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 44
    .local v1, ex:Ljava/lang/Throwable;
    :try_start_1
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .local v0, clause:Lgnu/expr/CatchClause;
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    iget-object v0, v0, Lgnu/expr/CatchClause;->next:Lgnu/expr/CatchClause;

    goto :goto_0

    .line 50
    :cond_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local v0           #clause:Lgnu/expr/CatchClause;
    .end local v1           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v3, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    throw v2
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 6
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 60
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 61
    .local v1, code:Lgnu/bytecode/CodeAttr;
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v2, v4

    .line 63
    .local v2, has_finally:Z
    :goto_0
    instance-of v4, p2, Lgnu/expr/StackTarget;

    if-nez v4, :cond_0

    instance-of v4, p2, Lgnu/expr/ConsumerTarget;

    if-nez v4, :cond_0

    instance-of v4, p2, Lgnu/expr/IgnoreTarget;

    if-nez v4, :cond_0

    instance-of v4, p2, Lgnu/expr/ConditionalTarget;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-nez v4, :cond_2

    .line 66
    :cond_0
    move-object v3, p2

    .line 69
    .local v3, ttarg:Lgnu/expr/Target;
    :goto_1
    instance-of v4, v3, Lgnu/expr/StackTarget;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v2, v4}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 71
    iget-object v4, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v4, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 72
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 73
    .local v0, catch_clause:Lgnu/expr/CatchClause;
    :goto_3
    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {v0, p1, v3}, Lgnu/expr/CatchClause;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 73
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v0

    goto :goto_3

    .line 61
    .end local v0           #catch_clause:Lgnu/expr/CatchClause;
    .end local v2           #has_finally:Z
    .end local v3           #ttarg:Lgnu/expr/Target;
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0

    .line 68
    .restart local v2       #has_finally:Z
    :cond_2
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v3

    .restart local v3       #ttarg:Lgnu/expr/Target;
    goto :goto_1

    .line 69
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 78
    .restart local v0       #catch_clause:Lgnu/expr/CatchClause;
    :cond_4
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v4, :cond_5

    .line 80
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 81
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    sget-object v5, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v4, p1, v5}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 82
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 84
    :cond_5
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 85
    if-eq v3, p2, :cond_6

    .line 86
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 87
    :cond_6
    return-void
.end method

.method public final getCatchClauses()Lgnu/expr/CatchClause;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    return-object v0
.end method

.method public final getFinallyClause()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 4
    .parameter "ps"

    .prologue
    const-string v3, ")"

    .line 118
    const-string v1, "(Try"

    const-string v2, ")"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v3, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 120
    iget-object v1, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 121
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 122
    .local v0, catch_clause:Lgnu/expr/CatchClause;
    :goto_0
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Lgnu/expr/CatchClause;->print(Lgnu/mapping/OutPort;)V

    .line 122
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 129
    const-string v1, " finally: "

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 132
    :cond_1
    const-string v1, ")"

    invoke-virtual {p1, v3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public final setCatchClauses(Lgnu/expr/CatchClause;)V
    .locals 0
    .parameter "catch_clauses"

    .prologue
    .line 22
    iput-object p1, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 23
    return-void
.end method

.method protected walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "walker"

    .prologue
    .line 91
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkTryExp(Lgnu/expr/TryExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkChildren(Lgnu/expr/ExpWalker;)V
    .locals 2
    .parameter "walker"

    .prologue
    .line 96
    iget-object v1, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v1}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 97
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 98
    .local v0, catch_clause:Lgnu/expr/CatchClause;
    :goto_0
    iget-object v1, p1, Lgnu/expr/ExpWalker;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1, v0}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 101
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v1, p1, Lgnu/expr/ExpWalker;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v1}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    .line 106
    :cond_1
    return-void
.end method
