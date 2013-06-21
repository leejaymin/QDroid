.class final Lcom/mobclix/android/sdk/ch;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Timer;

.field b:Landroid/location/LocationManager;

.field c:Lcom/mobclix/android/sdk/cl;

.field d:Z

.field e:Z

.field f:Landroid/location/LocationListener;

.field g:Landroid/location/LocationListener;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/ch;->d:Z

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/ch;->e:Z

    new-instance v0, Lcom/mobclix/android/sdk/ci;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/ci;-><init>(Lcom/mobclix/android/sdk/ch;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ch;->f:Landroid/location/LocationListener;

    new-instance v0, Lcom/mobclix/android/sdk/cj;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/cj;-><init>(Lcom/mobclix/android/sdk/ch;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ch;->g:Landroid/location/LocationListener;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lcom/mobclix/android/sdk/cl;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ch;->a:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/mobclix/android/sdk/ch;->c:Lcom/mobclix/android/sdk/cl;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ch;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/ch;->d:Z

    :goto_1
    const-string v0, "network"

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ch;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/ch;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/ch;->d:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/ch;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/ch;->d:Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/ch;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/ck;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/ck;-><init>(Lcom/mobclix/android/sdk/ch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v3

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move v1, v3

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    move v0, v3

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_1

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_1
.end method
