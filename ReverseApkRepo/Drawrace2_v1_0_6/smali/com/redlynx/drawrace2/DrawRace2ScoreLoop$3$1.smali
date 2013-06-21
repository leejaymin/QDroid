.class Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3$1;
.super Ljava/lang/Object;
.source "DrawRace2ScoreLoop.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/scoreloop/client/android/core/model/Continuation",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3;


# direct methods
.method constructor <init>(Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3$1;->this$0:Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V
    .locals 1
    .parameter "value"
    .parameter "error"

    .prologue
    .line 130
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$102(Z)Z

    .line 135
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3$1;->this$0:Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3;

    iget v0, v0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3;->val$id:I

    #calls: Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->internalShowLeaderBoard(I)V
    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$300(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3$1;->withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    return-void
.end method
