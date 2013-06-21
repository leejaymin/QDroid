.class public Lcom/ui/LapseIt/capture/CaptureLocation;
.super Ljava/lang/Object;
.source "CaptureLocation.java"


# static fields
.field public static lastKnowLocation:Landroid/location/Location;


# instance fields
.field final SIGNIFICANT_TIME:J

.field isEnabled:Z

.field isListening:Z

.field locationListener:Landroid/location/LocationListener;

.field locationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/ui/LapseIt/capture/CaptureLocation;->SIGNIFICANT_TIME:J

    .line 38
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureLocation$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureLocation$1;-><init>(Lcom/ui/LapseIt/capture/CaptureLocation;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureLocation;->locationListener:Landroid/location/LocationListener;

    .line 21
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureLocation;->locationManager:Landroid/location/LocationManager;

    .line 22
    return-void
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "provider1"
    .parameter "provider2"

    .prologue
    .line 103
    if-nez p1, :cond_1

    .line 104
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .parameter "location"
    .parameter "currentBestLocation"

    .prologue
    .line 69
    if-nez p2, :cond_0

    .line 70
    const/4 v10, 0x1

    .line 99
    :goto_0
    return v10

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 74
    .local v8, timeDelta:J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 75
    .local v6, isSignificantlyNewer:Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 76
    .local v7, isSignificantlyOlder:Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 78
    .local v4, isNewer:Z
    :goto_3
    if-eqz v6, :cond_4

    .line 79
    const/4 v10, 0x1

    goto :goto_0

    .line 74
    .end local v4           #isNewer:Z
    .end local v6           #isSignificantlyNewer:Z
    .end local v7           #isSignificantlyOlder:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 75
    .restart local v6       #isSignificantlyNewer:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 76
    .restart local v7       #isSignificantlyOlder:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 80
    .restart local v4       #isNewer:Z
    :cond_4
    if-eqz v7, :cond_5

    .line 81
    const/4 v10, 0x0

    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 85
    .local v0, accuracyDelta:I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 86
    .local v2, isLessAccurate:Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 87
    .local v3, isMoreAccurate:Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 89
    .local v5, isSignificantlyLessAccurate:Z
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    .line 89
    invoke-direct {p0, v10, v11}, Lcom/ui/LapseIt/capture/CaptureLocation;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 92
    .local v1, isFromSameProvider:Z
    if-eqz v3, :cond_9

    .line 93
    const/4 v10, 0x1

    goto :goto_0

    .line 85
    .end local v1           #isFromSameProvider:Z
    .end local v2           #isLessAccurate:Z
    .end local v3           #isMoreAccurate:Z
    .end local v5           #isSignificantlyLessAccurate:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 86
    .restart local v2       #isLessAccurate:Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 87
    .restart local v3       #isMoreAccurate:Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 94
    .restart local v1       #isFromSameProvider:Z
    .restart local v5       #isSignificantlyLessAccurate:Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 95
    const/4 v10, 0x1

    goto :goto_0

    .line 96
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 97
    const/4 v10, 0x1

    goto :goto_0

    .line 99
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public startListeningLocation()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 25
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureLocation;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureLocation;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 26
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureLocation;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureLocation;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ui/LapseIt/capture/CaptureLocation;->isListening:Z

    .line 28
    return-void
.end method

.method public stopListeningLocation()V
    .locals 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/ui/LapseIt/capture/CaptureLocation;->isListening:Z

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureLocation;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureLocation;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ui/LapseIt/capture/CaptureLocation;->isListening:Z

    .line 36
    :cond_0
    return-void
.end method
