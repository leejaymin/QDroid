.class Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;
.super Ljava/lang/Thread;
.source "AndroidPitLicenseChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/androidpit/licensing/AndroidPitLicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckLicenseThread"
.end annotation


# instance fields
.field protected mLoginDialogView:Landroid/view/View;

.field final synthetic this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;


# direct methods
.method constructor <init>(Lde/androidpit/licensing/AndroidPitLicenseChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;)Lde/androidpit/licensing/AndroidPitLicenseChecker;
    .locals 1
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    return-object v0
.end method

.method private checkLicense()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 306
    const-string v3, "AndroidPitLicenseChecker"

    const-string v4, "Checking license..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v3, v3, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitLicenseService:Lde/androidpit/app/services/ILicenseService;

    if-nez v3, :cond_0

    .line 312
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :cond_0
    sget-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_UNKNOWN:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 333
    .local v0, apLicensed:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    :try_start_1
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v3, v3, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitLicenseService:Lde/androidpit/app/services/ILicenseService;

    .line 334
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v4, v4, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitPublicKey:Ljava/lang/String;

    .line 335
    iget-object v5, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v5, v5, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAppPkgName:Ljava/lang/String;

    .line 336
    iget-object v6, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-boolean v6, v6, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mDebug:Z

    .line 333
    invoke-interface {v3, v4, v5, v6}, Lde/androidpit/app/services/ILicenseService;->isLicensed(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->fromString(Ljava/lang/String;)Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 369
    const-string v3, "AndroidPitLicenseChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "License check returned "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object v3, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_NOT_AUTHENTICATED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 374
    invoke-virtual {v3, v0}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 376
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 377
    .local v2, mHandler:Landroid/os/Handler;
    new-instance v3, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread$1;

    invoke-direct {v3, p0}, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread$1;-><init>(Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    .end local v0           #apLicensed:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    .end local v2           #mHandler:Landroid/os/Handler;
    :cond_1
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v1

    .line 318
    .local v1, ex:Ljava/lang/InterruptedException;
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v3, v3, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 320
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    .line 321
    sget-object v4, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0112:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 322
    const-string v5, "Failed waiting for binding to App Center License Service"

    .line 320
    invoke-virtual {v3, v4, v5, v1}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 341
    .end local v1           #ex:Ljava/lang/InterruptedException;
    .restart local v0       #apLicensed:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    :catch_1
    move-exception v1

    .line 345
    .local v1, ex:Ljava/lang/NullPointerException;
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v3, v3, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 347
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    .line 348
    sget-object v4, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0113:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 349
    const-string v5, "NPE while binding to App Center License Service"

    .line 347
    invoke-virtual {v3, v4, v5, v1}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 355
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 359
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v3, v3, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 361
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    .line 362
    sget-object v4, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0121:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 363
    const-string v5, "Unable to access AndroidPIT App Center to check license."

    .line 361
    invoke-virtual {v3, v4, v5, v1}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 427
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v3, v3, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 429
    sget-object v3, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    invoke-virtual {v3, v0}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 431
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v3, v3, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

    invoke-interface {v3}, Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;->allow()V

    .line 445
    :goto_1
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-boolean v3, v3, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAutoDestroyAfterCheck:Z

    if-eqz v3, :cond_1

    .line 447
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    invoke-virtual {v3}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->onDestroy()V

    goto :goto_0

    .line 434
    :cond_3
    sget-object v3, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->NOT_LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    invoke-virtual {v3, v0}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 436
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v3, v3, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

    invoke-interface {v3}, Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;->dontAllow()V

    goto :goto_1

    .line 441
    :cond_4
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    invoke-virtual {v3, v0, v7, v7}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    .line 479
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 481
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->mLoginDialogView:Landroid/view/View;

    .line 482
    sget v8, Lde/androidpit/licensing/R$id;->editEmailAddress:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 481
    check-cast v1, Landroid/widget/EditText;

    .line 483
    .local v1, editEmailAddress:Landroid/widget/EditText;
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->mLoginDialogView:Landroid/view/View;

    .line 484
    sget v8, Lde/androidpit/licensing/R$id;->editPassword:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 483
    check-cast v2, Landroid/widget/EditText;

    .line 485
    .local v2, editPassword:Landroid/widget/EditText;
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->mLoginDialogView:Landroid/view/View;

    .line 486
    sget v8, Lde/androidpit/licensing/R$id;->checkBoxRemember:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 485
    check-cast v0, Landroid/widget/CheckBox;

    .line 488
    .local v0, checkBoxRemember:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, emailAddress:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, password:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 492
    .local v6, remember:Z
    iput-object v9, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->mLoginDialogView:Landroid/view/View;

    .line 496
    :try_start_0
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v7, v7, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitLicenseService:Lde/androidpit/app/services/ILicenseService;

    invoke-interface {v7, v3, v5, v6}, Lde/androidpit/app/services/ILicenseService;->authenticate(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    invoke-direct {p0}, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->checkLicense()V

    .line 525
    .end local v0           #checkBoxRemember:Landroid/widget/CheckBox;
    .end local v1           #editEmailAddress:Landroid/widget/EditText;
    .end local v2           #editPassword:Landroid/widget/EditText;
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v5           #password:Ljava/lang/String;
    .end local v6           #remember:Z
    :goto_0
    return-void

    .line 501
    .restart local v0       #checkBoxRemember:Landroid/widget/CheckBox;
    .restart local v1       #editEmailAddress:Landroid/widget/EditText;
    .restart local v2       #editPassword:Landroid/widget/EditText;
    .restart local v3       #emailAddress:Ljava/lang/String;
    .restart local v5       #password:Ljava/lang/String;
    .restart local v6       #remember:Z
    :catch_0
    move-exception v4

    .line 503
    .local v4, ex:Landroid/os/RemoteException;
    const-string v7, "AndroidPitLicenseChecker"

    const-string v8, "Unable to access AndroidPIT App Center to store login information."

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 516
    .end local v0           #checkBoxRemember:Landroid/widget/CheckBox;
    .end local v1           #editEmailAddress:Landroid/widget/EditText;
    .end local v2           #editPassword:Landroid/widget/EditText;
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v4           #ex:Landroid/os/RemoteException;
    .end local v5           #password:Ljava/lang/String;
    .end local v6           #remember:Z
    :cond_0
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v7, v7, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 518
    iput-object v9, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->mLoginDialogView:Landroid/view/View;

    .line 520
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    .line 521
    sget-object v8, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_NOT_AUTHENTICATED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 520
    invoke-virtual {v7, v8, v9, v9}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    const-string v1, "mutex"

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 458
    :try_start_1
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    .line 459
    invoke-static {p2}, Lde/androidpit/app/services/ILicenseService$Stub;->asInterface(Landroid/os/IBinder;)Lde/androidpit/app/services/ILicenseService;

    move-result-object v2

    .line 458
    iput-object v2, v0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitLicenseService:Lde/androidpit/app/services/ILicenseService;

    .line 461
    const-string v0, "mutex"

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 456
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    monitor-exit p0

    return-void

    .line 456
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    const/4 v1, 0x0

    iput-object v1, v0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitLicenseService:Lde/androidpit/app/services/ILicenseService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 279
    const-string v1, "AndroidPitLicenseChecker"

    const-string v2, "Binding to App Center..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "de.androidpit.app.services.ILicenseService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, licenseIntent:Landroid/content/Intent;
    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v1, v1, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mContext:Landroid/content/Context;

    .line 286
    const/4 v2, 0x1

    .line 283
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-direct {p0}, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->checkLicense()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    .line 293
    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0111:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 294
    const-string v3, "Failed waiting for binding to App Center License Service"

    .line 295
    const/4 v4, 0x0

    .line 292
    invoke-virtual {v1, v2, v3, v4}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 297
    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-boolean v1, v1, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAutoDestroyAfterCheck:Z

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    invoke-virtual {v1}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->onDestroy()V

    goto :goto_0
.end method
