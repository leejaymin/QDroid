.class final Lcom/scoreloop/client/android/core/controller/ScoreController$1;
.super Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/ScoreController;
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
.field private synthetic a:Z

.field private synthetic b:Lcom/scoreloop/client/android/core/controller/ScoreController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/ScoreController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$1;->b:Lcom/scoreloop/client/android/core/controller/ScoreController;

    iput-boolean p2, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$1;->a:Z

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$1;->b:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->b(Lcom/scoreloop/client/android/core/controller/ScoreController;)Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$1;->b:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/ScoreController;->a(Lcom/scoreloop/client/android/core/controller/ScoreController;)Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a(Lcom/scoreloop/client/android/core/model/Score;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$1;->b:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->h()V

    :cond_0
    return-void
.end method
