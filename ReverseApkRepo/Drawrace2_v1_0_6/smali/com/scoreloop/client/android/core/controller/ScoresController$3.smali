.class final Lcom/scoreloop/client/android/core/controller/ScoresController$3;
.super Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/ScoresController;->removeLocalScores()V
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
    .line 646
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$3;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$3;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->b(Lcom/scoreloop/client/android/core/controller/ScoresController;)Lcom/scoreloop/client/android/core/controller/LocalScoreStore;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$3;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->d(Lcom/scoreloop/client/android/core/controller/ScoresController;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/LocalScoreStore;->a(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 646
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoresController$3;->a:Lcom/scoreloop/client/android/core/controller/ScoresController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoresController;->h()V

    return-void
.end method
