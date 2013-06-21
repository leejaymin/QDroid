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
    .line 117
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 122
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :goto_0
    const/4 v1, 0x0

    .local v1, net_loc:Landroid/location/Location;
    const/4 v0, 0x0

    .line 127
    .local v0, gps_loc:Landroid/location/Location;
    :try_start_1
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->gps_enabled:Z

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-boolean v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->network_enabled:Z

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 133
    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 134
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    .line 151
    :goto_1
    return-void

    .line 137
    :cond_2
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 150
    :catch_0
    move-exception v2

    goto :goto_1

    .line 141
    :cond_3
    if-eqz v0, :cond_4

    .line 142
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 145
    :cond_4
    if-eqz v1, :cond_5

    .line 146
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_1

    .line 149
    :cond_5
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixLocation$GetLastLocation;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 123
    .end local v0           #gps_loc:Landroid/location/Location;
    .end local v1           #net_loc:Landroid/location/Location;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
