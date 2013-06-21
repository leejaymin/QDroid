.class final Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2;
.super Ljava/lang/Object;
.source "DrawRace2ScoreLoop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->showProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->get()Lcom/scoreloop/client/android/ui/ScoreloopManager;

    move-result-object v0

    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v2, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2$1;

    invoke-direct {v2, p0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2$1;-><init>(Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2;)V

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/ui/ScoreloopManager;->askUserToAcceptTermsOfService(Landroid/app/Activity;Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    #calls: Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->internalShowProfile()V
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$200()V

    goto :goto_0
.end method
