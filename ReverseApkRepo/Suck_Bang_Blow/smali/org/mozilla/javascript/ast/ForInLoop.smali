.class public Lorg/mozilla/javascript/ast/ForInLoop;
.super Lorg/mozilla/javascript/ast/Loop;
.source "ForInLoop.java"


# instance fields
.field protected eachPosition:I

.field protected inPosition:I

.field protected isForEach:Z

.field protected iteratedObject:Lorg/mozilla/javascript/ast/AstNode;

.field protected iterator:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 61
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Loop;-><init>()V

    .line 53
    iput v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->inPosition:I

    .line 54
    iput v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->eachPosition:I

    .line 58
    const/16 v0, 0x77

    iput v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->type:I

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Loop;-><init>(I)V

    .line 53
    iput v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->inPosition:I

    .line 54
    iput v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->eachPosition:I

    .line 58
    const/16 v0, 0x77

    iput v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->type:I

    .line 66
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Loop;-><init>(II)V

    .line 53
    iput v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->inPosition:I

    .line 54
    iput v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->eachPosition:I

    .line 58
    const/16 v0, 0x77

    iput v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->type:I

    .line 70
    return-void
.end method


# virtual methods
.method public getEachPosition()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->eachPosition:I

    return v0
.end method

.method public getInPosition()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->inPosition:I

    return v0
.end method

.method public getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iteratedObject:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getIterator()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iterator:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public isForEach()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach:Z

    return v0
.end method

.method public setEachPosition(I)V
    .locals 0
    .parameter "eachPosition"

    .prologue
    .line 150
    iput p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->eachPosition:I

    .line 151
    return-void
.end method

.method public setInPosition(I)V
    .locals 0
    .parameter "inPosition"

    .prologue
    .line 134
    iput p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->inPosition:I

    .line 135
    return-void
.end method

.method public setIsForEach(Z)V
    .locals 0
    .parameter "isForEach"

    .prologue
    .line 118
    iput-boolean p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach:Z

    .line 119
    return-void
.end method

.method public setIteratedObject(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ForInLoop;->assertNotNull(Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iteratedObject:Lorg/mozilla/javascript/ast/AstNode;

    .line 104
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 105
    return-void
.end method

.method public setIterator(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ForInLoop;->assertNotNull(Ljava/lang/Object;)V

    .line 86
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iterator:Lorg/mozilla/javascript/ast/AstNode;

    .line 87
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 88
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 4
    .parameter "depth"

    .prologue
    const/4 v2, 0x0

    const-string v3, "\n"

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ForInLoop;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "each "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iterator:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iteratedObject:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->body:Lorg/mozilla/javascript/ast/AstNode;

    instance-of v1, v1, Lorg/mozilla/javascript/ast/Block;

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ForInLoop;->body:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 169
    :cond_1
    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/ast/ForInLoop;->body:Lorg/mozilla/javascript/ast/AstNode;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 179
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iterator:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 181
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->iteratedObject:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 182
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForInLoop;->body:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 184
    :cond_0
    return-void
.end method
