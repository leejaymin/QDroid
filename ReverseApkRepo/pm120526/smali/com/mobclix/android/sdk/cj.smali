.class final Lcom/mobclix/android/sdk/cj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/ch;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/ch;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/cj;->a:Lcom/mobclix/android/sdk/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cj;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ch;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cj;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ch;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/cj;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ch;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/mobclix/android/sdk/cj;->a:Lcom/mobclix/android/sdk/ch;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/ch;->a:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cj;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ch;->c:Lcom/mobclix/android/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/mobclix/android/sdk/cl;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/cj;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/cj;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cj;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ch;->f:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
