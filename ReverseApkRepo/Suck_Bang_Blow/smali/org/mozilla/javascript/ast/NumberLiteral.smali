.class public Lorg/mozilla/javascript/ast/NumberLiteral;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "NumberLiteral.java"


# instance fields
.field private number:D

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 52
    const/16 v0, 0x28

    iput v0, p0, Lorg/mozilla/javascript/ast/NumberLiteral;->type:I

    .line 56
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .parameter "number"

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 52
    const/16 v0, 0x28

    iput v0, p0, Lorg/mozilla/javascript/ast/NumberLiteral;->type:I

    .line 84
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/ast/NumberLiteral;->setDouble(D)V

    .line 85
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/NumberLiteral;->setValue(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 52
    const/16 v0, 0x28

    iput v0, p0, Lorg/mozilla/javascript/ast/NumberLiteral;->type:I

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
    const/16 v0, 0x28

    iput v0, p0, Lorg/mozilla/javascript/ast/NumberLiteral;->type:I

    .line 64
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 52
    const/16 v0, 0x28

    iput v0, p0, Lorg/mozilla/javascript/ast/NumberLiteral;->type:I

    .line 71
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/NumberLiteral;->setValue(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/NumberLiteral;->setLength(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;D)V
    .locals 0
    .parameter "pos"
    .parameter "value"
    .parameter "number"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/NumberLiteral;-><init>(ILjava/lang/String;)V

    .line 80
    invoke-virtual {p0, p3, p4}, Lorg/mozilla/javascript/ast/NumberLiteral;->setDouble(D)V

    .line 81
    return-void
.end method


# virtual methods
.method public getNumber()D
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/mozilla/javascript/ast/NumberLiteral;->number:D

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/mozilla/javascript/ast/NumberLiteral;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setNumber(D)V
    .locals 0
    .parameter "value"

    .prologue
    .line 115
    iput-wide p1, p0, Lorg/mozilla/javascript/ast/NumberLiteral;->number:D

    .line 116
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/NumberLiteral;->assertNotNull(Ljava/lang/Object;)V

    .line 101
    iput-object p1, p0, Lorg/mozilla/javascript/ast/NumberLiteral;->value:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/NumberLiteral;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/ast/NumberLiteral;->value:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "<null>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/ast/NumberLiteral;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 128
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    .line 129
    return-void
.end method
