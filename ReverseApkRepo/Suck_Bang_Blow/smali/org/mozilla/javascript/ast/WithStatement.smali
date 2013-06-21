.class public Lorg/mozilla/javascript/ast/WithStatement;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "WithStatement.java"


# instance fields
.field private expression:Lorg/mozilla/javascript/ast/AstNode;

.field private lp:I

.field private rp:I

.field private statement:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 60
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 53
    iput v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->lp:I

    .line 54
    iput v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->rp:I

    .line 57
    const/16 v0, 0x7b

    iput v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->type:I

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 53
    iput v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->lp:I

    .line 54
    iput v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->rp:I

    .line 57
    const/16 v0, 0x7b

    iput v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->type:I

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 53
    iput v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->lp:I

    .line 54
    iput v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->rp:I

    .line 57
    const/16 v0, 0x7b

    iput v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->type:I

    .line 69
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLp()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->lp:I

    return v0
.end method

.method public getRp()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->rp:I

    return v0
.end method

.method public getStatement()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->statement:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "expression"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/WithStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 84
    iput-object p1, p0, Lorg/mozilla/javascript/ast/WithStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    .line 85
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 86
    return-void
.end method

.method public setLp(I)V
    .locals 0
    .parameter "lp"

    .prologue
    .line 116
    iput p1, p0, Lorg/mozilla/javascript/ast/WithStatement;->lp:I

    .line 117
    return-void
.end method

.method public setParens(II)V
    .locals 0
    .parameter "lp"
    .parameter "rp"

    .prologue
    .line 137
    iput p1, p0, Lorg/mozilla/javascript/ast/WithStatement;->lp:I

    .line 138
    iput p2, p0, Lorg/mozilla/javascript/ast/WithStatement;->rp:I

    .line 139
    return-void
.end method

.method public setRp(I)V
    .locals 0
    .parameter "rp"

    .prologue
    .line 130
    iput p1, p0, Lorg/mozilla/javascript/ast/WithStatement;->rp:I

    .line 131
    return-void
.end method

.method public setStatement(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "statement"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/WithStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 101
    iput-object p1, p0, Lorg/mozilla/javascript/ast/WithStatement;->statement:Lorg/mozilla/javascript/ast/AstNode;

    .line 102
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 103
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/WithStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, "with ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lorg/mozilla/javascript/ast/WithStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lorg/mozilla/javascript/ast/WithStatement;->statement:Lorg/mozilla/javascript/ast/AstNode;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Lorg/mozilla/javascript/ast/WithStatement;->statement:Lorg/mozilla/javascript/ast/AstNode;

    instance-of v1, v1, Lorg/mozilla/javascript/ast/Block;

    if-nez v1, :cond_0

    .line 150
    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 160
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 162
    iget-object v0, p0, Lorg/mozilla/javascript/ast/WithStatement;->statement:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 164
    :cond_0
    return-void
.end method
