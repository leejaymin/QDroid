.class public Lti/modules/titanium/xml/EntityProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "EntityProxy.java"


# instance fields
.field private entity:Lorg/w3c/dom/Entity;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Entity;)V
    .locals 0
    .parameter "context"
    .parameter "entity"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)V

    .line 20
    iput-object p2, p0, Lti/modules/titanium/xml/EntityProxy;->entity:Lorg/w3c/dom/Entity;

    .line 21
    return-void
.end method


# virtual methods
.method public getNotationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lti/modules/titanium/xml/EntityProxy;->entity:Lorg/w3c/dom/Entity;

    invoke-interface {v0}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lti/modules/titanium/xml/EntityProxy;->entity:Lorg/w3c/dom/Entity;

    invoke-interface {v0}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lti/modules/titanium/xml/EntityProxy;->entity:Lorg/w3c/dom/Entity;

    invoke-interface {v0}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
