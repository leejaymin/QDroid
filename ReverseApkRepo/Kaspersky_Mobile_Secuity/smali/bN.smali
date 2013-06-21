.class final LbN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# instance fields
.field private synthetic a:LbL;


# direct methods
.method synthetic constructor <init>(LbL;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LbN;-><init>(LbL;B)V

    return-void
.end method

.method private constructor <init>(LbL;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, LbN;->a:LbL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 123
    packed-switch p1, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, LbN;->a:LbL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LbL;->a(Z)V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p0, LbN;->a:LbL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LbL;->a(Z)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 96
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, LbN;->a:LbL;

    invoke-virtual {v0, v1}, LbL;->a(Z)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, LbN;->a:LbL;

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
    iget-object v0, p0, LbN;->a:LbL;

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
    iget-object v0, p0, LbN;->a:LbL;

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

    .line 114
    const-string v2, "gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, LbN;->a:LbL;

    if-ne p2, v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, LbL;->a(Z)V

    .line 119
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    const-string v2, "network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, LbN;->a:LbL;

    if-ne p2, v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, LbL;->b(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
