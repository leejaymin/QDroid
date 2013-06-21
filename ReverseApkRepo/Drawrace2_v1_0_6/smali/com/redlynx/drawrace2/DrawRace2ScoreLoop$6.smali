.class final Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$6;
.super Ljava/lang/Object;
.source "DrawRace2ScoreLoop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->loadUserName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 232
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->get()Lcom/scoreloop/client/android/ui/ScoreloopManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/scoreloop/client/android/ui/ScoreloopManager;->userRejectedTermsOfService(Lcom/scoreloop/client/android/core/model/Continuation;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 234
    const-string v1, ""

    invoke-static {v1}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->scoreLoopNameReceived()V

    .line 260
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UserController;

    new-instance v1, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$6$1;

    invoke-direct {v1, p0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$6$1;-><init>(Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$6;)V

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/UserController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 257
    .local v0, myUserController:Lcom/scoreloop/client/android/core/controller/UserController;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/UserController;->loadUser()V

    goto :goto_0
.end method
