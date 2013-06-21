.class public Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;
.super Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;

# interfaces
.implements Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;
.implements Lcom/chillingo/crystal/INavigationControllerDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalNavigationActivity"

.field private static _preloadTab:Ljava/lang/String;

.field private static _preloadUrl:Ljava/lang/String;


# instance fields
.field private _backgroundColour:I

.field _busyView:Lcom/chillingo/crystal/views/BusyView;

.field private _defaultTabId:Ljava/lang/String;

.field _h:Landroid/os/Handler;

.field private _incomingView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

.field private _isCurrentThemeAnOriginTheme:Z

.field private _navController:Lcom/chillingo/crystal/NavigationController;

.field private _navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

.field private _navigationSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

.field private _originBackground:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

.field private _originUserView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

.field private _primaryView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

.field private _showBasicNav:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_preloadUrl:Ljava/lang/String;

    sput-object v0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_preloadTab:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;-><init>()V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const-string v0, "profiletab"

    iput-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_defaultTabId:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_showBasicNav:Z

    iput-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_incomingView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_primaryView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originBackground:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originUserView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/high16 v0, -0x100

    iput v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_backgroundColour:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_isCurrentThemeAnOriginTheme:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_h:Landroid/os/Handler;

    iput-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;)Lcom/chillingo/crystal/NavigationController;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    return-object v0
.end method

