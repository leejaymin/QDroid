.class Lcom/ui/LapseIt/capture/CaptureLocation$1;
.super Ljava/lang/Object;
.source "CaptureLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/CaptureLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/CaptureLocation;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureLocation$1;->this$0:Lcom/ui/LapseIt/capture/CaptureLocation;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureLocation$1;->this$0:Lcom/ui/LapseIt/capture/CaptureLocation;

    sget-object v1, Lcom/ui/LapseIt/capture/CaptureLocation;->lastKnowLocation:Landroid/location/Location;

    invoke-virtual {v0, p1, v1}, Lcom/ui/LapseIt/capture/CaptureLocation;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sput-object p1, Lcom/ui/LapseIt/capture/CaptureLocation;->lastKnowLocation:Landroid/location/Location;

    .line 61
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using new location "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ui/LapseIt/capture/CaptureLocation;->lastKnowLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ui/LapseIt/capture/CaptureLocation;->lastKnowLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using old location "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ui/LapseIt/capture/CaptureLocation;->lastKnowLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ui/LapseIt/capture/CaptureLocation;->lastKnowLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 53
    const-string v0, "trace"

    const-string v1, "GPS Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureLocation$1;->this$0:Lcom/ui/LapseIt/capture/CaptureLocation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ui/LapseIt/capture/CaptureLocation;->isEnabled:Z

    .line 55
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 47
    const-string v0, "trace"

    const-string v1, "GPS Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureLocation$1;->this$0:Lcom/ui/LapseIt/capture/CaptureLocation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ui/LapseIt/capture/CaptureLocation;->isEnabled:Z

    .line 49
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 42
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GPS Status changed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method
