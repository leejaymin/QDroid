.class public Lorg/mozilla/javascript/ast/XmlString;
.super Lorg/mozilla/javascript/ast/XmlFragment;
.source "XmlString.java"


# instance fields
.field private xml:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/XmlFragment;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/XmlFragment;-><init>(I)V

    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "pos"
    .parameter "s"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/XmlFragment;-><init>(I)V

    .line 59
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/XmlString;->setXml(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getXml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlString;->xml:Ljava/lang/String;

    return-object v0
.end method

.method public setXml(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/XmlString;->assertNotNull(Ljava/lang/Object;)V

    .line 70
    iput-object p1, p0, Lorg/mozilla/javascript/ast/XmlString;->xml:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/XmlString;->setLength(I)V

    .line 72
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/XmlString;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/ast/XmlString;->xml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 92
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    .line 93
    return-void
.end method
