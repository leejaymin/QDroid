.class public Lorg/mozilla/javascript/ast/Block;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "Block.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 56
    const/16 v0, 0x81

    iput v0, p0, Lorg/mozilla/javascript/ast/Block;->type:I

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 56
    const/16 v0, 0x81

    iput v0, p0, Lorg/mozilla/javascript/ast/Block;->type:I

    .line 64
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 56
    const/16 v0, 0x81

    iput v0, p0, Lorg/mozilla/javascript/ast/Block;->type:I

    .line 68
    return-void
.end method


# virtual methods
.method public addStatement(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "statement"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Block;->addChild(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 75
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 4
    .parameter "depth"

    .prologue
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Block;->makeIndent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v3, "{\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Block;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/Node;

    .line 83
    .local v1, kid:Lorg/mozilla/javascript/Node;
    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    .end local v1           #kid:Lorg/mozilla/javascript/Node;
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Block;->makeIndent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 92
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Block;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/Node;

    .line 94
    .local v1, kid:Lorg/mozilla/javascript/Node;
    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    .end local v1           #kid:Lorg/mozilla/javascript/Node;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 97
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
