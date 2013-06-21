.class Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;
.super Ljava/util/TimerTask;
.source "MobclixLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetLastLocation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixLocation;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 70
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 71
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 73
    const/4 v1, 0x0

    .local v1, net_loc:Landroid/location/Location;
    const/4 v0, 0x0

    .line 74
    .local v0, gps_loc:Landroid/location/Location;
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 80
    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    .line 97
    :goto_0
    return-void

    .line 84
    :cond_2
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 88
    :cond_3
    if-eqz v0, :cond_4

    .line 89
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 92
    :cond_4
    if-eqz v1, :cond_5

    .line 93
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 96
    :cond_5
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_0
.end method
