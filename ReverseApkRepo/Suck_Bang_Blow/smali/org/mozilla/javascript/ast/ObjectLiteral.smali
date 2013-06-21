.class public Lorg/mozilla/javascript/ast/ObjectLiteral;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ObjectLiteral.java"

# interfaces
.implements Lorg/mozilla/javascript/ast/DestructuringForm;


# static fields
.field private static final NO_ELEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ObjectProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ObjectProperty;",
            ">;"
        }
    .end annotation
.end field

.field isDestructuring:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ast/ObjectLiteral;->NO_ELEMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 74
    const/16 v0, 0x42

    iput v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->type:I

    .line 78
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 74
    const/16 v0, 0x42

    iput v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->type:I

    .line 82
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 74
    const/16 v0, 0x42

    iput v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->type:I

    .line 86
    return-void
.end method


# virtual methods
.method public addElement(Lorg/mozilla/javascript/ast/ObjectProperty;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->assertNotNull(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/ObjectProperty;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 124
    return-void
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ObjectProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ast/ObjectLiteral;->NO_ELEMS:Ljava/util/List;

    goto :goto_0
.end method

.method public isDestructuring()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->isDestructuring:Z

    return v0
.end method

.method public setElements(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/ObjectProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, elements:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/ObjectProperty;>;"
    if-nez p1, :cond_1

    .line 103
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    .line 110
    :cond_0
    return-void

    .line 105
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 107
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/ObjectProperty;

    .line 108
    .local v1, o:Lorg/mozilla/javascript/ast/ObjectProperty;
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->addElement(Lorg/mozilla/javascript/ast/ObjectProperty;)V

    goto :goto_0
.end method

.method public setIsDestructuring(Z)V
    .locals 0
    .parameter "destructuring"

    .prologue
    .line 132
    iput-boolean p1, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->isDestructuring:Z

    .line 133
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ObjectLiteral;->elements:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/ast/ObjectLiteral;->printList(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 152
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 162
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ObjectLiteral;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/ObjectProperty;

    .line 164
    .local v1, prop:Lorg/mozilla/javascript/ast/ObjectProperty;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/ObjectProperty;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 167
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #prop:Lorg/mozilla/javascript/ast/ObjectProperty;
    :cond_0
    return-void
.end method
