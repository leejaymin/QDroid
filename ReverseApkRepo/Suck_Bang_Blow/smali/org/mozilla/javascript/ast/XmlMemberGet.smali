.class public Lorg/mozilla/javascript/ast/XmlMemberGet;
.super Lorg/mozilla/javascript/ast/InfixExpression;
.source "XmlMemberGet.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>()V

    .line 54
    const/16 v0, 0x8f

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlMemberGet;->type:I

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(I)V

    .line 54
    const/16 v0, 0x8f

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlMemberGet;->type:I

    .line 62
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(II)V

    .line 54
    const/16 v0, 0x8f

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlMemberGet;->type:I

    .line 66
    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/XmlRef;)V
    .locals 1
    .parameter "pos"
    .parameter "len"
    .parameter "target"
    .parameter "ref"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(IILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    .line 54
    const/16 v0, 0x8f

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlMemberGet;->type:I

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/XmlRef;)V
    .locals 1
    .parameter "target"
    .parameter "ref"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V

    .line 54
    const/16 v0, 0x8f

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlMemberGet;->type:I

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/XmlRef;I)V
    .locals 1
    .parameter "target"
    .parameter "ref"
    .parameter "opPos"

    .prologue
    const/16 v0, 0x8f

    .line 81
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/mozilla/javascript/ast/InfixExpression;-><init>(ILorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;I)V

    .line 54
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlMemberGet;->type:I

    .line 82
    return-void
.end method


# virtual methods
.method public getMemberRef()Lorg/mozilla/javascript/ast/XmlRef;
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/XmlMemberGet;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/XmlRef;

    return-object p0
.end method

.method public getTarget()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/XmlMemberGet;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Lorg/mozilla/javascript/ast/XmlRef;)V
    .locals 0
    .parameter "ref"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/XmlMemberGet;->setRight(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 115
    return-void
.end method

.method public setTarget(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/XmlMemberGet;->setLeft(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 98
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    const/4 v2, 0x0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/XmlMemberGet;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/XmlMemberGet;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/XmlMemberGet;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/ast/XmlMemberGet;->operatorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/XmlMemberGet;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
