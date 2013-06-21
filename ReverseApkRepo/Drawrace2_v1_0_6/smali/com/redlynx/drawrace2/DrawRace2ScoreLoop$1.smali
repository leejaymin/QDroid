.class final Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$1;
.super Ljava/lang/Object;
.source "DrawRace2ScoreLoop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    const-string v1, "gbRzMicJOd1v2tVOKOEIvuu/PJS4ZMPk0jH/Y3cmp2L1rCy5R6I0xg=="

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/scoreloop/client/android/ui/ScoreloopManager;

    .line 49
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->get()Lcom/scoreloop/client/android/ui/ScoreloopManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/ui/ScoreloopManager;->loadAchievements(Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$002(Z)Z

    .line 53
    return-void
.end method
