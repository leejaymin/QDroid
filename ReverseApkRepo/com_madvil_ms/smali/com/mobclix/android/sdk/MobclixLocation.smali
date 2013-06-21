.class Lcom/mobclix/android/sdk/MobclixLocation;
.super Ljava/lang/Object;
.source "MobclixLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;,
        Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;
    }
.end annotation


# instance fields
.field gps_enabled:Z

.field lm:Landroid/location/LocationManager;

.field locationListenerGps:Landroid/location/LocationListener;

.field locationListenerNetwork:Landroid/location/LocationListener;

.field locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

.field network_enabled:Z

.field timer1:Ljava/util/Timer;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    .line 18
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z

    .line 77
    new-instance v0, Lcom/mobclix/android/sdk/MobclixLocation$1;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/MobclixLocation$1;-><init>(Lcom/mobclix/android/sdk/MobclixLocation;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerGps:Landroid/location/LocationListener;

    .line 97
    new-instance v0, Lcom/mobclix/android/sdk/MobclixLocation$2;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/MobclixLocation$2;-><init>(Lcom/mobclix/android/sdk/MobclixLocation;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    .line 13
    return-void
.end method


# virtual methods
.method public getLocation(Landroid/content/Context;Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;)Z
    .locals 9
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 22
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    move v0, v8

    .line 59
    :goto_0
    return v0

    .line 26
    :cond_0
    :try_start_0
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    .line 27
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 28
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    move v0, v7

    .line 30
    goto :goto_0

    .line 33
    :cond_2
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixLocation;->isProviderSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    .line 37
    :goto_1
    const-string v0, "network"

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixLocation;->isProviderSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_2
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z

    if-nez v0, :cond_5

    move v0, v7

    .line 45
    goto :goto_0

    .line 36
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    goto :goto_2

    .line 40
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 48
    :cond_5
    :try_start_2
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    if-eqz v0, :cond_6

    .line 49
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 50
    :cond_6
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z

    if-eqz v0, :cond_7

    .line 51
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 55
    :cond_7
    :try_start_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    .line 56
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;-><init>(Lcom/mobclix/android/sdk/MobclixLocation;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v8

    .line 59
    goto/16 :goto_0

    .line 52
    :catch_1
    move-exception v0

    move-object v6, v0

    .local v6, e:Ljava/lang/Exception;
    move v0, v7

    goto/16 :goto_0

    .line 57
    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    move-object v6, v0

    .restart local v6       #e:Ljava/lang/Exception;
    move v0, v7

    goto/16 :goto_0
.end method

.method public isProviderSupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "in_Provider"

    .prologue
    const/4 v4, 0x0

    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 177
    .local v1, lv_List:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .end local p0
    .local v2, lv_N:I
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v3, v4

    .line 183
    .end local v1           #lv_List:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #lv_N:I
    :goto_1
    return v3

    .line 172
    .restart local p0
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Throwable;
    move v3, v4

    .line 173
    goto :goto_1

    .line 178
    .end local v0           #e:Ljava/lang/Throwable;
    .end local p0
    .restart local v1       #lv_List:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #lv_N:I
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    const/4 v3, 0x1

    goto :goto_1

    .line 177
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v1           #lv_List:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #lv_N:I
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/Exception;
    move v3, v4

    goto :goto_1
.end method

.method public stopLocation()V
    .locals 2

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 67
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerGps:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_2
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method
