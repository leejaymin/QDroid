.class public Lcom/wolfram/alpha/impl/WAAssumptionImpl;
.super Ljava/lang/Object;
.source "WAAssumptionImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAAssumption;
.implements Lcom/wolfram/alpha/visitor/Visitable;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAAssumptionImpl; = null

.field private static final serialVersionUID:J = -0x6ad903b6517bbef8L


# instance fields
.field private count:I

.field private current:I

.field private description:Ljava/lang/String;

.field private descriptions:[Ljava/lang/String;

.field private inputs:[Ljava/lang/String;

.field private names:[Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private valids:[Z

.field private word:Ljava/lang/String;

.field private words:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WAAssumptionImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAAssumptionImpl;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v4, -0x1

    iput v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->current:I

    .line 40
    const-string v4, "type"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->type:Ljava/lang/String;

    .line 41
    const-string v4, "word"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->word:Ljava/lang/String;

    .line 42
    iget-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->word:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v6, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->word:Ljava/lang/String;

    .line 43
    :cond_0
    const-string v4, "desc"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->description:Ljava/lang/String;

    .line 44
    iget-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->description:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v6, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->description:Ljava/lang/String;

    .line 47
    :cond_1
    :try_start_0
    const-string v4, "count"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->count:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :goto_0
    :try_start_1
    const-string v4, "current"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->current:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    :goto_1
    const-string v4, "value"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 51
    .local v3, valueElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 52
    .local v1, numValueElements:I
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->names:[Ljava/lang/String;

    .line 53
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->inputs:[Ljava/lang/String;

    .line 54
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->descriptions:[Ljava/lang/String;

    .line 55
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->words:[Ljava/lang/String;

    .line 56
    new-array v4, v1, [Z

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->valids:[Z

    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 58
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 59
    .local v2, value:Lorg/w3c/dom/Element;
    iget-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->names:[Ljava/lang/String;

    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 60
    iget-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->inputs:[Ljava/lang/String;

    const-string v5, "input"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 61
    iget-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->descriptions:[Ljava/lang/String;

    const-string v5, "desc"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 62
    iget-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->words:[Ljava/lang/String;

    const-string v5, "word"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 63
    iget-object v4, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->valids:[Z

    const-string v5, "valid"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_3
    aput-boolean v5, v4, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 63
    :cond_2
    const/4 v5, 0x1

    goto :goto_3

    .line 65
    .end local v2           #value:Lorg/w3c/dom/Element;
    :cond_3
    return-void

    .line 48
    .end local v0           #i:I
    .end local v1           #numValueElements:I
    .end local v3           #valueElements:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 47
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 115
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WAAssumption;)V

    .line 116
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->count:I

    return v0
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->current:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->descriptions:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->inputs:[Ljava/lang/String;

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->names:[Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValidities()[Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->valids:[Z

    return-object v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->word:Ljava/lang/String;

    return-object v0
.end method

.method public getWords()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->words:[Ljava/lang/String;

    return-object v0
.end method
