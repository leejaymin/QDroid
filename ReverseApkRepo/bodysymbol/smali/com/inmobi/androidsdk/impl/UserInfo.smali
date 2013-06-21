.class public final Lcom/inmobi/androidsdk/impl/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/content/Context;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Lcom/inmobi/androidsdk/IMAdRequest;

.field private J:Ljava/lang/String;

.field private K:Ljava/util/Random;

.field private L:Ljava/lang/String;

.field private M:I

.field a:Z

.field b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Landroid/location/LocationManager;

.field private u:D

.field private v:D

.field private w:D

.field private x:Z

.field private y:J

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "1"

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->h:Ljava/lang/String;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:J

    .line 77
    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->D:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->E:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->F:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->G:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->H:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Landroid/content/Context;

    .line 93
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->K:Ljava/util/Random;

    .line 94
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 831
    if-eqz p1, :cond_0

    .line 832
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setValidGeoInfo(Z)V

    .line 833
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(D)V

    .line 834
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(D)V

    .line 835
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->c(D)V

    .line 836
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(J)V

    .line 838
    :cond_0
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized i()V
    .locals 4

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    .line 752
    const-string v1, "location"

    .line 751
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 750
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/LocationManager;)V

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 755
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    .line 756
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 759
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v2

    .line 760
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 759
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 761
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 769
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 770
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 775
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 776
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 777
    const-string v1, "InMobiAndroidSDK_3.5.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastBestKnownLocation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 777
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_2
    if-nez v0, :cond_3

    .line 783
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->j()Landroid/location/Location;

    move-result-object v0

    .line 784
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 785
    const-string v1, "InMobiAndroidSDK_3.5.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastKnownLocation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 785
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_3
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 763
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v2

    .line 765
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 764
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 762
    if-nez v2, :cond_1

    .line 766
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    :try_start_2
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 794
    const-string v1, "InMobiAndroidSDK_3.5.2"

    const-string v2, "Error getting the Location Info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()Landroid/location/Location;
    .locals 5

    .prologue
    .line 801
    .line 802
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    .line 805
    const-string v1, "location"

    .line 804
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 803
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/LocationManager;)V

    .line 807
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 808
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v2

    .line 809
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 816
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_3

    .line 826
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0

    .line 817
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 818
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 819
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 820
    if-nez v0, :cond_2

    .line 816
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    .line 843
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 842
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 844
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v1

    .line 846
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 845
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 847
    if-eqz v0, :cond_0

    .line 848
    if-eqz v1, :cond_0

    .line 849
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Z)V

    .line 853
    :goto_0
    return-void

    .line 851
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Z)V

    goto :goto_0
.end method

