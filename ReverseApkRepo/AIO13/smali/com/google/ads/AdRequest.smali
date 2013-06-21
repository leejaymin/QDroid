.class public Lcom/google/ads/AdRequest;
.super Ljava/lang/Object;


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "Ads"

.field public static final TEST_EMULATOR:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "6.1.0"

.field private static final a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# instance fields
.field private d:Lcom/google/ads/AdRequest$Gender;

.field private e:Ljava/util/Date;

.field private f:Ljava/util/Set;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;

.field private i:Landroid/location/Location;

.field private j:Z

.field private k:Z

.field private l:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdRequest;->a:Ljava/text/SimpleDateFormat;

    sput-object v2, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    sput-object v2, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    :try_start_0
    const-string v0, "com.google.analytics.tracking.android.AdMobInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    sput-object v3, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getJoinIds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    sput-object v3, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "No Google Analytics: Library Not Found."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    return-void

    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    :cond_4
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    const-string v0, "No Google Analytics: Library Incompatible."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v0, "No Google Analytics: Error Loading Library"

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    iput-object v1, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    iput-object v1, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    iput-object v1, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    iput-boolean v2, p0, Lcom/google/ads/AdRequest;->j:Z

    iput-boolean v2, p0, Lcom/google/ads/AdRequest;->k:Z

    iput-object v1, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    return-void
.end method

.method private declared-synchronized a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->setNetworkExtras(Lcom/google/ads/mediation/NetworkExtras;)Lcom/google/ads/AdRequest;

    :cond_0
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/AdRequest;
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/AdRequest;->a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addKeyword(Ljava/lang/String;)Lcom/google/ads/AdRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addMediationExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/AdRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clearBirthday()Lcom/google/ads/AdRequest;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    return-object p0
.end method

.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()Lcom/google/ads/AdRequest$Gender;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOneOptOut()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/AdRequest;->a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getPlusOneOptOut()Z

    move-result v0

    return v0
.end method

.method public getRequestMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-eqz v0, :cond_0

    const-string v0, "kw"

    iget-object v4, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    if-eqz v0, :cond_1

    const-string v0, "cust_gender"

    iget-object v4, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v4}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    if-eqz v0, :cond_2

    const-string v0, "cust_age"

    sget-object v4, Lcom/google/ads/AdRequest;->a:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    if-eqz v0, :cond_3

    const-string v0, "uule"

    iget-object v4, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v0, p0, Lcom/google/ads/AdRequest;->j:Z

    if-eqz v0, :cond_4

    const-string v0, "testing"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/ads/AdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "adtest"

    const-string v4, "on"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getPlusOneOptOut()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v2, "pto"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-class v1, Lcom/google/ads/doubleclick/DfpExtras;

    invoke-virtual {p0, v1}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/doubleclick/DfpExtras;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getExtras()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    const-string v0, "extras"

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    if-eqz v0, :cond_7

    const-string v0, "mediation_extras"

    iget-object v1, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :try_start_0
    sget-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_8

    const-string v1, "analytics_join_id"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_3
    return-object v3

    :cond_9
    iget-boolean v0, p0, Lcom/google/ads/AdRequest;->k:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "AdRequest.TEST_EMULATOR"

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "To get test ads on this device, call adRequest.addTestDevice("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ");"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/ads/AdRequest;->k:Z

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    const-string v4, "cipa"

    invoke-static {p1}, Lcom/google/ads/ag;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_c
    move v1, v2

    goto :goto_5

    :cond_d
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "extras"

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Internal Analytics Error:"

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeNetworkExtras(Ljava/lang/Class;)Lcom/google/ads/AdRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setBirthday(Ljava/lang/String;)Lcom/google/ads/AdRequest;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    :goto_0
    return-object p0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/ads/AdRequest;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Birthday format invalid.  Expected \'YYYYMMDD\' where \'YYYY\' is a 4 digit year, \'MM\' is a two digit month, and \'DD\' is a two digit day.  Birthday value ignored"

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    goto :goto_0
.end method

.method public setBirthday(Ljava/util/Calendar;)Lcom/google/ads/AdRequest;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->setBirthday(Ljava/util/Date;)Lcom/google/ads/AdRequest;

    goto :goto_0
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/google/ads/AdRequest;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    goto :goto_0
.end method

.method public setExtras(Ljava/util/Map;)Lcom/google/ads/AdRequest;
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/AdRequest;->a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    return-object p0
.end method

.method public setGender(Lcom/google/ads/AdRequest$Gender;)Lcom/google/ads/AdRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    return-object p0
.end method

.method public setKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/ads/AdRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    return-object p0
.end method

.method public setMediationExtras(Ljava/util/Map;)Lcom/google/ads/AdRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    return-object p0
.end method

.method public setNetworkExtras(Lcom/google/ads/mediation/NetworkExtras;)Lcom/google/ads/AdRequest;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setPlusOneOptOut(Z)Lcom/google/ads/AdRequest;
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/AdRequest;->a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setPlusOneOptOut(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    return-object p0
.end method

.method public setTestDevices(Ljava/util/Set;)Lcom/google/ads/AdRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    return-object p0
.end method

.method public setTesting(Z)Lcom/google/ads/AdRequest;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/AdRequest;->j:Z

    return-object p0
.end method
