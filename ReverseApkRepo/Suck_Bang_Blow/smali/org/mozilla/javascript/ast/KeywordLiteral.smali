.class public Lorg/mozilla/javascript/ast/KeywordLiteral;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "KeywordLiteral.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 64
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "pos"
    .parameter "len"
    .parameter "nodeType"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 72
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/KeywordLiteral;->setType(I)Lorg/mozilla/javascript/ast/KeywordLiteral;

    .line 73
    return-void
.end method


# virtual methods
.method public isBooleanLiteral()Z
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lorg/mozilla/javascript/ast/KeywordLiteral;->type:I

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/ast/KeywordLiteral;->type:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setType(I)Lorg/mozilla/javascript/Node;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/KeywordLiteral;->setType(I)Lorg/mozilla/javascript/ast/KeywordLiteral;

    move-result-object v0

    return-object v0
.end method

.method public setType(I)Lorg/mozilla/javascript/ast/KeywordLiteral;
    .locals 3
    .parameter "nodeType"

    .prologue
    .line 81
    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput p1, p0, Lorg/mozilla/javascript/ast/KeywordLiteral;->type:I

    .line 89
    return-object p0
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 4
    .parameter "depth"

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/KeywordLiteral;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/KeywordLiteral;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 121
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid keyword literal type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/KeywordLiteral;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :sswitch_0
    const-string v1, "this"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 109
    :sswitch_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 112
    :sswitch_2
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 115
    :sswitch_3
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    :sswitch_4
    const-string v1, "debugger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2b -> :sswitch_0
        0x2c -> :sswitch_3
        0x2d -> :sswitch_2
        0xa0 -> :sswitch_4
    .end sparse-switch
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 132
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    .line 133
    return-void
.end method
