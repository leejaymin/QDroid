.class public Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;
.super Ljava/lang/Object;
.source "AchievementsEngine.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# instance fields
.field private _achievementController:Lcom/scoreloop/client/android/core/controller/AchievementController;

.field private _achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

.field private _isLoading:Z

.field private _isSubmitting:Z

.field private _loadContinuations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private _submitContinuations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_loadContinuations:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_submitContinuations:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_loadContinuations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_isLoading:Z

    return v0
.end method

.method static synthetic access$102(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_isLoading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_submitContinuations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;Ljava/lang/Boolean;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->invokeSubmitContinuations(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$400(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_isSubmitting:Z

    return v0
.end method

.method static synthetic access$500(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->submitNextAchievement()V

    return-void
.end method

.method private getAchievementController()Lcom/scoreloop/client/android/core/controller/AchievementController;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_achievementController:Lcom/scoreloop/client/android/core/controller/AchievementController;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/scoreloop/client/android/core/controller/AchievementController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/AchievementController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_achievementController:Lcom/scoreloop/client/android/core/controller/AchievementController;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_achievementController:Lcom/scoreloop/client/android/core/controller/AchievementController;

    return-object v0
.end method

.method private invokeLoadContinuations(Ljava/lang/Boolean;Ljava/lang/Exception;)V
    .locals 4
    .parameter "success"
    .parameter "error"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_loadContinuations:Ljava/util/List;

    .line 67
    .local v1, continuations:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_loadContinuations:Ljava/util/List;

    .line 68
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Continuation;

    .line 69
    .local v0, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;"
    invoke-interface {v0, p1, p2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 71
    .end local v0           #continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method private invokeSubmitContinuations(Ljava/lang/Boolean;Ljava/lang/Exception;)V
    .locals 4
    .parameter "success"
    .parameter "error"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_submitContinuations:Ljava/util/List;

    .line 75
    .local v1, continuations:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_submitContinuations:Ljava/util/List;

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Continuation;

    .line 77
    .local v0, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;"
    invoke-interface {v0, p1, p2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 79
    .end local v0           #continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method private submitNextAchievement()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 158
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->getAchievementsController()Lcom/scoreloop/client/android/core/controller/AchievementsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAchievements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Achievement;

    .line 159
    .local v0, achievement:Lcom/scoreloop/client/android/core/model/Achievement;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->needsSubmit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->getAchievementController()Lcom/scoreloop/client/android/core/controller/AchievementController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/controller/AchievementController;->setAchievement(Lcom/scoreloop/client/android/core/model/Achievement;)V

    .line 161
    iput-boolean v3, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_isSubmitting:Z

    .line 162
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_achievementController:Lcom/scoreloop/client/android/core/controller/AchievementController;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/AchievementController;->submitAchievement()V

    .line 169
    .end local v0           #achievement:Lcom/scoreloop/client/android/core/model/Achievement;
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->invokeSubmitContinuations(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public checkHadInitialSync(Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, contination:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->getAchievementsController()Lcom/scoreloop/client/android/core/controller/AchievementsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->checkHadInitialSync(Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 59
    return-void
.end method

.method public getAchievementsController()Lcom/scoreloop/client/android/core/controller/AchievementsController;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    return-object v0
.end method

.method public hasLoadedAchievements()Z
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->getAchievementsController()Lcom/scoreloop/client/android/core/controller/AchievementsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAchievements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAchievements(ZLcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 1
    .parameter "forceInitialSync"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$1;-><init>(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;ZLcom/scoreloop/client/android/core/model/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->checkHadInitialSync(Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 102
    return-void
.end method

.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    if-ne p1, v0, :cond_1

    .line 107
    iput-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_isLoading:Z

    .line 108
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->invokeLoadContinuations(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_achievementController:Lcom/scoreloop/client/android/core/controller/AchievementController;

    if-ne p1, v0, :cond_0

    .line 110
    iput-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_isSubmitting:Z

    .line 111
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->invokeSubmitContinuations(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 2
    .parameter "aRequestController"

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    if-ne p1, v0, :cond_1

    .line 118
    iput-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_isLoading:Z

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->invokeLoadContinuations(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_achievementController:Lcom/scoreloop/client/android/core/controller/AchievementController;

    if-ne p1, v0, :cond_0

    .line 121
    iput-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->_isSubmitting:Z

    .line 122
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->submitNextAchievement()V

    goto :goto_0
.end method

.method public submitAchievements(ZLcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 1
    .parameter "forceInitialSync"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine$2;-><init>(Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;ZLcom/scoreloop/client/android/core/model/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementsEngine;->checkHadInitialSync(Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 155
    return-void
.end method
