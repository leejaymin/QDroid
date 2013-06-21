.class public Lorg/mozilla/javascript/ast/ErrorNode;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ErrorNode.java"


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/ErrorNode;->type:I

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/ErrorNode;->type:I

    .line 60
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/ErrorNode;->type:I

    .line 64
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ErrorNode;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ErrorNode;->message:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 1
    .parameter "depth"

    .prologue
    .line 82
    const-string v0, ""

    return-object v0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 91
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    .line 92
    return-void
.end method
