.class final Lcom/scoreloop/client/android/core/controller/ScoresController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/ScoresController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/ScoresController;


# direct methods
.method synthetic constructor <init>(Lcom/scoreloop/client/android/core/controller/ScoresController;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/controller/ScoresController$a;-><init>(Lcom/scoreloop/client/android/core/controller/ScoresController;B)V

    return-void
.end method

.method private constructor <init>(Lcom/scoreloop/client/android/core/controller/ScoresController;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$a;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$a;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->d()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$a;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-interface {v0, v1, p2}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    .line 68
    return-void
.end method

.method public final requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    check-cast p1, Lcom/scoreloop/client/android/core/controller/RankingController;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/RankingController;->getRanking()Lcom/scoreloop/client/android/core/model/Ranking;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$a;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$a;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Score;->getRank()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$a;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Ranking;->getRank()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/model/Score;->a(Ljava/lang/Integer;)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$a;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Ranking;->getRank()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->a(Lcom/scoreloop/client/android/core/controller/ScoresController;Ljava/lang/Integer;)V

    .line 80
    return-void
.end method