.method private l()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 856
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 858
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->h(Ljava/lang/String;)V

    .line 860
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->i(Ljava/lang/String;)V

    .line 861
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->j(Ljava/lang/String;)V

    .line 864
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 863
    :goto_1
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->k(Ljava/lang/String;)V

    .line 866
    invoke-static {}, Lcom/inmobi/androidsdk/impl/b;->b()J

    move-result-wide v3

    .line 867
    invoke-static {}, Lcom/inmobi/androidsdk/impl/b;->c()J

    move-result-wide v5

    .line 868
    const-string v0, "InBuilt:"

    .line 869
    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-lez v1, :cond_0

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/inmobi/androidsdk/impl/b;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 872
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ",Ext:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 874
    invoke-static {v5, v6}, Lcom/inmobi/androidsdk/impl/b;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 876
    :cond_1
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->m(Ljava/lang/String;)V

    .line 878
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "os.name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 879
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 880
    const-string v3, "os.version"

    .line 879
    invoke-virtual {v1, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 881
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "(Android:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 883
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->n(Ljava/lang/String;)V

    .line 887
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 888
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 890
    sub-long v0, v4, v0

    .line 889
    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 891
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 892
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setDeviceBTHW(Ljava/lang/String;)V

    .line 895
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 896
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 897
    if-eqz v3, :cond_e

    .line 898
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 899
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 900
    if-eqz v1, :cond_3

    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 915
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->g(Ljava/lang/String;)V

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    const-string v1, "InMobi_androidwebsdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const-string v1, "3.5.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceSystemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    const-string v1, "; HW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceMachineHW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->l(Ljava/lang/String;)V

    .line 935
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    .line 936
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 938
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 937
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 940
    if-eqz v3, :cond_4

    .line 941
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Ljava/lang/String;)V

    .line 948
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x80

    .line 947
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 957
    if-eqz v1, :cond_15

    .line 958
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 959
    if-eqz v0, :cond_5

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 960
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 963
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 964
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 973
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->e(Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->K:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(I)V

    .line 977
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRandomKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->getUIDMap(Lcom/inmobi/androidsdk/IMAdRequest;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->f(Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Landroid/content/Context;

    if-eqz v0, :cond_8

    .line 979
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Landroid/content/Context;)V

    .line 983
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Landroid/content/Context;

    .line 984
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 983
    if-nez v0, :cond_a

    .line 986
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    .line 987
    const-string v1, "connectivity"

    .line 986
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 985
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 988
    if-eqz v0, :cond_a

    .line 990
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 992
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 993
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 994
    if-ne v1, v9, :cond_f

    .line 995
    const-string v0, "wifi"

    .line 1008
    :cond_9
    :goto_5
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1019
    :cond_a
    :goto_6
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1020
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1021
    if-ne v0, v10, :cond_13

    .line 1022
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setOrientation(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1033
    :cond_b
    :goto_7
    return-void

    .line 862
    :cond_c
    const-string v0, "BASE"

    goto/16 :goto_0

    .line 865
    :cond_d
    const-string v0, "1.0"

    goto/16 :goto_1

    .line 904
    :cond_e
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 905
    const-string v1, "user.language"

    .line 904
    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 906
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 907
    const-string v4, "user.region"

    .line 906
    invoke-virtual {v1, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 908
    if-eqz v0, :cond_16

    if-eqz v1, :cond_16

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    :goto_8
    if-nez v0, :cond_3

    .line 912
    const-string v0, "en"

    goto/16 :goto_2

    .line 996
    :cond_f
    if-nez v1, :cond_14

    .line 997
    :try_start_3
    const-string v0, "carrier"

    .line 998
    if-ne v3, v9, :cond_10

    .line 999
    const-string v0, "gprs"

    goto :goto_5

    .line 1000
    :cond_10
    if-ne v3, v10, :cond_11

    .line 1001
    const-string v0, "edge"

    goto :goto_5

    .line 1002
    :cond_11
    if-ne v3, v11, :cond_12

    .line 1003
    const-string v0, "umts"

    goto :goto_5

    .line 1004
    :cond_12
    if-nez v3, :cond_9

    .line 1005
    const-string v0, "carrier"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 1013
    const-string v1, "InMobiAndroidSDK_3.5.2"

    const-string v2, "Error getting the network info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1023
    :cond_13
    if-ne v0, v9, :cond_b

    .line 1024
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setOrientation(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    .line 1026
    :catch_1
    move-exception v0

    .line 1027
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 1028
    const-string v1, "InMobiAndroidSDK_3.5.2"

    .line 1029
    const-string v2, "Error getting the orientation info"

    .line 1028
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 966
    :catch_2
    move-exception v0

    goto/16 :goto_4

    :cond_14
    move-object v0, v2

    goto/16 :goto_5

    :cond_15
    move-object v0, v2

    goto/16 :goto_3

    :cond_16
    move-object v0, v3

    goto :goto_8
.end method

.method private m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1040
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1041
    const-string v1, "android_id"

    .line 1039
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1047
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1050
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1051
    const-string v1, "android_id"

    .line 1049
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1061
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Ljava/lang/String;

    return-object v0

    .line 1056
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1045
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Landroid/content/Context;

    return-object v0
.end method

.method a(D)V
    .locals 0
    .parameter

    .prologue
    .line 597
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:D

    .line 598
    return-void
.end method

.method a(I)V
    .locals 1
    .parameter

    .prologue
    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->i:Ljava/lang/String;

    .line 204
    return-void
.end method

.method a(J)V
    .locals 0
    .parameter

    .prologue
    .line 657
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:J

    .line 658
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Landroid/content/Context;

    .line 109
    return-void
.end method

.method declared-synchronized a(Landroid/location/LocationManager;)V
    .locals 1
    .parameter

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->t:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    monitor-exit p0

    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->c:Ljava/lang/String;

    .line 124
    return-void
.end method

.method a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z

    .line 568
    return-void
.end method

.method declared-synchronized b()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->t:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(D)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:D

    .line 613
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->L:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 215
    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    const-string v1, "A_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->L:Ljava/lang/String;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->L:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 220
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->L:Ljava/lang/String;

    .line 221
    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    const-string v1, "A_ID"

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->L:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->d:Ljava/lang/String;

    .line 139
    return-void
.end method

.method b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 582
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->b:Z

    .line 583
    return-void
.end method

.method c(D)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:D

    .line 628
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->e:Ljava/lang/String;

    .line 162
    return-void
.end method

.method c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 672
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Z

    .line 673
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->isLocationInquiryAllowed()Z

    move-result v0

    .line 551
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->f:Ljava/lang/String;

    .line 177
    return-void
.end method

.method d()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z

    return v0
.end method

.method e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->g:Ljava/lang/String;

    .line 199
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->b:Z

    return v0
.end method

.method f()J
    .locals 2

    .prologue
    .line 649
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:J

    return-wide v0
.end method

.method f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->j:Ljava/lang/String;

    .line 208
    return-void
.end method

.method g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->k:Ljava/lang/String;

    .line 249
    return-void
.end method

.method g()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Z

    return v0
.end method

.method public getAdUnitSlot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getAge()I

    move-result v0

    .line 516
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getAppBId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 424
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdRequest;->getDateOfBirth()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 428
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdRequest;->getDateOfBirth()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 431
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 432
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_0
    return-object v0
.end method

.method public getDeviceBTHW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMachineHW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceStorageSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSystemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getEducation()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getEducation()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEthnicity()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getEthnicity()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGender()Lcom/inmobi/androidsdk/IMAdRequest$GenderType;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getGender()Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    move-result-object v0

    .line 446
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncome()I
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getIncome()I

    move-result v0

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getInterests()Ljava/lang/String;

    move-result-object v0

    .line 526
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getKeywords()Ljava/lang/String;

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 589
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:D

    return-wide v0
.end method

.method public getLocAccuracy()D
    .locals 2

    .prologue
    .line 619
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:D

    return-wide v0
.end method

.method public getLocalization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWithCityStateCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    .line 506
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 604
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:D

    return-wide v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->M:I

    return v0
.end method

.method public getPhoneDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 705
    const-string v0, ""

    .line 707
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRandomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRsakeyVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenDensity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->H:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getSearchString()Ljava/lang/String;

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getTestModeAdActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getUIDMapEncrypted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    const-string v0, "inmobi_androidsdk=3.5.2"

    return-object v0
.end method

.method h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->l:Ljava/lang/String;

    .line 264
    return-void
.end method

.method i(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->m:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->isTestMode()Z

    move-result v0

    .line 682
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidGeoInfo()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Z

    return v0
.end method

.method j(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->n:Ljava/lang/String;

    .line 294
    return-void
.end method

.method k(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->o:Ljava/lang/String;

    .line 309
    return-void
.end method

.method l(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    return-void
.end method

.method m(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->p:Ljava/lang/String;

    .line 350
    return-void
.end method

.method n(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Ljava/lang/String;

    .line 365
    return-void
.end method

.method o(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    .line 397
    return-void
.end method

.method p(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/lang/String;

    .line 698
    return-void
.end method

.method public setAdUnitSlot(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->F:Ljava/lang/String;

    .line 1144
    return-void
.end method

.method public setDeviceBTHW(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Lcom/inmobi/androidsdk/IMAdRequest;

    .line 147
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter

    .prologue
    .line 1174
    iput p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->M:I

    .line 1175
    return-void
.end method

.method public setPhoneDefaultUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->C:Ljava/lang/String;

    .line 1136
    return-void
.end method

.method public setRefTagKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->D:Ljava/lang/String;

    .line 1124
    return-void
.end method

.method public setRefTagValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->E:Ljava/lang/String;

    .line 1132
    return-void
.end method

.method public setScreenDensity(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->H:Ljava/lang/String;

    .line 1160
    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->G:Ljava/lang/String;

    .line 1152
    return-void
.end method

.method public setValidGeoInfo(Z)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Z

    .line 643
    return-void
.end method

.method public declared-synchronized updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 723
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/inmobi/androidsdk/impl/UserInfo;->setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 724
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->l()V

    .line 725
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->o(Ljava/lang/String;)V

    .line 727
    if-eqz p2, :cond_0

    .line 728
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setValidGeoInfo(Z)V

    .line 729
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/IMAdRequest;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 731
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/IMAdRequest;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/Location;)V

    .line 732
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setValidGeoInfo(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 734
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->k()V

    .line 735
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 741
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
