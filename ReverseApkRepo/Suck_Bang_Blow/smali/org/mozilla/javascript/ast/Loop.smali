.class public abstract Lorg/mozilla/javascript/ast/Loop;
.super Lorg/mozilla/javascript/ast/Scope;
.source "Loop.java"


# instance fields
.field protected body:Lorg/mozilla/javascript/ast/AstNode;

.field protected lp:I

.field protected rp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    .line 47
    iput v0, p0, Lorg/mozilla/javascript/ast/Loop;->lp:I

    .line 48
    iput v0, p0, Lorg/mozilla/javascript/ast/Loop;->rp:I

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, -0x1

    .line 54
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    .line 47
    iput v0, p0, Lorg/mozilla/javascript/ast/Loop;->lp:I

    .line 48
    iput v0, p0, Lorg/mozilla/javascript/ast/Loop;->rp:I

    .line 55
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Scope;-><init>(II)V

    .line 47
    iput v0, p0, Lorg/mozilla/javascript/ast/Loop;->lp:I

    .line 48
    iput v0, p0, Lorg/mozilla/javascript/ast/Loop;->rp:I

    .line 59
    return-void
.end method


# virtual methods
.method public getBody()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Loop;->body:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLp()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/mozilla/javascript/ast/Loop;->lp:I

    return v0
.end method

.method public getRp()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/mozilla/javascript/ast/Loop;->rp:I

    return v0
.end method

.method public setBody(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 3
    .parameter "body"

    .prologue
    .line 74
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Loop;->body:Lorg/mozilla/javascript/ast/AstNode;

    .line 75
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v2

    add-int v0, v1, v2

    .line 76
    .local v0, end:I
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Loop;->getPosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/Loop;->setLength(I)V

    .line 77
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 78
    return-void
.end method

.method public setLp(I)V
    .locals 0
    .parameter "lp"

    .prologue
    .line 91
    iput p1, p0, Lorg/mozilla/javascript/ast/Loop;->lp:I

    .line 92
    return-void
.end method

.method public setParens(II)V
    .locals 0
    .parameter "lp"
    .parameter "rp"

    .prologue
    .line 112
    iput p1, p0, Lorg/mozilla/javascript/ast/Loop;->lp:I

    .line 113
    iput p2, p0, Lorg/mozilla/javascript/ast/Loop;->rp:I

    .line 114
    return-void
.end method

.method public setRp(I)V
    .locals 0
    .parameter "rp"

    .prologue
    .line 105
    iput p1, p0, Lorg/mozilla/javascript/ast/Loop;->rp:I

    .line 106
    return-void
.end method
