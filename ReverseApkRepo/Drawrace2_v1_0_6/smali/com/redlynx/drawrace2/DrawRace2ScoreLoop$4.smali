.class final Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$4;
.super Ljava/lang/Object;
.source "DrawRace2ScoreLoop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->postResult(ID)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I

.field final synthetic val$val:D


# direct methods
.method constructor <init>(DI)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$4;->val$val:D

    iput p3, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->get()Lcom/scoreloop/client/android/ui/ScoreloopManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/ui/ScoreloopManager;->userRejectedTermsOfService(Lcom/scoreloop/client/android/core/model/Continuation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->get()Lcom/scoreloop/client/android/ui/ScoreloopManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$4;->val$val:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$4;->val$index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/ui/ScoreloopManager;->onGamePlayEnded(Ljava/lang/Double;Ljava/lang/Integer;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->get()Lcom/scoreloop/client/android/ui/ScoreloopManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$4;->val$val:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$4;->val$index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/ui/ScoreloopManager;->onGamePlayEnded(Ljava/lang/Double;Ljava/lang/Integer;)V

    goto :goto_0
.end method
