.class public Lorg/mozilla/javascript/ast/UnaryExpression;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "UnaryExpression.java"


# instance fields
.field private isPostfix:Z

.field private operand:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 72
    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "operator"
    .parameter "operatorPosition"
    .parameter "operand"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/ast/UnaryExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;Z)V

    .line 80
    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;Z)V
    .locals 4
    .parameter "operator"
    .parameter "operatorPosition"
    .parameter "operand"
    .parameter "postFix"

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 94
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/UnaryExpression;->assertNotNull(Ljava/lang/Object;)V

    .line 95
    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v2

    move v0, v2

    .line 97
    .local v0, beg:I
    :goto_0
    if-eqz p4, :cond_1

    add-int/lit8 v2, p2, 0x2

    move v1, v2

    .line 100
    .local v1, end:I
    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/ast/UnaryExpression;->setBounds(II)V

    .line 101
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->setOperator(I)V

    .line 102
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/UnaryExpression;->setOperand(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 103
    iput-boolean p4, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix:Z

    .line 104
    return-void

    .end local v0           #beg:I
    .end local v1           #end:I
    :cond_0
    move v0, p2

    .line 95
    goto :goto_0

    .line 97
    .restart local v0       #beg:I
    :cond_1
    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v2

    invoke-virtual {p3}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public getOperand()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->operand:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getOperator()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->type:I

    return v0
.end method

.method public isPostfix()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix:Z

    return v0
.end method

.method public isPrefix()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsPostfix(Z)V
    .locals 0
    .parameter "isPostfix"

    .prologue
    .line 157
    iput-boolean p1, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix:Z

    .line 158
    return-void
.end method

.method public setOperand(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "operand"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->assertNotNull(Ljava/lang/Object;)V

    .line 135
    iput-object p1, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->operand:Lorg/mozilla/javascript/ast/AstNode;

    .line 136
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 137
    return-void
.end method

.method public setOperator(I)V
    .locals 3
    .parameter "operator"

    .prologue
    .line 120
    invoke-static {p1}, Lorg/mozilla/javascript/Token;->isValidToken(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->setType(I)Lorg/mozilla/javascript/Node;

    .line 123
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-boolean v1, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix:Z

    if-nez v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/UnaryExpression;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/ast/UnaryExpression;->operatorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/UnaryExpression;->getType()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/UnaryExpression;->getType()I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    .line 168
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->operand:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-boolean v1, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix:Z

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/UnaryExpression;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/ast/UnaryExpression;->operatorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 183
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/mozilla/javascript/ast/UnaryExpression;->operand:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 186
    :cond_0
    return-void
.end method
