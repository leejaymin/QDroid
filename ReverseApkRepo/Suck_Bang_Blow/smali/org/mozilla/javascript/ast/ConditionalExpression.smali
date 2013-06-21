.class public Lorg/mozilla/javascript/ast/ConditionalExpression;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ConditionalExpression.java"


# instance fields
.field private colonPosition:I

.field private falseExpression:Lorg/mozilla/javascript/ast/AstNode;

.field private questionMarkPosition:I

.field private testExpression:Lorg/mozilla/javascript/ast/AstNode;

.field private trueExpression:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 69
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 62
    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    .line 63
    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    .line 66
    const/16 v0, 0x66

    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->type:I

    .line 70
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, -0x1

    .line 73
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 62
    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    .line 63
    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    .line 66
    const/16 v0, 0x66

    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->type:I

    .line 74
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 77
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 62
    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    .line 63
    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    .line 66
    const/16 v0, 0x66

    iput v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->type:I

    .line 78
    return-void
.end method


# virtual methods
.method public getColonPosition()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    return v0
.end method

.method public getFalseExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getQuestionMarkPosition()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    return v0
.end method

.method public getTestExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getTrueExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public hasSideEffects()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    if-nez v0, :cond_1

    .line 171
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/ConditionalExpression;->codeBug()Ljava/lang/RuntimeException;

    .line 172
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->hasSideEffects()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColonPosition(I)V
    .locals 0
    .parameter "colonPosition"

    .prologue
    .line 164
    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->colonPosition:I

    .line 165
    return-void
.end method

.method public setFalseExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "falseExpression"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->assertNotNull(Ljava/lang/Object;)V

    .line 133
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    .line 134
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 135
    return-void
.end method

.method public setQuestionMarkPosition(I)V
    .locals 0
    .parameter "questionMarkPosition"

    .prologue
    .line 149
    iput p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->questionMarkPosition:I

    .line 150
    return-void
.end method

.method public setTestExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "testExpression"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->assertNotNull(Ljava/lang/Object;)V

    .line 94
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    .line 95
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 96
    return-void
.end method

.method public setTrueExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "trueExpression"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->assertNotNull(Ljava/lang/Object;)V

    .line 113
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    .line 114
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 115
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    const/4 v2, 0x0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, " ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 194
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->testExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 196
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->trueExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 197
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ConditionalExpression;->falseExpression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 199
    :cond_0
    return-void
.end method
