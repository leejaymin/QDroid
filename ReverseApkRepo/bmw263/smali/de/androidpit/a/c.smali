.class final Lde/androidpit/a/c;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/ServiceConnection;


# instance fields
.field protected a:Landroid/view/View;

.field final synthetic b:Lde/androidpit/a/b;


# direct methods
.method constructor <init>(Lde/androidpit/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lde/androidpit/a/c;)Lde/androidpit/a/b;
    .locals 1
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v0, v0, Lde/androidpit/a/b;->f:Lde/androidpit/app/services/a;

    if-nez v0, :cond_0

    .line 311
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    sget-object v0, Lde/androidpit/a/a;->s:Lde/androidpit/a/a;

    .line 332
    :try_start_1
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v0, v0, Lde/androidpit/a/b;->f:Lde/androidpit/app/services/a;

    .line 333
    iget-object v1, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v1, v1, Lde/androidpit/a/b;->d:Ljava/lang/String;

    .line 334
    iget-object v2, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v2, v2, Lde/androidpit/a/b;->c:Ljava/lang/String;

    .line 335
    iget-object v3, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-boolean v3, v3, Lde/androidpit/a/b;->h:Z

    .line 332
    invoke-interface {v0, v1, v2, v3}, Lde/androidpit/app/services/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/androidpit/a/a;->a(Ljava/lang/String;)Lde/androidpit/a/a;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 372
    sget-object v1, Lde/androidpit/a/a;->f:Lde/androidpit/a/a;

    .line 373
    invoke-virtual {v1, v0}, Lde/androidpit/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 376
    new-instance v1, Lde/androidpit/a/d;

    invoke-direct {v1, p0}, Lde/androidpit/a/d;-><init>(Lde/androidpit/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    :cond_1
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v0, v0, Lde/androidpit/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 319
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    .line 320
    sget-object v1, Lde/androidpit/a/a;->l:Lde/androidpit/a/a;

    .line 321
    invoke-virtual {v0, v1}, Lde/androidpit/a/b;->a(Lde/androidpit/a/a;)V

    goto :goto_0

    .line 344
    :catch_1
    move-exception v0

    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v0, v0, Lde/androidpit/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 346
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    .line 347
    sget-object v1, Lde/androidpit/a/a;->m:Lde/androidpit/a/a;

    .line 348
    invoke-virtual {v0, v1}, Lde/androidpit/a/b;->a(Lde/androidpit/a/a;)V

    goto :goto_0

    .line 358
    :catch_2
    move-exception v0

    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v0, v0, Lde/androidpit/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 360
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    .line 361
    sget-object v1, Lde/androidpit/a/a;->n:Lde/androidpit/a/a;

    .line 362
    invoke-virtual {v0, v1}, Lde/androidpit/a/b;->a(Lde/androidpit/a/a;)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v1, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v1, v1, Lde/androidpit/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 428
    sget-object v1, Lde/androidpit/a/a;->a:Lde/androidpit/a/a;

    invoke-virtual {v1, v0}, Lde/androidpit/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v0, v0, Lde/androidpit/a/b;->g:Lde/androidpit/a/f;

    invoke-interface {v0}, Lde/androidpit/a/f;->a()V

    .line 444
    :goto_1
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-boolean v0, v0, Lde/androidpit/a/b;->i:Z

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    invoke-virtual {v0}, Lde/androidpit/a/b;->b()V

    goto :goto_0

    .line 433
    :cond_3
    sget-object v1, Lde/androidpit/a/a;->b:Lde/androidpit/a/a;

    invoke-virtual {v1, v0}, Lde/androidpit/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 435
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v0, v0, Lde/androidpit/a/b;->g:Lde/androidpit/a/f;

    invoke-interface {v0}, Lde/androidpit/a/f;->b()V

    goto :goto_1

    .line 440
    :cond_4
    iget-object v1, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    invoke-virtual {v1, v0}, Lde/androidpit/a/b;->a(Lde/androidpit/a/a;)V

    goto :goto_1
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 478
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 480
    iget-object v0, p0, Lde/androidpit/a/c;->a:Landroid/view/View;

    .line 481
    sget v1, Lde/androidpit/a/h;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 480
    check-cast v0, Landroid/widget/EditText;

    .line 482
    iget-object v1, p0, Lde/androidpit/a/c;->a:Landroid/view/View;

    .line 483
    sget v2, Lde/androidpit/a/h;->c:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 482
    check-cast v1, Landroid/widget/EditText;

    .line 484
    iget-object v2, p0, Lde/androidpit/a/c;->a:Landroid/view/View;

    .line 485
    sget v3, Lde/androidpit/a/h;->a:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 484
    check-cast v2, Landroid/widget/CheckBox;

    .line 487
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 491
    iput-object v4, p0, Lde/androidpit/a/c;->a:Landroid/view/View;

    .line 495
    :try_start_0
    iget-object v3, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v3, v3, Lde/androidpit/a/b;->f:Lde/androidpit/app/services/a;

    invoke-interface {v3, v0, v1, v2}, Lde/androidpit/app/services/a;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    invoke-direct {p0}, Lde/androidpit/a/c;->a()V

    .line 523
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v0, v0, Lde/androidpit/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 516
    iput-object v4, p0, Lde/androidpit/a/c;->a:Landroid/view/View;

    .line 518
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    .line 519
    sget-object v1, Lde/androidpit/a/a;->f:Lde/androidpit/a/a;

    .line 520
    invoke-virtual {v0, v1}, Lde/androidpit/a/b;->a(Lde/androidpit/a/a;)V

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    const-string v1, "mutex"

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 457
    :try_start_1
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    .line 458
    invoke-static {p2}, Lde/androidpit/app/services/b;->a(Landroid/os/IBinder;)Lde/androidpit/app/services/a;

    move-result-object v2

    .line 457
    iput-object v2, v0, Lde/androidpit/a/b;->f:Lde/androidpit/app/services/a;

    .line 460
    const-string v0, "mutex"

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 455
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lde/androidpit/a/b;->f:Lde/androidpit/app/services/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "de.androidpit.app.services.ILicenseService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-object v1, v1, Lde/androidpit/a/b;->a:Landroid/content/Context;

    .line 285
    const/4 v2, 0x1

    .line 282
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-direct {p0}, Lde/androidpit/a/c;->a()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    .line 292
    sget-object v1, Lde/androidpit/a/a;->k:Lde/androidpit/a/a;

    .line 293
    invoke-virtual {v0, v1}, Lde/androidpit/a/b;->a(Lde/androidpit/a/a;)V

    .line 296
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    iget-boolean v0, v0, Lde/androidpit/a/b;->i:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lde/androidpit/a/c;->b:Lde/androidpit/a/b;

    invoke-virtual {v0}, Lde/androidpit/a/b;->b()V

    goto :goto_0
.end method
