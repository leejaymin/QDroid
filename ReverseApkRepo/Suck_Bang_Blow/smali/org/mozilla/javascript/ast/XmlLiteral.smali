.class public Lorg/mozilla/javascript/ast/XmlLiteral;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "XmlLiteral.java"


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/XmlFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/XmlLiteral;->fragments:Ljava/util/List;

    .line 58
    const/16 v0, 0x91

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlLiteral;->type:I

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/XmlLiteral;->fragments:Ljava/util/List;

    .line 58
    const/16 v0, 0x91

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlLiteral;->type:I

    .line 66
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/XmlLiteral;->fragments:Ljava/util/List;

    .line 58
    const/16 v0, 0x91

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlLiteral;->type:I

    .line 70
    return-void
.end method


# virtual methods
.method public addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/XmlLiteral;->assertNotNull(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlLiteral;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/XmlFragment;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 100
    return-void
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/XmlFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlLiteral;->fragments:Ljava/util/List;

    return-object v0
.end method

.method public setFragments(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/XmlFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, fragments:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/XmlFragment;>;"
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/XmlLiteral;->assertNotNull(Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lorg/mozilla/javascript/ast/XmlLiteral;->fragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/XmlFragment;

    .line 89
    .local v0, fragment:Lorg/mozilla/javascript/ast/XmlFragment;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/XmlLiteral;->addFragment(Lorg/mozilla/javascript/ast/XmlFragment;)V

    goto :goto_0

    .line 90
    .end local v0           #fragment:Lorg/mozilla/javascript/ast/XmlFragment;
    :cond_0
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 4
    .parameter "depth"

    .prologue
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xfa

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/mozilla/javascript/ast/XmlLiteral;->fragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/XmlFragment;

    .line 106
    .local v0, frag:Lorg/mozilla/javascript/ast/XmlFragment;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/XmlFragment;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 108
    .end local v0           #frag:Lorg/mozilla/javascript/ast/XmlFragment;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 116
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lorg/mozilla/javascript/ast/XmlLiteral;->fragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/XmlFragment;

    .line 118
    .local v0, frag:Lorg/mozilla/javascript/ast/XmlFragment;
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/XmlFragment;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 121
    .end local v0           #frag:Lorg/mozilla/javascript/ast/XmlFragment;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
