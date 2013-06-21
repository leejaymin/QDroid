.class public Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;
.super Lcom/unity3d/player/UnityPlayerActivity;

# interfaces
.implements Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;


# static fields
.field private static _instance:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

.field private static _restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

.field private static mActivityContext:Landroid/content/Context;

.field private static mAppContext:Landroid/content/Context;

.field private static mAppWnd:Landroid/view/Window;


# instance fields
.field private _fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

.field private _mainUiTabConfiguration:Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

.field private _multitabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/ui/PullTabConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private _optionalLeaderboardId:Ljava/lang/String;

.field private _pullTabConfiguration:Lcom/chillingo/crystal/ui/PullTabConfiguration;

.field private _unityCrystalMainlayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->mAppContext:Landroid/content/Context;

    sput-object v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->mAppWnd:Landroid/view/Window;

    new-instance v0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-direct {v0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    sput-object v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->mActivityContext:Landroid/content/Context;

    sput-object v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_instance:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    iput-object v1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_unityCrystalMainlayout:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Bottom:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    iput-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    iput-object v1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_mainUiTabConfiguration:Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    sget-object v0, Lcom/chillingo/crystal/ui/PullTabConfiguration;->Crystal:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    iput-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_pullTabConfiguration:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    iput-object v1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_multitabs:Ljava/util/List;

    iput-object v1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_optionalLeaderboardId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Lcom/chillingo/crystal/ui/PullTabConfiguration;)Lcom/chillingo/crystal/ui/PullTabConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_pullTabConfiguration:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    return-object p1
.end method

.method static synthetic access$102(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;)Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    return-object p1
.end method

.method static synthetic access$200()Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    return-object v0
.end method

