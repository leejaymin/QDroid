.class public Lorg/mozilla/javascript/ast/PropertyGet;
.super Lorg/mozilla/javascript/ast/InfixExpression;
.source "PropertyGet.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>()V

    .line 49
    const/16 v0, 0x21

    iput v0, p0, Lorg/mozilla/javascript/ast/PropertyGet;->type:I

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(I)V

    .line 49
    const/16 v0, 0x21

    iput v0, p0, Lorg/mozilla/javascript/ast/PropertyGet;->type:I

    .line 57
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(II)V

    .line 49
    const/16 v0, 0x21

    iput v0, p0, Lorg/mozilla/javascript/ast/PropertyGet;->type:I

    .line 61
    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/Name;)V
    .locals 1
    .parameter "pos"
    .parameter "len"
    .parameter "target"
    .parameter "property"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    .line 49
    const/16 v0, 0x21

    iput v0, p0, Lorg/mozilla/javascript/ast/PropertyGet;->type:I

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/Name;)V
    .locals 1
    .parameter "target"
    .parameter "property"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    .line 49
    const/16 v0, 0x21

    iput v0, p0, Lorg/mozilla/javascript/ast/PropertyGet;->type:I

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/Name;I)V
    .locals 1
    .parameter "target"
    .parameter "property"
    .parameter "dotPosition"

    .prologue
    const/16 v0, 0x21

    .line 76
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 49
    iput v0, p0, Lorg/mozilla/javascript/ast/PropertyGet;->type:I

    .line 77
    return-void
.end method


# virtual methods
.method public getProperty()Lorg/mozilla/javascript/ast/Name;
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/PropertyGet;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/Name;

    return-object p0
.end method

.method public getTarget()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/PropertyGet;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0
    .parameter "property"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/PropertyGet;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 110
    return-void
.end method

.method public setTarget(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/PropertyGet;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 95
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    const/4 v2, 0x0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/PropertyGet;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/PropertyGet;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/PropertyGet;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 127
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/PropertyGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 129
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 131
    :cond_0
    return-void
.end method
