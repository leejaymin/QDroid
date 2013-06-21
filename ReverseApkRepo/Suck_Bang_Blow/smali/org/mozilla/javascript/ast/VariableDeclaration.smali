.class public Lorg/mozilla/javascript/ast/VariableDeclaration;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "VariableDeclaration.java"


# instance fields
.field private variables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/VariableInitializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    .line 65
    const/16 v0, 0x7a

    iput v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->type:I

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    .line 65
    const/16 v0, 0x7a

    iput v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->type:I

    .line 73
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    .line 65
    const/16 v0, 0x7a

    iput v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->type:I

    .line 77
    return-void
.end method

.method private declTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->type:I

    invoke-static {v0}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addVariable(Lorg/mozilla/javascript/ast/VariableInitializer;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->assertNotNull(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/VariableInitializer;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 107
    return-void
.end method

.method public getVariables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/VariableInitializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    return-object v0
.end method

.method public isConst()Z
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->type:I

    const/16 v1, 0x9a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLet()Z
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->type:I

    const/16 v1, 0x99

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVar()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->type:I

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setType(I)Lorg/mozilla/javascript/Node;
    .locals 3
    .parameter "type"

    .prologue
    .line 115
    const/16 v0, 0x7a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x99

    if-eq p1, v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid decl type: "

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
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setType(I)Lorg/mozilla/javascript/Node;

    move-result-object v0

    return-object v0
.end method

.method public setVariables(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/VariableInitializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, variables:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/VariableInitializer;>;"
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->assertNotNull(Ljava/lang/Object;)V

    .line 92
    iget-object v2, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/VariableInitializer;

    .line 94
    .local v1, vi:Lorg/mozilla/javascript/ast/VariableInitializer;
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->addVariable(Lorg/mozilla/javascript/ast/VariableInitializer;)V

    goto :goto_0

    .line 96
    .end local v1           #vi:Lorg/mozilla/javascript/ast/VariableInitializer;
    :cond_0
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/VariableDeclaration;->declTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/ast/VariableDeclaration;->printList(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 164
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lorg/mozilla/javascript/ast/VariableDeclaration;->variables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/VariableInitializer;

    .line 166
    .local v1, var:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 169
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #var:Lorg/mozilla/javascript/ast/AstNode;
    :cond_0
    return-void
.end method
