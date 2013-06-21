.class Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;
.super Ljava/lang/Object;
.source "AchievementsEngine.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V
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
.field final synthetic this$1:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;->this$1:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V
    .locals 3
    .parameter "success"
    .parameter "error"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;->this$1:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;

    iget-object v0, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->hasLoadedAchievements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;->this$1:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;

    iget-object v0, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;->this$1:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;

    iget-boolean v1, v1, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->val$forceInitialSync:Z

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;->this$1:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;

    iget-object v2, v2, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->submitAchievements(ZLcom/scoreloop/client/android/core/model/Continuation;)V

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;->this$1:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;

    iget-object v0, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;->this$1:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;

    iget-object v0, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    #getter for: Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_submitContinuations:Ljava/util/List;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->access$200(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;->this$1:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;

    iget-object v1, v1, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;->this$1:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;

    iget-object v0, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;

    #calls: Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->invokeSubmitContinuations(Ljava/lang/Boolean;Ljava/lang/Exception;)V
    invoke-static {v0, p1, p2}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->access$300(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;Ljava/lang/Boolean;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2$1;->withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    return-void
.end method
