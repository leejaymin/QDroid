.class public Lti/modules/titanium/xml/AttrProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "AttrProxy.java"


# instance fields
.field private attr:Lorg/w3c/dom/Attr;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Attr;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)V

    .line 20
    iput-object p2, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    .line 21
    return-void
.end method


# virtual methods
.method public getAttr()Lorg/w3c/dom/Attr;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lti/modules/titanium/xml/ElementProxy;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/AttrProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/ElementProxy;

    return-object p0
.end method

.method public getSpecified()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxy;->attr:Lorg/w3c/dom/Attr;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 50
    return-void
.end method
