.class public Lorg/mozilla/javascript/ast/XmlDotQuery;
.super Lorg/mozilla/javascript/ast/InfixExpression;
.source "XmlDotQuery.java"


# instance fields
.field private rp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlDotQuery;->rp:I

    .line 60
    const/16 v0, 0x92

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlDotQuery;->type:I

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(I)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlDotQuery;->rp:I

    .line 60
    const/16 v0, 0x92

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlDotQuery;->type:I

    .line 68
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(II)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlDotQuery;->rp:I

    .line 60
    const/16 v0, 0x92

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlDotQuery;->type:I

    .line 72
    return-void
.end method


# virtual methods
.method public getRp()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/mozilla/javascript/ast/XmlDotQuery;->rp:I

    return v0
.end method

.method public setRp(I)V
    .locals 0
    .parameter "rp"

    .prologue
    .line 89
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlDotQuery;->rp:I

    .line 90
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/XmlDotQuery;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/XmlDotQuery;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ".("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/XmlDotQuery;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
