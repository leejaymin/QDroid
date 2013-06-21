.class public Lorg/mozilla/javascript/ast/ArrayComprehension;
.super Lorg/mozilla/javascript/ast/Scope;
.source "ArrayComprehension.java"


# instance fields
.field private filter:Lorg/mozilla/javascript/ast/AstNode;

.field private ifPosition:I

.field private loops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;",
            ">;"
        }
    .end annotation
.end field

.field private lp:I

.field private result:Lorg/mozilla/javascript/ast/AstNode;

.field private rp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 64
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    .line 56
    iput v1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->ifPosition:I

    .line 57
    iput v1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->lp:I

    .line 58
    iput v1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->rp:I

    .line 61
    const/16 v0, 0x9d

    iput v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->type:I

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "pos"

    .prologue
    const/4 v1, -0x1

    .line 68
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    .line 56
    iput v1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->ifPosition:I

    .line 57
    iput v1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->lp:I

    .line 58
    iput v1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->rp:I

    .line 61
    const/16 v0, 0x9d

    iput v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->type:I

    .line 69
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "pos"
    .parameter "len"

    .prologue
    const/4 v1, -0x1

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Scope;-><init>(II)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    .line 56
    iput v1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->ifPosition:I

    .line 57
    iput v1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->lp:I

    .line 58
    iput v1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->rp:I

    .line 61
    const/16 v0, 0x9d

    iput v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->type:I

    .line 73
    return-void
.end method


# virtual methods
.method public addLoop(Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;)V
    .locals 1
    .parameter "acl"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->assertNotNull(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 119
    return-void
.end method

.method public getFilter()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->filter:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getFilterLp()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->lp:I

    return v0
.end method

.method public getFilterRp()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->rp:I

    return v0
.end method

.method public getIfPosition()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->ifPosition:I

    return v0
.end method

.method public getLoops()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->result:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setFilter(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 133
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->filter:Lorg/mozilla/javascript/ast/AstNode;

    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 136
    :cond_0
    return-void
.end method

.method public setFilterLp(I)V
    .locals 0
    .parameter "lp"

    .prologue
    .line 163
    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->lp:I

    .line 164
    return-void
.end method

.method public setFilterRp(I)V
    .locals 0
    .parameter "rp"

    .prologue
    .line 177
    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->rp:I

    .line 178
    return-void
.end method

.method public setIfPosition(I)V
    .locals 0
    .parameter "ifPosition"

    .prologue
    .line 149
    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->ifPosition:I

    .line 150
    return-void
.end method

.method public setLoops(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, loops:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;>;"
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->assertNotNull(Ljava/lang/Object;)V

    .line 105
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    .line 107
    .local v0, acl:Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/ArrayComprehension;->addLoop(Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;)V

    goto :goto_0

    .line 109
    .end local v0           #acl:Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    :cond_0
    return-void
.end method

.method public setResult(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->assertNotNull(Ljava/lang/Object;)V

    .line 88
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->result:Lorg/mozilla/javascript/ast/AstNode;

    .line 89
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 90
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 5
    .parameter "depth"

    .prologue
    const/4 v4, 0x0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 183
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->result:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    .line 186
    .local v1, loop:Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 188
    .end local v1           #loop:Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->filter:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v3, :cond_1

    .line 189
    const-string v3, " if ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->filter:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_1
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 203
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->result:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 207
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    .line 208
    .local v1, loop:Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_1

    .line 210
    .end local v1           #loop:Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->filter:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->filter:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0
.end method
