.class Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationSensor.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/simple/runtime/components/android/LocationSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;


# direct methods
.method private constructor <init>(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;Lcom/google/devtools/simple/runtime/components/android/LocationSensor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;-><init>(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7
    .parameter "location"

    .prologue
    const/4 v3, 0x1

    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    #setter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->lastLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$002(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;Landroid/location/Location;)Landroid/location/Location;

    .line 73
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    #setter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->longitude:D
    invoke-static {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$102(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;D)D

    .line 74
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    #setter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->latitude:D
    invoke-static {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$202(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;D)D

    .line 77
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    #setter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->hasAltitude:Z
    invoke-static {v0, v3}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$302(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;Z)Z

    .line 79
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    #setter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->altitude:D
    invoke-static {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$402(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;D)D

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    #setter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->hasLocationData:Z
    invoke-static {v0, v3}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$502(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;Z)Z

    .line 82
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->latitude:D
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$200(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->longitude:D
    invoke-static {v3}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$100(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)D

    move-result-wide v3

    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->altitude:D
    invoke-static {v5}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$400(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)D

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->LocationChanged(DDD)V

    .line 83
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    const-string v1, "Disabled"

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    #calls: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->stopListening()V
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$600(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)V

    .line 89
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->enabled:Z
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$700(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->RefreshProvider()V

    .line 92
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    const-string v1, "Enabled"

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->RefreshProvider()V

    .line 98
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 102
    packed-switch p2, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    const-string v1, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    const-string v1, "OUT_OF_SERVICE"

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$800(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    #calls: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->stopListening()V
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$600(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)V

    .line 114
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->RefreshProvider()V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    const-string v1, "AVAILABLE"

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->StatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->providerName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$800(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->allProviders:Ljava/util/List;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->access$900(Lcom/google/devtools/simple/runtime/components/android/LocationSensor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LocationSensor$MyLocationListener;->this$0:Lcom/google/devtools/simple/runtime/components/android/LocationSensor;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/LocationSensor;->RefreshProvider()V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
