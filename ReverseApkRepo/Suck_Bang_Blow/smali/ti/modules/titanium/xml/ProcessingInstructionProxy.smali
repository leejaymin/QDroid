.class public Lti/modules/titanium/xml/ProcessingInstructionProxy;
.super Lti/modules/titanium/xml/NodeProxy;
.source "ProcessingInstructionProxy.java"


# instance fields
.field private pi:Lorg/w3c/dom/ProcessingInstruction;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 0
    .parameter "context"
    .parameter "pi"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/xml/NodeProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Node;)V

    .line 21
    iput-object p2, p0, Lti/modules/titanium/xml/ProcessingInstructionProxy;->pi:Lorg/w3c/dom/ProcessingInstruction;

    .line 22
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lti/modules/titanium/xml/ProcessingInstructionProxy;->pi:Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lti/modules/titanium/xml/ProcessingInstructionProxy;->pi:Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 36
    iget-object v0, p0, Lti/modules/titanium/xml/ProcessingInstructionProxy;->pi:Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0, p1}, Lorg/w3c/dom/ProcessingInstruction;->setData(Ljava/lang/String;)V

    .line 37
    return-void
.end method
