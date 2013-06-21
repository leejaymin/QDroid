.class public Lcom/fleapapa/util/MyGPS;
.super Ljava/lang/Object;
.source "MyGPS.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final PROVIDER_NAME_GPS:Ljava/lang/String; = "gps"

.field private static final PROVIDER_NAME_NET:Ljava/lang/String; = "network"

.field private static final WHO:Ljava/lang/String; = "MyGPS"


# instance fields
.field gpsUpdated:Z

.field lm:Landroid/location/LocationManager;

.field private loc:Landroid/location/Location;

.field tpoll:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/fleapapa/util/MyGPS;->lm:Landroid/location/LocationManager;

    .line 21
    iget-object v0, p0, Lcom/fleapapa/util/MyGPS;->lm:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/fleapapa/util/MyGPS;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0x36ee80

    const/high16 v4, 0x42c8

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "MyGPS: no LocationManager!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public finalize()V
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/fleapapa/util/MyGPS;->lm:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/fleapapa/util/MyGPS;->lm:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 61
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyGPS.finalize: Throwable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loc()Landroid/location/Location;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const-string v10, ","

    const-string v8, "gps"

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 31
    .local v1, now:J
    iget-wide v4, p0, Lcom/fleapapa/util/MyGPS;->tpoll:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/fleapapa/util/MyGPS;->tpoll:J

    sub-long v4, v1, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 32
    iget-object v4, p0, Lcom/fleapapa/util/MyGPS;->loc:Landroid/location/Location;

    .line 55
    :goto_0
    return-object v4

    .line 33
    :cond_0
    iput-wide v1, p0, Lcom/fleapapa/util/MyGPS;->tpoll:J

    .line 34
    iget-object v4, p0, Lcom/fleapapa/util/MyGPS;->lm:Landroid/location/LocationManager;

    const-string v5, "gps"

    invoke-virtual {v4, v8}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    iput-object v4, p0, Lcom/fleapapa/util/MyGPS;->loc:Landroid/location/Location;

    .line 35
    iget-object v4, p0, Lcom/fleapapa/util/MyGPS;->loc:Landroid/location/Location;

    if-nez v4, :cond_1

    .line 39
    iget-object v4, p0, Lcom/fleapapa/util/MyGPS;->lm:Landroid/location/LocationManager;

    const-string v5, "network"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    iput-object v4, p0, Lcom/fleapapa/util/MyGPS;->loc:Landroid/location/Location;

    .line 40
    iget-object v4, p0, Lcom/fleapapa/util/MyGPS;->loc:Landroid/location/Location;

    if-nez v4, :cond_1

    .line 41
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v5, "MyGPS: getLastKnownLocation(network/gps) all fail!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v4, Landroid/location/Location;

    const-string v5, "gps"

    invoke-direct {v4, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fleapapa/util/MyGPS;->loc:Landroid/location/Location;

    .line 44
    const-string v4, "gps"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, lstr:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 46
    const-string v4, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, s:[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 48
    iget-object v4, p0, Lcom/fleapapa/util/MyGPS;->loc:Landroid/location/Location;

    aget-object v5, v3, v9

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 49
    iget-object v4, p0, Lcom/fleapapa/util/MyGPS;->loc:Landroid/location/Location;

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 54
    .end local v0           #lstr:Ljava/lang/String;
    .end local v3           #s:[Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MyGPS.poll: gps="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/fleapapa/util/MyGPS;->loc:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fleapapa/util/MyGPS;->loc:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v4, p0, Lcom/fleapapa/util/MyGPS;->loc:Landroid/location/Location;

    goto/16 :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter "loc"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fleapapa/util/MyGPS;->gpsUpdated:Z

    .line 78
    :cond_0
    sget-boolean v0, Lcom/fleapapa/util/My;->isMove:Z

    if-nez v0, :cond_2

    .line 79
    iput-object p1, p0, Lcom/fleapapa/util/MyGPS;->loc:Landroid/location/Location;

    .line 80
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyGPS.onLocationChanged: location="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/fleapapa/util/MyGPS;->gpsUpdated:Z

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fleapapa/util/MyGPS;->gpsUpdated:Z

    goto :goto_0

    .line 83
    :cond_2
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "MyGPS.onLocationChanged: gps was manually overridden!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 91
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyGPS.onProviderDisabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 88
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyGPS.onProviderEnabled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "extras"

    .prologue
    .line 86
    return-void
.end method
