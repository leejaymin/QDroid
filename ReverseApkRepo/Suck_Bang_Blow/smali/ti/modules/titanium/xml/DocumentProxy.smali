.class public Lti/modules/titanium/xml/DocumentProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "DocumentProxy.java"


# instance fields
.field private doc:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Document;)V
    .locals 0
    .parameter "context"
    .parameter "doc"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)V

    .line 21
    iput-object p2, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    .line 22
    return-void
.end method


# virtual methods
.method public createAttribute(Ljava/lang/String;)Lti/modules/titanium/xml/AttrProxy;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/AttrProxy;

    return-object p0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/AttrProxy;
    .locals 1
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/AttrProxy;

    return-object p0
.end method

.method public createCDATASection(Ljava/lang/String;)Lti/modules/titanium/xml/CDATASectionProxy;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/CDATASectionProxy;

    return-object p0
.end method

.method public createComment(Ljava/lang/String;)Lti/modules/titanium/xml/CommentProxy;
    .locals 1
    .parameter "data"

    .prologue
    .line 42
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/CommentProxy;

    return-object p0
.end method

.method public createDocumentFragment()Lti/modules/titanium/xml/DocumentFragmentProxy;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/DocumentFragmentProxy;

    return-object p0
.end method

.method public createElement(Ljava/lang/String;)Lti/modules/titanium/xml/ElementProxy;
    .locals 1
    .parameter "tagName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/ElementProxy;

    return-object p0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/ElementProxy;
    .locals 1
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/ElementProxy;

    return-object p0
.end method

.method public createEntityReference(Ljava/lang/String;)Lti/modules/titanium/xml/EntityReferenceProxy;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/EntityReferenceProxy;

    return-object p0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/ProcessingInstructionProxy;
    .locals 1
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/ProcessingInstructionProxy;

    return-object p0
.end method

.method public createTextNode(Ljava/lang/String;)Lti/modules/titanium/xml/TextProxy;
    .locals 1
    .parameter "data"

    .prologue
    .line 75
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/TextProxy;

    return-object p0
.end method

.method public getDoctype()Lti/modules/titanium/xml/DocumentTypeProxy;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/DocumentTypeProxy;

    return-object p0
.end method

.method public getDocumentElement()Lti/modules/titanium/xml/ElementProxy;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/ElementProxy;

    return-object p0
.end method

.method public getElementById(Ljava/lang/String;)Lti/modules/titanium/xml/ElementProxy;
    .locals 1
    .parameter "elementId"

    .prologue
    .line 91
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/ElementProxy;

    return-object p0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lti/modules/titanium/xml/NodeListProxy;
    .locals 3
    .parameter "tagname"

    .prologue
    .line 96
    new-instance v0, Lti/modules/titanium/xml/NodeListProxy;

    invoke-virtual {p0}, Lti/modules/titanium/xml/DocumentProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v2, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeListProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/NodeList;)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/NodeListProxy;
    .locals 3
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 101
    new-instance v0, Lti/modules/titanium/xml/NodeListProxy;

    invoke-virtual {p0}, Lti/modules/titanium/xml/DocumentProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v2, p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeListProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/NodeList;)V

    return-object v0
.end method

.method public getImplementation()Lti/modules/titanium/xml/DOMImplementationProxy;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lti/modules/titanium/xml/DOMImplementationProxy;

    invoke-virtual {p0}, Lti/modules/titanium/xml/DocumentProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DOMImplementationProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/DOMImplementation;)V

    return-object v0
.end method

.method public getOwnerDocument()Lti/modules/titanium/xml/DocumentProxy;
    .locals 0

    .prologue
    .line 116
    return-object p0
.end method

.method public importNode(Lti/modules/titanium/xml/NodeProxy;Z)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .parameter "importedNode"
    .parameter "deep"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lti/modules/titanium/xml/DocumentProxy;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lti/modules/titanium/xml/NodeProxy;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/DocumentProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method
