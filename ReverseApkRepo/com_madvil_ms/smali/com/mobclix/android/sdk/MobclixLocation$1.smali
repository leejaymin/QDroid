.class Lcom/mobclix/android/sdk/MobclixLocation$1;
.super Ljava/lang/Object;
.source "MobclixLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixLocation;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 82
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 83
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v0, p1}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 89
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation$1;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :goto_1
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 92
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 93
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 94
    return-void
.end method
