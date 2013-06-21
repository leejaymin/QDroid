.class final LbI;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:LbH;

.field private synthetic b:LbH;


# direct methods
.method constructor <init>(LbH;LbH;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, LbI;->b:LbH;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, LbI;->a:LbH;

    .line 276
    iput-object p2, p0, LbI;->a:LbH;

    .line 277
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 280
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 282
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v1, v8}, LbL;->a(Landroid/content/Context;Z)LbL;

    move-result-object v1

    .line 283
    invoke-static {}, LbL;->a()V

    .line 284
    invoke-static {}, LbL;->b()V

    .line 287
    iget-object v2, p0, LbI;->b:LbH;

    invoke-static {v2}, LbH;->a(LbH;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 288
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 289
    iget-object v2, p0, LbI;->b:LbH;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v2, v3}, LbH;->a(LbH;Landroid/os/Looper;)Landroid/os/Looper;

    .line 290
    new-instance v5, LbK;

    iget-object v2, p0, LbI;->a:LbH;

    invoke-direct {v5, v2, v0, v1}, LbK;-><init>(LbH;Landroid/location/LocationManager;LbL;)V

    .line 291
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :try_start_1
    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v6, p0, LbI;->b:LbH;

    invoke-static {v6}, LbH;->b(LbH;)Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v7

    .line 301
    :goto_0
    :try_start_2
    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v6, p0, LbI;->b:LbH;

    invoke-static {v6}, LbH;->b(LbH;)Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move v1, v7

    .line 307
    :goto_1
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    if-eqz v1, :cond_0

    .line 310
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 312
    :cond_0
    iget-object v1, p0, LbI;->b:LbH;

    invoke-static {v1}, LbH;->a(LbH;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 313
    :try_start_4
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 314
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 315
    iget-object v0, p0, LbI;->b:LbH;

    const/4 v2, 0x0

    invoke-static {v0, v2}, LbH;->a(LbH;Landroid/os/Looper;)Landroid/os/Looper;

    .line 316
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 317
    iget-object v0, p0, LbI;->b:LbH;

    invoke-static {v0}, LbH;->c(LbH;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 318
    iget-object v0, p0, LbI;->b:LbH;

    invoke-static {v0}, LbH;->d(LbH;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 319
    :try_start_5
    iget-object v0, p0, LbI;->b:LbH;

    invoke-static {v0}, LbH;->d(LbH;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 320
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    .line 297
    :catch_0
    move-exception v1

    .line 298
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 304
    :catch_1
    move-exception v1

    .line 305
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v1, v8

    goto :goto_1

    .line 316
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 320
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method
