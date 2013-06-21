.class Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;-><init>(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

.field final synthetic val$this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iput-object p2, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->val$this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "PadTab"

    const-string v1, "Pad tab received touch event"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->access$000(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->access$000(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    move-result-object v0

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$100(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->access$000(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    move-result-object v0

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$100(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->access$000(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    move-result-object v0

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$200(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->access$000(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    move-result-object v0

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_arrowView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$200(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->access$000(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    move-result-object v0

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$300(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->access$000(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;)Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    move-result-object v0

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_busyView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$300(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->viewToShowDialogIn()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/NavigationController;->removeModalDialogs(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->clearHistory()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v3, v3}, Lcom/chillingo/crystal/NavigationController;->setCurrentTab(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v3}, Lcom/chillingo/crystal/NavigationController;->setCurrentUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Middle:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->setState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$400(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_tabView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->access$400(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->clearSelectedTab()V

    :cond_4
    const/4 v0, 0x0

    return v0
.end method
