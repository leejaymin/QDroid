.class Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$1;
.super Ljava/lang/Object;
.source "ScoreListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->onFooterItemClick(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    #calls: Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->hideSpinner()V
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->access$000(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)V

    .line 125
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$1;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_RECENT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    #calls: Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->setNeedsRefresh(Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V
    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->access$100(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;Lcom/scoreloop/client/android/ui/framework/PagingDirection;)V

    .line 126
    return-void
.end method
