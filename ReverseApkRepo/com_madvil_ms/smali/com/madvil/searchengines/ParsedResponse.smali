.class public Lcom/madvil/searchengines/ParsedResponse;
.super Ljava/lang/Object;
.source "ParsedResponse.java"


# instance fields
.field private currentCount:I

.field private pagesCount:I

.field private paging:Z

.field private relatedArtist1:Ljava/lang/String;

.field private relatedArtist2:Ljava/lang/String;

.field private relatedArtist3:Ljava/lang/String;

.field private songs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/madvil/core/SimpleSong;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/madvil/searchengines/ParsedResponse;->songs:Ljava/util/ArrayList;

    .line 10
    iput-boolean v1, p0, Lcom/madvil/searchengines/ParsedResponse;->paging:Z

    .line 11
    iput v1, p0, Lcom/madvil/searchengines/ParsedResponse;->pagesCount:I

    .line 12
    iput v1, p0, Lcom/madvil/searchengines/ParsedResponse;->currentCount:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/madvil/searchengines/ParsedResponse;->relatedArtist1:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/madvil/searchengines/ParsedResponse;->relatedArtist2:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/madvil/searchengines/ParsedResponse;->relatedArtist3:Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public getCurrentCount()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/madvil/searchengines/ParsedResponse;->currentCount:I

    return v0
.end method

.method public getPagesCount()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/madvil/searchengines/ParsedResponse;->pagesCount:I

    return v0
.end method

.method public getRelatedArtist1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/madvil/searchengines/ParsedResponse;->relatedArtist1:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedArtist2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/madvil/searchengines/ParsedResponse;->relatedArtist2:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedArtist3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/madvil/searchengines/ParsedResponse;->relatedArtist3:Ljava/lang/String;

    return-object v0
.end method

.method public getSongs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/madvil/core/SimpleSong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/madvil/searchengines/ParsedResponse;->songs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/madvil/searchengines/ParsedResponse;->songs:Ljava/util/ArrayList;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/madvil/searchengines/ParsedResponse;->songs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isPaging()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/madvil/searchengines/ParsedResponse;->paging:Z

    return v0
.end method

.method public setCurrentCount(I)V
    .locals 0
    .parameter "currentCount"

    .prologue
    .line 38
    iput p1, p0, Lcom/madvil/searchengines/ParsedResponse;->currentCount:I

    .line 39
    return-void
.end method

.method public setPagesCount(I)V
    .locals 0
    .parameter "pagesCount"

    .prologue
    .line 30
    iput p1, p0, Lcom/madvil/searchengines/ParsedResponse;->pagesCount:I

    .line 31
    return-void
.end method

.method public setPaging(Z)V
    .locals 0
    .parameter "paging"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/madvil/searchengines/ParsedResponse;->paging:Z

    .line 71
    return-void
.end method

.method public setRelatedArtist1(Ljava/lang/String;)V
    .locals 0
    .parameter "relatedArtist1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/madvil/searchengines/ParsedResponse;->relatedArtist1:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setRelatedArtist2(Ljava/lang/String;)V
    .locals 0
    .parameter "relatedArtist2"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/madvil/searchengines/ParsedResponse;->relatedArtist2:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setRelatedArtist3(Ljava/lang/String;)V
    .locals 0
    .parameter "relatedArtist3"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/madvil/searchengines/ParsedResponse;->relatedArtist3:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSongs(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/madvil/core/SimpleSong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/SimpleSong;>;"
    iput-object p1, p0, Lcom/madvil/searchengines/ParsedResponse;->songs:Ljava/util/ArrayList;

    .line 19
    return-void
.end method
