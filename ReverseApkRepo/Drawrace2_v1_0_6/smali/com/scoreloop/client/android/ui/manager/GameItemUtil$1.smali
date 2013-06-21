.class final Lcom/scoreloop/client/android/ui/manager/GameItemUtil$1;
.super Ljava/lang/Object;
.source "GameItemUtil.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/manager/GameItemUtil;->withGameItemForIdentifier(Lcom/scoreloop/client/android/core/model/Session;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/GameItemUtil$1;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/GameItemUtil$1;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 38
    return-void
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 3
    .parameter "aRequestController"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/GameItemUtil$1;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    check-cast p1, Lcom/scoreloop/client/android/core/controller/GameItemController;

    .end local p1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/GameItemController;->getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 43
    return-void
.end method
