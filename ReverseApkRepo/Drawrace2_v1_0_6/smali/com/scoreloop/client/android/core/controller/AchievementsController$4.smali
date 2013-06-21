.class final Lcom/scoreloop/client/android/core/controller/AchievementsController$4;
.super Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/AchievementsController;->a(Ljava/util/List;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/AchievementsController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/AchievementsController;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$4;->a:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/DiskAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController$4;->a:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->a()Lcom/scoreloop/client/android/core/model/AchievementsStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/model/AchievementsStore;->b()V

    const/4 v0, 0x0

    return-object v0
.end method
