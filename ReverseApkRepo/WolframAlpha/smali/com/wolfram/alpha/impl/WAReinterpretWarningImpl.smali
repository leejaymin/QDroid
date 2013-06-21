.class public Lcom/wolfram/alpha/impl/WAReinterpretWarningImpl;
.super Lcom/wolfram/alpha/impl/WAWarningImpl;
.source "WAReinterpretWarningImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAReinterpretWarning;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x613c9eea95eb4429L


# instance fields
.field private alternatives:[Ljava/lang/String;

.field private newInterpretation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/wolfram/alpha/impl/WAWarningImpl;-><init>(Lorg/w3c/dom/Element;)V

    .line 27
    const-string v3, "new"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wolfram/alpha/impl/WAReinterpretWarningImpl;->newInterpretation:Ljava/lang/String;

    .line 28
    const-string v3, "alternative"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 29
    .local v0, alternativeNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 30
    .local v2, numAlternatives:I
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/wolfram/alpha/impl/WAReinterpretWarningImpl;->alternatives:[Ljava/lang/String;

    .line 31
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 32
    iget-object v3, p0, Lcom/wolfram/alpha/impl/WAReinterpretWarningImpl;->alternatives:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlternatives()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAReinterpretWarningImpl;->alternatives:[Ljava/lang/String;

    return-object v0
.end method

.method public getNew()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAReinterpretWarningImpl;->newInterpretation:Ljava/lang/String;

    return-object v0
.end method
