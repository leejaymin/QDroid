.class Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$2;
.super Ljava/lang/Object;
.source "ChallengeControlsListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->prepareView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$2;->this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$2;->this$0:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;

    #getter for: Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->_onControlObserver:Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;->access$000(Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem;)Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeControlsListItem$OnControlObserver;->onControl2()V

    .line 86
    return-void
.end method
