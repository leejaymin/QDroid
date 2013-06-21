.class final Lcom/scoreloop/client/android/core/controller/AchievementsController$1;
.super Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/AchievementsController;->checkHadInitialSync(Lcom/scoreloop/client/android/core/model/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/core/util/DiskAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Exception;

.field private synthetic b:Lcom/scoreloop/client/android/core/model/Continuation;

.field private synthetic c:Lcom/scoreloop/client/android/core/controller/AchievementsController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/AchievementsController;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$1;->c:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$1;->b:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;-><init>()V

    return-void
.end method

.method private varargs e()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$1;->c:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->a()Lcom/scoreloop/client/android/core/model/AchievementsStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/model/AchievementsStore;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "can\'t read did query server"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$1;->a:Ljava/lang/Exception;

    .line 324
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController$1;->e()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 315
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$1;->b:Lcom/scoreloop/client/android/core/model/Continuation;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$1;->a:Ljava/lang/Exception;

    invoke-interface {v0, p1, v1}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method
