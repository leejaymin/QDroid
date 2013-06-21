.class Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity$2;
.super Ljava/lang/Object;
.source "ChallengeAcceptListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->onAction(Lcom/scoreloop/client/android/ui/framework/BaseDialog;I)V
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
    .line 195
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->displayPrevious()V
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;->access$100(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeAcceptListActivity;)V

    .line 199
    return-void
.end method
