.class public Lti/modules/titanium/xml/NodeProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "NodeProxy.java"


# static fields
.field public static final ATTRIBUTE_NODE:I = 0x2

.field public static final CDATA_SECTION_NODE:I = 0x4

.field public static final COMMENT_NODE:I = 0x8

.field public static final DOCUMENT_FRAGMENT_NODE:I = 0xb

.field public static final DOCUMENT_NODE:I = 0x9

.field public static final DOCUMENT_TYPE_NODE:I = 0xa

.field public static final ELEMENT_NODE:I = 0x1

.field public static final ENTITY_NODE:I = 0x6

.field public static final ENTITY_REFERENCE_NODE:I = 0x5

.field public static final NOTATION_NODE:I = 0xc

.field public static final PROCESSING_INSTRUCTION_NODE:I = 0x7

.field public static final TEXT_NODE:I = 0x3


# instance fields
.field private node:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)V
    .locals 0
    .parameter "context"
    .parameter "node"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 48
    iput-object p2, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    .line 49
    return-void
.end method

.method public static getNodeProxy(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .parameter "context"
    .parameter "node"

    .prologue
    .line 59
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 97
    new-instance v0, Lti/modules/titanium/xml/NodeProxy;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)V

    .line 101
    .end local p1
    .local v0, proxy:Lti/modules/titanium/xml/NodeProxy;
    :goto_0
    return-object v0

    .line 61
    .end local v0           #proxy:Lti/modules/titanium/xml/NodeProxy;
    .restart local p1
    :pswitch_0
    new-instance v0, Lti/modules/titanium/xml/AttrProxy;

    check-cast p1, Lorg/w3c/dom/Attr;

    .end local p1
    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/AttrProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Attr;)V

    .line 62
    .restart local v0       #proxy:Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 64
    .end local v0           #proxy:Lti/modules/titanium/xml/NodeProxy;
    .restart local p1
    :pswitch_1
    new-instance v0, Lti/modules/titanium/xml/CDATASectionProxy;

    check-cast p1, Lorg/w3c/dom/CDATASection;

    .end local p1
    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/CDATASectionProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/CDATASection;)V

    .line 65
    .restart local v0       #proxy:Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 67
    .end local v0           #proxy:Lti/modules/titanium/xml/NodeProxy;
    .restart local p1
    :pswitch_2
    new-instance v0, Lti/modules/titanium/xml/CommentProxy;

    check-cast p1, Lorg/w3c/dom/Comment;

    .end local p1
    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/CommentProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Comment;)V

    .line 68
    .restart local v0       #proxy:Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 70
    .end local v0           #proxy:Lti/modules/titanium/xml/NodeProxy;
    .restart local p1
    :pswitch_3
    new-instance v0, Lti/modules/titanium/xml/DocumentFragmentProxy;

    check-cast p1, Lorg/w3c/dom/DocumentFragment;

    .end local p1
    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/DocumentFragmentProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/DocumentFragment;)V

    .line 71
    .restart local v0       #proxy:Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 73
    .end local v0           #proxy:Lti/modules/titanium/xml/NodeProxy;
    .restart local p1
    :pswitch_4
    new-instance v0, Lti/modules/titanium/xml/DocumentProxy;

    check-cast p1, Lorg/w3c/dom/Document;

    .end local p1
    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/DocumentProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Document;)V

    .line 74
    .restart local v0       #proxy:Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 76
    .end local v0           #proxy:Lti/modules/titanium/xml/NodeProxy;
    .restart local p1
    :pswitch_5
    new-instance v0, Lti/modules/titanium/xml/DocumentTypeProxy;

    check-cast p1, Lorg/w3c/dom/DocumentType;

    .end local p1
    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/DocumentTypeProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/DocumentType;)V

    .line 77
    .restart local v0       #proxy:Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 79
    .end local v0           #proxy:Lti/modules/titanium/xml/NodeProxy;
    .restart local p1
    :pswitch_6
    new-instance v0, Lti/modules/titanium/xml/ElementProxy;

    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1
    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/ElementProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Element;)V

    .line 80
    .restart local v0       #proxy:Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 82
    .end local v0           #proxy:Lti/modules/titanium/xml/NodeProxy;
    .restart local p1
    :pswitch_7
    new-instance v0, Lti/modules/titanium/xml/EntityProxy;

    check-cast p1, Lorg/w3c/dom/Entity;

    .end local p1
    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/EntityProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Entity;)V

    .line 83
    .restart local v0       #proxy:Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 85
    .end local v0           #proxy:Lti/modules/titanium/xml/NodeProxy;
    .restart local p1
    :pswitch_8
    new-instance v0, Lti/modules/titanium/xml/EntityReferenceProxy;

    check-cast p1, Lorg/w3c/dom/EntityReference;

    .end local p1
    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/EntityReferenceProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/EntityReference;)V

    .line 86
    .restart local v0       #proxy:Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 88
    .end local v0           #proxy:Lti/modules/titanium/xml/NodeProxy;
    .restart local p1
    :pswitch_9
    new-instance v0, Lti/modules/titanium/xml/NotationProxy;

    check-cast p1, Lorg/w3c/dom/Notation;

    .end local p1
    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/NotationProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Notation;)V

    .line 89
    .restart local v0       #proxy:Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 91
    .end local v0           #proxy:Lti/modules/titanium/xml/NodeProxy;
    .restart local p1
    :pswitch_a
    new-instance v0, Lti/modules/titanium/xml/ProcessingInstructionProxy;

    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    .end local p1
    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/ProcessingInstructionProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/ProcessingInstruction;)V

    .line 92
    .restart local v0       #proxy:Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 94
    .end local v0           #proxy:Lti/modules/titanium/xml/NodeProxy;
    .restart local p1
    :pswitch_b
    new-instance v0, Lti/modules/titanium/xml/TextProxy;

    check-cast p1, Lorg/w3c/dom/Text;

    .end local p1
    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/TextProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Text;)V

    .line 95
    .restart local v0       #proxy:Lti/modules/titanium/xml/NodeProxy;
    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method public static removeProxyForNode(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;
    .locals 1
    .parameter "context"
    .parameter "node"

    .prologue
    .line 107
    new-instance v0, Lti/modules/titanium/xml/NodeProxy;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)V

    return-object v0
