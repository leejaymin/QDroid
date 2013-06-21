.class Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;
.super Ljava/lang/Object;
.source "AchievementsEngine.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->submitAchievements(ZLcom/scoreloop/client/android/core/model/Continuation;)V
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
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

.field final synthetic val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

.field final synthetic val$forceInitialSync:Z


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;ZLcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    iput-boolean p2, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->val$forceInitialSync:Z

    iput-object p3, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V
    .locals 3
    .parameter "hadInitialSync"
    .parameter "error"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->hasLoadedAchievements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->val$forceInitialSync:Z

    if-eqz v0, :cond_2

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    iget-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->val$forceInitialSync:Z

    new-instance v2, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;-><init>(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->loadAchievements(ZLcom/scoreloop/client/android/core/model/Continuation;)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    #getter for: Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_submitContinuations:Ljava/util/List;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->access$200(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    #getter for: Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_isSubmitting:Z
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->access$400(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    #calls: Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->submitNextAchievement()V
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->access$500(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;)V

    goto :goto_0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    return-void
.end method
