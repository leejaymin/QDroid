.class public Lcom/wolfram/alpha/impl/WARelatedLinkImpl;
.super Ljava/lang/Object;
.source "WARelatedLinkImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WARelatedLink;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WARelatedLinkImpl; = null

.field private static final serialVersionUID:J = -0x4124d0f049b19c8cL


# instance fields
.field private excerpt:Ljava/lang/String;

.field private image:Lcom/wolfram/alpha/WAImage;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WARelatedLinkImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WARelatedLinkImpl;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 10
    .parameter "thisElement"
    .parameter "http"
    .parameter "tempDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v6, "text"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->text:Ljava/lang/String;

    .line 37
    const-string v6, "url"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->url:Ljava/lang/String;

    .line 38
    const-string v6, "source"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->source:Ljava/lang/String;

    .line 39
    iget-object v6, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->text:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-object v8, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->text:Ljava/lang/String;

    .line 40
    :cond_0
    iget-object v6, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->url:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput-object v8, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->url:Ljava/lang/String;

    .line 41
    :cond_1
    iget-object v6, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->source:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-object v8, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->source:Ljava/lang/String;

    .line 43
    :cond_2
    const-string v6, "excerpt"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 45
    .local v1, excerptElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 46
    .local v4, numExcerptElements:I
    if-lez v4, :cond_3

    .line 47
    invoke-interface {v1, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 48
    .local v0, excerptElement:Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->excerpt:Ljava/lang/String;

    .line 51
    .end local v0           #excerptElement:Lorg/w3c/dom/Element;
    :cond_3
    const-string v6, "img"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 53
    .local v3, imgElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 54
    .local v5, numImgElements:I
    if-lez v5, :cond_4

    .line 55
    invoke-interface {v3, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 56
    .local v2, imgElement:Lorg/w3c/dom/Element;
    new-instance v6, Lcom/wolfram/alpha/impl/WAImageImpl;

    invoke-direct {v6, v2, p2, p3}, Lcom/wolfram/alpha/impl/WAImageImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    iput-object v6, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->image:Lcom/wolfram/alpha/WAImage;

    .line 58
    .end local v2           #imgElement:Lorg/w3c/dom/Element;
    :cond_4
    return-void
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 87
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WARelatedLink;)V

    .line 88
    return-void
.end method

.method public getExcerpt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->excerpt:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/wolfram/alpha/WAImage;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->image:Lcom/wolfram/alpha/WAImage;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->url:Ljava/lang/String;

    return-object v0
.end method
