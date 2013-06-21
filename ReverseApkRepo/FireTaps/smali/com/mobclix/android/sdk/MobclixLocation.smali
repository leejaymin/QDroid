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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    .line 17
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z

    .line 43
    new-instance v0, Lcom/mobclix/android/sdk/MobclixLocation$1;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/MobclixLocation$1;-><init>(Lcom/mobclix/android/sdk/MobclixLocation;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerGps:Landroid/location/LocationListener;

    .line 55
    new-instance v0, Lcom/mobclix/android/sdk/MobclixLocation$2;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/MobclixLocation$2;-><init>(Lcom/mobclix/android/sdk/MobclixLocation;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    .line 12
    return-void
.end method


# virtual methods
.method public getLocation(Landroid/content/Context;Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;)Z
    .locals 7
    .parameter "context"
    .parameter "result"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-string v6, "network"

    const-string v1, "gps"

    .line 22
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    .line 23
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 24
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    .line 27
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v5, "gps"

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v5, "network"

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    :goto_1
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z

    if-nez v0, :cond_1

    .line 32
    const/4 v0, 0x0

    .line 40
    :goto_2
    return v0

    .line 34
    :cond_1
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v5, "gps"

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 36
    :cond_2
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 38
    :cond_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    .line 39
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;-><init>(Lcom/mobclix/android/sdk/MobclixLocation;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 40
    const/4 v0, 0x1

    goto :goto_2

    .line 28
    :catch_0
    move-exception v0

    goto :goto_1

    .line 27
    :catch_1
    move-exception v0

    goto :goto_0
.end method
