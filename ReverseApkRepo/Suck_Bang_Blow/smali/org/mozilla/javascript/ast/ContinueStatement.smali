.class public Lorg/mozilla/javascript/ast/ContinueStatement;
.super Lorg/mozilla/javascript/ast/Jump;
.source "ContinueStatement.java"


# instance fields
.field private label:Lorg/mozilla/javascript/ast/Name;

.field private target:Lorg/mozilla/javascript/ast/Loop;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    .line 56
    const/16 v0, 0x79

    iput v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->type:I

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 63
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(II)V

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

    .line 56
    const/16 v0, 0x79

    iput v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->type:I

    .line 68
    iput p1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->position:I

    .line 69
    iput p2, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->length:I

    .line 70
    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/Name;)V
    .locals 0
    .parameter "pos"
    .parameter "len"
    .parameter "label"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(II)V

    .line 83
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    .line 84
    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/ast/Name;)V
    .locals 0
    .parameter "pos"
    .parameter "label"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(I)V

    .line 78
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/Name;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    .line 56
    const/16 v0, 0x79

    iput v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->type:I

    .line 73
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getLabel()Lorg/mozilla/javascript/ast/Name;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    return-object v0
.end method

.method public getTarget()Lorg/mozilla/javascript/ast/Loop;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->target:Lorg/mozilla/javascript/ast/Loop;

    return-object v0
.end method

.method public setLabel(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 120
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/Name;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 123
    :cond_0
    return-void
.end method

.method public setTarget(Lorg/mozilla/javascript/ast/Loop;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->assertNotNull(Ljava/lang/Object;)V

    .line 101
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->target:Lorg/mozilla/javascript/ast/Loop;

    .line 102
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->setJumpStatement(Lorg/mozilla/javascript/ast/Jump;)V

    .line 103
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "continue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    if-eqz v1, :cond_0

    .line 131
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 143
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 146
    :cond_0
    return-void
.end method
