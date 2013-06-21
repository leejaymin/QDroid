.class public Lgnu/expr/CatchClause;
.super Lgnu/expr/ScopeExp;
.source "CatchClause.java"


# instance fields
.field body:Lgnu/expr/Expression;

.field next:Lgnu/expr/CatchClause;


# direct methods
.method public constructor <init>(Lgnu/expr/LambdaExp;)V
    .locals 2
    .parameter "lexp"

    .prologue
    .line 21
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 22
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 23
    .local v0, decl:Lgnu/expr/Declaration;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lgnu/expr/LambdaExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 24
    invoke-virtual {p0, v0}, Lgnu/expr/CatchClause;->add(Lgnu/expr/Declaration;)V

    .line 25
    iget-object v1, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    iput-object v1, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "name"
    .parameter "type"

    .prologue
    .line 15
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 16
    invoke-virtual {p0, p1, p2}, Lgnu/expr/CatchClause;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 17
    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 38
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 39
    .local v2, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/CatchClause;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 40
    .local v0, catchDecl:Lgnu/expr/Declaration;
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v1

    .line 41
    .local v1, catchVar:Lgnu/bytecode/Variable;
    invoke-virtual {p0}, Lgnu/expr/CatchClause;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 42
    invoke-virtual {v2, v1}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 43
    iget-object v3, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    invoke-virtual {v3, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 44
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 45
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 46
    return-void
.end method

.method public final getBody()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getNext()Lgnu/expr/CatchClause;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lgnu/expr/CatchClause;->next:Lgnu/expr/CatchClause;

    return-object v0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3
    .parameter "out"

    .prologue
    const-string v2, ")"

    .line 55
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 56
    const-string v0, "(Catch"

    const-string v1, ")"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 58
    iget-object v0, p0, Lgnu/expr/CatchClause;->decls:Lgnu/expr/Declaration;

    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 59
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 60
    iget-object v0, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 61
    const-string v0, ")"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public final setBody(Lgnu/expr/Expression;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 32
    iput-object p1, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    return-void
.end method

.method public final setNext(Lgnu/expr/CatchClause;)V
    .locals 0
    .parameter "next"

    .prologue
    .line 29
    iput-object p1, p0, Lgnu/expr/CatchClause;->next:Lgnu/expr/CatchClause;

    return-void
.end method

.method protected walkChildren(Lgnu/expr/ExpWalker;)V
    .locals 1
    .parameter "walker"

    .prologue
    .line 50
    iget-object v0, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    invoke-virtual {p1, v0}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    .line 51
    return-void
.end method
