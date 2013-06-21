.class public Lorg/mozilla/javascript/ast/IfStatement;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "IfStatement.java"


# instance fields
.field private condition:Lorg/mozilla/javascript/ast/AstNode;

.field private elsePart:Lorg/mozilla/javascript/ast/AstNode;

.field private elsePosition:I

.field private lp:I

.field private rp:I

.field private thenPart:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 63
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 54
    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    .line 56
    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    .line 57
    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    .line 60
    const/16 v0, 0x70

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->type:I

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

    .line 54
    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    .line 56
    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    .line 57
    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    .line 60
    const/16 v0, 0x70

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->type:I

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

    .line 54
    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    .line 56
    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    .line 57
    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    .line 60
    const/16 v0, 0x70

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->type:I

    .line 72
    return-void
.end method


# virtual methods
.method public getCondition()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getElsePart()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getElsePosition()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    return v0
.end method

.method public getLp()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    return v0
.end method

.method public getRp()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    return v0
.end method

.method public getThenPart()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setCondition(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/IfStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 87
    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    .line 88
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 89
    return-void
.end method

.method public setElsePart(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "elsePart"

    .prologue
    .line 121
    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 124
    :cond_0
    return-void
.end method

.method public setElsePosition(I)V
    .locals 0
    .parameter "elsePosition"

    .prologue
    .line 137
    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    .line 138
    return-void
.end method

.method public setLp(I)V
    .locals 0
    .parameter "lp"

    .prologue
    .line 151
    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    .line 152
    return-void
.end method

.method public setParens(II)V
    .locals 0
    .parameter "lp"
    .parameter "rp"

    .prologue
    .line 172
    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    .line 173
    iput p2, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    .line 174
    return-void
.end method

.method public setRp(I)V
    .locals 0
    .parameter "rp"

    .prologue
    .line 165
    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    .line 166
    return-void
.end method

.method public setThenPart(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "thenPart"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/IfStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 104
    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    .line 105
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 106
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 6
    .parameter "depth"

    .prologue
    const-string v5, " else "

    const-string v4, "\n"

    .line 178
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/IfStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, pad:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 180
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v2, "if ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    instance-of v2, v2, Lorg/mozilla/javascript/ast/Block;

    if-nez v2, :cond_0

    .line 185
    const-string v2, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/IfStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    instance-of v2, v2, Lorg/mozilla/javascript/ast/IfStatement;

    if-eqz v2, :cond_2

    .line 189
    const-string v2, " else "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_1
    :goto_0
    const-string v2, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 191
    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v2, :cond_1

    .line 192
    const-string v2, " else "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 205
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 207
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 208
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 212
    :cond_0
    return-void
.end method
