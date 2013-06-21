.class public Lcom/madvil/searchengines/CombinedSearchEngine;
.super Ljava/lang/Object;
.source "CombinedSearchEngine.java"

# interfaces
.implements Lcom/madvil/searchengines/ISearchEngine;


# instance fields
.field private engines:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/madvil/searchengines/ISearchEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/madvil/searchengines/CombinedSearchEngine;->engines:Ljava/util/Vector;

    .line 11
    iget-object v0, p0, Lcom/madvil/searchengines/CombinedSearchEngine;->engines:Ljava/util/Vector;

    new-instance v1, Lcom/madvil/searchengines/NewVKSearchEngine;

    invoke-direct {v1}, Lcom/madvil/searchengines/NewVKSearchEngine;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/madvil/searchengines/CombinedSearchEngine;->engines:Ljava/util/Vector;

    new-instance v1, Lcom/madvil/searchengines/SosoSearchEngine;

    invoke-direct {v1}, Lcom/madvil/searchengines/SosoSearchEngine;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method


# virtual methods
.method public getNewInstance()Lcom/madvil/searchengines/ISearchEngine;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/madvil/searchengines/CombinedSearchEngine;

    invoke-direct {v0}, Lcom/madvil/searchengines/CombinedSearchEngine;-><init>()V

    return-object v0
.end method

.method public parseSEResponse(Ljava/lang/String;IZ)Lcom/madvil/searchengines/ParsedResponse;
    .locals 3
    .parameter "searchString"
    .parameter "page"
    .parameter "withCyrillic"

    .prologue
    .line 24
    new-instance v1, Lcom/madvil/searchengines/ParsedResponse;

    invoke-direct {v1}, Lcom/madvil/searchengines/ParsedResponse;-><init>()V

    .line 25
    .local v1, ret:Lcom/madvil/searchengines/ParsedResponse;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/madvil/searchengines/ParsedResponse;->setPaging(Z)V

    .line 27
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/madvil/searchengines/CombinedSearchEngine;->engines:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 34
    :cond_0
    return-object v1

    .line 28
    :cond_1
    iget-object v2, p0, Lcom/madvil/searchengines/CombinedSearchEngine;->engines:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/madvil/searchengines/ISearchEngine;

    invoke-interface {v2, p1, p2, p3}, Lcom/madvil/searchengines/ISearchEngine;->parseSEResponse(Ljava/lang/String;IZ)Lcom/madvil/searchengines/ParsedResponse;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/madvil/searchengines/ParsedResponse;->getSongs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
