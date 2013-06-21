.class public Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;
.super Lcom/ideaworks3d/marmalade/LoaderActivity;

# interfaces
.implements Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;
.implements Lcom/chillingo/crystal/CrystalDelegate;


# static fields
.field private static mUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;


# instance fields
.field private _appId:Ljava/lang/String;

.field private _appVersion:D

.field private _secretKey:Ljava/lang/String;

.field private _themeName:Ljava/lang/String;

.field private mLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-direct {v0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->mUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;-><init>()V

    iput-object v2, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->_appId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->_appVersion:D

    iput-object v2, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->_secretKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->_themeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ThemeUnzipped(I)V
    .locals 0

    return-void
.end method

.method public activity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public appId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->_appId:Ljava/lang/String;

    return-object v0
.end method

.method public appVersion()D
    .locals 2

    iget-wide v0, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->_appVersion:D

    return-wide v0
.end method

.method public autoAttachUi()Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->PullTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    return-object v0
.end method

.method public challengeStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public crystalUiDeactivated()V
    .locals 0

    return-void
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

    return-void
.end method

.method public inAppPurchaseSupported(Z)V
    .locals 0

    return-void
.end method

.method public multitabDetails(Lcom/chillingo/crystal/utils/Reference;Ljava/util/List;Lcom/chillingo/crystal/utils/Reference;)V
    .locals 0
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

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->mUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->mUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    iget-object v1, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0, p0, v1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->onConfigurationChanged(Landroid/app/Activity;Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/16 v1, 0x400

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->appId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->appVersion()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->themeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->secretKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    sget-object v9, Lcom/chillingo/crystal/MarketType;->AndroidMarket:Lcom/chillingo/crystal/MarketType;

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v10}, Lcom/chillingo/crystal/CrystalSession;->init(Lcom/chillingo/crystal/CrystalDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Landroid/view/Window;Lcom/chillingo/crystal/MarketType;Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onPause()V

    sget-object v0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->mUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->onActivityPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onResume()V

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

    return-void
.end method

.method public pulltabDetails(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V
    .locals 1
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

    sget-object v0, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Bottom:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    invoke-virtual {p1, v0}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    sget-object v0, Lcom/chillingo/crystal/ui/PullTabConfiguration;->Profile:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    invoke-virtual {p2, v0}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method public secretKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->_secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->_appId:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(D)V
    .locals 0

    iput-wide p1, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->_appVersion:D

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-super {p0, v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setRestorable(Lcom/chillingo/crystal/ui/restorable/IRestorableUi;)V
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->mUiProxy:Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->setUi(Lcom/chillingo/crystal/ui/restorable/IRestorableUi;)V

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->_secretKey:Ljava/lang/String;

    return-void
.end method

.method public setTheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->_themeName:Ljava/lang/String;

    return-void
.end method

.method public themeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/marmalade/MarmaladeCrystalBaseActivity;->_themeName:Ljava/lang/String;

    return-object v0
.end method
