.class public Lorg/mozilla/javascript/ast/BreakStatement;
.super Lorg/mozilla/javascript/ast/Jump;
.source "BreakStatement.java"


# instance fields
.field private breakLabel:Lorg/mozilla/javascript/ast/Name;

.field private target:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    .line 55
    const/16 v0, 0x78

    iput v0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->type:I

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    .line 55
    const/16 v0, 0x78

    iput v0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->type:I

    .line 63
    iput p1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->position:I

    .line 64
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    .line 55
    const/16 v0, 0x78

    iput v0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->type:I

    .line 67
    iput p1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->position:I

    .line 68
    iput p2, p0, Lorg/mozilla/javascript/ast/BreakStatement;->length:I

    .line 69
    return-void
.end method


# virtual methods
.method public getBreakLabel()Lorg/mozilla/javascript/ast/Name;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    return-object v0
.end method

.method public getBreakTarget()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->target:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setBreakLabel(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 87
    iput-object p1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    .line 88
    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/Name;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setBreakTarget(Lorg/mozilla/javascript/ast/Jump;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/BreakStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 108
    iput-object p1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->target:Lorg/mozilla/javascript/ast/AstNode;

    .line 109
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/BreakStatement;->setJumpStatement(Lorg/mozilla/javascript/ast/Jump;)V

    .line 110
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/BreakStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "break"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    if-eqz v1, :cond_0

    .line 118
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 130
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/mozilla/javascript/ast/BreakStatement;->breakLabel:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 133
    :cond_0
    return-void
.end method
