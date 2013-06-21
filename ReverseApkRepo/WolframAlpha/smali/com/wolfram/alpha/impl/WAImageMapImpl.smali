.class public Lcom/wolfram/alpha/impl/WAImageMapImpl;
.super Ljava/lang/Object;
.source "WAImageMapImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAImageMap;
.implements Lcom/wolfram/alpha/visitor/Visitable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x57a48ecd6c708138L


# instance fields
.field private Assumptions:[Ljava/lang/String;

.field private QueryURLs:[Ljava/lang/String;

.field private Titles:[Ljava/lang/String;

.field private WebURLs:[Ljava/lang/String;

.field private numImageMapelems:I

.field private numImageMapelemsFound:I

.field private oneclicks:[Z

.field private rectClickables:[[I


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 12
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 40
    .local v3, ImageMaps:Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_2

    .line 41
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    iput v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->numImageMapelems:I

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    iget v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->numImageMapelems:I

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .local v1, ImageMapElements:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->numImageMapelems:I

    if-ge v5, v9, :cond_1

    .line 44
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 45
    .local v2, ImageMapNode:Lorg/w3c/dom/Node;
    const-string v9, "rect"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 46
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 48
    .end local v2           #ImageMapNode:Lorg/w3c/dom/Node;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    iput v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->numImageMapelemsFound:I

    .line 49
    iget v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->numImageMapelemsFound:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->QueryURLs:[Ljava/lang/String;

    .line 50
    iget v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->numImageMapelemsFound:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->WebURLs:[Ljava/lang/String;

    .line 51
    iget v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->numImageMapelemsFound:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->Assumptions:[Ljava/lang/String;

    .line 52
    iget v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->numImageMapelemsFound:I

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->Titles:[Ljava/lang/String;

    .line 53
    iget v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->numImageMapelemsFound:I

    filled-new-array {v9, v11}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    iput-object v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->rectClickables:[[I

    .line 54
    iget v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->numImageMapelemsFound:I

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->oneclicks:[Z

    .line 55
    const/4 v5, 0x0

    :goto_1
    iget v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->numImageMapelemsFound:I

    if-ge v5, v9, :cond_2

    .line 56
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 57
    .local v0, ImageMapElement:Lorg/w3c/dom/Element;
    iget-object v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->QueryURLs:[Ljava/lang/String;

    const-string v10, "query"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 58
    iget-object v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->WebURLs:[Ljava/lang/String;

    const-string v10, "url"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 59
    iget-object v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->Assumptions:[Ljava/lang/String;

    const-string v10, "assumptions"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 60
    iget-object v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->Titles:[Ljava/lang/String;

    const-string v10, "title"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 61
    iget-object v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->oneclicks:[Z

    const-string v10, "oneclick"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    aput-boolean v10, v9, v5

    .line 63
    :try_start_0
    const-string v9, "top"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 64
    .local v8, top:I
    const-string v9, "bottom"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 65
    .local v4, bottom:I
    const-string v9, "right"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 66
    .local v7, right:I
    const-string v9, "left"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 68
    .local v6, left:I
    iget-object v9, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->rectClickables:[[I

    const/4 v10, 0x4

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v6, v10, v11

    const/4 v11, 0x1

    aput v8, v10, v11

    const/4 v11, 0x2

    aput v7, v10, v11

    const/4 v11, 0x3

    aput v4, v10, v11

    aput-object v10, v9, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v4           #bottom:I
    .end local v6           #left:I
    .end local v7           #right:I
    .end local v8           #top:I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 72
    .end local v0           #ImageMapElement:Lorg/w3c/dom/Element;
    .end local v1           #ImageMapElements:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v5           #i:I
    :cond_2
    return-void

    .line 69
    .restart local v0       #ImageMapElement:Lorg/w3c/dom/Element;
    .restart local v1       #ImageMapElements:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .restart local v5       #i:I
    :catch_0
    move-exception v9

    goto :goto_2
.end method


# virtual methods
.method public NumberImagMapElemsFound()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->numImageMapelemsFound:I

    return v0
.end method

.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 107
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WAImageMap;)V

    .line 108
    return-void
.end method

.method public getAssumptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->Assumptions:[Ljava/lang/String;

    return-object v0
.end method

.method public getQueryURLs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->QueryURLs:[Ljava/lang/String;

    return-object v0
.end method

.method public getRectClickables()[[I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->rectClickables:[[I

    return-object v0
.end method

.method public getTitles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->Titles:[Ljava/lang/String;

    return-object v0
.end method

.method public getWebURLs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->WebURLs:[Ljava/lang/String;

    return-object v0
.end method

.method public oneclicks()[Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAImageMapImpl;->oneclicks:[Z

    return-object v0
.end method
