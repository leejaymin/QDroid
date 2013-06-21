.class Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->buttonPressed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

.field final synthetic val$bId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    iput-object p2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->val$bId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->val$bId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/NavigationController;->setCurrentTab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$500(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->val$bId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDepressedButton(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->clearHistoryStack()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/DataStore;->logUsageDataForTabActivated(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$600(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$600(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Offscreen:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabId:Ljava/lang/String;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$700(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/ui/PullTabConfiguration;->News:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/PullTabConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$800(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->href()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/chillingo/crystal/NavigationController;->pushPullTabViewInTab(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_3

    const-string v1, "PullTab"

    const-string v2, "Push button has put it\'s runnable on to the message queue whilst the activity is being torn down, booooo :("

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
