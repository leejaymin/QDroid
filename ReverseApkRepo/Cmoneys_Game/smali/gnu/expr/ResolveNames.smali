.class public Lgnu/expr/ResolveNames;
.super Lgnu/expr/ExpWalker;
.source "ResolveNames.java"


# instance fields
.field protected lookup:Lgnu/expr/NameLookup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/expr/ExpWalker;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "comp"

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/expr/ExpWalker;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lgnu/expr/ResolveNames;->setContext(Lgnu/expr/Compilation;)V

    .line 20
    iget-object v0, p1, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    iput-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    .line 21
    return-void
.end method


# virtual methods
.method public lookup(Lgnu/expr/Expression;Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .locals 1
    .parameter "exp"
    .parameter "symbol"
    .parameter "function"

    .prologue
    .line 67
    iget-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p2, p3}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method protected push(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 43
    iget-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 44
    return-void
.end method

.method public resolveModule(Lgnu/expr/ModuleExp;)V
    .locals 2
    .parameter "exp"

    .prologue
    .line 25
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    .line 28
    .local v0, save_comp:Lgnu/expr/Compilation;
    :try_start_0
    iget-object v1, p0, Lgnu/expr/ResolveNames;->comp:Lgnu/expr/Compilation;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lgnu/expr/ResolveNames;->comp:Lgnu/expr/Compilation;

    invoke-static {v1}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/ResolveNames;->push(Lgnu/expr/ScopeExp;)V

    .line 31
    invoke-virtual {p1, p0}, Lgnu/expr/ModuleExp;->walkChildren(Lgnu/expr/ExpWalker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v0}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 39
    return-void

    .line 35
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    throw v1
.end method

.method protected walkLetExp(Lgnu/expr/LetExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lgnu/expr/ResolveNames;->walkDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 58
    invoke-virtual {p1, p0}, Lgnu/expr/LetExp;->walkInitializers(Lgnu/expr/ExpWalker;)V

    .line 59
    invoke-virtual {p0, p1}, Lgnu/expr/ResolveNames;->push(Lgnu/expr/ScopeExp;)V

    .line 60
    iget-object v0, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p0, v0}, Lgnu/expr/ResolveNames;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 61
    iget-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 62
    return-object p1
.end method

.method protected walkReferenceExp(Lgnu/expr/ReferenceExp;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"

    .prologue
    .line 72
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 73
    .local v0, decl:Lgnu/expr/Declaration;
    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lgnu/expr/ResolveNames;->lookup(Lgnu/expr/Expression;Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 79
    :cond_0
    return-object p1
.end method

.method protected walkScopeExp(Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lgnu/expr/ResolveNames;->walkDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 49
    invoke-virtual {p0, p1}, Lgnu/expr/ResolveNames;->push(Lgnu/expr/ScopeExp;)V

    .line 50
    invoke-virtual {p1, p0}, Lgnu/expr/ScopeExp;->walkChildren(Lgnu/expr/ExpWalker;)V

    .line 51
    iget-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 52
    return-object p1
.end method

.method protected walkSetExp(Lgnu/expr/SetExp;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"

    .prologue
    .line 84
    iget-object v1, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-nez v1, :cond_1

    .line 86
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lgnu/expr/ResolveNames;->lookup(Lgnu/expr/Expression;Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 87
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_0

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 89
    :cond_0
    iput-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 91
    .end local v0           #decl:Lgnu/expr/Declaration;
    :cond_1
    invoke-super {p0, p1}, Lgnu/expr/ExpWalker;->walkSetExp(Lgnu/expr/SetExp;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method
