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

.field private I:Ljava/lang/String;

.field private J:Lcom/inmobi/androidsdk/IMAdRequest;

.field private K:Ljava/lang/String;

.field private L:Ljava/util/Random;

.field private M:Ljava/lang/String;

.field private N:I

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

    .line 92
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

    .line 82
    iput-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Landroid/content/Context;

    .line 94
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->L:Ljava/util/Random;

    .line 95
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 832
    if-eqz p1, :cond_0

    .line 833
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setValidGeoInfo(Z)V

    .line 834
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(D)V

    .line 835
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(D)V

    .line 836
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->c(D)V

    .line 837
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(J)V

    .line 839
    :cond_0
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized i()V
    .locals 4

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    .line 753
    const-string v1, "location"

    .line 752
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 751
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/LocationManager;)V

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 756
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    .line 757
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 760
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v2

    .line 761
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 760
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 762
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 770
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 771
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 776
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 777
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 778
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastBestKnownLocation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 778
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_2
    if-nez v0, :cond_3

    .line 784
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->j()Landroid/location/Location;

    move-result-object v0

    .line 785
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 786
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastKnownLocation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_3
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 764
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v2

    .line 766
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 765
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 763
    if-nez v2, :cond_1

    .line 767
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    :try_start_2
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 795
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Error getting the Location Info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()Landroid/location/Location;
    .locals 5

    .prologue
    .line 802
    .line 803
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 805
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    .line 806
    const-string v1, "location"

    .line 805
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 804
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/LocationManager;)V

    .line 808
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 809
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b()Landroid/location/LocationManager;

    move-result-object v2

    .line 810
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 817
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_3

    .line 827
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0

    .line 818
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 819
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 820
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 821
    if-nez v0, :cond_2

    .line 817
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    .line 844
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 843
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 845
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v1

    .line 847
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 846
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 848
    if-eqz v0, :cond_0

    .line 849
    if-eqz v1, :cond_0

    .line 850
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Z)V

    .line 854
    :goto_0
    return-void

    .line 852
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

    .line 857
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 859
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->h(Ljava/lang/String;)V

    .line 861
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->i(Ljava/lang/String;)V

    .line 862
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->j(Ljava/lang/String;)V

    .line 865
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 864
    :goto_1
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->k(Ljava/lang/String;)V

    .line 867
    invoke-static {}, Lcom/inmobi/androidsdk/impl/b;->b()J

    move-result-wide v3

    .line 868
    invoke-static {}, Lcom/inmobi/androidsdk/impl/b;->c()J

    move-result-wide v5

    .line 869
    const-string v0, "InBuilt:"

    .line 870
    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-lez v1, :cond_0

    .line 871
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

    .line 873
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ",Ext:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 875
    invoke-static {v5, v6}, Lcom/inmobi/androidsdk/impl/b;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 874
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 877
    :cond_1
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->m(Ljava/lang/String;)V

    .line 879
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "os.name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 880
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 881
    const-string v3, "os.version"

    .line 880
    invoke-virtual {v1, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 882
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "(Android:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 884
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->n(Ljava/lang/String;)V

    .line 888
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 889
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 891
    sub-long v0, v4, v0

    .line 890
    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 892
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 893
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setDeviceBTHW(Ljava/lang/String;)V

    .line 896
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 897
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 898
    if-eqz v3, :cond_e

    .line 899
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 901
    if-eqz v1, :cond_3

    .line 902
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

    .line 916
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->g(Ljava/lang/String;)V

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    const-string v1, "InMobi_androidwebsdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    const-string v1, "3.5.4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceSystemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    const-string v1, "; HW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDeviceMachineHW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->l(Ljava/lang/String;)V

    .line 936
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    .line 937
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 939
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 938
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 941
    if-eqz v3, :cond_4

    .line 942
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Ljava/lang/String;)V

    .line 943
    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Ljava/lang/String;)V

    .line 949
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x80

    .line 948
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 958
    if-eqz v1, :cond_15

    .line 959
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 960
    if-eqz v0, :cond_5

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 961
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 964
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 965
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 974
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->e(Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->L:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(I)V

    .line 978
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRandomKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->getUIDMap(Lcom/inmobi/androidsdk/IMAdRequest;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->f(Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Landroid/content/Context;

    if-eqz v0, :cond_8

    .line 980
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Landroid/content/Context;)V

    .line 984
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Landroid/content/Context;

    .line 985
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 984
    if-nez v0, :cond_a

    .line 987
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    .line 988
    const-string v1, "connectivity"

    .line 987
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 986
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 989
    if-eqz v0, :cond_a

    .line 991
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 993
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 994
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 995
    if-ne v1, v9, :cond_f

    .line 996
    const-string v0, "wifi"

    .line 1009
    :cond_9
    :goto_5
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1020
    :cond_a
    :goto_6
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1021
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1022
    if-ne v0, v10, :cond_13

    .line 1023
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setOrientation(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1034
    :cond_b
    :goto_7
    return-void

    .line 863
    :cond_c
    const-string v0, "BASE"

    goto/16 :goto_0

    .line 866
    :cond_d
    const-string v0, "1.0"

    goto/16 :goto_1

    .line 905
    :cond_e
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 906
    const-string v1, "user.language"

    .line 905
    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 907
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 908
    const-string v4, "user.region"

    .line 907
    invoke-virtual {v1, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 909
    if-eqz v0, :cond_16

    if-eqz v1, :cond_16

    .line 910
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

    .line 912
    :goto_8
    if-nez v0, :cond_3

    .line 913
    const-string v0, "en"

    goto/16 :goto_2

    .line 997
    :cond_f
    if-nez v1, :cond_14

    .line 998
    :try_start_3
    const-string v0, "carrier"

    .line 999
    if-ne v3, v9, :cond_10

    .line 1000
    const-string v0, "gprs"

    goto :goto_5

    .line 1001
    :cond_10
    if-ne v3, v10, :cond_11

    .line 1002
    const-string v0, "edge"

    goto :goto_5

    .line 1003
    :cond_11
    if-ne v3, v11, :cond_12

    .line 1004
    const-string v0, "umts"

    goto :goto_5

    .line 1005
    :cond_12
    if-nez v3, :cond_9

    .line 1006
    const-string v0, "carrier"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 1014
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Error getting the network info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1024
    :cond_13
    if-ne v0, v9, :cond_b

    .line 1025
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setOrientation(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    .line 1027
    :catch_1
    move-exception v0

    .line 1028
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 1029
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 1030
    const-string v2, "Error getting the orientation info"

    .line 1029
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 967
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
    .line 1038
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->K:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1041
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1042
    const-string v1, "android_id"

    .line 1040
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->K:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1048
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->K:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1051
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1052
    const-string v1, "android_id"

    .line 1050
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->K:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1062
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->K:Ljava/lang/String;

    return-object v0

    .line 1057
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1046
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Landroid/content/Context;

    return-object v0
.end method

.method a(D)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:D

    .line 599
    return-void
.end method

.method a(I)V
    .locals 1
    .parameter

    .prologue
    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->i:Ljava/lang/String;

    .line 205
    return-void
.end method

.method a(J)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:J

    .line 659
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->B:Landroid/content/Context;

    .line 110
    return-void
.end method

.method declared-synchronized a(Landroid/location/LocationManager;)V
    .locals 1
    .parameter

    .prologue
    .line 542
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->t:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->c:Ljava/lang/String;

    .line 125
    return-void
.end method

.method a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z

    .line 569
    return-void
.end method

.method declared-synchronized b()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 534
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
    .line 613
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:D

    .line 614
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->M:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 216
    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    const-string v1, "A_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->M:Ljava/lang/String;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->M:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 221
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->M:Ljava/lang/String;

    .line 222
    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    const-string v1, "A_ID"

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->M:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->d:Ljava/lang/String;

    .line 140
    return-void
.end method

.method b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->b:Z

    .line 584
    return-void
.end method

.method c(D)V
    .locals 0
    .parameter

    .prologue
    .line 628
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:D

    .line 629
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->e:Ljava/lang/String;

    .line 163
    return-void
.end method

.method c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 673
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Z

    .line 674
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->isLocationInquiryAllowed()Z

    move-result v0

    .line 552
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
    .line 177
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->f:Ljava/lang/String;

    .line 178
    return-void
.end method

.method d()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->a:Z

    return v0
.end method

.method e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->g:Ljava/lang/String;

    .line 200
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->b:Z

    return v0
.end method

.method f()J
    .locals 2

    .prologue
    .line 650
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->y:J

    return-wide v0
.end method

.method f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->j:Ljava/lang/String;

    .line 209
    return-void
.end method

.method g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->k:Ljava/lang/String;

    .line 250
    return-void
.end method

.method g()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->z:Z

    return v0
.end method

.method public getAdUnitSlot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getAge()I

    move-result v0

    .line 517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->M:Ljava/lang/String;

    return-object v0
.end method

.method public getAppBId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    .line 418
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

    .line 425
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdRequest;->getDateOfBirth()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 429
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdRequest;->getDateOfBirth()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 431
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

    .line 432
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 433
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_0
    return-object v0
.end method

.method public getDeviceBTHW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMachineHW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceStorageSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSystemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getEducation()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getEducation()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEthnicity()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getEthnicity()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    move-result-object v0

    .line 497
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGender()Lcom/inmobi/androidsdk/IMAdRequest$GenderType;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getGender()Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncome()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getIncome()I

    move-result v0

    .line 477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getInterests()Ljava/lang/String;

    move-result-object v0

    .line 527
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getKeywords()Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 590
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->u:D

    return-wide v0
.end method

.method public getLocAccuracy()D
    .locals 2

    .prologue
    .line 620
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->w:D

    return-wide v0
.end method

.method public getLocalization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWithCityStateCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 605
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->v:D

    return-wide v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->N:I

    return v0
.end method

.method public getPhoneDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 706
    const-string v0, ""

    .line 708
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRandomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1128
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
    .line 318
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRsakeyVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenDensity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->H:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getSearchString()Ljava/lang/String;

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getTestModeAdActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getUIDMapEncrypted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    const-string v0, "inmobi_androidsdk=3.5.4"

    return-object v0
.end method

.method h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->l:Ljava/lang/String;

    .line 265
    return-void
.end method

.method i(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->m:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->isTestMode()Z

    move-result v0

    .line 683
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidGeoInfo()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Z

    return v0
.end method

.method j(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->n:Ljava/lang/String;

    .line 295
    return-void
.end method

.method k(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->o:Ljava/lang/String;

    .line 310
    return-void
.end method

.method l(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    return-void
.end method

.method m(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->p:Ljava/lang/String;

    .line 351
    return-void
.end method

.method n(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->q:Ljava/lang/String;

    .line 366
    return-void
.end method

.method o(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->s:Ljava/lang/String;

    .line 398
    return-void
.end method

.method p(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->A:Ljava/lang/String;

    .line 699
    return-void
.end method

.method public setAdUnitSlot(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->F:Ljava/lang/String;

    .line 1145
    return-void
.end method

.method public setDeviceBTHW(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->r:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->J:Lcom/inmobi/androidsdk/IMAdRequest;

    .line 148
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter

    .prologue
    .line 1183
    iput p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->N:I

    .line 1184
    return-void
.end method

.method public setPhoneDefaultUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->C:Ljava/lang/String;

    .line 1137
    return-void
.end method

.method public setRefTagKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->D:Ljava/lang/String;

    .line 1125
    return-void
.end method

.method public setRefTagValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->E:Ljava/lang/String;

    .line 1133
    return-void
.end method

.method public setScreenDensity(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->I:Ljava/lang/String;

    .line 1169
    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->H:Ljava/lang/String;

    .line 1161
    return-void
.end method

.method public setSlotId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->G:Ljava/lang/String;

    .line 1153
    return-void
.end method

.method public setValidGeoInfo(Z)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/UserInfo;->x:Z

    .line 644
    return-void
.end method

.method public declared-synchronized updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 724
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/inmobi/androidsdk/impl/UserInfo;->setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 725
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->l()V

    .line 726
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->o(Ljava/lang/String;)V

    .line 728
    if-eqz p2, :cond_0

    .line 729
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setValidGeoInfo(Z)V

    .line 730
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/IMAdRequest;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 732
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/IMAdRequest;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->a(Landroid/location/Location;)V

    .line 733
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setValidGeoInfo(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 735
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->k()V

    .line 736
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 742
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->b(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
