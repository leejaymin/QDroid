.class public Lcom/wolfram/alpha/impl/WAUnitsImpl;
.super Ljava/lang/Object;
.source "WAUnitsImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAUnits;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x16b194091b7f4526L


# instance fields
.field private image:Lcom/wolfram/alpha/WAImage;

.field private longNames:[Ljava/lang/String;

.field private shortNames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 11
    .parameter "thisElement"
    .parameter "http"
    .parameter "tempDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v9, "count"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 33
    .local v5, numUnits:I
    new-array v9, v5, [Ljava/lang/String;

    iput-object v9, p0, Lcom/wolfram/alpha/impl/WAUnitsImpl;->shortNames:[Ljava/lang/String;

    .line 34
    new-array v9, v5, [Ljava/lang/String;

    iput-object v9, p0, Lcom/wolfram/alpha/impl/WAUnitsImpl;->longNames:[Ljava/lang/String;

    .line 35
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 36
    .local v6, subElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 37
    .local v4, numSubElements:I
    const/4 v8, 0x0

    .line 38
    .local v8, unitElementIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 39
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 40
    .local v1, child:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, name:Ljava/lang/String;
    const-string v9, "unit"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 42
    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v7, v0

    .line 43
    .local v7, unit:Lorg/w3c/dom/Element;
    iget-object v9, p0, Lcom/wolfram/alpha/impl/WAUnitsImpl;->shortNames:[Ljava/lang/String;

    const-string v10, "short"

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    .line 44
    iget-object v9, p0, Lcom/wolfram/alpha/impl/WAUnitsImpl;->longNames:[Ljava/lang/String;

    const-string v10, "long"

    invoke-interface {v7, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    .line 45
    add-int/lit8 v8, v8, 0x1

    .line 38
    .end local v1           #child:Lorg/w3c/dom/Node;
    .end local v7           #unit:Lorg/w3c/dom/Element;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .restart local v1       #child:Lorg/w3c/dom/Node;
    :cond_1
    const-string v9, "img"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 47
    new-instance v9, Lcom/wolfram/alpha/impl/WAImageImpl;

    check-cast v1, Lorg/w3c/dom/Element;

    .end local v1           #child:Lorg/w3c/dom/Node;
    invoke-direct {v9, v1, p2, p3}, Lcom/wolfram/alpha/impl/WAImageImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    iput-object v9, p0, Lcom/wolfram/alpha/impl/WAUnitsImpl;->image:Lcom/wolfram/alpha/WAImage;

    .line 48
    iget-object v9, p0, Lcom/wolfram/alpha/impl/WAUnitsImpl;->image:Lcom/wolfram/alpha/WAImage;

    invoke-interface {v9}, Lcom/wolfram/alpha/WAImage;->acquireImage()V

    goto :goto_1

    .line 51
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 73
    return-void
.end method

.method public getImage()Lcom/wolfram/alpha/WAImage;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAUnitsImpl;->image:Lcom/wolfram/alpha/WAImage;

    return-object v0
.end method

.method public getLongNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAUnitsImpl;->longNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getShortNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAUnitsImpl;->shortNames:[Ljava/lang/String;

    return-object v0
.end method
