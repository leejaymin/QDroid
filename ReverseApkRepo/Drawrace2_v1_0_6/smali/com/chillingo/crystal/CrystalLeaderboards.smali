.class public Lcom/chillingo/crystal/CrystalLeaderboards;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/NotificationReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/CrystalLeaderboards$1;,
        Lcom/chillingo/crystal/CrystalLeaderboards$Entry;
    }
.end annotation


# static fields
.field public static final CATEGORY_CURRENT_USER:I = 0x8

.field public static final CATEGORY_RANDOM_20:I = 0x4

.field public static final CATEGORY_TOP_20:I = 0x1

.field public static final CATEGORY_TOP_20_FRIENDS:I = 0x2

.field private static final KSecretKey2:Ljava/lang/String; = "Magg1@"

.field private static final TYPE_GLOBAL:Ljava/lang/String; = "global"

.field private static final TYPE_LAST_HOUR:Ljava/lang/String; = "lasthour"

.field private static final TYPE_LAST_MONTH:Ljava/lang/String; = "lastmonth"

.field private static final TYPE_LAST_WEEK:Ljava/lang/String; = "lastweek"

.field private static final TYPE_LOCAL:Ljava/lang/String; = "local"

.field private static final TYPE_NATIONAL:Ljava/lang/String; = "national"

.field private static final TYPE_THIS_HOUR:Ljava/lang/String; = "thishour"

.field private static final TYPE_THIS_MONTH:Ljava/lang/String; = "thismonth"

.field private static final TYPE_THIS_WEEK:Ljava/lang/String; = "thisweek"

.field private static final TYPE_TODAY:Ljava/lang/String; = "today"

.field private static final TYPE_YESTERDAY:Ljava/lang/String; = "yesterday"

.field private static _delegate:Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;


# instance fields
.field private _categoriesToGet:I

.field private _lastRequestTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_lastRequestTimes:Ljava/util/HashMap;

    return-void
.end method

.method private dataForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Lcom/chillingo/crystal/serverdata/LeaderboardData;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->urlForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/LeaderboardData;

    return-object v0
.end method

.method private dataForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Lcom/chillingo/crystal/serverdata/LeaderboardData;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->urlForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/LeaderboardData;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/chillingo/crystal/CrystalLeaderboards;->downloadLeaderboardData(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)V

    :cond_0
    return-object v0
.end method