.method static synthetic access$302(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_optionalLeaderboardId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_multitabs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$502(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Lcom/chillingo/crystal/ui/MainUiTabConfiguration;)Lcom/chillingo/crystal/ui/MainUiTabConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_mainUiTabConfiguration:Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    return-object p1
.end method

.method public static activityContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->mActivityContext:Landroid/content/Context;

    return-object v0
.end method

.method public static appContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static appWindow()Landroid/view/Window;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->mAppWnd:Landroid/view/Window;

    return-object v0
.end method

.method public static instance()[Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_instance:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    sget-object v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_instance:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    aput-object v1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    goto :goto_0
.end method

.method private setupUi(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/MainUiTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_mainUiTabConfiguration:Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_mainUiTabConfiguration:Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    invoke-virtual {p1, v0}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_mainUiTabConfiguration:Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    sget-object v1, Lcom/chillingo/crystal/ui/MainUiTabConfiguration;->LeaderboardsWithId:Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_optionalLeaderboardId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_mainUiTabConfiguration:Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    :cond_1
    iput-object v2, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_optionalLeaderboardId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public activateCrystalUI()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$57;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$57;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activateCrystalUIAtAchievements()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$62;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$62;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activateCrystalUIAtChallenges()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$59;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$59;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activateCrystalUIAtGifting()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$63;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$63;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activateCrystalUIAtLeaderboardWithId(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$61;

    invoke-direct {v1, p0, p1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$61;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activateCrystalUIAtLeaderboards()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$60;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$60;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activateCrystalUIAtOfferWall()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$66;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$66;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activateCrystalUIAtProfile()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$58;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$58;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activateCrystalUIAtVirtualCurrencies()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$64;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$64;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activateCrystalUIAtVirtualGoods()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$65;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$65;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public activity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public attachChallengesPullTabFromBottom()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$29;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$29;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachChallengesPullTabFromTop()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$30;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$30;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachChallengesTabFromLeft()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$31;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$31;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachChallengesTabFromRight()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$32;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$32;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachCrystalPullTabFromBottom()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$1;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$1;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachCrystalPullTabFromLeft()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$3;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$3;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachCrystalPullTabFromRight()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$4;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$4;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachCrystalPullTabFromTop()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$2;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$2;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachFindFriendsPullTabFromBottom()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$33;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$33;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachFindFriendsPullTabFromTop()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$34;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$34;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachFindFriendsTabFromLeft()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$35;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$35;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachFindFriendsTabFromRight()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$36;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$36;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachFriendsPullTabFromBottom()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$37;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$37;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachFriendsPullTabFromTop()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$38;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$38;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachFriendsTabFromLeft()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$39;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$39;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachFriendsTabFromRight()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$40;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$40;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachGiftingPullTabFromBottom()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$17;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$17;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachGiftingPullTabFromLeft()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$19;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$19;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachGiftingPullTabFromRight()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$20;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$20;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachGiftingPullTabFromTop()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$18;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$18;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachGiftsAndMarketPullTabFromBottom()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$41;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$41;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachGiftsAndMarketPullTabFromTop()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$42;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$42;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachGiftsAndMarketTabFromLeft()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$43;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$43;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachGiftsAndMarketTabFromRight()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$44;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$44;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachLeaderboardsPullTabFromBottom(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$13;

    invoke-direct {v1, p0, p1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$13;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachLeaderboardsPullTabFromLeft(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$15;

    invoke-direct {v1, p0, p1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$15;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachLeaderboardsPullTabFromRight(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$16;

    invoke-direct {v1, p0, p1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$16;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachLeaderboardsPullTabFromTop(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$14;

    invoke-direct {v1, p0, p1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$14;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected attachMultiTabFromBottom(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$56;

    invoke-direct {v1, p0, p2, p1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$56;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected attachMultiTabFromLeft(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$53;

    invoke-direct {v1, p0, p2, p1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$53;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected attachMultiTabFromRight(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$54;

    invoke-direct {v1, p0, p2, p1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$54;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected attachMultiTabFromTop(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$55;

    invoke-direct {v1, p0, p2, p1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$55;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachNewsPullTabFromBottom()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$9;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$9;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachNewsPullTabFromLeft()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$11;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$11;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachNewsPullTabFromRight()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$12;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$12;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachNewsPullTabFromTop()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$10;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$10;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachProfilePullTabFromBottom()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "CrystalUnityBase"

    const-string v1, "Adding profile pull tab to run loop"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$5;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$5;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachProfilePullTabFromLeft()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$7;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$7;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachProfilePullTabFromRight()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$8;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$8;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachProfilePullTabFromTop()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$6;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$6;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachSettingsPullTabFromBottom()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$49;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$49;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachSettingsPullTabFromTop()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$50;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$50;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachSettingsTabFromLeft()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$51;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$51;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachSettingsTabFromRight()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$52;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$52;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachSwitchUserPullTabFromBottom()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$45;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$45;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachSwitchUserPullTabFromTop()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$46;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$46;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachSwitchUserTabFromLeft()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$47;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$47;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachSwitchUserTabFromRight()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$48;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$48;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachVirtualCurrencyPullTabFromBottom()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$25;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$25;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachVirtualCurrencyPullTabFromTop()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$26;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$26;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachVirtualCurrencyTabFromLeft()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$27;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$27;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachVirtualCurrencyTabFromRight()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$28;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$28;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachVirtualGoodsPullTabFromBottom()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$21;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$21;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachVirtualGoodsPullTabFromTop()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$22;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$22;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachVirtualGoodsTabFromLeft()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$23;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$23;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachVirtualGoodsTabFromRight()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$24;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$24;-><init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public autoAttachUi()Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->None:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    return-object v0
.end method

.method public globalNavigationActivityDetails(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/MainUiTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->setupUi(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V

    return-void
.end method

.method public multitabDetails(Lcom/chillingo/crystal/utils/Reference;Ljava/util/List;Lcom/chillingo/crystal/utils/Reference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/ui/PullTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_multitabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_multitabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_optionalLeaderboardId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    invoke-virtual {p1, v0}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_multitabs:Ljava/util/List;

    iput-object v2, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_optionalLeaderboardId:Ljava/lang/String;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->restorableUi()Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    sput-object p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_instance:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->mAppContext:Landroid/content/Context;

    :cond_0
    sput-object p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->mActivityContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    sput-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->mAppWnd:Landroid/view/Window;

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_unityCrystalMainlayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/chillingo/crystal/CrystalSession;->setActiveLayout(Landroid/widget/RelativeLayout;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->setCurrentActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->setContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0, p0, p1, p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->onActivityCreate(Landroid/app/Activity;Landroid/os/Bundle;Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;)V

    const-string v0, "Main Camera"

    const-string v1, "OnCreateMessage"

    const-string v2, "Unity communication seems fine"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "CrystalBaseActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    iput-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_unityCrystalMainlayout:Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_instance:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->onActivityPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/chillingo/crystal/CrystalSession;->appStartedWithIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/chillingo/crystal/CrystalSession;->shouldLaunchChallenges()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chillingo/crystal/ui/MainUiTabConfiguration;->Challenges:Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    iput-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_mainUiTabConfiguration:Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->GlobalNavigationActivity:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->attachUi(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->setIntent(Landroid/content/Intent;)V

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_unityCrystalMainlayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/chillingo/crystal/CrystalSession;->setActiveLayout(Landroid/widget/RelativeLayout;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->setCurrentActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->setContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "CrystalBaseActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->saveStateToBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public padtabDetails(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/MainUiTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->setupUi(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V

    return-void
.end method

.method public pulltabDetails(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Lcom/chillingo/crystal/ui/PullTabConfiguration;",
            ">;",
            "Lcom/chillingo/crystal/utils/Reference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "CrystalUnityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching pulltab from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tabConfiguration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_pullTabConfiguration:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/PullTabConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    invoke-virtual {p1, v0}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_pullTabConfiguration:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    invoke-virtual {p2, v0}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_optionalLeaderboardId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "CrystalUnityBase"

    const-string v1, "Setting Content View"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_unityCrystalMainlayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_unityCrystalMainlayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_unityCrystalMainlayout:Landroid/widget/RelativeLayout;

    invoke-super {p0, v0}, Lcom/unity3d/player/UnityPlayerActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_unityCrystalMainlayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/chillingo/crystal/CrystalSession;->setActiveLayout(Landroid/widget/RelativeLayout;)V

    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_unityCrystalMainlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_unityCrystalMainlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setRestorable(Lcom/chillingo/crystal/ui/restorable/IRestorableUi;)V
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_restoreUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->setUi(Lcom/chillingo/crystal/ui/restorable/IRestorableUi;)V

    return-void
.end method
