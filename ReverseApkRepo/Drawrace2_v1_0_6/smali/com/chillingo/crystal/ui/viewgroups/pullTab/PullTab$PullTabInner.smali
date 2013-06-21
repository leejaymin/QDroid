.class public Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
.implements Lcom/chillingo/crystal/INavigationControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PullTabInner"
.end annotation


# instance fields
.field private final BANNER_SCROLL_DELAY:J

.field private _bannerScrollTimer:Ljava/util/Timer;

.field private _busyView:Lcom/chillingo/crystal/views/BusyView;

.field private _contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

.field private _currentDisplayedTableCellIndex:I

.field private _delegateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/crystal/ui/viewgroups/pullTab/IPullTabDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private _expandedState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

.field private _foreground:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

.field private _foregroundDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

.field private _frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

.field private _fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

.field private _navController:Lcom/chillingo/crystal/NavigationController;

.field private _optionalLeaderboardId:Ljava/lang/String;

.field private _parentViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private _skinName:Ljava/lang/String;

.field private _state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

.field private _tabId:Ljava/lang/String;

.field private _tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

.field private _tabSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

.field final synthetic this$0:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_delegateRef:Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_expandedState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Bottom:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_parentViewRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_bannerScrollTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_skinName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_foreground:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_foregroundDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabId:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    const/4 v1, 0x0

    iput v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_currentDisplayedTableCellIndex:I

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->BANNER_SCROLL_DELAY:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_optionalLeaderboardId:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabId:Ljava/lang/String;

    new-instance v1, Lcom/chillingo/crystal/NavigationController;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/NavigationController;-><init>(Lcom/chillingo/crystal/INavigationControllerDelegate;)V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    move-object/from16 v0, p8

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Middle:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    move-object/from16 v0, p8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The expanded state for a pulltab can only be middle or top"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p4}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->setPullTabEdge(Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;)V

    invoke-direct {p0, p5}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->setParentView(Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_expandedState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/crystal/utils/HardwareUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->tabIdToSkinName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pulltab/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_skinName:Ljava/lang/String;

    invoke-static {p2}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_skinName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->tabNameAtIndex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/NavigationController;->setCurrentTab(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;->Phone:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    invoke-static {p2}, Lcom/chillingo/crystal/utils/HardwareUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;->Pad:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    :cond_4
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p4, v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->getFrameItem(Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;)Lcom/chillingo/crystal/ui/theming/FrameItem;

    move-result-object v2

    iput-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    sget-object v2, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;->Pad:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$DeviceType;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/ui/theming/FrameItem;->setScaleFactor(F)V

    :cond_5
    :goto_1
    new-instance v1, Lcom/chillingo/crystal/NavigationController;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/NavigationController;-><init>(Lcom/chillingo/crystal/INavigationControllerDelegate;)V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/PrivateSession;->setNavController(Lcom/chillingo/crystal/NavigationController;)V

    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PulltabSkinnedView;

    iget-object v5, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PulltabSkinnedView;-><init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;Lcom/chillingo/crystal/ui/theming/FrameItem;)V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v1, p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDelegate(Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setBadgesEnabled(Z)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->height()I

    move-result v1

    invoke-static {p2}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenResolution(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v2

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-static {p2}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleY(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/ui/theming/FrameItem;->setScaleFactor(F)V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;-><init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Landroid/widget/RelativeLayout;
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->parentView()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_expandedState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Z
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->isBannerScrollRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)V
    .locals 0

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->startBannerScroll()V

    return-void
.end method

.method static synthetic access$1200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)V
    .locals 0

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->stopBannerScroll()V

    return-void
.end method

.method static synthetic access$1300(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    return-object v0
.end method

.method static synthetic access$200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/NavigationController;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;Lcom/chillingo/crystal/NavigationController;)Lcom/chillingo/crystal/NavigationController;
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    return-object p1
.end method

.method static synthetic access$300(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->attachPulltab(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    return-object v0
.end method

.method static synthetic access$602(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    return-object v0
.end method

.method static synthetic access$900(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_currentDisplayedTableCellIndex:I

    return v0
.end method

.method static synthetic access$902(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;I)I
    .locals 0

    iput p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_currentDisplayedTableCellIndex:I

    return p1
.end method

.method static synthetic access$904(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_currentDisplayedTableCellIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_currentDisplayedTableCellIndex:I

    return v0
.end method

.method private addForeground()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_skinName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_overlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v3

    const-string v0, "foreground"

    invoke-virtual {v3, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_foregroundDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_foregroundDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->x(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_foregroundDescription:Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->y(Landroid/content/Context;)I

    move-result v1

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x1

    invoke-direct {v6, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6, v0, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_foreground:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_foreground:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private attachPulltab(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->height()I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0, v3, v2}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->addForeground()V

    sget-object v2, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-direct {p0, v2}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->positionForStateTakingIntoAccountOrientation(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)Landroid/graphics/Point;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v0, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->parentView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->parentView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabId:Ljava/lang/String;

    sget-object v1, Lcom/chillingo/crystal/ui/PullTabConfiguration;->News:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/PullTabConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$1;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$1;-><init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Offscreen:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->peekHistoryItem()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->href()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0, p1}, Lcom/chillingo/crystal/NavigationController;->pushPullTabViewInTab(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->loadMainUIDescription()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabId:Ljava/lang/String;

    sget-object v1, Lcom/chillingo/crystal/ui/PullTabConfiguration;->News:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/PullTabConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "newstab"

    const-string v1, "tab"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->buttonPressed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private changeState()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "PullTab"

    const-string v1, "Closing pulltab ui"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->closeUi()V

    :goto_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->loadMainUIDescription()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_expandedState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->changeState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    goto :goto_0
.end method

.method private displayArea(Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->scaleFactor()F

    move-result v1

    sget-object v2, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$1;->$SwitchMap$com$chillingo$crystal$ui$theming$PulltabFrameData$PullTabEdge:[I

    invoke-virtual {p1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v2, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-ne p2, v2, :cond_0

    iput v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->pullTabTabHeight(F)I

    move-result v2

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->borderHeight(F)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->height()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iput v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->pullTabTabHeight(F)I

    move-result v2

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->borderHeight(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->firstRowHeight(F)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :pswitch_1
    iput v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/FrameItem;->height()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/FrameItem;->scaleFactor()F

    move-result v3

    invoke-static {v3}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->pullTabTabHeight(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->borderHeight(F)I

    move-result v1

    sub-int v1, v2, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->scaleFactor()F

    move-result v1

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->pullTabTabHeight(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->height()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    :pswitch_3
    sget-object v2, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-ne p2, v2, :cond_1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/FrameItem;->height()I

    move-result v2

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/FrameItem;->scaleFactor()F

    move-result v3

    invoke-static {v3}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->pullTabTabHeight(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->borderHeight(F)I

    move-result v1

    sub-int v1, v2, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_1
    iput v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/FrameItem;->scaleFactor()F

    move-result v2

    invoke-static {v2}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->firstRowHeight(F)I

    move-result v2

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/theming/FrameItem;->scaleFactor()F

    move-result v3

    invoke-static {v3}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->pullTabTabHeight(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->borderHeight(F)I

    move-result v1

    sub-int v1, v2, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isBannerScrollRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_bannerScrollTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parentView()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_parentViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private positionForStateTakingIntoAccountOrientation(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)Landroid/graphics/Point;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->scaleFactor()F

    move-result v4

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$1;->$SwitchMap$com$chillingo$crystal$ui$viewgroups$pullTab$PullTab$PullTabState:[I

    invoke-virtual {p1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v3

    :pswitch_0
    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$1;->$SwitchMap$com$chillingo$crystal$ui$theming$PulltabFrameData$PullTabEdge:[I

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->fromEdge()Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->x()I

    move-result v0

    iput v0, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenResolution(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->scaleFactor()F

    move-result v1

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->pullTabTabHeight(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->x()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->scaleFactor()F

    move-result v1

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->pullTabTabHeight(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->y()I

    move-result v0

    iput v0, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    :pswitch_3
    invoke-static {v2}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenResolution(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->scaleFactor()F

    move-result v1

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->pullTabTabHeight(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->y()I

    move-result v0

    iput v0, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->x()I

    move-result v0

    iput v0, v3, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->y()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->scaleFactor()F

    move-result v1

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->pullTabTabHeight(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :pswitch_5
    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$1;->$SwitchMap$com$chillingo$crystal$ui$theming$PulltabFrameData$PullTabEdge:[I

    iget-object v5, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    invoke-virtual {v5}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->fromEdge()Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->x()I

    move-result v1

    iput v1, v3, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->access$400(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    move-result-object v1

    iget-object v1, v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    iget v5, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_currentDisplayedTableCellIndex:I

    invoke-virtual {v1, v5}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->frameForItemAt(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    const-string v1, "PullTab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Height for current cell row is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v2}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenResolution(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v1

    invoke-static {v4}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->pullTabTabHeight(F)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    invoke-static {v4}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->borderHeight(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->x()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v4}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->borderHeight(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->y()I

    move-result v0

    iput v0, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->x()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v4}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->borderHeight(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->y()I

    move-result v0

    iput v0, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->x()I

    move-result v0

    iput v0, v3, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->y()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->scaleFactor()F

    move-result v1

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->firstRowHeight(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v4}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData;->borderHeight(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$1;->$SwitchMap$com$chillingo$crystal$ui$theming$PulltabFrameData$PullTabEdge:[I

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->fromEdge()Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->x()I

    move-result v0

    iput v0, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenResolution(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->height()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->x()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->y()I

    move-result v0

    iput v0, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :pswitch_d
    invoke-static {v2}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenResolution(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->y()I

    move-result v0

    iput v0, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->x()I

    move-result v0

    iput v0, v3, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->y()I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private setParentView(Landroid/widget/RelativeLayout;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_parentViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private setPullTabEdge(Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    return-void
.end method

.method private startBannerScroll()V
    .locals 6

    const-wide/16 v2, 0x1388

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->isBannerScrollRunning()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_bannerScrollTimer:Ljava/util/Timer;

    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$4;-><init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_bannerScrollTimer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private stopBannerScroll()V
    .locals 2

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->isBannerScrollRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_bannerScrollTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_bannerScrollTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private tabIdToSkinName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "leaderboards"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "leaderboard"

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_portrait"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_landscape"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private translationForStateTakingIntoAccountOrientation(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)Landroid/graphics/Point;
    .locals 5

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->positionForStateTakingIntoAccountOrientation(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->positionForStateTakingIntoAccountOrientation(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "PullTab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current position for state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " next position for state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, v1, v0

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public PullTabEdge()Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    return-object v0
.end method

.method public activateBasicNavBar()V
    .locals 1

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/logout"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->activateBasicNavBar(Ljava/lang/String;)V

    return-void
.end method

.method public activateBasicNavBar(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->changeState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/http/FetchManager;->clearData(Z)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->stopFetching()V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/LoginHandler;->setIsFirstUiActivationToday(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->touchableItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->activateGlobalNavBar(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public activateGlobalNavBar(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->changeState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/chillingo/crystal/NavigationController;->pushPullTabViewInTab(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->loadMainUIDescription()V

    return-void
.end method

.method public areaToShowDialogIn()Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->viewToShowDialogIn()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public attachPulltab()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->attachPulltab(Z)V

    return-void
.end method

.method public backgroundColour()I
    .locals 2

    const/high16 v0, -0x100

    :try_start_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/Theming;->masterTheme()Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->tableBackgroundColour()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public buttonPressed(Lcom/chillingo/crystal/ui/viewgroups/ModalView;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->parentView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public buttonPressed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "tab"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v3, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-eq v0, v3, :cond_9

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v4, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/chillingo/crystal/NavigationController;->setPreloadTab(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "newstab"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    move v0, v2

    :cond_1
    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "PullTab"

    const-string v1, "Changing tab state"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->changeState()V

    :cond_3
    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;

    invoke-direct {v0, p0, p1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$2;-><init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    const-string v0, "button"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    move v2, v1

    :cond_7
    if-ne v2, v1, :cond_4

    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "backbutton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/NavigationController;->peekHistoryItem(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->popView()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->closeUi()V

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method public challengeStartConfirmed()V
    .locals 0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->closeUi()V

    return-void
.end method

.method public changeState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v5, :cond_0

    const-string v0, "PullTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->showBusy()V

    :cond_1
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->parentView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->delegate()Lcom/chillingo/crystal/ui/viewgroups/pullTab/IPullTabDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    invoke-interface {v0, v1, p1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/IPullTabDelegate;->pullTabChangedToState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    :cond_2
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Middle:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->startBannerScroll()V

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v4}, Lcom/chillingo/crystal/NavigationController;->setCurrentUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v4, v4}, Lcom/chillingo/crystal/NavigationController;->setCurrentTab(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->clearHistoryStack()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->cleanup()V

    iput-object v4, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    :cond_3
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->positionForStateTakingIntoAccountOrientation(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->translationForStateTakingIntoAccountOrientation(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v3, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v3, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Offscreen:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-ne v2, v3, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    const-string v3, "button2"

    invoke-interface {v2, v4, v3}, Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;->buttonPressed(Lcom/chillingo/crystal/ui/viewgroups/ModalView;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v5, :cond_6

    const-string v2, "PullTab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread creating animation is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {v2, v6, v3, v6, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v2, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$3;

    invoke-direct {v1, p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$3;-><init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;Landroid/graphics/Point;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->stopBannerScroll()V

    goto/16 :goto_0
.end method

.method public cleanup()V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->stopBannerScroll()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->cleanup()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->cleanup()V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->cleanup()V

    return-void
.end method

.method public closeUi()V
    .locals 2

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->changeState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/PrivateSession;->setNavController(Lcom/chillingo/crystal/NavigationController;)V

    return-void
.end method

.method public context()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lcom/chillingo/crystal/ui/viewgroups/pullTab/IPullTabDelegate;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_delegateRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_delegateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/IPullTabDelegate;

    :cond_0
    return-object v0
.end method

.method public depressedImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public displayArea()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->this$0:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->fromEdge()Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-direct {p0, v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->displayArea(Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public displayIncomingPushNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public hideBusy()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/views/BusyView;->stopAnimating()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/views/BusyView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabId:Ljava/lang/String;

    sget-object v1, Lcom/chillingo/crystal/ui/PullTabConfiguration;->News:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/PullTabConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->setVisibility(I)V

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Middle:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->changeState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v0

    iget v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_currentDisplayedTableCellIndex:I

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->scrollViewToVisible(I)V

    :cond_1
    return-void
.end method

.method public incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBackButtonDelegate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isBusy()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v1}, Lcom/chillingo/crystal/views/BusyView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public loadMainUIDescription()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/globalnav.cuid"

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    if-nez v0, :cond_0

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    :cond_0
    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/NavigationController;->setMainNavigationBar(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-virtual {v1, v0, v2, v3}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->ImageData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto :goto_0
.end method

.method public mainView()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public navigationView()Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public normalImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v2, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-ne v0, v2, :cond_1

    const-string v0, "expandimage"

    invoke-virtual {p1, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "image"

    invoke-virtual {p1, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v0, "contractimage"

    invoke-virtual {p1, v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    const/high16 v2, 0x4000

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/FrameItem;->width()I

    move-result v0

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_frame:Lcom/chillingo/crystal/ui/theming/FrameItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->height()I

    move-result v1

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/chillingo/crystal/utils/NotificationUtils;->resourceStatus(Ljava/lang/Object;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    move-result-object v0

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v3}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v0, v3, :cond_3

    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    const-class v3, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_3

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    iget-object v3, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v3, v0}, Lcom/chillingo/crystal/NavigationController;->setMainNavigationBar(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->flatUIElement()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-direct {v3, v0}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v3}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->invalidate()V

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabId:Ljava/lang/String;

    sget-object v3, Lcom/chillingo/crystal/ui/PullTabConfiguration;->News:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    invoke-virtual {v3}, Lcom/chillingo/crystal/ui/PullTabConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->setVisibility(I)V

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Middle:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->changeState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public poppedView()V
    .locals 0

    return-void
.end method

.method public pushedView()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_foreground:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requiresOriginLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDelegate(Lcom/chillingo/crystal/ui/viewgroups/pullTab/IPullTabDelegate;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_delegateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setIncomingView(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabId:Ljava/lang/String;

    sget-object v1, Lcom/chillingo/crystal/ui/PullTabConfiguration;->News:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/PullTabConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_contentView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->inner()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$5;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$5;-><init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOptionalLeaderboardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_optionalLeaderboardId:Ljava/lang/String;

    return-void
.end method

.method public shouldAddBackBarToUiDescription()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowDialog()Z
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Bottom:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Offscreen:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBusy()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->getBusyView(Landroid/content/Context;)Lcom/chillingo/crystal/views/BusyView;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/views/BusyView;->bitmapDimensions()Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->displayArea()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v3

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, v2}, Lcom/chillingo/crystal/NavigationController;->centreRectInRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v3

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/views/BusyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0, v5}, Lcom/chillingo/crystal/views/BusyView;->setVisibility(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/views/BusyView;->startAnimating()V

    return-void
.end method

.method public useOriginNavBar(Z)V
    .locals 0

    return-void
.end method

.method public viewToActOn()Landroid/widget/RelativeLayout;
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->parentView()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public viewToShowDialogIn()Landroid/widget/RelativeLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->viewToActOn()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public willDisplayIncomingPushNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public willPopView()V
    .locals 0

    return-void
.end method

.method public willPopView(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 0

    return-void
.end method

.method public willPushView(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 3

    const/4 v1, 0x1

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/leaderboard.cuid"

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_optionalLeaderboardId:Ljava/lang/String;

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/leaderboard_global.cuid?gameConfigID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_optionalLeaderboardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->setUrl(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willPushViewAsResultOfListItemSelected(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->changeState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    return-void
.end method

.method public willShowModalInternetConnectionErrorDialog()V
    .locals 0

    return-void
.end method

.method public willShowModalOneButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public willShowModalTwoButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;)V
    .locals 0

    return-void
.end method
