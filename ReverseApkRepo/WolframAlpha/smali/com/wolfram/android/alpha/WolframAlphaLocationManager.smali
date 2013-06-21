.class public Lcom/wolfram/android/alpha/WolframAlphaLocationManager;
.super Ljava/lang/Object;
.source "WolframAlphaLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/location/LocationListener;


# static fields
.field private static instance:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;


# instance fields
.field private DEFAULT_LOCATION_INTERVAL:I

.field private final OCCASIONAL_INTERVAL:I

.field private final OCCASIONAL_SEARCH_TIMEOUT:I

.field public final UPDATE_CONTIUOUSLY:I

.field public final UPDATE_OCCASIONALLY:I

.field public final UPDATE_ONCE:I

.field private findLocationInHandler:Z

.field private handler:Landroid/os/Handler;

.field private locationManager:Landroid/location/LocationManager;

.field private locationProviderCriteria:Landroid/location/Criteria;

.field private pauseLocationUpdates:Z

.field private updateType:I

.field useLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    invoke-direct {v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;-><init>()V

    sput-object v0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->instance:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->useLocation:Z

    .line 28
    iput-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 29
    iput-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationProviderCriteria:Landroid/location/Criteria;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->handler:Landroid/os/Handler;

    .line 33
    iput v1, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->UPDATE_CONTIUOUSLY:I

    .line 34
    iput v2, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->UPDATE_OCCASIONALLY:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->UPDATE_ONCE:I

    .line 36
    iput-boolean v2, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->findLocationInHandler:Z

    .line 38
    const v0, 0x927c0

    iput v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->OCCASIONAL_INTERVAL:I

    .line 39
    const/16 v0, 0x7530

    iput v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->OCCASIONAL_SEARCH_TIMEOUT:I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->updateType:I

    .line 45
    iput v2, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->DEFAULT_LOCATION_INTERVAL:I

    .line 49
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationProviderCriteria:Landroid/location/Criteria;

    .line 50
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationProviderCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 51
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationProviderCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 52
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationProviderCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 53
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationProviderCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/wolfram/android/alpha/WolframAlphaLocationManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->instance:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    return-object v0
.end method

.method private requestLocationUpdates(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationProviderCriteria:Landroid/location/Criteria;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, provider:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x2710

    const/high16 v4, 0x4120

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getDefaultLocationInterval()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->DEFAULT_LOCATION_INTERVAL:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 7

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, loc:Landroid/location/Location;
    iget-boolean v4, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->useLocation:Z

    if-eqz v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v4}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    .line 112
    .local v2, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v5, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationProviderCriteria:Landroid/location/Criteria;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, provider:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 114
    iget-object v4, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 115
    if-nez v0, :cond_1

    .line 116
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 117
    .local v3, reverseIter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    iget-object v5, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationManager:Landroid/location/LocationManager;

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 125
    .end local v1           #provider:Ljava/lang/String;
    .end local v2           #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #reverseIter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method

.method public getUpdateType()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->updateType:I

    return v0
.end method

.method public initialize(Landroid/location/LocationManager;)V
    .locals 0
    .parameter "locationManager"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 84
    return-void
.end method

.method public isLocationEnabled()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->useLocation:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 166
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 169
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->updateType:I

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->requestLocationUpdates(Z)V

    .line 171
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 174
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->updateType:I

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->requestLocationUpdates(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 179
    return-void
.end method

.method public pauseLocationUpdates()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->pauseLocationUpdates:Z

    .line 183
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->updateType:I

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->requestLocationUpdates(Z)V

    .line 185
    :cond_0
    return-void
.end method

.method public resumeLocationUpdates()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->pauseLocationUpdates:Z

    .line 189
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->updateType:I

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->requestLocationUpdates(Z)V

    .line 191
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 149
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->updateType:I

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->findLocationInHandler:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->pauseLocationUpdates:Z

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0, v1}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->requestLocationUpdates(Z)V

    .line 154
    iput-boolean v2, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->findLocationInHandler:Z

    .line 155
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0, v2}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->requestLocationUpdates(Z)V

    .line 159
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->updateType:I

    if-ne v0, v1, :cond_2

    .line 160
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->findLocationInHandler:Z

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->handler:Landroid/os/Handler;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setLocationEnabled(Z)V
    .locals 2
    .parameter "useLocation"

    .prologue
    const/4 v1, 0x1

    .line 93
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->useLocation:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 94
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->updateType:I

    if-nez v0, :cond_1

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->requestLocationUpdates(Z)V

    .line 96
    invoke-direct {p0, v1}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->requestLocationUpdates(Z)V

    .line 101
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->useLocation:Z

    .line 102
    return-void

    .line 99
    :cond_1
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->findLocationInHandler:Z

    goto :goto_0
.end method

.method public setUpdateType(I)V
    .locals 3
    .parameter "updateType"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->updateType:I

    if-eq v0, p1, :cond_0

    .line 58
    iput p1, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->updateType:I

    .line 60
    if-nez p1, :cond_1

    .line 61
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->findLocationInHandler:Z

    .line 62
    invoke-direct {p0, v1}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->requestLocationUpdates(Z)V

    .line 63
    invoke-direct {p0, v2}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->requestLocationUpdates(Z)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->pauseLocationUpdates:Z

    .line 68
    iput-boolean v2, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->findLocationInHandler:Z

    .line 69
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->run()V

    goto :goto_0
.end method

.method public startLocationUpdates()V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->updateType:I

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->requestLocationUpdates(Z)V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->run()V

    goto :goto_0
.end method
