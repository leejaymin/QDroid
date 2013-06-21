.class Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$1;
.super Ljava/lang/Object;
.source "StandardScoreloopManager.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->askUserToAcceptTermsOfService(Landroid/app/Activity;Lcom/scoreloop/client/android/core/model/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .line 175
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$1;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$1;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public termsOfServiceControllerDidFinish(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "controller"
    .parameter "accepted"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$1;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$1;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 181
    :cond_0
    return-void
.end method
