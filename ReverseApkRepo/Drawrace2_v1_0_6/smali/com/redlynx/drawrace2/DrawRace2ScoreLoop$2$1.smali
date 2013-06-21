.class Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2$1;
.super Ljava/lang/Object;
.source "DrawRace2ScoreLoop.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2;->run()V
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
.field final synthetic this$0:Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2;


# direct methods
.method constructor <init>(Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2$1;->this$0:Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V
    .locals 1
    .parameter "value"
    .parameter "error"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$102(Z)Z

    .line 88
    #calls: Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->internalShowProfile()V
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$200()V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->scoreLoopRejected()V

    goto :goto_0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2$1;->withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    return-void
.end method
