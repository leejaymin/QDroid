.class public Lti/modules/titanium/xml/TextProxy;
.super Lti/modules/titanium/xml/CharacterDataProxy;
.source "TextProxy.java"


# instance fields
.field private text:Lorg/w3c/dom/Text;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Text;)V
    .locals 0
    .parameter "context"
    .parameter "text"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/xml/CharacterDataProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/CharacterData;)V

    .line 21
    iput-object p2, p0, Lti/modules/titanium/xml/TextProxy;->text:Lorg/w3c/dom/Text;

    .line 22
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lti/modules/titanium/xml/TextProxy;->text:Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public splitText(I)Lti/modules/titanium/xml/TextProxy;
    .locals 1
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lti/modules/titanium/xml/TextProxy;->text:Lorg/w3c/dom/Text;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Text;->splitText(I)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/xml/TextProxy;->getProxy(Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/TextProxy;

    return-object p0
.end method
