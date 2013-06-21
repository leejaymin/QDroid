.class public Lorg/mozilla/javascript/ast/SwitchCase;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "SwitchCase.java"


# instance fields
.field private expression:Lorg/mozilla/javascript/ast/AstNode;

.field private statements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 68
    const/16 v0, 0x73

    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchCase;->type:I

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 68
    const/16 v0, 0x73

    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchCase;->type:I

    .line 76
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 68
    const/16 v0, 0x73

    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchCase;->type:I

    .line 80
    return-void
.end method


# virtual methods
.method public addStatement(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 3
    .parameter "statement"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/SwitchCase;->assertNotNull(Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lorg/mozilla/javascript/ast/SwitchCase;->statements:Ljava/util/List;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/ast/SwitchCase;->statements:Ljava/util/List;

    .line 144
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v2

    add-int v0, v1, v2

    .line 145
    .local v0, end:I
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/SwitchCase;->getPosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/SwitchCase;->setLength(I)V

    .line 146
    iget-object v1, p0, Lorg/mozilla/javascript/ast/SwitchCase;->statements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 148
    return-void
.end method

.method public getExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchCase;->expression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getStatements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchCase;->statements:Ljava/util/List;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchCase;->expression:Lorg/mozilla/javascript/ast/AstNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "expression"

    .prologue
    .line 97
    iput-object p1, p0, Lorg/mozilla/javascript/ast/SwitchCase;->expression:Lorg/mozilla/javascript/ast/AstNode;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setStatements(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, statements:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchCase;->statements:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchCase;->statements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 125
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

    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    .line 126
    .local v1, s:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/SwitchCase;->addStatement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_0

    .line 128
    .end local v1           #s:Lorg/mozilla/javascript/ast/AstNode;
    :cond_1
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 5
    .parameter "depth"

    .prologue
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/SwitchCase;->makeIndent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v3, p0, Lorg/mozilla/javascript/ast/SwitchCase;->expression:Lorg/mozilla/javascript/ast/AstNode;

    if-nez v3, :cond_0

    .line 155
    const-string v3, "default:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :goto_0
    iget-object v3, p0, Lorg/mozilla/javascript/ast/SwitchCase;->statements:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lorg/mozilla/javascript/ast/SwitchCase;->statements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    .line 163
    .local v1, s:Lorg/mozilla/javascript/ast/AstNode;
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 157
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lorg/mozilla/javascript/ast/AstNode;
    :cond_0
    const-string v3, "case "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v3, p0, Lorg/mozilla/javascript/ast/SwitchCase;->expression:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 175
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchCase;->expression:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchCase;->expression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 179
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchCase;->statements:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchCase;->statements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    .line 181
    .local v1, s:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 185
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lorg/mozilla/javascript/ast/AstNode;
    :cond_1
    return-void
.end method
