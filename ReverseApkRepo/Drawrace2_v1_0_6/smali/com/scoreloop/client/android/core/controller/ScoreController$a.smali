.class final Lcom/scoreloop/client/android/core/controller/ScoreController$a;
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
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/ScoreController;


# direct methods
.method synthetic constructor <init>(Lcom/scoreloop/client/android/core/controller/ScoreController;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/controller/ScoreController$a;-><init>(Lcom/scoreloop/client/android/core/controller/ScoreController;B)V

    return-void
.end method

.method private constructor <init>(Lcom/scoreloop/client/android/core/controller/ScoreController;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$a;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$a;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->d()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$a;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-interface {v0, v1, p2}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    .line 69
    return-void
.end method

.method public final requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$a;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->d()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/ScoreController$a;->a:Lcom/scoreloop/client/android/core/controller/ScoreController;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V

    .line 74
    return-void
.end method
