.class public Lti/modules/titanium/xml/XPathNodeListProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "XPathNodeListProxy.java"


# instance fields
.field private nodeList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "nodeList"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 17
    iput-object p2, p0, Lti/modules/titanium/xml/XPathNodeListProxy;->nodeList:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lti/modules/titanium/xml/XPathNodeListProxy;->nodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .parameter "index"

    .prologue
    .line 27
    iget-object v1, p0, Lti/modules/titanium/xml/XPathNodeListProxy;->nodeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 28
    .local v0, node:Lorg/w3c/dom/Node;
    invoke-virtual {p0}, Lti/modules/titanium/xml/XPathNodeListProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-static {v1, v0}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v1

    return-object v1
.end method
