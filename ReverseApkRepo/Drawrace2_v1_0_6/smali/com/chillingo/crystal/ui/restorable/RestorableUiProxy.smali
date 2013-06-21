.class public Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/ui/viewgroups/pullTab/IPullTabDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy$1;
    }
.end annotation


# instance fields
.field private _delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private _restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_delegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private activateCrystalUI()V
    .locals 4

    const-string v0, "profiletab"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "PROFILE"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private activateCrystalUIAtAchievements()V
    .locals 4

    const-string v0, "achievementstab"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ACHIEVEMENTS"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private activateCrystalUIAtChallenges()V
    .locals 4

    const-string v0, "challengestab"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "CHALLENGES"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private activateCrystalUIAtGifting()V
    .locals 4

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/gifts_and_market.cuid"

    const-string v1, "giftingtab"

    const/4 v2, 0x1

    const-string v3, "GIFTING"

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private activateCrystalUIAtLeaderboardWithId(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/leaderboard_global.cuid?gameConfigID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leaderboardtab"

    const/4 v2, 0x1

    const-string v3, "LEADERBOARDS"

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private activateCrystalUIAtLeaderboards()V
    .locals 4

    const-string v0, "leaderboardtab"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "LEADERBOARDS"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private activateCrystalUIAtProfile()V
    .locals 4

    const-string v0, "profiletab"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "PROFILE"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private activateCrystalUIAtVirtualCurrencies()V
    .locals 4

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/virtual_currencies.cuid"

    const-string v1, "giftingtab"

    const/4 v2, 0x1

    const-string v3, "VIRTUALCURRENCIES"

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private activateCrystalUIAtVirtualGoods()V
    .locals 4

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/virtual_goods_store.cuid"

    const-string v1, "giftingtab"

    const/4 v2, 0x1

    const-string v3, "VIRTUALGOODS"

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private activateCrystalUi(Lcom/chillingo/crystal/ui/MainUiTabConfiguration;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy$1;->$SwitchMap$com$chillingo$crystal$ui$MainUiTabConfiguration:[I

    invoke-virtual {p1}, Lcom/chillingo/crystal/ui/MainUiTabConfiguration;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateCrystalUI()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateCrystalUIAtProfile()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateCrystalUIAtChallenges()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateCrystalUIAtLeaderboards()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateCrystalUIAtLeaderboardWithId(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateCrystalUIAtAchievements()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateCrystalUIAtGifting()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateCrystalUIAtVirtualCurrencies()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateCrystalUIAtVirtualGoods()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private activateUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/chillingo/crystal/ui/restorable/IRestorableUi;->detachFromView(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/chillingo/crystal/PrivateSession;->activateCrystalUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    return-void
.end method

.method private handleAttachGlobalNavigationActivity()V
    .locals 4

    new-instance v0, Lcom/chillingo/crystal/utils/Reference;

    sget-object v1, Lcom/chillingo/crystal/ui/MainUiTabConfiguration;->Profile:Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    invoke-direct {v0, v1}, Lcom/chillingo/crystal/utils/Reference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/chillingo/crystal/utils/Reference;

    invoke-direct {v1}, Lcom/chillingo/crystal/utils/Reference;-><init>()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->delegate()Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;->globalNavigationActivityDetails(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateCrystalUi(Lcom/chillingo/crystal/ui/MainUiTabConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method private handleAttachMultiTab()V
    .locals 4

    new-instance v0, Lcom/chillingo/crystal/utils/Reference;

    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Bottom:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    invoke-direct {v0, v1}, Lcom/chillingo/crystal/utils/Reference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/chillingo/crystal/utils/Reference;

    invoke-direct {v2}, Lcom/chillingo/crystal/utils/Reference;-><init>()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->delegate()Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;->multitabDetails(Lcom/chillingo/crystal/utils/Reference;Ljava/util/List;Lcom/chillingo/crystal/utils/Reference;)V

    return-void
.end method

.method private handleAttachPadTab()V
    .locals 2

    new-instance v0, Lcom/chillingo/crystal/utils/Reference;

    sget-object v1, Lcom/chillingo/crystal/ui/MainUiTabConfiguration;->Profile:Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    invoke-direct {v0, v1}, Lcom/chillingo/crystal/utils/Reference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/chillingo/crystal/utils/Reference;

    invoke-direct {v1}, Lcom/chillingo/crystal/utils/Reference;-><init>()V

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/MainUiTabConfiguration;

    invoke-virtual {v1}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->activateCrystalUi(Lcom/chillingo/crystal/ui/MainUiTabConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method private handleAttachPulltab()V
    .locals 7

    new-instance v0, Lcom/chillingo/crystal/utils/Reference;

    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Bottom:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    invoke-direct {v0, v1}, Lcom/chillingo/crystal/utils/Reference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/chillingo/crystal/utils/Reference;

    sget-object v1, Lcom/chillingo/crystal/ui/PullTabConfiguration;->Crystal:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    invoke-direct {v3, v1}, Lcom/chillingo/crystal/utils/Reference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/chillingo/crystal/utils/Reference;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-direct {v4, v1}, Lcom/chillingo/crystal/utils/Reference;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/chillingo/crystal/utils/Reference;

    invoke-direct {v5}, Lcom/chillingo/crystal/utils/Reference;-><init>()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->delegate()Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;

    move-result-object v1

    invoke-interface {v1, v0, v3, v5}, Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;->pulltabDetails(Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;Lcom/chillingo/crystal/utils/Reference;)V

    invoke-virtual {v3}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/ui/PullTabConfiguration;->News:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Middle:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {v4, v1}, Lcom/chillingo/crystal/utils/Reference;->setData(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    invoke-virtual {v3}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/PullTabConfiguration;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/PullTabConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    invoke-virtual {v5}, Lcom/chillingo/crystal/utils/Reference;->data()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->attachPullTab(Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Ljava/lang/String;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public attachMultiTab(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/app/Activity;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Ljava/util/List;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RelativeLayout;",
            "Landroid/app/Activity;",
            "Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/chillingo/crystal/ui/restorable/IRestorableUi;->detachFromView(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    :cond_0
    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Landroid/widget/RelativeLayout;Ljava/util/List;Landroid/app/Activity;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    invoke-interface {v0}, Lcom/chillingo/crystal/ui/restorable/IRestorableUi;->attachToView()V

    return-void
.end method

.method protected attachMultiTab(Ljava/util/List;Ljava/lang/String;Landroid/app/Activity;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/ui/PullTabConfiguration;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/PullTabConfiguration;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/PullTabConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    sget-object v6, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->attachMultiTab(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/app/Activity;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Ljava/util/List;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;Ljava/lang/String;)V

    return-void
.end method

.method public attachPullTab(Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Ljava/lang/String;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->attachPullTab(Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Ljava/lang/String;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;Ljava/lang/String;)V

    return-void
.end method

.method public attachPullTab(Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Ljava/lang/String;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->attachPullTab(Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Ljava/lang/String;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;Ljava/lang/String;Z)V

    return-void
.end method

.method public attachPullTab(Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Ljava/lang/String;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->setDelegate(Lcom/chillingo/crystal/ui/viewgroups/pullTab/IPullTabDelegate;)V

    invoke-virtual {v0, p6}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->attachToView(Z)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->PullTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/PrivateSession;->uiHasBeenActivated(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V

    return-void
.end method

.method public attachUi(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->None:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->restorableUi()Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->restorableUi()Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/chillingo/crystal/ui/restorable/IRestorableUi;->detachFromView(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->restorableUi()Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->restorableUi()Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/chillingo/crystal/ui/restorable/IRestorableUi;->detachFromView(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->setUi(Lcom/chillingo/crystal/ui/restorable/IRestorableUi;)V

    :cond_2
    sget-object v0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy$1;->$SwitchMap$com$chillingo$crystal$ui$CrystalUserInterfaceType:[I

    invoke-virtual {p1}, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_3

    const-string v0, "RestorablUiProxy"

    const-string v1, "Handling Attach PullTab"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->handleAttachPulltab()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->handleAttachMultiTab()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->handleAttachPadTab()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->handleAttachGlobalNavigationActivity()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public delegate()Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;

    return-object v0
.end method

.method public detachUi()V
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->None:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->attachUi(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    return-void
.end method

.method public onActivityCreate(Landroid/app/Activity;Landroid/os/Bundle;Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "RestorableUiProxy.onActivityCreate"

    const-string v1, "+"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p3}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->setDelegate(Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;)V

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, p1, p1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->recreateStateFromBundle(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/Activity;)V

    :goto_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "RestorableUiProxy.onActivityCreate"

    const-string v1, "-"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->delegate()Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;->autoAttachUi()Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->attachUi(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "RestorableUiProxy.onActivityPause"

    const-string v1, "+"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PersistableCookieStore;->instance()Lcom/chillingo/crystal/PersistableCookieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PersistableCookieStore;->save()V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "RestorableUiProxy.onActivityPause"

    const-string v1, "-"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->restorableUi()Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->restorableUi()Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/ui/restorable/IRestorableUi;->navigationController()Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/chillingo/crystal/NavigationController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onActivityResume(Landroid/widget/RelativeLayout;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "RestorableUiProxy.onActivityResume"

    const-string v1, "+"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/chillingo/crystal/CrystalSession;->setActiveLayout(Landroid/widget/RelativeLayout;)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "RestorableUiProxy.onActivityResume"

    const-string v1, "-"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;Landroid/widget/RelativeLayout;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->saveStateToBundle(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/chillingo/crystal/ui/restorable/IRestorableUi;->detachFromView(Z)V

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->onActivityCreate(Landroid/app/Activity;Landroid/os/Bundle;Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;)V

    return-void
.end method

.method public pullTabChangedToState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V
    .locals 0

    return-void
.end method

.method public recreateStateFromBundle(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "uitype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "padtab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    invoke-direct {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    invoke-interface {v0, p1}, Lcom/chillingo/crystal/ui/restorable/IRestorableUi;->restoreStateFromBundle(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "pulltab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->PullTabToBeInitialisedByBundle()Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    invoke-interface {v0, p1}, Lcom/chillingo/crystal/ui/restorable/IRestorableUi;->restoreStateFromBundle(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public restorableUi()Lcom/chillingo/crystal/ui/restorable/IRestorableUi;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    return-object v0
.end method

.method public saveStateToBundle(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    invoke-interface {v0}, Lcom/chillingo/crystal/ui/restorable/IRestorableUi;->wantsToSaveState()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    instance-of v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    if-eqz v0, :cond_2

    const-string v0, "uitype"

    const-string v1, "padtab"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    invoke-interface {v0, p1}, Lcom/chillingo/crystal/ui/restorable/IRestorableUi;->saveStateToBundle(Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    instance-of v0, v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    if-eqz v0, :cond_0

    const-string v0, "uitype"

    const-string v1, "pulltab"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDelegate(Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_delegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setUi(Lcom/chillingo/crystal/ui/restorable/IRestorableUi;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->_restorable:Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    return-void
.end method
