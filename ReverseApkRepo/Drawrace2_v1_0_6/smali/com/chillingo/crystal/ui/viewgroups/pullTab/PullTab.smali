.class public Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/ui/restorable/IRestorableUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$1;,
        Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PulltabSkinnedView;,
        Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;,
        Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PullTab"


# instance fields
.field private _inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    sget-object v7, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;-><init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;-><init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v0, p7}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->setOptionalLeaderboardId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Landroid/widget/RelativeLayout;Ljava/util/List;Landroid/app/Activity;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;",
            "Landroid/widget/RelativeLayout;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    const-string v1, "landscape"

    invoke-static {p1}, Lcom/chillingo/crystal/utils/HardwareUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "portrait"

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crystal_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tab"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pulltab/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->toString()Ljava/lang/String;

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

    invoke-static {}, Lcom/chillingo/crystal/ui/theming/Theming;->instance()Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chillingo/crystal/ui/theming/Theming;->getSkinDescription(Ljava/lang/String;)Lcom/chillingo/crystal/ui/theming/ThemeDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/ThemeDescription;->touchableItems()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->touchableType()Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    move-result-object v2

    sget-object v5, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;->Tab:Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem$TouchableThemeDescriptionItemType;

    if-ne v2, v5, :cond_2

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->baseImageForTab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->tabIdtoCuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v8

    const-string v9, "href"

    invoke-virtual {v8, v9, v7}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, ".png"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "images/pulltab_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tab_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v8

    const-string v9, "image"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v8

    const-string v9, "contractimage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_expand"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v8

    const-string v9, "expandimage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_contract"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->set(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "tab"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/theming/TouchableThemeDescriptionItem;->baseItem()Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;

    move-result-object v1

    const-string v5, "id"

    invoke-virtual {v1, v5, v2}, Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;->set(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v3, 0x1

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    :cond_1
    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;-><init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    iput-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->setOptionalLeaderboardId(Ljava/lang/String;)V

    return-void

    :cond_2
    move v1, v3

    :cond_3
    move v3, v1

    goto/16 :goto_0
.end method

.method public static PullTabToBeInitialisedByBundle()Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;
    .locals 1

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;

    invoke-direct {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;-><init>()V

    return-object v0
.end method

.method static synthetic access$400(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    return-object v0
.end method

.method private baseImageForTab(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "findfriends"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "find_friends"

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v0, "facebook"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "facebook"

    goto :goto_0

    :cond_2
    const-string v0, "twitter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "twitter"

    goto :goto_0

    :cond_3
    const-string v0, "giftsandmarket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "gifting"

    goto :goto_0

    :cond_4
    const-string v0, "settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const-string p1, "settings"

    goto :goto_0

    :cond_5
    const-string v0, "switchuser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "switch_user"

    goto :goto_0
.end method

.method private tabIdtoCuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cuid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leaderboards"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "leaderboard.cuid"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "news"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "inbox.cuid"

    goto :goto_0

    :cond_2
    const-string v1, "gifting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "promotional_gifts.cuid"

    goto :goto_0

    :cond_3
    const-string v1, "virtualgoods"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "virtual_goods_store.cuid"

    goto :goto_0

    :cond_4
    const-string v1, "virtualcurrencies"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "virtual_currencies.cuid"

    goto :goto_0

    :cond_5
    const-string v1, "findfriends"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "find_friends.cuid"

    goto :goto_0

    :cond_6
    const-string v1, "facebook"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    const-string v0, "facebook_settings.cuid"

    goto :goto_0

    :cond_7
    const-string v1, "twitter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    const-string v0, "twitter_settings.cuid"

    goto :goto_0

    :cond_8
    const-string v1, "giftsandmarket"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    const-string v0, "gifts_and_market.cuid"

    goto :goto_0

    :cond_9
    const-string v1, "settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    const-string v0, "account_settings.cuid"

    goto :goto_0

    :cond_a
    const-string v1, "switchuser"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    const-string v0, "logout"

    goto :goto_0

    :cond_b
    const-string v1, "offerwall"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "offerwall.cuid"

    goto :goto_0
.end method


# virtual methods
.method public attachToView()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public attachToView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->attachPulltab(Z)V
    invoke-static {v0, p1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$300(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;Z)V

    return-void
.end method

.method public changeState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->changeState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    return-void
.end method

.method public detachFromView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->cleanup()V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #calls: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->parentView()Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$000(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->deactivateCrystalUi()V

    :cond_1
    return-void
.end method

.method public expandedState()Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_expandedState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$100(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    move-result-object v0

    return-object v0
.end method

.method public fromEdge()Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->PullTabEdge()Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    move-result-object v0

    return-object v0
.end method

.method public inner()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    return-object v0
.end method

.method public navigationController()Lcom/chillingo/crystal/NavigationController;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    return-object v0
.end method

.method public restoreStateFromBundle(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "fromedge"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    const-string v0, "expandedstate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    const-string v0, "tabid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;-><init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;Landroid/content/Context;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    iput-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    const-string v1, "currentrow"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_currentDisplayedTableCellIndex:I
    invoke-static {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$902(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;I)I

    new-instance v1, Lcom/chillingo/crystal/NavigationController;

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    const-string v0, "navigationcontroller"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationState;

    invoke-direct {v1, v2, v0}, Lcom/chillingo/crystal/NavigationController;-><init>(Lcom/chillingo/crystal/INavigationControllerDelegate;Lcom/chillingo/crystal/NavigationState;)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #setter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$202(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;Lcom/chillingo/crystal/NavigationController;)Lcom/chillingo/crystal/NavigationController;

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->attachPulltab()V

    const-string v0, "uistate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    sget-object v1, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->peekHistoryItem()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    sget-object v3, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;->Top:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    #setter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    invoke-static {v2, v3}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$602(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;
    invoke-static {v2}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/chillingo/crystal/NavigationController;->pushPullTabViewInTab(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->changeState(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;)V

    :cond_0
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

.method public saveStateToBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "navigationcontroller"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$200(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->currentState()Lcom/chillingo/crystal/NavigationState;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "uistate"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_state:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$600(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "fromedge"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$1300(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "expandedstate"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_expandedState:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$100(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabState;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "tabid"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabId:Ljava/lang/String;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$700(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "currentrow"

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_currentDisplayedTableCellIndex:I
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$900(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setDelegate(Lcom/chillingo/crystal/ui/viewgroups/pullTab/IPullTabDelegate;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->setDelegate(Lcom/chillingo/crystal/ui/viewgroups/pullTab/IPullTabDelegate;)V

    return-void
.end method

.method public ui()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    return-object v0
.end method

.method public wantsToSaveState()Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab;->_inner:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
