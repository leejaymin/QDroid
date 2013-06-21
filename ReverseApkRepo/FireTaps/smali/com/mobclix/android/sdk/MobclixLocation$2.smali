.class Lcom/mobclix/android/sdk/MobclixLocation$2;
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
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixLocation$2;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$2;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 58
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$2;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->locationResult:Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;

    invoke-virtual {v0, p1}, Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    .line 59
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$2;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 60
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixLocation$2;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixLocation$2;->this$0:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 61
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 62
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 63
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 64
    return-void
.end method
