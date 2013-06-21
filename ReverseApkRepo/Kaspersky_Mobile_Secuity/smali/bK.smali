.class public final LbK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# instance fields
.field private a:LbL;

.field private b:LbH;


# direct methods
.method constructor <init>(LbH;Landroid/location/LocationManager;LbL;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, LbK;->b:LbH;

    .line 26
    iput-object p1, p0, LbK;->b:LbH;

    .line 27
    iput-object p3, p0, LbK;->a:LbL;

    .line 29
    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, LbK;->a:LbL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LbL;->a(Z)V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, LbK;->a:LbL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LbL;->a(Z)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, LbK;->b:LbH;

    invoke-virtual {v0, p1}, LbH;->a(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, LbK;->b:LbH;

    invoke-virtual {v0}, LbH;->c()V

    .line 84
    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 92
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, LbK;->a:LbL;

    invoke-virtual {v0, v1}, LbL;->a(Z)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, LbK;->a:LbL;

    invoke-virtual {v0, v1}, LbL;->b(Z)V

    goto :goto_0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 105
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, LbK;->a:LbL;

    invoke-virtual {v0, v1}, LbL;->a(Z)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, LbK;->a:LbL;

    invoke-virtual {v0, v1}, LbL;->b(Z)V

    goto :goto_0
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    const-string v2, "gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    iget-object v2, p0, LbK;->a:LbL;

    if-ne p2, v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, LbL;->a(Z)V

    .line 147
    :cond_0
    :goto_1
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "passive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 133
    goto :goto_0

    .line 134
    :cond_3
    const-string v2, "network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, LbK;->a:LbL;

    if-ne p2, v3, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, LbL;->b(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
