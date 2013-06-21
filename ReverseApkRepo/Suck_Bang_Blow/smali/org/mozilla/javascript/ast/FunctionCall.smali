.class public Lorg/mozilla/javascript/ast/FunctionCall;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "FunctionCall.java"


# static fields
.field protected static final NO_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation
.end field

.field protected lp:I

.field protected rp:I

.field protected target:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ast/FunctionCall;->NO_ARGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 57
    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->lp:I

    .line 58
    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->rp:I

    .line 61
    const/16 v0, 0x26

    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->type:I

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, -0x1

    .line 68
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 57
    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->lp:I

    .line 58
    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->rp:I

    .line 61
    const/16 v0, 0x26

    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->type:I

    .line 69
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 57
    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->lp:I

    .line 58
    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->rp:I

    .line 61
    const/16 v0, 0x26

    iput v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->type:I

    .line 73
    return-void
.end method


# virtual methods
.method public addArgument(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "arg"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/FunctionCall;->assertNotNull(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 132
    return-void
.end method

.method public getArguments()Ljava/util/List;
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
    .line 100
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ast/FunctionCall;->NO_ARGS:Ljava/util/List;

    goto :goto_0
.end method

.method public getLp()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->lp:I

    return v0
.end method

.method public getRp()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->rp:I

    return v0
.end method

.method public getTarget()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mozilla/javascript/ast/FunctionCall;->target:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setArguments(Ljava/util/List;)V
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
    .line 109
    .local p1, arguments:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    if-nez p1, :cond_1

    .line 110
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    .line 118
    :cond_0
    return-void

    .line 112
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 114
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

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    .line 115
    .local v0, arg:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/FunctionCall;->addArgument(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_0
.end method

.method public setLp(I)V
    .locals 0
    .parameter "lp"

    .prologue
    .line 146
    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->lp:I

    .line 147
    return-void
.end method

.method public setParens(II)V
    .locals 0
    .parameter "lp"
    .parameter "rp"

    .prologue
    .line 167
    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->lp:I

    .line 168
    iput p2, p0, Lorg/mozilla/javascript/ast/FunctionCall;->rp:I

    .line 169
    return-void
.end method

.method public setRp(I)V
    .locals 0
    .parameter "rp"

    .prologue
    .line 160
    iput p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->rp:I

    .line 161
    return-void
.end method

.method public setTarget(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/FunctionCall;->assertNotNull(Ljava/lang/Object;)V

    .line 90
    iput-object p1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->target:Lorg/mozilla/javascript/ast/AstNode;

    .line 91
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 92
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/FunctionCall;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->target:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lorg/mozilla/javascript/ast/FunctionCall;->arguments:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/ast/FunctionCall;->printList(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 180
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 189
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lorg/mozilla/javascript/ast/FunctionCall;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 191
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionCall;->getArguments()Ljava/util/List;

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

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    .line 192
    .local v0, arg:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 195
    .end local v0           #arg:Lorg/mozilla/javascript/ast/AstNode;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
