.class Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity$1;
.super Ljava/lang/Object;
.source "AchievementListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->onRefresh(I)V
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
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V
    .locals 1
    .parameter "success"
    .parameter "error"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->hideSpinner()V
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->access$000(Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;)V

    .line 81
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->onAchievements()V
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;->access$100(Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity;)V

    .line 82
    return-void
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListActivity$1;->withValue(Ljava/lang/Boolean;Ljava/lang/Exception;)V

    return-void
.end method
