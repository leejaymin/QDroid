.class public Lcom/wolfram/alpha/impl/WAInfoImpl;
.super Ljava/lang/Object;
.source "WAInfoImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAInfo;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAInfoImpl; = null

.field private static final serialVersionUID:J = 0x988f32224b7cd29L


# instance fields
.field private contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WAInfoImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WAInfoImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAInfoImpl;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 7
    .parameter "thisElement"
    .parameter "http"
    .parameter "tempDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v6, Lcom/wolfram/alpha/impl/WAInfoImpl;->EMPTY_VISITABLE_ARRAY:[Lcom/wolfram/alpha/visitor/Visitable;

    iput-object v6, p0, Lcom/wolfram/alpha/impl/WAInfoImpl;->contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

    .line 35
    const-string v6, "text"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/wolfram/alpha/impl/WAInfoImpl;->text:Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 38
    .local v5, subElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 39
    .local v4, numSubElements:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .local v1, contentList:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/visitor/Visitable;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 41
    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 42
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, name:Ljava/lang/String;
    const-string v6, "link"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 44
    new-instance v6, Lcom/wolfram/alpha/impl/WALinkImpl;

    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0           #child:Lorg/w3c/dom/Node;
    invoke-direct {v6, v0}, Lcom/wolfram/alpha/impl/WALinkImpl;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .restart local v0       #child:Lorg/w3c/dom/Node;
    :cond_1
    const-string v6, "img"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 46
    new-instance v6, Lcom/wolfram/alpha/impl/WAImageImpl;

    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0           #child:Lorg/w3c/dom/Node;
    invoke-direct {v6, v0, p2, p3}, Lcom/wolfram/alpha/impl/WAImageImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    .restart local v0       #child:Lorg/w3c/dom/Node;
    :cond_2
    const-string v6, "units"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    new-instance v6, Lcom/wolfram/alpha/impl/WAUnitsImpl;

    check-cast v0, Lorg/w3c/dom/Element;

    .end local v0           #child:Lorg/w3c/dom/Node;
    invoke-direct {v6, v0, p2, p3}, Lcom/wolfram/alpha/impl/WAUnitsImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/wolfram/alpha/visitor/Visitable;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/wolfram/alpha/visitor/Visitable;

    iput-object v6, p0, Lcom/wolfram/alpha/impl/WAInfoImpl;->contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

    .line 52
    return-void
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 67
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WAInfo;)V

    .line 68
    return-void
.end method

.method public getContents()[Lcom/wolfram/alpha/visitor/Visitable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAInfoImpl;->contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAInfoImpl;->text:Ljava/lang/String;

    return-object v0
.end method
