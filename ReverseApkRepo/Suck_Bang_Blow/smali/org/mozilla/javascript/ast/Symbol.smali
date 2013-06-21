.class public Lorg/mozilla/javascript/ast/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"


# instance fields
.field private containingTable:Lorg/mozilla/javascript/ast/Scope;

.field private declType:I

.field private index:I

.field private name:Ljava/lang/String;

.field private node:Lorg/mozilla/javascript/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/Symbol;->index:I

    .line 61
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "declType"
    .parameter "name"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/Symbol;->index:I

    .line 69
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/Symbol;->setName(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Symbol;->setDeclType(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public getContainingTable()Lorg/mozilla/javascript/ast/Scope;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Symbol;->containingTable:Lorg/mozilla/javascript/ast/Scope;

    return-object v0
.end method

.method public getDeclType()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/mozilla/javascript/ast/Symbol;->declType:I

    return v0
.end method

.method public getDeclTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lorg/mozilla/javascript/ast/Symbol;->declType:I

    invoke-static {v0}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/mozilla/javascript/ast/Symbol;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Lorg/mozilla/javascript/Node;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Symbol;->node:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public setContainingTable(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 0
    .parameter "containingTable"

    .prologue
    .line 146
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Symbol;->containingTable:Lorg/mozilla/javascript/ast/Scope;

    .line 147
    return-void
.end method

.method public setDeclType(I)V
    .locals 3
    .parameter "declType"

    .prologue
    .line 84
    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x99

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9a

    if-eq p1, v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid declType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput p1, p0, Lorg/mozilla/javascript/ast/Symbol;->declType:I

    .line 91
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 125
    iput p1, p0, Lorg/mozilla/javascript/ast/Symbol;->index:I

    .line 126
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 104
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Symbol;->name:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setNode(Lorg/mozilla/javascript/Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 132
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Symbol;->node:Lorg/mozilla/javascript/Node;

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, result:Ljava/lang/StringBuilder;
    const-string v1, "Symbol ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Symbol;->getDeclTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ") name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lorg/mozilla/javascript/ast/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Lorg/mozilla/javascript/ast/Symbol;->node:Lorg/mozilla/javascript/Node;

    if-eqz v1, :cond_0

    .line 161
    const-string v1, " line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lorg/mozilla/javascript/ast/Symbol;->node:Lorg/mozilla/javascript/Node;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
