.class public Lorg/mozilla/javascript/ast/InfixExpression;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "InfixExpression.java"


# instance fields
.field protected left:Lorg/mozilla/javascript/ast/AstNode;

.field protected operatorPosition:I

.field protected right:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    .line 62
    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "pos"
    .parameter "len"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    .line 68
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 69
    invoke-virtual {p0, p4}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V
    .locals 1
    .parameter "operator"
    .parameter "left"
    .parameter "right"
    .parameter "operatorPos"

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    .line 86
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;->setType(I)Lorg/mozilla/javascript/Node;

    .line 87
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/InfixExpression;->setOperatorPosition(I)V

    .line 88
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "left"
    .parameter "right"

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    .line 77
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getLeft()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->left:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getOperator()I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/InfixExpression;->getType()I

    move-result v0

    return v0
.end method

.method public getOperatorPosition()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    return v0
.end method

.method public getRight()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public hasSideEffects()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/InfixExpression;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 188
    invoke-super {p0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    :goto_0
    return v0

    .line 182
    :sswitch_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 185
    :sswitch_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->left:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->left:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 180
    :sswitch_data_0
    .sparse-switch
        0x59 -> :sswitch_0
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
    .end sparse-switch
.end method

.method public setLeft(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "left"

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;->assertNotNull(Ljava/lang/Object;)V

    .line 137
    iput-object p1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->left:Lorg/mozilla/javascript/ast/AstNode;

    .line 138
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 139
    return-void
.end method

.method public setLeftAndRight(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 4
    .parameter "left"
    .parameter "right"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;->assertNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->assertNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    .line 96
    .local v0, beg:I
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v2

    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v3

    add-int v1, v2, v3

    .line 97
    .local v1, end:I
    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/ast/InfixExpression;->setBounds(II)V

    .line 99
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 100
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/InfixExpression;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 101
    return-void
.end method

.method public setOperator(I)V
    .locals 3
    .parameter "operator"

    .prologue
    .line 117
    invoke-static {p1}, Lorg/mozilla/javascript/Token;->isValidToken(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
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

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;->setType(I)Lorg/mozilla/javascript/Node;

    .line 120
    return-void
.end method

.method public setOperatorPosition(I)V
    .locals 0
    .parameter "operatorPosition"

    .prologue
    .line 174
    iput p1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->operatorPosition:I

    .line 175
    return-void
.end method

.method public setRight(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "right"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;->assertNotNull(Ljava/lang/Object;)V

    .line 158
    iput-object p1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    .line 159
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 160
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    const-string v2, " "

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->left:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/InfixExpression;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/ast/InfixExpression;->operatorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v1, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 209
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->left:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 211
    iget-object v0, p0, Lorg/mozilla/javascript/ast/InfixExpression;->right:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 213
    :cond_0
    return-void
.end method
