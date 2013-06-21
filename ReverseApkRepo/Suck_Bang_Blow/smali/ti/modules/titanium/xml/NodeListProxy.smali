.class public Lti/modules/titanium/xml/NodeListProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "NodeListProxy.java"


# instance fields
.field private list:Lorg/w3c/dom/NodeList;

.field private offset:I


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/NodeList;)V
    .locals 1
    .parameter "context"
    .parameter "list"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lti/modules/titanium/xml/NodeListProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/NodeList;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/NodeList;I)V
    .locals 0
    .parameter "context"
    .parameter "list"
    .parameter "offset"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 30
    iput-object p2, p0, Lti/modules/titanium/xml/NodeListProxy;->list:Lorg/w3c/dom/NodeList;

    .line 31
    iput p3, p0, Lti/modules/titanium/xml/NodeListProxy;->offset:I

    .line 32
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lti/modules/titanium/xml/NodeListProxy;->list:Lorg/w3c/dom/NodeList;

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    iget v1, p0, Lti/modules/titanium/xml/NodeListProxy;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public item(I)Lti/modules/titanium/xml/NodeProxy;
    .locals 3
    .parameter "index"

    .prologue
    .line 43
    invoke-virtual {p0}, Lti/modules/titanium/xml/NodeListProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/xml/NodeListProxy;->list:Lorg/w3c/dom/NodeList;

    iget v2, p0, Lti/modules/titanium/xml/NodeListProxy;->offset:I

    add-int/2addr v2, p1

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v0, v1}, Lti/modules/titanium/xml/NodeProxy;->getNodeProxy(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v0

    return-object v0
.end method
