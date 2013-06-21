.class public Lorg/mozilla/javascript/ast/LetNode;
.super Lorg/mozilla/javascript/ast/Scope;
.source "LetNode.java"


# instance fields
.field private body:Lorg/mozilla/javascript/ast/AstNode;

.field private lp:I

.field private rp:I

.field private variables:Lorg/mozilla/javascript/ast/VariableDeclaration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 68
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    .line 61
    iput v0, p0, Lorg/mozilla/javascript/ast/LetNode;->lp:I

    .line 62
    iput v0, p0, Lorg/mozilla/javascript/ast/LetNode;->rp:I

    .line 65
    const/16 v0, 0x9e

    iput v0, p0, Lorg/mozilla/javascript/ast/LetNode;->type:I

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, -0x1

    .line 72
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    .line 61
    iput v0, p0, Lorg/mozilla/javascript/ast/LetNode;->lp:I

    .line 62
    iput v0, p0, Lorg/mozilla/javascript/ast/LetNode;->rp:I

    .line 65
    const/16 v0, 0x9e

    iput v0, p0, Lorg/mozilla/javascript/ast/LetNode;->type:I

    .line 73
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Scope;-><init>(II)V

    .line 61
    iput v0, p0, Lorg/mozilla/javascript/ast/LetNode;->lp:I

    .line 62
    iput v0, p0, Lorg/mozilla/javascript/ast/LetNode;->rp:I

    .line 65
    const/16 v0, 0x9e

    iput v0, p0, Lorg/mozilla/javascript/ast/LetNode;->type:I

    .line 77
    return-void
.end method


# virtual methods
.method public getBody()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/mozilla/javascript/ast/LetNode;->body:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLp()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lorg/mozilla/javascript/ast/LetNode;->lp:I

    return v0
.end method

.method public getRp()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/mozilla/javascript/ast/LetNode;->rp:I

    return v0
.end method

.method public getVariables()Lorg/mozilla/javascript/ast/VariableDeclaration;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/mozilla/javascript/ast/LetNode;->variables:Lorg/mozilla/javascript/ast/VariableDeclaration;

    return-object v0
.end method

.method public setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 115
    iput-object p1, p0, Lorg/mozilla/javascript/ast/LetNode;->body:Lorg/mozilla/javascript/ast/AstNode;

    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 118
    :cond_0
    return-void
.end method

.method public setLp(I)V
    .locals 0
    .parameter "lp"

    .prologue
    .line 131
    iput p1, p0, Lorg/mozilla/javascript/ast/LetNode;->lp:I

    .line 132
    return-void
.end method

.method public setParens(II)V
    .locals 0
    .parameter "lp"
    .parameter "rp"

    .prologue
    .line 152
    iput p1, p0, Lorg/mozilla/javascript/ast/LetNode;->lp:I

    .line 153
    iput p2, p0, Lorg/mozilla/javascript/ast/LetNode;->rp:I

    .line 154
    return-void
.end method

.method public setRp(I)V
    .locals 0
    .parameter "rp"

    .prologue
    .line 145
    iput p1, p0, Lorg/mozilla/javascript/ast/LetNode;->rp:I

    .line 146
    return-void
.end method

.method public setVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)V
    .locals 0
    .parameter "variables"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/LetNode;->assertNotNull(Ljava/lang/Object;)V

    .line 92
    iput-object p1, p0, Lorg/mozilla/javascript/ast/LetNode;->variables:Lorg/mozilla/javascript/ast/VariableDeclaration;

    .line 93
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/VariableDeclaration;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 94
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/LetNode;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, pad:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v2, "let ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v2, p0, Lorg/mozilla/javascript/ast/LetNode;->variables:Lorg/mozilla/javascript/ast/VariableDeclaration;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getVariables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/mozilla/javascript/ast/LetNode;->printList(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 163
    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v2, p0, Lorg/mozilla/javascript/ast/LetNode;->body:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lorg/mozilla/javascript/ast/LetNode;->body:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 176
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/mozilla/javascript/ast/LetNode;->variables:Lorg/mozilla/javascript/ast/VariableDeclaration;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 178
    iget-object v0, p0, Lorg/mozilla/javascript/ast/LetNode;->body:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/mozilla/javascript/ast/LetNode;->body:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 182
    :cond_0
    return-void
.end method
