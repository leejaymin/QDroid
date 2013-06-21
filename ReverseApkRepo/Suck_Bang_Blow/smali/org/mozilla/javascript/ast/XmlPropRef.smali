.class public Lorg/mozilla/javascript/ast/XmlPropRef;
.super Lorg/mozilla/javascript/ast/XmlRef;
.source "XmlPropRef.java"


# instance fields
.field private propName:Lorg/mozilla/javascript/ast/Name;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/XmlRef;-><init>()V

    .line 65
    const/16 v0, 0x4f

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlPropRef;->type:I

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/XmlRef;-><init>(I)V

    .line 65
    const/16 v0, 0x4f

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlPropRef;->type:I

    .line 73
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/XmlRef;-><init>(II)V

    .line 65
    const/16 v0, 0x4f

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlPropRef;->type:I

    .line 77
    return-void
.end method


# virtual methods
.method public getPropName()Lorg/mozilla/javascript/ast/Name;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlPropRef;->propName:Lorg/mozilla/javascript/ast/Name;

    return-object v0
.end method

.method public setPropName(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0
    .parameter "propName"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/XmlPropRef;->assertNotNull(Ljava/lang/Object;)V

    .line 92
    iput-object p1, p0, Lorg/mozilla/javascript/ast/XmlPropRef;->propName:Lorg/mozilla/javascript/ast/Name;

    .line 93
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/Name;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 94
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3
    .parameter "depth"

    .prologue
    const/4 v2, 0x0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/XmlPropRef;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/XmlPropRef;->isAttributeAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/ast/XmlPropRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lorg/mozilla/javascript/ast/XmlPropRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/ast/XmlPropRef;->propName:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 116
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlPropRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlPropRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlPropRef;->propName:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 122
    :cond_1
    return-void
.end method
