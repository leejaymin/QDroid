.class Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity$1;
.super Ljava/lang/Object;
.source "GameDetailHeaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;->onRefresh(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;

.field final synthetic val$game:Lcom/scoreloop/client/android/core/model/Game;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;Lcom/scoreloop/client/android/core/model/Game;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity$1;->val$game:Lcom/scoreloop/client/android/core/model/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;->getTracker()Lcom/scoreloop/client/android/ui/component/base/Tracker;

    move-result-object v0

    const-string v1, "navigation"

    const-string v2, "header.game-launch"

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity$1;->val$game:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/ui/component/base/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/game/GameDetailHeaderActivity$1;->val$game:Lcom/scoreloop/client/android/core/model/Game;

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/PackageManager;->launchGame(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Game;)V

    .line 65
    return-void
.end method
