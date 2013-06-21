.class public Lorg/mozilla/javascript/ast/ExpressionStatement;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ExpressionStatement.java"


# instance fields
.field private expr:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 53
    const/16 v0, 0x85

    iput v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->type:I

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 53
    const/16 v0, 0x85

    iput v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->type:I

    .line 96
    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "pos"
    .parameter "len"
    .parameter "expr"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 53
    const/16 v0, 0x85

    iput v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->type:I

    .line 107
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/ExpressionStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 2
    .parameter "expr"

    .prologue
    .line 91
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(IILorg/mozilla/javascript/ast/AstNode;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Z)V
    .locals 0
    .parameter "expr"
    .parameter "hasResult"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;-><init>(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 79
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ExpressionStatement;->setHasResult()V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->expr:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public hasSideEffects()Z
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->type:I

    const/16 v1, 0x86

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->expr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "expression"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 123
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->expr:Lorg/mozilla/javascript/ast/AstNode;

    .line 124
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 125
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/ExpressionStatement;->setLineno(I)V

    .line 126
    return-void
.end method

.method public setHasResult()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x86

    iput v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->type:I

    .line 62
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->expr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 151
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ExpressionStatement;->expr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 154
    :cond_0
    return-void
.end method
