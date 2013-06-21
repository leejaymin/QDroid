.class Lcom/shoutem/n64635/HomeActivity$LocationListener;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shoutem/n64635/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# static fields
.field private static final TIME_DISTANCE:I = 0xea60


# instance fields
.field final synthetic this$0:Lcom/shoutem/n64635/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/shoutem/n64635/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/shoutem/n64635/HomeActivity$LocationListener;->this$0:Lcom/shoutem/n64635/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shoutem/n64635/HomeActivity;Lcom/shoutem/n64635/HomeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 646
    invoke-direct {p0, p1}, Lcom/shoutem/n64635/HomeActivity$LocationListener;-><init>(Lcom/shoutem/n64635/HomeActivity;)V

    return-void
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "provider1"
    .parameter "provider2"

    .prologue
    .line 730
    if-nez p1, :cond_1

    .line 731
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 733
    :goto_0
    return v0

    .line 731
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 733
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
    .line 682
    if-nez p2, :cond_0

    .line 684
    const/4 v10, 0x1

    .line 725
    :goto_0
    return v10

    .line 688
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 689
    .local v8, timeDelta:J
    const-wide/32 v10, 0xea60

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 690
    .local v6, isSignificantlyNewer:Z
    :goto_1
    const-wide/32 v10, -0xea60

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 691
    .local v7, isSignificantlyOlder:Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 696
    .local v4, isNewer:Z
    :goto_3
    if-eqz v6, :cond_4

    .line 697
    const/4 v10, 0x1

    goto :goto_0

    .line 689
    .end local v4           #isNewer:Z
    .end local v6           #isSignificantlyNewer:Z
    .end local v7           #isSignificantlyOlder:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 690
    .restart local v6       #isSignificantlyNewer:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 691
    .restart local v7       #isSignificantlyOlder:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 700
    .restart local v4       #isNewer:Z
    :cond_4
    if-eqz v7, :cond_5

    .line 701
    const/4 v10, 0x0

    goto :goto_0

    .line 705
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 707
    .local v0, accuracyDelta:I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 708
    .local v2, isLessAccurate:Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 709
    .local v3, isMoreAccurate:Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 712
    .local v5, isSignificantlyLessAccurate:Z
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/shoutem/n64635/HomeActivity$LocationListener;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 717
    .local v1, isFromSameProvider:Z
    if-eqz v3, :cond_9

    .line 718
    const/4 v10, 0x1

    goto :goto_0

    .line 707
    .end local v1           #isFromSameProvider:Z
    .end local v2           #isLessAccurate:Z
    .end local v3           #isMoreAccurate:Z
    .end local v5           #isSignificantlyLessAccurate:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 708
    .restart local v2       #isLessAccurate:Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 709
    .restart local v3       #isMoreAccurate:Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 719
    .restart local v1       #isFromSameProvider:Z
    .restart local v5       #isSignificantlyLessAccurate:Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 720
    const/4 v10, 0x1

    goto :goto_0

    .line 721
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 723
    const/4 v10, 0x1

    goto :goto_0

    .line 725
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter "loc"

    .prologue
    .line 654
    iget-object v1, p0, Lcom/shoutem/n64635/HomeActivity$LocationListener;->this$0:Lcom/shoutem/n64635/HomeActivity;

    iget-object v1, v1, Lcom/shoutem/n64635/HomeActivity;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, p1, v1}, Lcom/shoutem/n64635/HomeActivity$LocationListener;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/shoutem/n64635/HomeActivity$LocationListener;->this$0:Lcom/shoutem/n64635/HomeActivity;

    iput-object p1, v1, Lcom/shoutem/n64635/HomeActivity;->mLocation:Landroid/location/Location;

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/shoutem/n64635/HomeActivity$LocationListener;->this$0:Lcom/shoutem/n64635/HomeActivity;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lcom/shoutem/n64635/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 661
    .local v0, locManager:Landroid/location/LocationManager;
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 663
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 738
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 742
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 746
    return-void
.end method
