.class public Lcom/wolfram/alpha/impl/WAWarningImpl;
.super Ljava/lang/Object;
.source "WAWarningImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAWarning;
.implements Lcom/wolfram/alpha/visitor/Visitable;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAWarningImpl; = null

.field private static final NO_ATTRIBUTES:[[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x2412de705339b70aL


# instance fields
.field private attributes:[[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    new-array v0, v1, [Lcom/wolfram/alpha/impl/WAWarningImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WAWarningImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAWarningImpl;

    .line 30
    const/4 v0, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lcom/wolfram/alpha/impl/WAWarningImpl;->NO_ATTRIBUTES:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 10
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v7, Lcom/wolfram/alpha/impl/WAWarningImpl;->NO_ATTRIBUTES:[[Ljava/lang/String;

    iput-object v7, p0, Lcom/wolfram/alpha/impl/WAWarningImpl;->attributes:[[Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/wolfram/alpha/impl/WAWarningImpl;->type:Ljava/lang/String;

    .line 38
    const-string v7, "text"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/wolfram/alpha/impl/WAWarningImpl;->text:Ljava/lang/String;

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v2, attrPairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 41
    .local v4, attrs:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    .line 42
    .local v6, numAttrs:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 43
    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 44
    .local v0, attr:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, attrName:Ljava/lang/String;
    const-string v7, "text"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 46
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, attrValue:Ljava/lang/String;
    new-array v7, v9, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .end local v3           #attrValue:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 50
    .end local v0           #attr:Lorg/w3c/dom/Node;
    .end local v1           #attrName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 51
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    filled-new-array {v7, v9}, [I

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    iput-object v7, p0, Lcom/wolfram/alpha/impl/WAWarningImpl;->attributes:[[Ljava/lang/String;

    .line 52
    :cond_2
    return-void
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 73
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WAWarning;)V

    .line 74
    return-void
.end method

.method public getAttributes()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAWarningImpl;->attributes:[[Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAWarningImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAWarningImpl;->type:Ljava/lang/String;

    return-object v0
.end method
