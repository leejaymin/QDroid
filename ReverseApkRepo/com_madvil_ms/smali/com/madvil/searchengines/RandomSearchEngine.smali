.class public Lcom/madvil/searchengines/RandomSearchEngine;
.super Ljava/lang/Object;
.source "RandomSearchEngine.java"

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

.field private rnd:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/madvil/searchengines/RandomSearchEngine;->engines:Ljava/util/Vector;

    .line 9
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/madvil/searchengines/RandomSearchEngine;->rnd:Ljava/util/Random;

    .line 12
    iget-object v0, p0, Lcom/madvil/searchengines/RandomSearchEngine;->engines:Ljava/util/Vector;

    new-instance v1, Lcom/madvil/searchengines/SosoSearchEngine;

    invoke-direct {v1}, Lcom/madvil/searchengines/SosoSearchEngine;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/madvil/searchengines/RandomSearchEngine;->engines:Ljava/util/Vector;

    new-instance v1, Lcom/madvil/searchengines/NewVKSearchEngine;

    invoke-direct {v1}, Lcom/madvil/searchengines/NewVKSearchEngine;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method


# virtual methods
.method public getNewInstance()Lcom/madvil/searchengines/ISearchEngine;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/madvil/searchengines/RandomSearchEngine;

    invoke-direct {v0}, Lcom/madvil/searchengines/RandomSearchEngine;-><init>()V

    return-object v0
.end method

.method public parseSEResponse(Ljava/lang/String;IZ)Lcom/madvil/searchengines/ParsedResponse;
    .locals 5
    .parameter "searchString"
    .parameter "page"
    .parameter "withCyrillic"

    .prologue
    .line 23
    new-instance v1, Lcom/madvil/searchengines/ParsedResponse;

    invoke-direct {v1}, Lcom/madvil/searchengines/ParsedResponse;-><init>()V

    .line 24
    .local v1, ret:Lcom/madvil/searchengines/ParsedResponse;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/madvil/searchengines/ParsedResponse;->setPaging(Z)V

    .line 27
    iget-object v2, p0, Lcom/madvil/searchengines/RandomSearchEngine;->rnd:Ljava/util/Random;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .local v0, i:I
    rem-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_0

    .line 28
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " SosoSearchEngine"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " NewVKSearchEngine"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
