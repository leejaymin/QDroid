.class final Lcom/scoreloop/client/android/core/controller/ScoreController$b$2;
.super Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/ScoreController$b;->requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
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
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/RequestController;

.field private synthetic b:Lcom/scoreloop/client/android/core/controller/ScoreController$b;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/ScoreController$b;Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b$2;->b:Lcom/scoreloop/client/android/core/controller/ScoreController$b;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b$2;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b$2;->b:Lcom/scoreloop/client/android/core/controller/ScoreController$b;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->b(Lcom/scoreloop/client/android/core/controller/ScoreController;)Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b$2;->b:Lcom/scoreloop/client/android/core/controller/ScoreController$b;

    iget-object v1, v1, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/ScoreController;->a(Lcom/scoreloop/client/android/core/controller/ScoreController;)Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->b(Lcom/scoreloop/client/android/core/model/Score;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b$2;->b:Lcom/scoreloop/client/android/core/controller/ScoreController$b;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->a(Lcom/scoreloop/client/android/core/controller/ScoreController$b;)Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b$2;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V

    return-void
.end method