.method private cleanupView(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->cleanup()V

    :cond_0
    return-void
.end method

.method private construct()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->constructThingsThatAreStateIndependant()V

    new-instance v0, Lcom/chillingo/crystal/NavigationController;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/NavigationController;-><init>(Lcom/chillingo/crystal/INavigationControllerDelegate;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/PrivateSession;->setNavController(Lcom/chillingo/crystal/NavigationController;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->isFirstSignInToday()Z

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_showBasicNav:Z

    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenOrientation(Landroid/content/Context;)Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    move-result-object v1

    invoke-static {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->isCurrentThemeAnOriginTheme()Z

    move-result v0

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_showBasicNav:Z

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->useOriginNavBar(Z)V

    :goto_0
    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_showBasicNav:Z

    if-ne v0, v3, :cond_9

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/splash.cuid"

    :goto_1
    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0, v2}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    invoke-static {}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->preloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_showBasicNav:Z

    if-nez v1, :cond_d

    invoke-static {}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->preloadUrl()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    if-nez v0, :cond_1

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v0, v1, v2, v5}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v2

    if-ne v2, v3, :cond_2

    const-string v2, "GlobalNavigationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested ui description with url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " received ui description with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0, v5, v5}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_showBasicNav:Z

    if-eqz v0, :cond_6

    const-string v0, "basicnav_landscape"

    sget-object v2, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-ne v1, v2, :cond_5

    :cond_4
    const-string v0, "basicnav_portrait"

    :cond_5
    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->useNavBar(Ljava/lang/String;Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;)V

    goto :goto_0

    :cond_6
    const-string v0, "globalnav_landscape"

    sget-object v2, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-ne v1, v2, :cond_8

    :cond_7
    const-string v0, "globalnav_portrait"

    :cond_8
    iget-object v2, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v2}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/http/FetchManager;->attemptToPrefetchTabs()V

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->requestSplashScreenBanner()V

    invoke-static {}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->preloadTab()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-static {}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->preloadTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/NavigationController;->setCurrentTab(Ljava/lang/String;)V

    :cond_a
    :goto_4
    invoke-static {}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->preloadUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/DataStore;->logUsageDataForTabActivated(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->tabUrlStringForTabId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v2, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v2}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setSelectedTab(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->loadMainUIDescription()V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_defaultTabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/NavigationController;->setCurrentTab(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    invoke-static {}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->preloadUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_d
    move-object v1, v0

    goto/16 :goto_2
.end method

.method private constructFromBundle(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->constructThingsThatAreStateIndependant()V

    const-string v0, "navigationcontrollerstate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationState;

    new-instance v1, Lcom/chillingo/crystal/NavigationController;

    invoke-direct {v1, p0, v0}, Lcom/chillingo/crystal/NavigationController;-><init>(Lcom/chillingo/crystal/INavigationControllerDelegate;Lcom/chillingo/crystal/NavigationState;)V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/PrivateSession;->setNavController(Lcom/chillingo/crystal/NavigationController;)V

    const-string v0, "iscurrentthemeanorigintheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_isCurrentThemeAnOriginTheme:Z

    const-string v0, "isbasicnav"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_showBasicNav:Z

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenOrientation(Landroid/content/Context;)Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    move-result-object v1

    invoke-static {}, Lcom/chillingo/crystal/ui/theming/Theming;->instance()Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->isCurrentThemeAnOriginTheme()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_showBasicNav:Z

    if-ne v0, v2, :cond_2

    const-string v0, "basicnav_landscape"

    sget-object v4, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-ne v1, v4, :cond_1

    :cond_0
    const-string v0, "basicnav_portrait"

    :cond_1
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->useNavBar(Ljava/lang/String;Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;)V

    :goto_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZIZ)V

    return-void

    :cond_2
    const-string v0, "globalnav_landscape"

    sget-object v4, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-eq v1, v4, :cond_3

    sget-object v4, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-ne v1, v4, :cond_4

    :cond_3
    const-string v0, "globalnav_portrait"

    :cond_4
    iget-object v4, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v4}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chillingo/crystal/http/FetchManager;->attemptToPrefetchTabs()V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_showBasicNav:Z

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->useOriginNavBar(Z)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->loadMainUIDescription()V

    goto :goto_1
.end method

.method private constructThingsThatAreStateIndependant()V
    .locals 3

    const/high16 v0, -0x100

    iput v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_backgroundColour:I

    :try_start_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->masterTheme()Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/MasterThemeDescription;->tableBackgroundColour()I

    move-result v0

    iput v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_backgroundColour:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_backgroundColour:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isWarningLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "GlobalNavigationActivity"

    const-string v2, "Error retrieving tableBackgroundColour in onCreate."

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static preloadTab()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_preloadTab:Ljava/lang/String;

    return-object v0
.end method

.method public static preloadUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_preloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method private removeExistingBarsAndSkins()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->cleanupView(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    return-void
.end method

.method private removeExistingOriginBarsAndSkins()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->removeExistingBarsAndSkins()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originBackground:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->cleanupView(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originBackground:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originUserView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->cleanupView(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originUserView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    return-void
.end method

.method private requestSplashScreenBanner()V
    .locals 4

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/advert_global.img"

    new-instance v1, Lcom/chillingo/crystal/serverdata/ImageData;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/ImageData;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    return-void
.end method

.method private resetStaticState()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->clearHistoryStack()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/NavigationController;->setPendingConfirmedUrlString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/NavigationController;->setPendingUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/NavigationController;->setPendingTab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/NavigationController;->setPendingUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/NavigationController;->setSuppressPopOnDialogClose(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/NavigationController;->setCurrentUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v2, v2}, Lcom/chillingo/crystal/NavigationController;->setCurrentTab(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPreloadTab(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_preloadTab:Ljava/lang/String;

    return-void
.end method

.method public static setPreloadUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_preloadUrl:Ljava/lang/String;

    return-void
.end method

.method private tabUrlStringForTabId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->get(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->href()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://chillingo-crystal.appspot.com/crystal/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private useNavBar(Ljava/lang/String;Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->removeExistingBarsAndSkins()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->dataAvailable()Z

    move-result v0

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->flatUIElement()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-direct {v2, v0}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-ne p2, v1, :cond_2

    :cond_0
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->navigationBarPositionPortrait(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->navigationBarPositionPortrait(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->navigationBarPositionPortrait(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-virtual {v6, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    new-instance v0, Lcom/chillingo/crystal/ui/skinning/ForcedSizeSkinnedView;

    iget-object v3, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/skinning/ForcedSizeSkinnedView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDelegate(Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v7, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_defaultTabId:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v1, v0, v5}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setSelectedTab(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v7}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setBadgesEnabled(Z)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->navigationBarPositionLandscape(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenResolution(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    invoke-virtual {v6, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_3
    move-object v2, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public activateBasicNavBar()V
    .locals 1

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/logout"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->activateBasicNavBar(Ljava/lang/String;)V

    return-void
.end method

.method public activateBasicNavBar(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_showBasicNav:Z

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->popHistoryItem()Lcom/chillingo/crystal/NavigationState$ScreenState;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->doUserSignOut()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->clearData(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->stopFetching()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->basicNavBarSkin()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/Theming;->isCurrentThemeAnOriginTheme()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenOrientation(Landroid/content/Context;)Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->useNavBar(Ljava/lang/String;Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    if-nez v0, :cond_0

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v0, p1, v1, v2}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    :cond_0
    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0, v2, v2}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity$1;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity$1;-><init>(Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->useOriginNavBar(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public activateGlobalNavBar(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_showBasicNav:Z

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->globalNavBarSkin()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->isCurrentThemeAnOriginTheme()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenOrientation(Landroid/content/Context;)Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->useNavBar(Ljava/lang/String;Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p3}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    if-nez v0, :cond_1

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v0, p3, v1, v5}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v2}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chillingo/crystal/DataStore;->setSignInTime(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/chillingo/crystal/LoginHandler;->setIsFirstUiActivationToday(Z)V

    :cond_2
    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0, v5, v5}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->loadMainUIDescription()V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->useOriginNavBar(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "GlobalNavigationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to set the nav bar skin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->tabUrlStringForTabId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1
.end method

.method public areaToShowDialogIn()Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->viewToShowDialogIn()Landroid/widget/RelativeLayout;

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

.method public backgroundColour()I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_backgroundColour:I

    return v0
.end method

.method protected basicNavBarSkin()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/HardwareUtils;->ScreenRotation(Landroid/content/Context;)I

    move-result v1

    const-string v0, "basicnav_landscape"

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v0, "basicnav_portrait"

    :cond_1
    return-object v0
.end method

.method public buttonPressed(Lcom/chillingo/crystal/ui/viewgroups/ModalView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setEnabled(Z)V

    return-void
.end method

.method public buttonPressed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tab"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/NavigationController;->setCurrentTab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->clearHistoryStack()V

    invoke-virtual {p0, p3}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->openTab(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/DataStore;->logUsageDataForTabActivated(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "backbutton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/NavigationController;->peekHistoryItem(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->popView()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->finish(Z)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "closebutton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->finish(Z)V

    goto :goto_0
.end method

.method public challengeStartConfirmed()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->finish(Z)V

    return-void
.end method

.method public closeUi()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->finish(Z)V

    return-void
.end method

.method public context()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public currentActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method protected currentView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_incomingView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    return-object v0
.end method

.method public depressedImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public dialogWillDismiss(Lcom/chillingo/crystal/ui/viewgroups/ModalView;)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setEnabled(Z)V

    return-void
.end method

.method public displayArea()Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->leftOverDisplayArea()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->finish(Z)V

    return-void
.end method

.method public finish(Z)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->deactivateCrystalUi()V

    invoke-super {p0}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->finish()V

    return-void
.end method

.method protected globalNavBarSkin()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenOrientation(Landroid/content/Context;)Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    move-result-object v1

    const-string v0, "globalnav_landscape"

    sget-object v2, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v0, "globalnav_portrait"

    :cond_1
    return-object v0
.end method

.method public hideBusy()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/views/BusyView;->stopAnimating()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/views/BusyView;->setVisibility(I)V

    return-void
.end method

.method public incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_incomingView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    return-object v0
.end method

.method public isBackButtonDelegate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected leftOverDisplayArea()Landroid/graphics/Rect;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenOrientation(Landroid/content/Context;)Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {}, Lcom/chillingo/crystal/ui/theming/Theming;->instance()Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/Theming;->isCurrentThemeAnOriginTheme()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->navigationBarPositionPortrait(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    new-instance v0, Landroid/graphics/Rect;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v5, v5, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->navigationBarPositionLandscape(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->right:I

    new-instance v0, Landroid/graphics/Rect;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v2, v5, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-ne v0, v2, :cond_4

    :cond_3
    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->statusBarPositionPortrait(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    new-instance v0, Landroid/graphics/Rect;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v5, v5, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->navigationBarPositionLandscape(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->statusBarPositionLandscape(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    new-instance v0, Landroid/graphics/Rect;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v2, v4, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v3, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public loadMainUIDescription()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/globalnav.cuid"

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

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
    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/NavigationController;->setMainNavigationBar(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0, v2}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->ImageData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto :goto_0
.end method

.method public mainView()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public navigationView()Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    return-object v0
.end method

.method public normalImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/chillingo/crystal/NavigationController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->construct()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->constructFromBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->cleanup()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_primaryView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_primaryView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->cleanup()V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_incomingView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_incomingView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->cleanup()V

    :cond_1
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-super {p0}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const-string v0, "backbutton"

    invoke-virtual {p0, v0, v2, v2}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->buttonPressed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p2}, Lcom/chillingo/crystal/utils/NotificationUtils;->resourceStatus(Ljava/lang/Object;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    const-class v1, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/NavigationController;->setMainNavigationBar(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->flatUIElement()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->isCurrentThemeAnOriginTheme()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originUserView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originUserView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->invalidate()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->invalidate()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_h:Landroid/os/Handler;

    new-instance v1, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity$2;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity$2;-><init>(Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/chillingo/crystal/ui/activities/CrystalBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "uitype"

    const-string v1, "globalnavigationactivity"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "navigationcontrollerstate"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->currentState()Lcom/chillingo/crystal/NavigationState;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "iscurrentthemeanorigintheme"

    iget-boolean v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_isCurrentThemeAnOriginTheme:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isbasicnav"

    iget-boolean v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_showBasicNav:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public openTab(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

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
    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1, v0, v3, v3}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    return-void
.end method

.method public poppedView()V
    .locals 0

    return-void
.end method

.method public pushedView()V
    .locals 0

    return-void
.end method

.method public requiresOriginLayout()Z
    .locals 1

    invoke-static {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->isCurrentThemeAnOriginTheme()Z

    move-result v0

    return v0
.end method

.method public setIncomingView(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_incomingView:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    return-void
.end method

.method public shouldAddBackBarToUiDescription()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showBusy()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/ui/theming/Theming;->getBusyView(Landroid/content/Context;)Lcom/chillingo/crystal/views/BusyView;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/views/BusyView;->bitmapDimensions()Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->leftOverDisplayArea()Landroid/graphics/Rect;

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

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/views/BusyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0, v5}, Lcom/chillingo/crystal/views/BusyView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    new-instance v1, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity$3;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity$3;-><init>(Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/views/BusyView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_busyView:Lcom/chillingo/crystal/views/BusyView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/views/BusyView;->startAnimating()V

    return-void
.end method

.method public useOriginNavBar(Z)V
    .locals 14

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->removeExistingOriginBarsAndSkins()V

    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenOrientation(Landroid/content/Context;)Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    move-result-object v4

    if-nez p1, :cond_3

    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->LandscapeLeft:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-eq v4, v0, :cond_0

    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->LandscapeRight:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-ne v4, v0, :cond_2

    :cond_0
    const-string v3, "globalbackground_landscape"

    const-string v1, "globalstatusbar_landscape"

    const-string v0, "globalnav_landscape"

    :goto_0
    iget-object v6, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v6}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v6}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chillingo/crystal/serverdata/UIDescription;->dataAvailable()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v6}, Lcom/chillingo/crystal/NavigationController;->mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chillingo/crystal/serverdata/UIDescription;->flatUIElement()Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_7

    new-instance v8, Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-direct {v8, v6}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V

    :goto_1
    invoke-static {p0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6, v3}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    invoke-virtual {v6, v1}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    :try_start_2
    invoke-virtual {v6, v0}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-eq v4, v0, :cond_1

    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-ne v4, v0, :cond_6

    :cond_1
    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->backgroundPositionPortrait(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v0

    invoke-virtual {v6, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->navigationBarPositionPortrait(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v0, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v0, v5, v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->statusBarPositionPortrait(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v12, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    invoke-virtual {v12, v5, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move-object v13, v0

    :goto_3
    new-instance v0, Lcom/chillingo/crystal/ui/skinning/ForcedSizeSkinnedView;

    move-object v1, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/skinning/ForcedSizeSkinnedView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originBackground:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    new-instance v6, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    move-object v7, p0

    move-object v10, v2

    move v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;)V

    iput-object v6, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originUserView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originUserView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDelegate(Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V

    new-instance v0, Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v3, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationSkin:Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-object v1, p0

    move-object v4, v2

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIElement;Lcom/chillingo/crystal/ui/theming/ThemeDescription;Lcom/chillingo/crystal/form/FormModel;ZLandroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setDelegate(Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originBackground:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_originUserView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    const-string v3, "globalbackground_portrait"

    const-string v1, "globalstatusbar_portrait"

    const-string v0, "globalnav_portrait"

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->LandscapeLeft:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-eq v4, v0, :cond_4

    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->LandscapeRight:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    if-ne v4, v0, :cond_5

    :cond_4
    const-string v3, "basicbackground_landscape"

    const-string v1, "basicstatusbar_landscape"

    const-string v0, "basicnav_landscape"

    goto/16 :goto_0

    :cond_5
    const-string v3, "basicbackground_portrait"

    const-string v1, "basicstatusbar_portrait"

    const-string v0, "basicnav_portrait"

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v9, v2

    move-object v3, v2

    :goto_4
    const-string v1, "GlobalNavigationActivity"

    const-string v6, "Error reading in skin file"

    invoke-static {v1, v6, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_6
    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->backgroundPositionLandscape(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v6, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, v4, v0

    invoke-virtual {v6, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->statusBarPositionLandscape(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v12, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;->navigationBarPositionLandscape(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v0, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move-object v13, v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v9, v2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_7
    move-object v8, v2

    goto/16 :goto_1
.end method

.method public viewToActOn()Landroid/widget/RelativeLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->layout()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public viewToShowDialogIn()Landroid/widget/RelativeLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->viewToActOn()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public willDisplayIncomingPushNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setEnabled(Z)V

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
    .locals 0

    return-void
.end method

.method public willPushViewAsResultOfListItemSelected(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 0

    return-void
.end method

.method public willShowModalInternetConnectionErrorDialog()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setEnabled(Z)V

    return-void
.end method

.method public willShowModalOneButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setEnabled(Z)V

    return-void
.end method

.method public willShowModalTwoButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navigationBarSkinView:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setEnabled(Z)V

    return-void
.end method