.method private jsonToEntryList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/CrystalLeaderboards$Entry;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;-><init>(Lcom/chillingo/crystal/CrystalLeaderboards;Lorg/json/JSONObject;Lcom/chillingo/crystal/CrystalLeaderboards$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private leaderboardTypeFromString(Ljava/lang/String;)Lcom/chillingo/crystal/CrystalLeaderboardType;
    .locals 1

    const-string v0, "global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Global:Lcom/chillingo/crystal/CrystalLeaderboardType;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "lasthour"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->LastHour_TEST:Lcom/chillingo/crystal/CrystalLeaderboardType;

    goto :goto_0

    :cond_1
    const-string v0, "lastmonth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->LastMonth:Lcom/chillingo/crystal/CrystalLeaderboardType;

    goto :goto_0

    :cond_2
    const-string v0, "lastweek"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->LastWeek:Lcom/chillingo/crystal/CrystalLeaderboardType;

    goto :goto_0

    :cond_3
    const-string v0, "local"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Local:Lcom/chillingo/crystal/CrystalLeaderboardType;

    goto :goto_0

    :cond_4
    const-string v0, "national"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->National:Lcom/chillingo/crystal/CrystalLeaderboardType;

    goto :goto_0

    :cond_5
    const-string v0, "thishour"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->ThisHour_TEST:Lcom/chillingo/crystal/CrystalLeaderboardType;

    goto :goto_0

    :cond_6
    const-string v0, "thismonth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->ThisMonth:Lcom/chillingo/crystal/CrystalLeaderboardType;

    goto :goto_0

    :cond_7
    const-string v0, "thisweek"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->ThisWeek:Lcom/chillingo/crystal/CrystalLeaderboardType;

    goto :goto_0

    :cond_8
    const-string v0, "today"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Today:Lcom/chillingo/crystal/CrystalLeaderboardType;

    goto :goto_0

    :cond_9
    const-string v0, "yesterday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Yesterday:Lcom/chillingo/crystal/CrystalLeaderboardType;

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static setUnityDelegate(Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;)V
    .locals 0

    sput-object p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_delegate:Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;

    return-void
.end method

.method private stringForLeaderboardType(Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboards$1;->$SwitchMap$com$chillingo$crystal$CrystalLeaderboardType:[I

    invoke-virtual {p1}, Lcom/chillingo/crystal/CrystalLeaderboardType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "global"

    goto :goto_0

    :pswitch_1
    const-string v0, "lasthour"

    goto :goto_0

    :pswitch_2
    const-string v0, "lastmonth"

    goto :goto_0

    :pswitch_3
    const-string v0, "lastweek"

    goto :goto_0

    :pswitch_4
    const-string v0, "local"

    goto :goto_0

    :pswitch_5
    const-string v0, "national"

    goto :goto_0

    :pswitch_6
    const-string v0, "thishour"

    goto :goto_0

    :pswitch_7
    const-string v0, "thismonth"

    goto :goto_0

    :pswitch_8
    const-string v0, "thisweek"

    goto :goto_0

    :pswitch_9
    const-string v0, "today"

    goto :goto_0

    :pswitch_a
    const-string v0, "yesterday"

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
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private urlForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->appId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->secretKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SuperCarsII"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Magg1@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->hexHashForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "https://chillingo-crystal.appspot.com/crystal/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "leaderboard_data?gameConfigID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&sig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->stringForLeaderboardType(Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_categoriesToGet:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "&top=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_categoriesToGet:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "&frds=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_categoriesToGet:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "&rand=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_categoriesToGet:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "&curUser=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public categoriesToGet()I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_categoriesToGet:I

    return v0
.end method

.method protected clearBuffer()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_lastRequestTimes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public currentUser(Ljava/lang/String;)Lcom/chillingo/crystal/CrystalLeaderboards$Entry;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Global:Lcom/chillingo/crystal/CrystalLeaderboardType;

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->currentUser(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    move-result-object v0

    return-object v0
.end method

.method public currentUser(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Lcom/chillingo/crystal/CrystalLeaderboards$Entry;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->currentUser(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    move-result-object v0

    return-object v0
.end method

.method public currentUser(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Lcom/chillingo/crystal/CrystalLeaderboards$Entry;
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->dataForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Lcom/chillingo/crystal/serverdata/LeaderboardData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/LeaderboardData;->currentUser()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    invoke-direct {v0, p0, v2, v1}, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;-><init>(Lcom/chillingo/crystal/CrystalLeaderboards;Lorg/json/JSONObject;Lcom/chillingo/crystal/CrystalLeaderboards$1;)V

    :goto_0
    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/chillingo/crystal/CrystalLeaderboards;->downloadLeaderboardData(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)V

    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public downloadLeaderboardData(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Global:Lcom/chillingo/crystal/CrystalLeaderboardType;

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->downloadLeaderboardData(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)V

    return-void
.end method

.method public downloadLeaderboardData(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->downloadLeaderboardData(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)V

    return-void
.end method

.method public downloadLeaderboardData(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->dataForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Lcom/chillingo/crystal/serverdata/LeaderboardData;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_lastRequestTimes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->urlForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->dataForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Lcom/chillingo/crystal/serverdata/LeaderboardData;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "CrystalLeaderboards"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not clear leaderboard url from cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_lastRequestTimes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    const/16 v3, -0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_lastRequestTimes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->urlForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/serverdata/LeaderboardData;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/LeaderboardData;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->LeaderboardData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto :goto_0
.end method

.method public onNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v5, 0x1

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboards;->_delegate:Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v5, :cond_0

    const-string v0, "CrystalLeaderboards"

    const-string v1, "NULL delegate on leaderboard object"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gameConfigID"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/chillingo/crystal/CrystalLeaderboardType;->Global:Lcom/chillingo/crystal/CrystalLeaderboardType;

    :try_start_0
    invoke-direct {p0, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->leaderboardTypeFromString(Ljava/lang/String;)Lcom/chillingo/crystal/CrystalLeaderboardType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    invoke-static {p2}, Lcom/chillingo/crystal/utils/NotificationUtils;->resourceStatus(Ljava/lang/Object;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v5, :cond_2

    const-string v1, "CrystalLeaderboards"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "leaderboard = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v5, :cond_3

    const-string v1, "CrystalLeaderboards"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "leaderboard status = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v2, :cond_0

    sget-object v1, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/chillingo/crystal/serverdata/LeaderboardData;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/chillingo/crystal/serverdata/LeaderboardData;->dataAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    move v1, v5

    :goto_2
    if-eqz v6, :cond_9

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboards;->_delegate:Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v5, :cond_4

    const-string v0, "CrystalLeaderboards"

    const-string v4, "Valid leaderboard returned"

    invoke-static {v0, v4}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v6}, Lcom/chillingo/crystal/serverdata/LeaderboardData;->top20Entries()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->jsonToEntryList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboards;->_delegate:Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;

    invoke-interface/range {v0 .. v5}, Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;->crystalLeaderboardUpdated(ZLjava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Ljava/util/List;I)V

    :cond_5
    invoke-virtual {v6}, Lcom/chillingo/crystal/serverdata/LeaderboardData;->top20Friends()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->jsonToEntryList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboards;->_delegate:Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;

    const/4 v5, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;->crystalLeaderboardUpdated(ZLjava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Ljava/util/List;I)V

    :cond_6
    invoke-virtual {v6}, Lcom/chillingo/crystal/serverdata/LeaderboardData;->random20()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->jsonToEntryList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboards;->_delegate:Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;

    const/4 v5, 0x4

    invoke-interface/range {v0 .. v5}, Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;->crystalLeaderboardUpdated(ZLjava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Ljava/util/List;I)V

    :cond_7
    invoke-virtual {v6}, Lcom/chillingo/crystal/serverdata/LeaderboardData;->currentUser()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v5, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    const/4 v4, 0x0

    invoke-direct {v5, p0, v0, v4}, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;-><init>(Lcom/chillingo/crystal/CrystalLeaderboards;Lorg/json/JSONObject;Lcom/chillingo/crystal/CrystalLeaderboards$1;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboards;->_delegate:Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;

    const/16 v5, 0x8

    invoke-interface/range {v0 .. v5}, Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;->crystalLeaderboardUpdated(ZLjava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v5, :cond_0

    const-string v0, "CrystalLeaderboards"

    const-string v1, "NULL leaderboard returned"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public postLeaderboardResult(Ljava/lang/String;DZZ)V
    .locals 6

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_lastRequestTimes:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_lastRequestTimes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/crystal/PrivateSession;->postLeaderboardResult(Ljava/lang/String;DZZ)V

    return-void
.end method

.method public random20(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/CrystalLeaderboards$Entry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Global:Lcom/chillingo/crystal/CrystalLeaderboardType;

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->random20(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public random20(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chillingo/crystal/CrystalLeaderboardType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/CrystalLeaderboards$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->random20(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public random20(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chillingo/crystal/CrystalLeaderboardType;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/CrystalLeaderboards$Entry;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->dataForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Lcom/chillingo/crystal/serverdata/LeaderboardData;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/LeaderboardData;->random20()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/chillingo/crystal/CrystalLeaderboards;->jsonToEntryList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/chillingo/crystal/CrystalLeaderboards;->downloadLeaderboardData(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)V

    :cond_1
    return-object v0
.end method

.method public setCategoriesToGet(I)V
    .locals 0

    iput p1, p0, Lcom/chillingo/crystal/CrystalLeaderboards;->_categoriesToGet:I

    return-void
.end method

.method public setDelegate(Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;)V
    .locals 0

    sput-object p1, Lcom/chillingo/crystal/CrystalLeaderboards;->_delegate:Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;

    return-void
.end method

.method public top20Entries(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/CrystalLeaderboards$Entry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Global:Lcom/chillingo/crystal/CrystalLeaderboardType;

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->top20Entries(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public top20Entries(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chillingo/crystal/CrystalLeaderboardType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/CrystalLeaderboards$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->top20Entries(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public top20Entries(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chillingo/crystal/CrystalLeaderboardType;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/CrystalLeaderboards$Entry;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->dataForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Lcom/chillingo/crystal/serverdata/LeaderboardData;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/LeaderboardData;->top20Entries()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/chillingo/crystal/CrystalLeaderboards;->jsonToEntryList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/chillingo/crystal/CrystalLeaderboards;->downloadLeaderboardData(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)V

    :cond_1
    return-object v0
.end method

.method public top20Friends(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/CrystalLeaderboards$Entry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/chillingo/crystal/CrystalLeaderboardType;->Global:Lcom/chillingo/crystal/CrystalLeaderboardType;

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->top20Friends(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public top20Friends(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chillingo/crystal/CrystalLeaderboardType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/CrystalLeaderboards$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->top20Friends(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public top20Friends(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/chillingo/crystal/CrystalLeaderboardType;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/CrystalLeaderboards$Entry;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->dataForLeaderboard(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;)Lcom/chillingo/crystal/serverdata/LeaderboardData;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/LeaderboardData;->top20Friends()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/chillingo/crystal/CrystalLeaderboards;->jsonToEntryList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/chillingo/crystal/CrystalLeaderboards;->downloadLeaderboardData(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)V

    :cond_1
    return-object v0
.end method
