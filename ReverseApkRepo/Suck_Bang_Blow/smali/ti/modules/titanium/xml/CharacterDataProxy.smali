.class public Lti/modules/titanium/xml/CharacterDataProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "CharacterDataProxy.java"


# instance fields
.field private data:Lorg/w3c/dom/CharacterData;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/CharacterData;)V
    .locals 0
    .parameter "context"
    .parameter "data"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)V

    .line 21
    iput-object p2, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    .line 22
    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 1
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public deleteData(II)V
    .locals 1
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/CharacterData;->deleteData(II)V

    .line 32
    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getLength()I

    move-result v0

    return v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 1
    .parameter "offset"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/CharacterData;->insertData(ILjava/lang/String;)V

    .line 52
    return-void
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 1
    .parameter "offset"
    .parameter "count"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/CharacterData;->replaceData(IILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 1
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lti/modules/titanium/xml/CharacterDataProxy;->data:Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/CharacterData;->substringData(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
