.class Lcom/mobclix/android/sdk/Mobclix$1;
.super Ljava/lang/Object;
.source "Mobclix.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/Mobclix;->updateLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    const-string v2, "null"

    .line 389
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->currentLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/mobclix/android/sdk/Mobclix;->access$36(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/Location;)V

    .line 390
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->currentLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->access$37(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    const-string v1, "null"

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/mobclix/android/sdk/Mobclix;->access$38(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    const-string v1, "null"

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/mobclix/android/sdk/Mobclix;->access$39(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 398
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v1, 0x0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locationListener:Landroid/location/LocationListener;
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$41(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/LocationListener;)V

    .line 399
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->currentLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/mobclix/android/sdk/Mobclix;->access$37(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$38(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix$1;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->currentLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/mobclix/android/sdk/Mobclix;->access$37(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$39(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 400
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 401
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 403
    return-void
.end method
