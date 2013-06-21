.class public Lorg/mozilla/javascript/ast/CatchClause;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "CatchClause.java"


# instance fields
.field private body:Lorg/mozilla/javascript/ast/Block;

.field private catchCondition:Lorg/mozilla/javascript/ast/AstNode;

.field private ifPosition:I

.field private lp:I

.field private rp:I

.field private varName:Lorg/mozilla/javascript/ast/Name;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 63
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 55
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    .line 56
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 57
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    .line 60
    const/16 v0, 0x7c

    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->type:I

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, -0x1

    .line 67
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 55
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    .line 56
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 57
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    .line 60
    const/16 v0, 0x7c

    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->type:I

    .line 68
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 55
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    .line 56
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 57
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    .line 60
    const/16 v0, 0x7c

    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->type:I

    .line 72
    return-void
.end method


# virtual methods
.method public getBody()Lorg/mozilla/javascript/ast/Block;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Block;

    return-object v0
.end method

.method public getCatchCondition()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getIfPosition()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    return v0
.end method

.method public getLp()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    return v0
.end method

.method public getRp()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    return v0
.end method

.method public getVarName()Lorg/mozilla/javascript/ast/Name;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    return-object v0
.end method

.method public setBody(Lorg/mozilla/javascript/ast/Block;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/CatchClause;->assertNotNull(Ljava/lang/Object;)V

    .line 124
    iput-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Block;

    .line 125
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/Block;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 126
    return-void
.end method

.method public setCatchCondition(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "catchCondition"

    .prologue
    .line 106
    iput-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 109
    :cond_0
    return-void
.end method

.method public setIfPosition(I)V
    .locals 0
    .parameter "ifPosition"

    .prologue
    .line 177
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    .line 178
    return-void
.end method

.method public setLp(I)V
    .locals 0
    .parameter "lp"

    .prologue
    .line 139
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 140
    return-void
.end method

.method public setParens(II)V
    .locals 0
    .parameter "lp"
    .parameter "rp"

    .prologue
    .line 160
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 161
    iput p2, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    .line 162
    return-void
.end method

.method public setRp(I)V
    .locals 0
    .parameter "rp"

    .prologue
    .line 153
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    .line 154
    return-void
.end method

.method public setVarName(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0
    .parameter "varName"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/CatchClause;->assertNotNull(Ljava/lang/Object;)V

    .line 89
    iput-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    .line 90
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/Name;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 91
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    const/4 v2, 0x0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/CatchClause;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "catch ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v1, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v1, :cond_0

    .line 187
    const-string v1, " if "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v1, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v1, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Block;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Block;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 201
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 203
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Block;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Block;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 208
    :cond_1
    return-void
.end method
