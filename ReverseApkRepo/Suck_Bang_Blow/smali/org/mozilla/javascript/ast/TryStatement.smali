.class public Lorg/mozilla/javascript/ast/TryStatement;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "TryStatement.java"


# static fields
.field private static final NO_CATCHES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/CatchClause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private catchClauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/CatchClause;",
            ">;"
        }
    .end annotation
.end field

.field private finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

.field private finallyPosition:I

.field private tryBlock:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ast/TryStatement;->NO_CATCHES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyPosition:I

    .line 70
    const/16 v0, 0x51

    iput v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->type:I

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyPosition:I

    .line 70
    const/16 v0, 0x51

    iput v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->type:I

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

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyPosition:I

    .line 70
    const/16 v0, 0x51

    iput v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->type:I

    .line 82
    return-void
.end method


# virtual methods
.method public addCatchClause(Lorg/mozilla/javascript/ast/CatchClause;)V
    .locals 1
    .parameter "clause"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/TryStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/CatchClause;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 135
    return-void
.end method

.method public getCatchClauses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/CatchClause;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ast/TryStatement;->NO_CATCHES:Ljava/util/List;

    goto :goto_0
.end method

.method public getFinallyBlock()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getFinallyPosition()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyPosition:I

    return v0
.end method

.method public getTryBlock()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/mozilla/javascript/ast/TryStatement;->tryBlock:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setCatchClauses(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/CatchClause;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, catchClauses:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/CatchClause;>;"
    if-nez p1, :cond_1

    .line 113
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    .line 121
    :cond_0
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, p0, Lorg/mozilla/javascript/ast/TryStatement;->catchClauses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 117
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/CatchClause;

    .line 118
    .local v0, cc:Lorg/mozilla/javascript/ast/CatchClause;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/TryStatement;->addCatchClause(Lorg/mozilla/javascript/ast/CatchClause;)V

    goto :goto_0
.end method

.method public setFinallyBlock(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "finallyBlock"

    .prologue
    .line 149
    iput-object p1, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

    .line 150
    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 152
    :cond_0
    return-void
.end method

.method public setFinallyPosition(I)V
    .locals 0
    .parameter "finallyPosition"

    .prologue
    .line 165
    iput p1, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyPosition:I

    .line 166
    return-void
.end method

.method public setTryBlock(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "tryBlock"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/TryStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 94
    iput-object p1, p0, Lorg/mozilla/javascript/ast/TryStatement;->tryBlock:Lorg/mozilla/javascript/ast/AstNode;

    .line 95
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 96
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 4
    .parameter "depth"

    .prologue
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/TryStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v3, "try "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v3, p0, Lorg/mozilla/javascript/ast/TryStatement;->tryBlock:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/TryStatement;->getCatchClauses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/CatchClause;

    .line 175
    .local v0, cc:Lorg/mozilla/javascript/ast/CatchClause;
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/CatchClause;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 177
    .end local v0           #cc:Lorg/mozilla/javascript/ast/CatchClause;
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v3, :cond_1

    .line 178
    const-string v3, " finally "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v3, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 190
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lorg/mozilla/javascript/ast/TryStatement;->tryBlock:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 192
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/TryStatement;->getCatchClauses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/CatchClause;

    .line 193
    .local v0, cc:Lorg/mozilla/javascript/ast/CatchClause;
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/CatchClause;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 195
    .end local v0           #cc:Lorg/mozilla/javascript/ast/CatchClause;
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lorg/mozilla/javascript/ast/TryStatement;->finallyBlock:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 199
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
