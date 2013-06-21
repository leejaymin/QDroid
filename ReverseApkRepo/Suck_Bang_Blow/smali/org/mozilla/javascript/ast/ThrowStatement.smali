.class public Lorg/mozilla/javascript/ast/ThrowStatement;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ThrowStatement.java"


# instance fields
.field private expression:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 54
    const/16 v0, 0x32

    iput v0, p0, Lorg/mozilla/javascript/ast/ThrowStatement;->type:I

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 54
    const/16 v0, 0x32

    iput v0, p0, Lorg/mozilla/javascript/ast/ThrowStatement;->type:I

    .line 62
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 54
    const/16 v0, 0x32

    iput v0, p0, Lorg/mozilla/javascript/ast/ThrowStatement;->type:I

    .line 66
    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "pos"
    .parameter "len"
    .parameter "expr"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 54
    const/16 v0, 0x32

    iput v0, p0, Lorg/mozilla/javascript/ast/ThrowStatement;->type:I

    .line 79
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/ThrowStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 80
    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "pos"
    .parameter "expr"

    .prologue
    .line 73
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 54
    const/16 v0, 0x32

    iput v0, p0, Lorg/mozilla/javascript/ast/ThrowStatement;->type:I

    .line 74
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/ThrowStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "expr"

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 54
    const/16 v0, 0x32

    iput v0, p0, Lorg/mozilla/javascript/ast/ThrowStatement;->type:I

    .line 69
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ThrowStatement;->setExpression(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ThrowStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "expression"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ThrowStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 96
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ThrowStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    .line 97
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 98
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ThrowStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "throw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ThrowStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 116
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ThrowStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 119
    :cond_0
    return-void
.end method
