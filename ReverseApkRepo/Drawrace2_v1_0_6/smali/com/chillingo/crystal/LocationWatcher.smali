.class public Lcom/chillingo/crystal/LocationWatcher;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field _locMan:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/chillingo/crystal/LocationWatcher;->_locMan:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/PrivateSession;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public startUpdating()V
    .locals 6

    const-string v1, "gps"

    iget-object v0, p0, Lcom/chillingo/crystal/LocationWatcher;->_locMan:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "network"

    iget-object v0, p0, Lcom/chillingo/crystal/LocationWatcher;->_locMan:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/LocationWatcher;->_locMan:Landroid/location/LocationManager;

    const-wide/32 v2, 0x1d4c0

    const/high16 v4, 0x447a

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    iget-object v2, p0, Lcom/chillingo/crystal/LocationWatcher;->_locMan:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/PrivateSession;->setLocation(Landroid/location/Location;)V

    :cond_1
    return-void
.end method

.method public stopUpdating()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/LocationWatcher;->_locMan:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
