.class public Lorg/mozilla/javascript/ast/ForLoop;
.super Lorg/mozilla/javascript/ast/Loop;
.source "ForLoop.java"


# instance fields
.field private condition:Lorg/mozilla/javascript/ast/AstNode;

.field private increment:Lorg/mozilla/javascript/ast/AstNode;

.field private initializer:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Loop;-><init>()V

    .line 57
    const/16 v0, 0x77

    iput v0, p0, Lorg/mozilla/javascript/ast/ForLoop;->type:I

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Loop;-><init>(I)V

    .line 57
    const/16 v0, 0x77

    iput v0, p0, Lorg/mozilla/javascript/ast/ForLoop;->type:I

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Loop;-><init>(II)V

    .line 57
    const/16 v0, 0x77

    iput v0, p0, Lorg/mozilla/javascript/ast/ForLoop;->type:I

    .line 69
    return-void
.end method


# virtual methods
.method public getCondition()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForLoop;->condition:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getIncrement()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForLoop;->increment:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getInitializer()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForLoop;->initializer:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setCondition(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ForLoop;->assertNotNull(Ljava/lang/Object;)V

    .line 110
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ForLoop;->condition:Lorg/mozilla/javascript/ast/AstNode;

    .line 111
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 112
    return-void
.end method

.method public setIncrement(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ForLoop;->assertNotNull(Ljava/lang/Object;)V

    .line 130
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ForLoop;->increment:Lorg/mozilla/javascript/ast/AstNode;

    .line 131
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 132
    return-void
.end method

.method public setInitializer(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "initializer"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ForLoop;->assertNotNull(Ljava/lang/Object;)V

    .line 91
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ForLoop;->initializer:Lorg/mozilla/javascript/ast/AstNode;

    .line 92
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 93
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 5
    .parameter "depth"

    .prologue
    const/4 v2, 0x0

    const-string v4, "; "

    const-string v3, "\n"

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ForLoop;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "for ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ForLoop;->initializer:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ForLoop;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ForLoop;->increment:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ForLoop;->body:Lorg/mozilla/javascript/ast/AstNode;

    instance-of v1, v1, Lorg/mozilla/javascript/ast/Block;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ForLoop;->body:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 148
    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/ast/ForLoop;->body:Lorg/mozilla/javascript/ast/AstNode;

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
    .line 159
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForLoop;->initializer:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 161
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForLoop;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 162
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForLoop;->increment:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 163
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ForLoop;->body:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 165
    :cond_0
    return-void
.end method
