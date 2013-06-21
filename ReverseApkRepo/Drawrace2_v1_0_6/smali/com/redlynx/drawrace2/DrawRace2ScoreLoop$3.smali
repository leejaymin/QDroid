.class final Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3;
.super Ljava/lang/Object;
.source "DrawRace2ScoreLoop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->showLeaderBoard(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$id:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput p1, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->get()Lcom/scoreloop/client/android/ui/ScoreloopManager;

    move-result-object v0

    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v2, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3$1;

    invoke-direct {v2, p0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3$1;-><init>(Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3;)V

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/ui/ScoreloopManager;->askUserToAcceptTermsOfService(Landroid/app/Activity;Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget v0, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3;->val$id:I

    #calls: Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->internalShowLeaderBoard(I)V
    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$300(I)V

    goto :goto_0
.end method
