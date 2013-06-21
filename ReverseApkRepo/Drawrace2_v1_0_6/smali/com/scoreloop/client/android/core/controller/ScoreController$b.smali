.class final Lcom/scoreloop/client/android/core/controller/ScoreController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/ScoreController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/scoreloop/client/android/core/controller/ScoreController;

.field private final b:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# direct methods
.method synthetic constructor <init>(Lcom/scoreloop/client/android/core/controller/ScoreController;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/scoreloop/client/android/core/controller/ScoreController$b;-><init>(Lcom/scoreloop/client/android/core/controller/ScoreController;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;B)V

    return-void
.end method

.method private constructor <init>(Lcom/scoreloop/client/android/core/controller/ScoreController;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->b:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/ScoreController$b;)Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->b:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    return-object v0
.end method


# virtual methods
.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoreController$b$1;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/ScoreController$b$1;-><init>(Lcom/scoreloop/client/android/core/controller/ScoreController$b;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController$b$1;->c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->b:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    new-instance v1, Lcom/scoreloop/client/android/core/model/ScoreSubmitException;

    const-string v2, "Score could not be submitted. Stored in local leaderboard."

    invoke-direct {v1, v2, p2}, Lcom/scoreloop/client/android/core/model/ScoreSubmitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, p1, v1}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->b:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    invoke-interface {v0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->a(Lcom/scoreloop/client/android/core/controller/ScoreController;)Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Score;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoreController$b$2;

    invoke-direct {v0, p0, p1}, Lcom/scoreloop/client/android/core/controller/ScoreController$b$2;-><init>(Lcom/scoreloop/client/android/core/controller/ScoreController$b;Lcom/scoreloop/client/android/core/controller/RequestController;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController$b$2;->c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    .line 124
    :cond_1
    return-void
.end method
