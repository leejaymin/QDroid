.class Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->setIncomingView(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$5;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$5;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->startBannerScroll()V
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$1100(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$5;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->stopBannerScroll()V
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$1200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)V

    goto :goto_0
.end method
