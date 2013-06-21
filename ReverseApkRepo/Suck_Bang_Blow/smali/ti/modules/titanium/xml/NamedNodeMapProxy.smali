.class public Lti/modules/titanium/xml/NamedNodeMapProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "NamedNodeMapProxy.java"


# instance fields
.field private map:Lorg/w3c/dom/NamedNodeMap;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/NamedNodeMap;)V
    .locals 0
    .parameter "context"
    .parameter "map"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 21
    iput-object p2, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    .line 22
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    return v0
.end method

.method public getNamedItem(Ljava/lang/String;)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .parameter "name"

    .prologue
    .line 31
    invoke-virtual {p0}, Lti/modules/titanium/xml/NamedNodeMapProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v0, v1}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lti/modules/titanium/xml/NamedNodeMapProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v0, v1}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public item(I)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .parameter "index"

    .prologue
    .line 42
    invoke-virtual {p0}, Lti/modules/titanium/xml/NamedNodeMapProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v0, v1}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lti/modules/titanium/xml/NamedNodeMapProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v0, v1}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lti/modules/titanium/xml/NamedNodeMapProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1, p2}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v0, v1}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public setNamedItem(Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;
    .locals 3
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lti/modules/titanium/xml/NamedNodeMapProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-virtual {p1}, Lti/modules/titanium/xml/NodeProxy;->getNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v0, v1}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public setNamedItemNS(Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;
    .locals 3
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lti/modules/titanium/xml/NamedNodeMapProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/xml/NamedNodeMapProxy;->map:Lorg/w3c/dom/NamedNodeMap;

    invoke-virtual {p1}, Lti/modules/titanium/xml/NodeProxy;->getNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v0, v1}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method
