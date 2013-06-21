.class public Lorg/mozilla/javascript/ast/NewExpression;
.super Lorg/mozilla/javascript/ast/FunctionCall;
.source "NewExpression.java"


# instance fields
.field private initializer:Lorg/mozilla/javascript/ast/ObjectLiteral;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/FunctionCall;-><init>()V

    .line 59
    const/16 v0, 0x1e

    iput v0, p0, Lorg/mozilla/javascript/ast/NewExpression;->type:I

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/FunctionCall;-><init>(I)V

    .line 59
    const/16 v0, 0x1e

    iput v0, p0, Lorg/mozilla/javascript/ast/NewExpression;->type:I

    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/FunctionCall;-><init>(II)V

    .line 59
    const/16 v0, 0x1e

    iput v0, p0, Lorg/mozilla/javascript/ast/NewExpression;->type:I

    .line 71
    return-void
.end method


# virtual methods
.method public getInitializer()Lorg/mozilla/javascript/ast/ObjectLiteral;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mozilla/javascript/ast/NewExpression;->initializer:Lorg/mozilla/javascript/ast/ObjectLiteral;

    return-object v0
.end method

.method public setInitializer(Lorg/mozilla/javascript/ast/ObjectLiteral;)V
    .locals 0
    .parameter "initializer"

    .prologue
    .line 92
    iput-object p1, p0, Lorg/mozilla/javascript/ast/NewExpression;->initializer:Lorg/mozilla/javascript/ast/ObjectLiteral;

    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/ObjectLiteral;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 95
    :cond_0
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    const/4 v2, 0x0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/NewExpression;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lorg/mozilla/javascript/ast/NewExpression;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Lorg/mozilla/javascript/ast/NewExpression;->arguments:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lorg/mozilla/javascript/ast/NewExpression;->arguments:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/ast/NewExpression;->printList(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 107
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v1, p0, Lorg/mozilla/javascript/ast/NewExpression;->initializer:Lorg/mozilla/javascript/ast/ObjectLiteral;

    if-eqz v1, :cond_1

    .line 109
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lorg/mozilla/javascript/ast/NewExpression;->initializer:Lorg/mozilla/javascript/ast/ObjectLiteral;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/ObjectLiteral;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 121
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lorg/mozilla/javascript/ast/NewExpression;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 123
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/NewExpression;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    .line 124
    .local v0, arg:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 126
    .end local v0           #arg:Lorg/mozilla/javascript/ast/AstNode;
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/ast/NewExpression;->initializer:Lorg/mozilla/javascript/ast/ObjectLiteral;

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lorg/mozilla/javascript/ast/NewExpression;->initializer:Lorg/mozilla/javascript/ast/ObjectLiteral;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 130
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
