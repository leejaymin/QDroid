.class final Lcom/scoreloop/client/android/core/controller/ScoresController$2;
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
        "Ljava/util/List",
        "<",
        "Lcom/scoreloop/client/android/core/model/Score;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/scoreloop/client/android/core/controller/ScoresController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/ScoresController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$2;->b:Lcom/scoreloop/client/android/core/controller/ScoresController;

    iput p2, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$2;->a:I

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 347
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$2;->b:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->b(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$2;->b:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->d(Lcom/scoreloop/client/android/core/controller/ScoresController;)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$2;->b:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->e()Lcom/scoreloop/client/android/core/model/ScoreOrdering;

    move-result-object v2

    iget v3, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$2;->a:I

    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$2;->b:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v4}, Lcom/scoreloop/client/android/core/controller/ScoresController;->c(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/controller/a;->f()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a(Ljava/lang/Integer;Lcom/scoreloop/client/android/core/model/ScoreOrdering;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$2;->b:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->c(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/controller/a;

    move-result-object v0

    iget v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$2;->a:I

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/a;->a(I)V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$2;->b:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->c(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$2;->b:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->h()V

    return-void
.end method
