.class final Lcom/scoreloop/client/android/core/controller/ScoresController$1;
.super Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/ScoresController;->loadLocalScoresToSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/core/util/DiskAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/scoreloop/client/android/core/model/Score;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/ScoresController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/ScoresController;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$1;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 200
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$1;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$1;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getMaxMode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_1
    if-gt v3, v1, :cond_3

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$1;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->b(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$1;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/model/Game;->e()Lcom/scoreloop/client/android/core/model/ScoreOrdering;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, v2, v7}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a(Ljava/lang/Integer;Lcom/scoreloop/client/android/core/model/ScoreOrdering;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Score;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 200
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$1;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->c(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/controller/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/a;->a(I)V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$1;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->c(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$1;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->h()V

    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$1;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a_()V

    .line 204
    return-void
.end method
