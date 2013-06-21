.class Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$6$1;
.super Ljava/lang/Object;
.source "DrawRace2ScoreLoop.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$6;


# direct methods
.method constructor <init>(Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$6;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$6$1;->this$0:Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 1
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 252
    const-string v0, ""

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->scoreLoopNameReceived()V

    .line 254
    return-void
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 2
    .parameter "aRequestController"

    .prologue
    .line 245
    move-object v0, p1

    check-cast v0, Lcom/scoreloop/client/android/core/controller/UserController;

    .line 246
    .local v0, uc:Lcom/scoreloop/client/android/core/controller/UserController;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->scoreLoopNameReceived()V

    .line 248
    return-void
.end method