.end method


# virtual methods
.method public appendChild(Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;
    .locals 2
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    iget-object v1, p1, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public cloneNode(Z)Lti/modules/titanium/xml/NodeProxy;
    .locals 1
    .parameter "deep"

    .prologue
    .line 122
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(Ljava/lang/String;)Lti/modules/titanium/xml/XPathNodeListProxy;
    .locals 1
    .parameter "xpath"

    .prologue
    .line 244
    invoke-static {p0, p1}, Lti/modules/titanium/xml/XPathUtil;->evaluate(Lti/modules/titanium/xml/NodeProxy;Ljava/lang/String;)Lti/modules/titanium/xml/XPathNodeListProxy;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lti/modules/titanium/xml/NamedNodeMapProxy;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Lti/modules/titanium/xml/NamedNodeMapProxy;

    invoke-virtual {p0}, Lti/modules/titanium/xml/NodeProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NamedNodeMapProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/NamedNodeMap;)V

    return-object v0
.end method

.method public getChildNodes()Lti/modules/titanium/xml/NodeListProxy;
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lti/modules/titanium/xml/NodeListProxy;

    invoke-virtual {p0}, Lti/modules/titanium/xml/NodeProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/NodeListProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/NodeList;)V

    return-object v0
.end method

.method public getFirstChild()Lti/modules/titanium/xml/NodeProxy;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Lti/modules/titanium/xml/NodeProxy;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lti/modules/titanium/xml/NodeProxy;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerDocument()Lti/modules/titanium/xml/DocumentProxy;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Lti/modules/titanium/xml/DocumentProxy;

    invoke-virtual {p0}, Lti/modules/titanium/xml/NodeProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/DocumentProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method public getParentNode()Lti/modules/titanium/xml/NodeProxy;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lti/modules/titanium/xml/NodeProxy;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method protected getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;
    .locals 1
    .parameter "node"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lti/modules/titanium/xml/NodeProxy;",
            ">(",
            "Lorg/w3c/dom/Node;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lti/modules/titanium/xml/NodeProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-static {v0, p1}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    return v0
.end method

.method public insertBefore(Lti/modules/titanium/xml/NodeProxy;Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;
    .locals 3
    .parameter "newChild"
    .parameter "refChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    iget-object v1, p1, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    iget-object v2, p2, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/NodeProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 212
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Node;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public normalize()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->normalize()V

    .line 218
    return-void
.end method

.method public removeChild(Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;
    .locals 3
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v1, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    iget-object v2, p1, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 223
    .local v0, oldNode:Lorg/w3c/dom/Node;
    invoke-virtual {p0}, Lti/modules/titanium/xml/NodeProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-static {v1, v0}, Lti/modules/titanium/xml/NodeProxy;->removeProxyForNode(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v1

    return-object v1
.end method

.method public replaceChild(Lti/modules/titanium/xml/NodeProxy;Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;
    .locals 4
    .parameter "newChild"
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    iget-object v2, p1, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    iget-object v3, p2, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 229
    .local v0, oldNode:Lorg/w3c/dom/Node;
    invoke-virtual {p0}, Lti/modules/titanium/xml/NodeProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-static {v1, v0}, Lti/modules/titanium/xml/NodeProxy;->removeProxyForNode(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v1

    return-object v1
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 1
    .parameter "nodeValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lti/modules/titanium/xml/NodeProxy;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 240
    return-void
.end method
