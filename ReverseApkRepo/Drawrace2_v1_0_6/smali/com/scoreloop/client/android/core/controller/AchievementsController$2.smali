.class final Lcom/scoreloop/client/android/core/controller/AchievementsController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/AchievementsController;->loadAchievements()V
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
.field final synthetic a:Lcom/scoreloop/client/android/core/controller/AchievementsController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/AchievementsController;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$2;->a:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 353
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$2;->a:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$2;->a:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$2;->a:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->a(Lcom/scoreloop/client/android/core/controller/AchievementsController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$2;->a:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->b(Lcom/scoreloop/client/android/core/controller/AchievementsController;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$2;->a:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$2;->a:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/scoreloop/client/android/core/controller/AchievementsController$2$1;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController$2$1;-><init>(Lcom/scoreloop/client/android/core/controller/AchievementsController$2;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController$2$1;->c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$2;->a:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->d(Lcom/scoreloop/client/android/core/controller/AchievementsController;)V

    goto :goto_0
.end method
