.class public Lcom/wolfram/alpha/impl/WAQueryImpl;
.super Lcom/wolfram/alpha/impl/WAQueryParametersImpl;
.source "WAQueryImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAQuery;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x11ce0c8a413af6cdL


# direct methods
.method public constructor <init>(Lcom/wolfram/alpha/WAQueryParameters;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;-><init>(Lcom/wolfram/alpha/WAQueryParameters;)V

    .line 22
    return-void
.end method


# virtual methods
.method public copy()Lcom/wolfram/alpha/WAQuery;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/wolfram/alpha/impl/WAQueryImpl;

    invoke-direct {v0, p0}, Lcom/wolfram/alpha/impl/WAQueryImpl;-><init>(Lcom/wolfram/alpha/WAQueryParameters;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 33
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x258

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 35
    .local v3, s:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/wolfram/alpha/impl/WAQueryImpl;->getParameters()Ljava/util/List;

    move-result-object v2

    .line 36
    .local v2, params:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 37
    .local v1, param:[Ljava/lang/String;
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 43
    .end local v1           #param:[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryImpl;->signature:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 44
    const-string v4, "&sig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    iget-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryImpl;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
