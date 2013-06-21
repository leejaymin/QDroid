.class final Lcom/mobclix/android/sdk/ck;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/ch;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/ch;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/ck;->a:Lcom/mobclix/android/sdk/ch;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ck;->a:Lcom/mobclix/android/sdk/ch;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/ch;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobclix/android/sdk/ck;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/ck;->a:Lcom/mobclix/android/sdk/ch;

    iget-boolean v1, v1, Lcom/mobclix/android/sdk/ch;->e:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mobclix/android/sdk/ck;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ck;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ch;->c:Lcom/mobclix/android/sdk/cl;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/cl;->a(Landroid/location/Location;)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ck;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ch;->c:Lcom/mobclix/android/sdk/cl;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cl;->a(Landroid/location/Location;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mobclix/android/sdk/ck;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ch;->c:Lcom/mobclix/android/sdk/cl;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/cl;->a(Landroid/location/Location;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/mobclix/android/sdk/ck;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ch;->c:Lcom/mobclix/android/sdk/cl;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cl;->a(Landroid/location/Location;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/ck;->a:Lcom/mobclix/android/sdk/ch;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ch;->c:Lcom/mobclix/android/sdk/cl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cl;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method
