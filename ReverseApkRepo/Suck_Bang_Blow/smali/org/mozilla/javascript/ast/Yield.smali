.class public Lorg/mozilla/javascript/ast/Yield;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "Yield.java"


# instance fields
.field private value:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 55
    const/16 v0, 0x48

    iput v0, p0, Lorg/mozilla/javascript/ast/Yield;->type:I

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 55
    const/16 v0, 0x48

    iput v0, p0, Lorg/mozilla/javascript/ast/Yield;->type:I

    .line 63
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 55
    const/16 v0, 0x48

    iput v0, p0, Lorg/mozilla/javascript/ast/Yield;->type:I

    .line 67
    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "pos"
    .parameter "len"
    .parameter "value"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 55
    const/16 v0, 0x48

    iput v0, p0, Lorg/mozilla/javascript/ast/Yield;->type:I

    .line 71
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/Yield;->setValue(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getValue()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Yield;->value:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setValue(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "expr"

    .prologue
    .line 86
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Yield;->value:Lorg/mozilla/javascript/ast/AstNode;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 89
    :cond_0
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    .line 93
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Yield;->value:Lorg/mozilla/javascript/ast/AstNode;

    if-nez v0, :cond_0

    const-string v0, "yield"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/ast/Yield;->value:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 103
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/Yield;->value:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Yield;->value:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 106
    :cond_0
    return-void
.end method
