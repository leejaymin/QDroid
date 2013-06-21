.class public Lcom/wolfram/alpha/test/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v1, Lcom/wolfram/alpha/WAEngine;

    invoke-direct {v1}, Lcom/wolfram/alpha/WAEngine;-><init>()V

    .line 14
    .local v1, engine:Lcom/wolfram/alpha/WAEngine;
    const-string v8, "wri123"

    invoke-virtual {v1, v8}, Lcom/wolfram/alpha/WAEngine;->setAppID(Ljava/lang/String;)V

    .line 16
    const-string v8, "pi"

    invoke-virtual {v1, v8}, Lcom/wolfram/alpha/WAEngine;->createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;

    move-result-object v6

    .line 17
    .local v6, query:Lcom/wolfram/alpha/WAQuery;
    invoke-virtual {v1, v6}, Lcom/wolfram/alpha/WAEngine;->performQuery(Lcom/wolfram/alpha/WAQuery;)Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v7

    .line 19
    .local v7, result:Lcom/wolfram/alpha/WAQueryResult;
    invoke-interface {v7}, Lcom/wolfram/alpha/WAQueryResult;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v5

    .line 20
    .local v5, pods:[Lcom/wolfram/alpha/WAPod;
    move-object v0, v5

    .local v0, arr$:[Lcom/wolfram/alpha/WAPod;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 21
    .local v4, pod:Lcom/wolfram/alpha/WAPod;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v4}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    .end local v4           #pod:Lcom/wolfram/alpha/WAPod;
    :cond_0
    return-void
.end method
