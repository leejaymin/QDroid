.class public Lorg/mozilla/javascript/ast/LabeledStatement;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "LabeledStatement.java"


# instance fields
.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/Label;",
            ">;"
        }
    .end annotation
.end field

.field private statement:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->labels:Ljava/util/List;

    .line 59
    const/16 v0, 0x85

    iput v0, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->type:I

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->labels:Ljava/util/List;

    .line 59
    const/16 v0, 0x85

    iput v0, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->type:I

    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->labels:Ljava/util/List;

    .line 59
    const/16 v0, 0x85

    iput v0, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->type:I

    .line 71
    return-void
.end method


# virtual methods
.method public addLabel(Lorg/mozilla/javascript/ast/Label;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->labels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/Label;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 102
    return-void
.end method

.method public getFirstLabel()Lorg/mozilla/javascript/ast/Label;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->labels:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/Label;

    return-object p0
.end method

.method public getLabelByName(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Label;
    .locals 3
    .parameter "name"

    .prologue
    .line 117
    iget-object v2, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/Label;

    .line 118
    .local v1, label:Lorg/mozilla/javascript/ast/Label;
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 122
    .end local v1           #label:Lorg/mozilla/javascript/ast/Label;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->labels:Ljava/util/List;

    return-object v0
.end method

.method public getStatement()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->statement:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/Label;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, labels:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/Label;>;"
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->labels:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 89
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/Label;

    .line 90
    .local v1, l:Lorg/mozilla/javascript/ast/Label;
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/LabeledStatement;->addLabel(Lorg/mozilla/javascript/ast/Label;)V

    goto :goto_0

    .line 92
    .end local v1           #l:Lorg/mozilla/javascript/ast/Label;
    :cond_1
    return-void
.end method

.method public setStatement(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "statement"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 131
    iput-object p1, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->statement:Lorg/mozilla/javascript/ast/AstNode;

    .line 132
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 133
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 5
    .parameter "depth"

    .prologue
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->labels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/Label;

    .line 143
    .local v1, label:Lorg/mozilla/javascript/ast/Label;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/Label;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    .end local v1           #label:Lorg/mozilla/javascript/ast/Label;
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->statement:Lorg/mozilla/javascript/ast/AstNode;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 155
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/Label;

    .line 157
    .local v1, label:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 159
    .end local v1           #label:Lorg/mozilla/javascript/ast/AstNode;
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/ast/LabeledStatement;->statement:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 161
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
