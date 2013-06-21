.class public Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTabRestorablePackage;
.super Lcom/chillingo/crystal/ui/restorable/RestorablePackage;


# instance fields
.field private _currentElement:Lcom/chillingo/crystal/serverdata/UIElement;

.field private _expandedState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

.field private _tabs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorablePackage;-><init>()V

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTabRestorablePackage;->_expandedState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTabRestorablePackage;->_currentElement:Lcom/chillingo/crystal/serverdata/UIElement;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTabRestorablePackage;->_tabs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public expandedEdge()Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTabRestorablePackage;->_expandedState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    return-object v0
.end method

.method public setElement(Lcom/chillingo/crystal/serverdata/UIElement;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTabRestorablePackage;->_currentElement:Lcom/chillingo/crystal/serverdata/UIElement;

    return-void
.end method

.method public setExpandedEdge(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTabRestorablePackage;->_expandedState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    return-void
.end method

.method public setTabs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTabRestorablePackage;->_tabs:Ljava/lang/String;

    return-void
.end method

.method public tabs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTabRestorablePackage;->_tabs:Ljava/lang/String;

    return-object v0
.end method

.method public uiElement()Lcom/chillingo/crystal/serverdata/UIElement;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTabRestorablePackage;->_currentElement:Lcom/chillingo/crystal/serverdata/UIElement;

    return-object v0
.end method
