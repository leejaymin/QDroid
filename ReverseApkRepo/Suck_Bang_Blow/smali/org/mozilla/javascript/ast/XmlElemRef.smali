.class public Lorg/mozilla/javascript/ast/XmlElemRef;
.super Lorg/mozilla/javascript/ast/XmlRef;
.source "XmlElemRef.java"


# instance fields
.field private indexExpr:Lorg/mozilla/javascript/ast/AstNode;

.field private lb:I

.field private rb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 76
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/XmlRef;-><init>()V

    .line 69
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    .line 70
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    .line 73
    const/16 v0, 0x4d

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->type:I

    .line 77
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, -0x1

    .line 80
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/XmlRef;-><init>(I)V

    .line 69
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    .line 70
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    .line 73
    const/16 v0, 0x4d

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->type:I

    .line 81
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/XmlRef;-><init>(II)V

    .line 69
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    .line 70
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    .line 73
    const/16 v0, 0x4d

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->type:I

    .line 85
    return-void
.end method


# virtual methods
.method public getExpression()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->indexExpr:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLb()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    return v0
.end method

.method public getRb()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    return v0
.end method

.method public setBrackets(II)V
    .locals 0
    .parameter "lb"
    .parameter "rb"

    .prologue
    .line 137
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    .line 138
    iput p2, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    .line 139
    return-void
.end method

.method public setExpression(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "expr"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/XmlElemRef;->assertNotNull(Ljava/lang/Object;)V

    .line 101
    iput-object p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->indexExpr:Lorg/mozilla/javascript/ast/AstNode;

    .line 102
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 103
    return-void
.end method

.method public setLb(I)V
    .locals 0
    .parameter "lb"

    .prologue
    .line 116
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->lb:I

    .line 117
    return-void
.end method

.method public setRb(I)V
    .locals 0
    .parameter "rb"

    .prologue
    .line 130
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->rb:I

    .line 131
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    const/4 v2, 0x0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/XmlElemRef;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/XmlElemRef;->isAttributeAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_1
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->indexExpr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 164
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlElemRef;->indexExpr:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 170
    :cond_1
    return-void
.end method
