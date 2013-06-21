.class final Lcom/scoreloop/client/android/core/controller/ScoresController$4;
.super Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/ScoresController;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/ScoresController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/ScoresController;)V
    .locals 0
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$4;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 668
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$4;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$4;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/ScoresController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->k()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$4;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$4;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getMaxMode()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    :goto_2
    if-gt v0, v1, :cond_3

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$4;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v3}, Lcom/scoreloop/client/android/core/controller/ScoresController;->b(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$4;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/model/Game;->e()Lcom/scoreloop/client/android/core/model/ScoreOrdering;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a(Ljava/lang/Integer;ILcom/scoreloop/client/android/core/model/ScoreOrdering;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 668
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$4;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->h()V

    return-void
.end method
