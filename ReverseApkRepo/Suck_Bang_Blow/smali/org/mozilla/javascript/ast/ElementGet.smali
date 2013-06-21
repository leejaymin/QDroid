.class public Lorg/mozilla/javascript/ast/ElementGet;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ElementGet.java"


# instance fields
.field private element:Lorg/mozilla/javascript/ast/AstNode;

.field private lb:I

.field private rb:I

.field private target:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 58
    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    .line 59
    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    .line 62
    const/16 v0, 0x24

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->type:I

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    const/4 v0, -0x1

    .line 69
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 58
    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    .line 59
    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    .line 62
    const/16 v0, 0x24

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->type:I

    .line 70
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    const/4 v0, -0x1

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 58
    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    .line 59
    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    .line 62
    const/16 v0, 0x24

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->type:I

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "target"
    .parameter "element"

    .prologue
    const/4 v0, -0x1

    .line 76
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 58
    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    .line 59
    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    .line 62
    const/16 v0, 0x24

    iput v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->type:I

    .line 77
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ElementGet;->setTarget(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 78
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/ElementGet;->setElement(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getElement()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->element:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLb()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    return v0
.end method

.method public getRb()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    return v0
.end method

.method public getTarget()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->target:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setElement(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ElementGet;->assertNotNull(Ljava/lang/Object;)V

    .line 113
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->element:Lorg/mozilla/javascript/ast/AstNode;

    .line 114
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 115
    return-void
.end method

.method public setLb(I)V
    .locals 0
    .parameter "lb"

    .prologue
    .line 128
    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    .line 129
    return-void
.end method

.method public setParens(II)V
    .locals 0
    .parameter "lb"
    .parameter "rb"

    .prologue
    .line 146
    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->lb:I

    .line 147
    iput p2, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    .line 148
    return-void
.end method

.method public setRb(I)V
    .locals 0
    .parameter "rb"

    .prologue
    .line 142
    iput p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->rb:I

    .line 143
    return-void
.end method

.method public setTarget(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ElementGet;->assertNotNull(Ljava/lang/Object;)V

    .line 96
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ElementGet;->target:Lorg/mozilla/javascript/ast/AstNode;

    .line 97
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 98
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    const/4 v2, 0x0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ElementGet;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ElementGet;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ElementGet;->element:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 166
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->target:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 168
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ElementGet;->element:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 170
    :cond_0
    return-void
.end method
