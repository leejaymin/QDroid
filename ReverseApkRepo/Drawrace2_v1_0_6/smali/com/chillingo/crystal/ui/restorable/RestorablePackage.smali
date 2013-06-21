.class public Lcom/chillingo/crystal/ui/restorable/RestorablePackage;
.super Ljava/lang/Object;


# instance fields
.field private _activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private _contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private _currentUiDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

.field private _edge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

.field private _layoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private _selectedTab:Ljava/lang/String;

.field private _state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

.field private _tabs:Ljava/lang/String;

.field private _urlStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/NavigationState$ScreenState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_contextRef:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_edge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_activityRef:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_layoutRef:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_selectedTab:Ljava/lang/String;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_urlStack:Ljava/util/List;

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_currentUiDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    return-void
.end method


# virtual methods
.method public activity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public context()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public currentUiDescription()Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_currentUiDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    return-object v0
.end method

.method public edge()Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_edge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    return-object v0
.end method

.method public layout()Landroid/widget/RelativeLayout;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_layoutRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_layoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    :cond_0
    return-object v0
.end method

.method public selectedTab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_selectedTab:Ljava/lang/String;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_contextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setCurrentUiDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_currentUiDescription:Lcom/chillingo/crystal/serverdata/UIDescription;

    return-void
.end method

.method public setEdge(Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_edge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    return-void
.end method

.method public setLayout(Landroid/widget/RelativeLayout;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_layoutRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setPullTabState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    return-void
.end method

.method public setSelectedTab(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_selectedTab:Ljava/lang/String;

    return-void
.end method

.method public setTabs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_tabs:Ljava/lang/String;

    return-void
.end method

.method public setUrlStack(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/NavigationState$ScreenState;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_urlStack:Ljava/util/List;

    return-void
.end method

.method public state()Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    return-object v0
.end method

.method public tabs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_tabs:Ljava/lang/String;

    return-object v0
.end method

.method public urlStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/NavigationState$ScreenState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;->_urlStack:Ljava/util/List;

    return-object v0
.end method
