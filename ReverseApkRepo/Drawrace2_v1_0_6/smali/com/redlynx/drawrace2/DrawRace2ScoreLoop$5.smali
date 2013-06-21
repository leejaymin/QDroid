.class final Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$5;
.super Ljava/lang/Object;
.source "DrawRace2ScoreLoop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->postAchievement(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$desc:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$5;->val$id:Ljava/lang/String;

    iput-object p2, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$5;->val$desc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 197
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$000()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 198
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->get()Lcom/scoreloop/client/android/ui/ScoreloopManager;

    move-result-object v1

    iget-object v2, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$5;->val$id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/scoreloop/client/android/ui/ScoreloopManager;->getAchievement(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Achievement;

    move-result-object v0

    .line 199
    .local v0, achievement:Lcom/scoreloop/client/android/core/model/Achievement;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->isAchieved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$5;->val$desc:Ljava/lang/String;

    #calls: Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->showAchievementPopup(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->access$400(Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->get()Lcom/scoreloop/client/android/ui/ScoreloopManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/scoreloop/client/android/ui/ScoreloopManager;->achieveAward(Ljava/lang/String;ZZ)V

    .line 203
    .end local v0           #achievement:Lcom/scoreloop/client/android/core/model/Achievement;
    :cond_1
    return-void
.end method
