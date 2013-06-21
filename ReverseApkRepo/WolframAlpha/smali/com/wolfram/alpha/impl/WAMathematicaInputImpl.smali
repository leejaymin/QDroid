.class public Lcom/wolfram/alpha/impl/WAMathematicaInputImpl;
.super Ljava/lang/Object;
.source "WAMathematicaInputImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAMathematicaInput;
.implements Lcom/wolfram/alpha/visitor/Visitable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4abd467562278c56L


# instance fields
.field private mInput:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 23
    .local v0, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/wolfram/alpha/impl/WAMathematicaInputImpl;->mInput:Ljava/lang/String;

    .line 24
    return-void

    .line 23
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 37
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WAMathematicaInput;)V

    .line 38
    return-void
.end method

.method public getMinput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAMathematicaInputImpl;->mInput:Ljava/lang/String;

    return-object v0
.end method
