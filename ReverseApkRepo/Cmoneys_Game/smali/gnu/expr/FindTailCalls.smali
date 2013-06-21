.class public Lgnu/expr/FindTailCalls;
.super Lgnu/expr/ExpWalker;
.source "FindTailCalls.java"


# instance fields
.field inTailContext:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/expr/ExpWalker;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    return-void
.end method

.method public static findTailCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "exp"
    .parameter "comp"

    .prologue
    .line 14
    new-instance v0, Lgnu/expr/FindTailCalls;

    invoke-direct {v0}, Lgnu/expr/FindTailCalls;-><init>()V

    .line 15
    .local v0, walker:Lgnu/expr/FindTailCalls;
    invoke-virtual {v0, p1}, Lgnu/expr/FindTailCalls;->setContext(Lgnu/expr/Compilation;)V

    .line 16
    invoke-virtual {v0, p0}, Lgnu/expr/FindTailCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 17
    return-void
.end method


# virtual methods
.method protected walkApplyExp(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;
    .locals 12
    .parameter "exp"

    .prologue
    const/4 v11, 0x1

    .line 23
    iget-boolean v9, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    if-eqz v9, :cond_0

    .line 24
    invoke-virtual {p1, v11}, Lgnu/expr/ApplyExp;->setTailCall(Z)V

    .line 25
    :cond_0
    iget-object v9, p0, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    iput-object v9, p1, Lgnu/expr/ApplyExp;->context:Lgnu/expr/LambdaExp;

    .line 26
    iget-boolean v7, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 27
    .local v7, save:Z
    const/4 v6, 0x0

    .line 30
    .local v6, lexp:Lgnu/expr/LambdaExp;
    const/4 v9, 0x0

    :try_start_0
    iput-boolean v9, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 31
    const/4 v4, 0x0

    .line 32
    .local v4, isAppendValues:Z
    iget-object v9, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v9, v9, Lgnu/expr/ReferenceExp;

    if-eqz v9, :cond_5

    .line 34
    iget-object v3, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v3, Lgnu/expr/ReferenceExp;

    .line 35
    .local v3, func:Lgnu/expr/ReferenceExp;
    iget-object v9, v3, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v9}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 36
    .local v1, binding:Lgnu/expr/Declaration;
    if-eqz v1, :cond_3

    .line 41
    const/16 v9, 0x800

    invoke-virtual {v1, v9}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 43
    iget-object v9, v1, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    iput-object v9, p1, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    .line 44
    iput-object p1, v1, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    .line 46
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/FindTailCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    .line 47
    .local v2, comp:Lgnu/expr/Compilation;
    invoke-virtual {v1}, Lgnu/expr/Declaration;->setCanCall()V

    .line 48
    iget-boolean v9, v2, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v9, :cond_2

    .line 50
    invoke-virtual {v1}, Lgnu/expr/Declaration;->setCanRead()V

    .line 51
    :cond_2
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v8

    .line 52
    .local v8, value:Lgnu/expr/Expression;
    instance-of v9, v8, Lgnu/expr/LambdaExp;

    if-eqz v9, :cond_3

    .line 53
    move-object v0, v8

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v6, v0

    .line 69
    .end local v1           #binding:Lgnu/expr/Declaration;
    .end local v2           #comp:Lgnu/expr/Compilation;
    .end local v3           #func:Lgnu/expr/ReferenceExp;
    .end local v8           #value:Lgnu/expr/Expression;
    :cond_3
    :goto_0
    if-eqz v6, :cond_4

    .line 71
    iget-object v9, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/ApplyExp;

    if-ne v9, p1, :cond_8

    .line 79
    :cond_4
    :goto_1
    if-eqz v4, :cond_b

    iget-object v9, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v9, v9

    if-lez v9, :cond_b

    .line 81
    iget-object v9, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v9, v9

    sub-int v5, v9, v11

    .line 82
    .local v5, last:I
    iget-object v9, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-virtual {p0, v9, v5}, Lgnu/expr/FindTailCalls;->walkExps([Lgnu/expr/Expression;I)[Lgnu/expr/Expression;

    move-result-object v9

    iput-object v9, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 83
    iput-boolean v7, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 84
    iget-object v9, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    iget-object v10, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v10, v10, v5

    invoke-virtual {p0, v10}, Lgnu/expr/FindTailCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v10

    aput-object v10, v9, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v5           #last:I
    :goto_2
    iput-boolean v7, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    return-object p1

    .line 56
    :cond_5
    :try_start_1
    iget-object v9, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v9, v9, Lgnu/expr/LambdaExp;

    if-eqz v9, :cond_6

    iget-object v9, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v9, v9, Lgnu/expr/ClassExp;

    if-nez v9, :cond_6

    .line 59
    iget-object v9, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    move-object v0, v9

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v6, v0

    .line 60
    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9}, Lgnu/expr/FindTailCalls;->walkLambdaExp(Lgnu/expr/LambdaExp;Z)V

    .line 61
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lgnu/expr/LambdaExp;->setCanCall(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v4           #isAppendValues:Z
    :catchall_0
    move-exception v9

    iput-boolean v7, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    throw v9

    .line 63
    .restart local v4       #isAppendValues:Z
    :cond_6
    :try_start_2
    iget-object v9, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v9, v9, Lgnu/expr/QuoteExp;

    if-eqz v9, :cond_7

    iget-object v9, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v9, Lgnu/expr/QuoteExp;

    invoke-virtual {v9}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    if-ne v9, v10, :cond_7

    .line 66
    const/4 v4, 0x1

    goto :goto_0

    .line 68
    :cond_7
    iget-object v9, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v9, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v9

    iput-object v9, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    goto :goto_0

    .line 72
    :cond_8
    iget-object v9, p0, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    if-ne v6, v9, :cond_9

    if-nez v7, :cond_4

    .line 74
    :cond_9
    iget-object v9, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/ApplyExp;

    if-nez v9, :cond_a

    .line 75
    iput-object p1, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/ApplyExp;

    goto :goto_1

    .line 77
    :cond_a
    sget-object v9, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object v9, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/ApplyExp;

    goto :goto_1

    .line 87
    :cond_b
    iget-object v9, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-virtual {p0, v9}, Lgnu/expr/FindTailCalls;->walkExps([Lgnu/expr/Expression;)[Lgnu/expr/Expression;

    move-result-object v9

    iput-object v9, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method protected walkBeginExp(Lgnu/expr/BeginExp;)Lgnu/expr/Expression;
    .locals 6
    .parameter "exp"

    .prologue
    const/4 v5, 0x1

    .line 98
    iget-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 101
    .local v2, save:Z
    :try_start_0
    iget v3, p1, Lgnu/expr/BeginExp;->length:I

    sub-int v1, v3, v5

    .line 102
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 104
    if-ne v0, v1, :cond_0

    if-eqz v2, :cond_0

    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 105
    iget-object v3, p1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget-object v4, p1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v4, v4, v0

    invoke-virtual {v4, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 111
    :cond_1
    iput-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    return-object p1

    .end local v0           #i:I
    .end local v1           #n:I
    :catchall_0
    move-exception v3

    iput-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    throw v3
.end method

.method protected walkClassExp(Lgnu/expr/ClassExp;)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"

    .prologue
    .line 301
    iget-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 302
    .local v2, save:Z
    iget-object v1, p0, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    .line 303
    .local v1, parent:Lgnu/expr/LambdaExp;
    iput-object p1, p0, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    .line 304
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lgnu/expr/ClassExp;->setCanRead(Z)V

    .line 307
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 308
    iget-object v0, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 309
    .local v0, child:Lgnu/expr/LambdaExp;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lgnu/expr/FindTailCalls;->exitValue:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 310
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lgnu/expr/FindTailCalls;->walkLambdaExp(Lgnu/expr/LambdaExp;Z)V

    .line 309
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 314
    :cond_0
    iput-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 315
    iput-object v1, p0, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    .line 318
    return-object p1

    .line 314
    .end local v0           #child:Lgnu/expr/LambdaExp;
    :catchall_0
    move-exception v3

    iput-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 315
    iput-object v1, p0, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    throw v3
.end method

.method public walkDecls(Lgnu/expr/ScopeExp;)V
    .locals 8
    .parameter "exp"

    .prologue
    const/4 v7, 0x1

    .line 171
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    .line 172
    .local v2, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v2, :cond_3

    .line 174
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v5

    .line 175
    .local v5, value:Lgnu/expr/Expression;
    instance-of v6, v5, Lgnu/expr/LambdaExp;

    if-eqz v6, :cond_1

    .line 177
    move-object v0, v5

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v3, v0

    .line 178
    .local v3, lexp:Lgnu/expr/LambdaExp;
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    invoke-virtual {v3, v7}, Lgnu/expr/LambdaExp;->setCanRead(Z)V

    .line 180
    :cond_0
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    invoke-virtual {v3, v7}, Lgnu/expr/LambdaExp;->setCanCall(Z)V

    .line 183
    .end local v3           #lexp:Lgnu/expr/LambdaExp;
    :cond_1
    const/16 v6, 0x400

    invoke-virtual {v2, v6}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v6

    if-eqz v6, :cond_2

    instance-of v6, v5, Lgnu/expr/ReferenceExp;

    if-eqz v6, :cond_2

    .line 186
    move-object v0, v5

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v4, v0

    .line 187
    .local v4, rexp:Lgnu/expr/ReferenceExp;
    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 188
    .local v1, context:Lgnu/expr/Declaration;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 189
    const/high16 v6, 0x8

    invoke-virtual {v1, v6}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 172
    .end local v1           #context:Lgnu/expr/Declaration;
    .end local v4           #rexp:Lgnu/expr/ReferenceExp;
    :cond_2
    invoke-virtual {v2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    goto :goto_0

    .line 192
    .end local v5           #value:Lgnu/expr/Expression;
    :cond_3
    return-void
.end method

.method protected walkFluidLetExp(Lgnu/expr/FluidLetExp;)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"

    .prologue
    const/4 v3, 0x1

    .line 117
    invoke-virtual {p1}, Lgnu/expr/FluidLetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 118
    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 121
    iget-object v2, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 118
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_1
    iget-boolean v1, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 125
    .local v1, save:Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 128
    :try_start_0
    invoke-super {p0, p1}, Lgnu/expr/ExpWalker;->walkFluidLetExp(Lgnu/expr/FluidLetExp;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 132
    iput-boolean v1, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    return-object v2

    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    throw v2
.end method

.method protected walkIfExp(Lgnu/expr/IfExp;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"

    .prologue
    .line 196
    iget-boolean v1, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 199
    .local v1, save:Z
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 200
    iget-object v2, p1, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {v2, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v2

    iput-object v2, p1, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    iput-boolean v1, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 206
    iget-object v2, p1, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v2, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v2

    iput-object v2, p1, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    .line 207
    iget-object v0, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 208
    .local v0, else_clause:Lgnu/expr/Expression;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v2

    iput-object v2, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 210
    :cond_0
    return-object p1

    .line 204
    .end local v0           #else_clause:Lgnu/expr/Expression;
    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    throw v2
.end method

.method protected walkLambdaExp(Lgnu/expr/LambdaExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/expr/FindTailCalls;->walkLambdaExp(Lgnu/expr/LambdaExp;Z)V

    .line 216
    return-object p1
.end method

.method final walkLambdaExp(Lgnu/expr/LambdaExp;Z)V
    .locals 7
    .parameter "exp"
    .parameter "canRead"

    .prologue
    const/4 v6, 0x1

    .line 221
    iget-boolean v3, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 222
    .local v3, save:Z
    iget-object v2, p0, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    .line 223
    .local v2, parent:Lgnu/expr/LambdaExp;
    iput-object p1, p0, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    .line 224
    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {p1, v6}, Lgnu/expr/LambdaExp;->setCanRead(Z)V

    .line 228
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 229
    iget-object v4, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-eqz v4, :cond_1

    .line 230
    iget-object v4, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    invoke-virtual {p0, v4}, Lgnu/expr/FindTailCalls;->walkExps([Lgnu/expr/Expression;)[Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    .line 231
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 232
    iget-object v4, p0, Lgnu/expr/FindTailCalls;->exitValue:Ljava/lang/Object;

    if-nez v4, :cond_2

    iget-object v4, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v4, :cond_2

    .line 233
    iget-object v4, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v4, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_2
    iput-boolean v3, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 238
    iput-object v2, p0, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    .line 241
    invoke-virtual {p0, p1}, Lgnu/expr/FindTailCalls;->walkDecls(Lgnu/expr/ScopeExp;)V

    .line 243
    iget-object v1, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v1, child:Lgnu/expr/LambdaExp;
    :goto_1
    if-eqz v1, :cond_7

    .line 246
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getCanRead()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, v1, Lgnu/expr/LambdaExp;->min_args:I

    iget v5, v1, Lgnu/expr/LambdaExp;->max_args:I

    if-eq v4, v5, :cond_6

    .line 249
    :cond_3
    iget v4, v1, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v1, Lgnu/expr/LambdaExp;->flags:I

    .line 244
    :cond_4
    :goto_2
    iget-object v1, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_1

    .end local v1           #child:Lgnu/expr/LambdaExp;
    :cond_5
    move v4, v6

    .line 231
    goto :goto_0

    .line 237
    :catchall_0
    move-exception v4

    iput-boolean v3, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 238
    iput-object v2, p0, Lgnu/expr/FindTailCalls;->currentLambda:Lgnu/expr/LambdaExp;

    throw v4

    .line 252
    .restart local v1       #child:Lgnu/expr/LambdaExp;
    :cond_6
    iget-object v0, v1, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/ApplyExp;

    .line 253
    .local v0, caller:Lgnu/expr/ApplyExp;
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-eq v0, v4, :cond_4

    iget-object v4, p0, Lgnu/expr/FindTailCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v4

    if-nez v4, :cond_4

    .line 256
    invoke-virtual {v1, v6}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    goto :goto_2

    .line 261
    .end local v0           #caller:Lgnu/expr/ApplyExp;
    :cond_7
    iget-object v1, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    :goto_3
    if-eqz v1, :cond_9

    .line 264
    iget v4, v1, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v4, v4, 0x21

    if-eqz v4, :cond_8

    .line 262
    :cond_8
    iget-object v1, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_3

    .line 293
    :cond_9
    return-void
.end method

.method protected walkLetExp(Lgnu/expr/LetExp;)Lgnu/expr/Expression;
    .locals 7
    .parameter "exp"

    .prologue
    .line 138
    iget-object v6, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v3, v6

    .line 139
    .local v3, n:I
    iget-boolean v4, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 143
    .local v4, save:Z
    const/4 v6, 0x0

    :try_start_0
    iput-boolean v6, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 145
    invoke-virtual {p1}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 146
    .local v0, decl:Lgnu/expr/Declaration;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 148
    iget-object v6, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v6, v6, v1

    invoke-virtual {p0, v0, v6}, Lgnu/expr/FindTailCalls;->walkSetExp(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    .line 150
    .local v2, init:Lgnu/expr/Expression;
    sget-object v6, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v2, v6, :cond_1

    .line 152
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v5

    .line 153
    .local v5, value:Lgnu/expr/Expression;
    instance-of v6, v5, Lgnu/expr/LambdaExp;

    if-nez v6, :cond_0

    if-eq v5, v2, :cond_1

    instance-of v6, v5, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_1

    .line 155
    :cond_0
    move-object v2, v5

    .line 157
    .end local v5           #value:Lgnu/expr/Expression;
    :cond_1
    iget-object v6, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aput-object v2, v6, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 162
    .end local v2           #init:Lgnu/expr/Expression;
    :cond_2
    iput-boolean v4, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 164
    iget-object v6, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v6, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v6

    iput-object v6, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 165
    invoke-virtual {p0, p1}, Lgnu/expr/FindTailCalls;->walkDecls(Lgnu/expr/ScopeExp;)V

    .line 166
    return-object p1

    .line 162
    .end local v0           #decl:Lgnu/expr/Declaration;
    .end local v1           #i:I
    :catchall_0
    move-exception v6

    iput-boolean v4, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    throw v6
.end method

.method protected walkReferenceExp(Lgnu/expr/ReferenceExp;)Lgnu/expr/Expression;
    .locals 5
    .parameter "exp"

    .prologue
    const/4 v4, 0x1

    .line 323
    iget-object v3, p1, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v3}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 324
    .local v1, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_1

    .line 330
    iget-object v2, v1, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 331
    .local v2, type:Lgnu/bytecode/Type;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    sget-object v3, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 338
    .end local v2           #type:Lgnu/bytecode/Type;
    :goto_0
    return-object v3

    .line 333
    .restart local v2       #type:Lgnu/bytecode/Type;
    :cond_0
    invoke-virtual {v1, v4}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 335
    .end local v2           #type:Lgnu/bytecode/Type;
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 336
    .local v0, ctx:Lgnu/expr/Declaration;
    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setCanRead(Z)V

    :cond_2
    move-object v3, p1

    .line 338
    goto :goto_0
.end method

.method final walkSetExp(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3
    .parameter "decl"
    .parameter "value"

    .prologue
    .line 343
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    if-ne v2, p2, :cond_0

    instance-of v2, p2, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_0

    instance-of v2, p2, Lgnu/expr/ClassExp;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    move-object v0, p2

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v1, v0

    .line 348
    .local v1, lexp:Lgnu/expr/LambdaExp;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lgnu/expr/FindTailCalls;->walkLambdaExp(Lgnu/expr/LambdaExp;Z)V

    move-object v2, v1

    .line 352
    .end local v1           #lexp:Lgnu/expr/LambdaExp;
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p2, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_0
.end method

.method protected walkSetExp(Lgnu/expr/SetExp;)Lgnu/expr/Expression;
    .locals 5
    .parameter "exp"

    .prologue
    .line 357
    iget-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 360
    .local v2, save:Z
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 361
    iget-object v1, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 362
    .local v1, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    iget-object v4, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v4, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    iput-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    move-object v4, p1

    :goto_0
    return-object v4

    .line 369
    :cond_0
    :try_start_1
    invoke-static {v1}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 371
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/SetExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 372
    .local v0, ctx:Lgnu/expr/Declaration;
    if-eqz v0, :cond_2

    .line 373
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 374
    :cond_2
    iget-object v4, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {p0, v1, v4}, Lgnu/expr/FindTailCalls;->walkSetExp(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    .line 375
    .local v3, value:Lgnu/expr/Expression;
    if-eqz v1, :cond_4

    iget-object v4, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v4, v4, Lgnu/expr/LetExp;

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v4

    if-ne v3, v4, :cond_4

    instance-of v4, v3, Lgnu/expr/LambdaExp;

    if-nez v4, :cond_3

    instance-of v4, v3, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_4

    .line 381
    :cond_3
    sget-object v4, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    iput-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    goto :goto_0

    .line 383
    :cond_4
    :try_start_2
    iput-object v3, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    iput-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    move-object v4, p1

    goto :goto_0

    .end local v0           #ctx:Lgnu/expr/Declaration;
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v3           #value:Lgnu/expr/Expression;
    :catchall_0
    move-exception v4

    iput-boolean v2, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    throw v4
.end method

.method protected walkSynchronizedExp(Lgnu/expr/SynchronizedExp;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"

    .prologue
    .line 408
    iget-boolean v0, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 411
    .local v0, save:Z
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 412
    invoke-super {p0, p1}, Lgnu/expr/ExpWalker;->walkSynchronizedExp(Lgnu/expr/SynchronizedExp;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 416
    iput-boolean v0, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    return-object v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    throw v1
.end method

.method protected walkTryExp(Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"

    .prologue
    .line 394
    iget-boolean v0, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 397
    .local v0, save:Z
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    .line 398
    invoke-super {p0, p1}, Lgnu/expr/ExpWalker;->walkTryExp(Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 402
    iput-boolean v0, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    return-object v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lgnu/expr/FindTailCalls;->inTailContext:Z

    throw v1
.end method
