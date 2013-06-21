.class public Lorg/mozilla/javascript/ast/DoLoop;
.super Lorg/mozilla/javascript/ast/Loop;
.source "DoLoop.java"


# instance fields
.field private condition:Lorg/mozilla/javascript/ast/AstNode;

.field private whilePosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Loop;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/DoLoop;->whilePosition:I

    .line 55
    const/16 v0, 0x76

    iput v0, p0, Lorg/mozilla/javascript/ast/DoLoop;->type:I

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Loop;-><init>(I)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/DoLoop;->whilePosition:I

    .line 55
    const/16 v0, 0x76

    iput v0, p0, Lorg/mozilla/javascript/ast/DoLoop;->type:I

    .line 63
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Loop;-><init>(II)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/DoLoop;->whilePosition:I

    .line 55
    const/16 v0, 0x76

    iput v0, p0, Lorg/mozilla/javascript/ast/DoLoop;->type:I

    .line 67
    return-void
.end method


# virtual methods
.method public getCondition()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/mozilla/javascript/ast/DoLoop;->condition:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getWhilePosition()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/mozilla/javascript/ast/DoLoop;->whilePosition:I

    return v0
.end method

.method public setCondition(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/DoLoop;->assertNotNull(Ljava/lang/Object;)V

    .line 82
    iput-object p1, p0, Lorg/mozilla/javascript/ast/DoLoop;->condition:Lorg/mozilla/javascript/ast/AstNode;

    .line 83
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 84
    return-void
.end method

.method public setWhilePosition(I)V
    .locals 0
    .parameter "whilePosition"

    .prologue
    .line 97
    iput p1, p0, Lorg/mozilla/javascript/ast/DoLoop;->whilePosition:I

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
    const-string v1, "do "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Lorg/mozilla/javascript/ast/DoLoop;->body:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, " while ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lorg/mozilla/javascript/ast/DoLoop;->condition:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ");\n"

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
    iget-object v0, p0, Lorg/mozilla/javascript/ast/DoLoop;->body:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 118
    iget-object v0, p0, Lorg/mozilla/javascript/ast/DoLoop;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 120
    :cond_0
    return-void
.end method
