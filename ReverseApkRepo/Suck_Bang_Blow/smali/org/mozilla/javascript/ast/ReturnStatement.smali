.class public Lorg/mozilla/javascript/ast/ReturnStatement;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ReturnStatement.java"


# instance fields
.field private returnValue:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 54
    const/4 v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->type:I

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 54
    const/4 v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->type:I

    .line 62
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 54
    const/4 v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->type:I

    .line 66
    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "pos"
    .parameter "len"
    .parameter "returnValue"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 54
    const/4 v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->type:I

    .line 70
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/ReturnStatement;->setReturnValue(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getReturnValue()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->returnValue:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setReturnValue(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "returnValue"

    .prologue
    .line 85
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->returnValue:Lorg/mozilla/javascript/ast/AstNode;

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 88
    :cond_0
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ReturnStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->returnValue:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v1, :cond_0

    .line 96
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->returnValue:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->returnValue:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->returnValue:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 111
    :cond_0
    return-void
.end method
