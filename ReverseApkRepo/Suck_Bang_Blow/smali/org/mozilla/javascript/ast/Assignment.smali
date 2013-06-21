.class public Lorg/mozilla/javascript/ast/Assignment;
.super Lorg/mozilla/javascript/ast/InfixExpression;
.source "Assignment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(II)V

    .line 56
    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "pos"
    .parameter "len"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    .line 60
    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V
    .locals 0
    .parameter "operator"
    .parameter "left"
    .parameter "right"
    .parameter "operatorPos"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    .line 64
    return-void
.end method
