.class public Lorg/jaxen/function/ext/EvaluateFunction;
.super Ljava/lang/Object;
.source "EvaluateFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Lorg/jaxen/Context;Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/jaxen/Context;->getNodeSet()Ljava/util/List;

    move-result-object v1

    .line 83
    .local v1, contextNodes:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 84
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 100
    :goto_0
    return-object v7

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v3

    .line 89
    .local v3, nav:Lorg/jaxen/Navigator;
    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 90
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 95
    .local v6, xpathString:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-interface {v3, v6}, Lorg/jaxen/Navigator;->parseXPath(Ljava/lang/String;)Lorg/jaxen/XPath;

    move-result-object v5

    .line 96
    .local v5, xpath:Lorg/jaxen/XPath;
    invoke-virtual {p0}, Lorg/jaxen/Context;->getContextSupport()Lorg/jaxen/ContextSupport;

    move-result-object v4

    .line 97
    .local v4, support:Lorg/jaxen/ContextSupport;
    invoke-virtual {v4}, Lorg/jaxen/ContextSupport;->getVariableContext()Lorg/jaxen/VariableContext;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/jaxen/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 98
    invoke-virtual {v4}, Lorg/jaxen/ContextSupport;->getFunctionContext()Lorg/jaxen/FunctionContext;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/jaxen/XPath;->setFunctionContext(Lorg/jaxen/FunctionContext;)V

    .line 99
    invoke-virtual {v4}, Lorg/jaxen/ContextSupport;->getNamespaceContext()Lorg/jaxen/NamespaceContext;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 100
    invoke-virtual {p0}, Lorg/jaxen/Context;->duplicate()Lorg/jaxen/Context;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Lorg/jaxen/saxpath/SAXPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 92
    .end local v4           #support:Lorg/jaxen/ContextSupport;
    .end local v5           #xpath:Lorg/jaxen/XPath;
    .end local v6           #xpathString:Ljava/lang/String;
    :cond_1
    invoke-static {p1, v3}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #xpathString:Ljava/lang/String;
    goto :goto_1

    .line 102
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 103
    .local v2, e:Lorg/jaxen/saxpath/SAXPathException;
    new-instance v7, Lorg/jaxen/FunctionCallException;

    invoke-virtual {v2}, Lorg/jaxen/saxpath/SAXPathException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .parameter "context"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/jaxen/function/ext/EvaluateFunction;->evaluate(Lorg/jaxen/Context;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lorg/jaxen/FunctionCallException;

    const-string v1, "evaluate() requires one argument"

    invoke-direct {v0, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
