.class Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4$1;->this$2:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4$1;->this$2:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->isBannerScrollRunning()Z
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$1000(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "PullTab"

    const-string v1, "Scrolling banner"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4$1;->this$2:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4$1;->this$2:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;

    iget-object v1, v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_currentDisplayedTableCellIndex:I
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$900(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->scrollViewToVisible(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4$1;->this$2:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$600(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Middle:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4$1;->this$2:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Middle:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->changeState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    :cond_1
    return-void
.end method
