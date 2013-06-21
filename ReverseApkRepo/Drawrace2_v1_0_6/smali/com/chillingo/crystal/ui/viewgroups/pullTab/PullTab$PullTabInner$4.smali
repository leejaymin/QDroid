.class Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->startBannerScroll()V
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

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$904(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)I

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_currentDisplayedTableCellIndex:I
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$900(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    const/4 v1, 0x0

    #setter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_currentDisplayedTableCellIndex:I
    invoke-static {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$902(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;I)I

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4$1;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4$1;-><init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
