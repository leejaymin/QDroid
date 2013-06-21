.class public Lorg/mozilla/javascript/ast/EmptyExpression;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "EmptyExpression.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 51
    const/16 v0, 0x80

    iput v0, p0, Lorg/mozilla/javascript/ast/EmptyExpression;->type:I

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 51
    const/16 v0, 0x80

    iput v0, p0, Lorg/mozilla/javascript/ast/EmptyExpression;->type:I

    .line 59
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 51
    const/16 v0, 0x80

    iput v0, p0, Lorg/mozilla/javascript/ast/EmptyExpression;->type:I

    .line 63
    return-void
.end method


# virtual methods
.method public toSource(I)Ljava/lang/String;
    .locals 1
    .parameter "depth"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/EmptyExpression;->makeIndent(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 75
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    .line 76
    return-void
.end method
