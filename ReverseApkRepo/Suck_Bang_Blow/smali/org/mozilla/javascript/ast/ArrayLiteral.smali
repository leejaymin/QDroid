.class public Lorg/mozilla/javascript/ast/ArrayLiteral;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ArrayLiteral.java"

# interfaces
.implements Lorg/mozilla/javascript/ast/DestructuringForm;


# static fields
.field private static final NO_ELEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private destructuringLength:I

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation
.end field

.field private isDestructuring:Z

.field private skipCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ast/ArrayLiteral;->NO_ELEMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 76
    const/16 v0, 0x41

    iput v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->type:I

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    .line 76
    const/16 v0, 0x41

    iput v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->type:I

    .line 84
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    .line 76
    const/16 v0, 0x41

    iput v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->type:I

    .line 88
    return-void
.end method


# virtual methods
.method public addElement(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->assertNotNull(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 127
    return-void
.end method

.method public getDestructuringLength()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->destructuringLength:I

    return v0
.end method

.method public getElement(I)Lorg/mozilla/javascript/ast/AstNode;
    .locals 2
    .parameter "index"

    .prologue
    .line 144
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "no elements"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/AstNode;

    return-object p0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ast/ArrayLiteral;->NO_ELEMS:Ljava/util/List;

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSkipCount()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->skipCount:I

    return v0
.end method

.method public isDestructuring()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->isDestructuring:Z

    return v0
.end method

.method public setDestructuringLength(I)V
    .locals 0
    .parameter "destructuringLength"

    .prologue
    .line 164
    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->destructuringLength:I

    .line 165
    return-void
.end method

.method public setElements(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, elements:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    if-nez p1, :cond_1

    .line 106
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    .line 113
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 110
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    .line 111
    .local v0, e:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/ArrayLiteral;->addElement(Lorg/mozilla/javascript/ast/AstNode;)V

    goto :goto_0
.end method

.method public setIsDestructuring(Z)V
    .locals 0
    .parameter "destructuring"

    .prologue
    .line 189
    iput-boolean p1, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->isDestructuring:Z

    .line 190
    return-void
.end method

.method public setSkipCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 180
    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->skipCount:I

    .line 181
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 2
    .parameter "depth"

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lorg/mozilla/javascript/ast/ArrayLiteral;->elements:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/ast/ArrayLiteral;->printList(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 209
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 220
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    .line 222
    .local v0, e:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 225
    .end local v0           #e:Lorg/mozilla/javascript/ast/AstNode;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
