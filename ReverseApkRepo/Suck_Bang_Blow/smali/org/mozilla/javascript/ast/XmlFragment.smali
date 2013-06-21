.class public abstract Lorg/mozilla/javascript/ast/XmlFragment;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "XmlFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 50
    const/16 v0, 0x91

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlFragment;->type:I

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 50
    const/16 v0, 0x91

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlFragment;->type:I

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 50
    const/16 v0, 0x91

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlFragment;->type:I

    .line 62
    return-void
.end method
