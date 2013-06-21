.class Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$7;
.super Ljava/lang/Object;
.source "StandardScoreloopManager.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->wasGameItemPurchasedBefore(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V
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
        "Lcom/scoreloop/client/android/core/model/GameItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

.field final synthetic val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$7;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$7;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Lcom/scoreloop/client/android/core/model/GameItem;Ljava/lang/Exception;)V
    .locals 3
    .parameter "gameItem"
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    .line 1228
    if-eqz p1, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$7;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/GameItem;->isPurchased()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1233
    :goto_0
    return-void

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$7;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-interface {v0, v2, p2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1225
    check-cast p1, Lcom/scoreloop/client/android/core/model/GameItem;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$7;->withValue(Lcom/scoreloop/client/android/core/model/GameItem;Ljava/lang/Exception;)V

    return-void
.end method
