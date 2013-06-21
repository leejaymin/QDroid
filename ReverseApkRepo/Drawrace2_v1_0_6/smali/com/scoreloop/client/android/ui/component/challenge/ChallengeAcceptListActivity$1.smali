.class Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity$1;
.super Ljava/lang/Object;
.source "ChallengeAcceptListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->requestControllerDidReceiveResponseSafe(Lcom/scoreloop/client/android/core/controller/RequestController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->startChallenge()V
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->access$000(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;)V

    .line 119
    return-void
.end method
