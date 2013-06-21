.class final Lcom/scoreloop/client/android/core/controller/ScoreController$b$1;
.super Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/ScoreController$b;->requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/core/util/DiskAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/ScoreController$b;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/ScoreController$b;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b$1;->a:Lcom/scoreloop/client/android/core/controller/ScoreController$b;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b$1;->a:Lcom/scoreloop/client/android/core/controller/ScoreController$b;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->b(Lcom/scoreloop/client/android/core/controller/ScoreController;)Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$b$1;->a:Lcom/scoreloop/client/android/core/controller/ScoreController$b;

    iget-object v1, v1, Lcom/scoreloop/client/android/core/controller/ScoreController$b;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/ScoreController;->a(Lcom/scoreloop/client/android/core/controller/ScoreController;)Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a(Lcom/scoreloop/client/android/core/model/Score;)V

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method
