.class public Lorg/mozilla/javascript/ast/SwitchStatement;
.super Lorg/mozilla/javascript/ast/Jump;
.source "SwitchStatement.java"


# static fields
.field private static final NO_CASES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/SwitchCase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/SwitchCase;",
            ">;"
        }
    .end annotation
.end field

.field private expression:Lorg/mozilla/javascript/ast/AstNode;

.field private lp:I

.field private rp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ast/SwitchStatement;->NO_CASES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 78
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    .line 71
    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    .line 72
    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    .line 75
    const/16 v0, 0x72

    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->type:I

    .line 79
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    .line 71
    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    .line 72
    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    .line 75
    const/16 v0, 0x72

    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->type:I

    .line 83
    iput p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->position:I

    .line 84
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 86
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    .line 71
    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    .line 72
    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    .line 75
    const/16 v0, 0x72

    iput v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->type:I

    .line 87
    iput p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->position:I

    .line 88
    iput p2, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->length:I

    .line 89
    return-void
.end method


# virtual methods
.method public addCase(Lorg/mozilla/javascript/ast/SwitchCase;)V
    .locals 1
    .parameter "switchCase"

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/SwitchStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/SwitchCase;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 144
    return-void
.end method

.method public getCases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/SwitchCase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ast/SwitchStatement;->NO_CASES:Ljava/util/List;

    goto :goto_0
.end method

.method public getExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLp()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    return v0
.end method

.method public getRp()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    return v0
.end method

.method public setCases(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/SwitchCase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, cases:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/SwitchCase;>;"
    if-nez p1, :cond_1

    .line 124
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    .line 131
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 128
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/SwitchCase;

    .line 129
    .local v1, sc:Lorg/mozilla/javascript/ast/SwitchCase;
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/SwitchStatement;->addCase(Lorg/mozilla/javascript/ast/SwitchCase;)V

    goto :goto_0
.end method

.method public setExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "expression"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/SwitchStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 105
    iput-object p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    .line 106
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 107
    return-void
.end method

.method public setLp(I)V
    .locals 0
    .parameter "lp"

    .prologue
    .line 157
    iput p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    .line 158
    return-void
.end method

.method public setParens(II)V
    .locals 0
    .parameter "lp"
    .parameter "rp"

    .prologue
    .line 178
    iput p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->lp:I

    .line 179
    iput p2, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    .line 180
    return-void
.end method

.method public setRp(I)V
    .locals 0
    .parameter "rp"

    .prologue
    .line 171
    iput p1, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->rp:I

    .line 172
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 6
    .parameter "depth"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/SwitchStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, pad:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v4, "switch ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v4, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v4, ") {\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v4, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->cases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/SwitchCase;

    .line 191
    .local v3, sc:Lorg/mozilla/javascript/ast/SwitchCase;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/ast/SwitchCase;->toSource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 193
    .end local v3           #sc:Lorg/mozilla/javascript/ast/SwitchCase;
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v4, "}\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 204
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lorg/mozilla/javascript/ast/SwitchStatement;->expression:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 206
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/SwitchStatement;->getCases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/SwitchCase;

    .line 207
    .local v1, sc:Lorg/mozilla/javascript/ast/SwitchCase;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/SwitchCase;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 210
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sc:Lorg/mozilla/javascript/ast/SwitchCase;
    :cond_0
    return-void
.end method
