.class public Lgnu/expr/ChainLambdas;
.super Lgnu/expr/ExpWalker;
.source "ChainLambdas.java"


# instance fields
.field currentScope:Lgnu/expr/ScopeExp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/expr/ExpWalker;-><init>()V

    return-void
.end method

.method public static chainLambdas(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "exp"
    .parameter "comp"

    .prologue
    .line 15
    new-instance v0, Lgnu/expr/ChainLambdas;

    invoke-direct {v0}, Lgnu/expr/ChainLambdas;-><init>()V

    .line 16
    .local v0, walker:Lgnu/expr/ChainLambdas;
    invoke-virtual {v0, p1}, Lgnu/expr/ChainLambdas;->setContext(Lgnu/expr/Compilation;)V

    .line 17
    invoke-virtual {v0, p0}, Lgnu/expr/ChainLambdas;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 18
    return-void
.end method


# virtual methods
.method protected walkClassExp(Lgnu/expr/ClassExp;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"

    .prologue
    .line 83
    iget-object v0, p0, Lgnu/expr/ChainLambdas;->currentLambda:Lgnu/expr/LambdaExp;

    .line 84
    .local v0, parent:Lgnu/expr/LambdaExp;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-nez v1, :cond_0

    .line 86
    iget-object v1, v0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v1, p1, Lgnu/expr/ClassExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 87
    iput-object p1, v0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/ChainLambdas;->walkScopeExp(Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    .line 92
    return-object p1
.end method

.method protected walkLambdaExp(Lgnu/expr/LambdaExp;)Lgnu/expr/Expression;
    .locals 6
    .parameter "exp"

    .prologue
    .line 41
    iget-object v2, p0, Lgnu/expr/ChainLambdas;->currentLambda:Lgnu/expr/LambdaExp;

    .line 42
    .local v2, parent:Lgnu/expr/LambdaExp;
    if-eqz v2, :cond_0

    instance-of v5, v2, Lgnu/expr/ClassExp;

    if-nez v5, :cond_0

    .line 44
    iget-object v5, v2, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v5, p1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 45
    iput-object p1, v2, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 48
    :cond_0
    iget-object v4, p0, Lgnu/expr/ChainLambdas;->currentScope:Lgnu/expr/ScopeExp;

    .line 51
    .local v4, saveScope:Lgnu/expr/ScopeExp;
    :try_start_0
    iget-object v5, p0, Lgnu/expr/ChainLambdas;->currentScope:Lgnu/expr/ScopeExp;

    iput-object v5, p1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 52
    const/4 v5, 0x0

    iput-object v5, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 53
    iput-object p1, p0, Lgnu/expr/ChainLambdas;->currentScope:Lgnu/expr/ScopeExp;

    .line 54
    invoke-virtual {p1, p0}, Lgnu/expr/LambdaExp;->walkChildrenOnly(Lgnu/expr/ExpWalker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iput-object v4, p0, Lgnu/expr/ChainLambdas;->currentScope:Lgnu/expr/ScopeExp;

    .line 60
    invoke-virtual {p1, p0}, Lgnu/expr/LambdaExp;->walkProperties(Lgnu/expr/ExpWalker;)V

    .line 63
    const/4 v3, 0x0

    .local v3, prev:Lgnu/expr/LambdaExp;
    iget-object v0, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 64
    .local v0, child:Lgnu/expr/LambdaExp;
    :goto_0
    if-eqz v0, :cond_1

    .line 66
    iget-object v1, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 67
    .local v1, next:Lgnu/expr/LambdaExp;
    iput-object v3, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 68
    move-object v3, v0

    .line 69
    move-object v0, v1

    .line 70
    goto :goto_0

    .line 58
    .end local v0           #child:Lgnu/expr/LambdaExp;
    .end local v1           #next:Lgnu/expr/LambdaExp;
    .end local v3           #prev:Lgnu/expr/LambdaExp;
    :catchall_0
    move-exception v5

    iput-object v4, p0, Lgnu/expr/ChainLambdas;->currentScope:Lgnu/expr/ScopeExp;

    throw v5

    .line 71
    .restart local v0       #child:Lgnu/expr/LambdaExp;
    .restart local v3       #prev:Lgnu/expr/LambdaExp;
    :cond_1
    iput-object v3, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 73
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v5, :cond_2

    .line 74
    iget-object v5, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 75
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->setIndexes()V

    .line 76
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->mustCompile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 77
    iget-object v5, p0, Lgnu/expr/ChainLambdas;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v5}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 78
    :cond_3
    return-object p1
.end method

.method protected walkScopeExp(Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"

    .prologue
    .line 22
    iget-object v0, p0, Lgnu/expr/ChainLambdas;->currentScope:Lgnu/expr/ScopeExp;

    .line 25
    .local v0, saveScope:Lgnu/expr/ScopeExp;
    :try_start_0
    iget-object v1, p0, Lgnu/expr/ChainLambdas;->currentScope:Lgnu/expr/ScopeExp;

    iput-object v1, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 26
    iput-object p1, p0, Lgnu/expr/ChainLambdas;->currentScope:Lgnu/expr/ScopeExp;

    .line 27
    invoke-virtual {p1, p0}, Lgnu/expr/ScopeExp;->walkChildren(Lgnu/expr/ExpWalker;)V

    .line 28
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->setIndexes()V

    .line 29
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->mustCompile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lgnu/expr/ChainLambdas;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1}, Lgnu/expr/Compilation;->mustCompileHere()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    iput-object v0, p0, Lgnu/expr/ChainLambdas;->currentScope:Lgnu/expr/ScopeExp;

    return-object p1

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lgnu/expr/ChainLambdas;->currentScope:Lgnu/expr/ScopeExp;

    throw v1
.end method
