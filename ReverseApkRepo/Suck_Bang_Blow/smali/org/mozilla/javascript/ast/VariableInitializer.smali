.class public Lorg/mozilla/javascript/ast/VariableInitializer;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "VariableInitializer.java"


# instance fields
.field private initializer:Lorg/mozilla/javascript/ast/AstNode;

.field private target:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 57
    const/16 v0, 0x7a

    iput v0, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->type:I

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 57
    const/16 v0, 0x7a

    iput v0, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->type:I

    .line 78
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 57
    const/16 v0, 0x7a

    iput v0, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->type:I

    .line 82
    return-void
.end method


# virtual methods
.method public getInitializer()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->initializer:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getTarget()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->target:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public isDestructuring()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->target:Lorg/mozilla/javascript/ast/AstNode;

    instance-of v0, v0, Lorg/mozilla/javascript/ast/Name;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInitializer(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "initializer"

    .prologue
    .line 128
    iput-object p1, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->initializer:Lorg/mozilla/javascript/ast/AstNode;

    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setNodeType(I)V
    .locals 2
    .parameter "nodeType"

    .prologue
    .line 66
    const/16 v0, 0x7a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x99

    if-eq p1, v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid node type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/VariableInitializer;->setType(I)Lorg/mozilla/javascript/Node;

    .line 71
    return-void
.end method

.method public setTarget(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid target arg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->target:Lorg/mozilla/javascript/ast/AstNode;

    .line 113
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 114
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    const/4 v2, 0x0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/VariableInitializer;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v1, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->initializer:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v1, :cond_0

    .line 139
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->initializer:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
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
    iget-object v0, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 153
    iget-object v0, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->initializer:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/mozilla/javascript/ast/VariableInitializer;->initializer:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 157
    :cond_0
    return-void
.end method
