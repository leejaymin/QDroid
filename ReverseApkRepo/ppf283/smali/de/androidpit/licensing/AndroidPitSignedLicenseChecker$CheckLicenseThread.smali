.class Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;
.super Ljava/lang/Thread;
.source "AndroidPitSignedLicenseChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckLicenseThread"
.end annotation


# instance fields
.field protected mLoginDialogView:Landroid/view/View;

.field final synthetic this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;


# direct methods
.method constructor <init>(Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;)Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;
    .locals 1
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    return-object v0
.end method

.method private checkLicense()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 379
    const-string v4, "AndroidPitSignedLicenseChecker"

    const-string v5, "Checking license..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v4, v4, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitLicenseService:Lde/androidpit/app/services/ISignedLicenseService;

    if-nez v4, :cond_0

    .line 385
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_0
    sget-object v0, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_UNKNOWN:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 405
    .local v0, apLicensed:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    :try_start_1
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v4, v4, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitLicenseService:Lde/androidpit/app/services/ISignedLicenseService;

    .line 406
    iget-object v5, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v5, v5, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitPublicKey:Ljava/lang/String;

    .line 407
    iget-object v6, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v6, v6, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAppPkgName:Ljava/lang/String;

    .line 408
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v7, v7, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mValidator:Lde/androidpit/licensing/ILicensingResponseValidator;

    invoke-interface {v7}, Lde/androidpit/licensing/ILicensingResponseValidator;->getSalt()I

    move-result v7

    .line 409
    iget-object v8, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-boolean v8, v8, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mDebug:Z

    .line 405
    invoke-interface {v4, v5, v6, v7, v8}, Lde/androidpit/app/services/ISignedLicenseService;->isLicensed(Ljava/lang/String;Ljava/lang/String;IZ)Lde/androidpit/app/services/SignedResponse;

    move-result-object v3

    .line 410
    .local v3, response:Lde/androidpit/app/services/SignedResponse;
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v4, v4, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mValidator:Lde/androidpit/licensing/ILicensingResponseValidator;

    .line 411
    iget-object v5, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v5, v5, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitPublicKey:Ljava/lang/String;

    .line 410
    invoke-interface {v4, v5, v3}, Lde/androidpit/licensing/ILicensingResponseValidator;->checkResponse(Ljava/lang/String;Lde/androidpit/app/services/SignedResponse;)Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 445
    const-string v4, "AndroidPitSignedLicenseChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "License check returned "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    sget-object v4, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_NOT_AUTHENTICATED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 450
    invoke-virtual {v4, v0}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 452
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 453
    .local v2, mHandler:Landroid/os/Handler;
    new-instance v4, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;

    invoke-direct {v4, p0}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;-><init>(Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
    .end local v0           #apLicensed:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    .end local v2           #mHandler:Landroid/os/Handler;
    .end local v3           #response:Lde/androidpit/app/services/SignedResponse;
    :cond_1
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v1

    .line 391
    .local v1, ex:Ljava/lang/InterruptedException;
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v4, v4, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 393
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    .line 394
    sget-object v5, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0212:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 395
    const-string v6, "Failed waiting for binding to App Center License Service"

    .line 393
    invoke-virtual {v4, v5, v6, v1}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 417
    .end local v1           #ex:Ljava/lang/InterruptedException;
    .restart local v0       #apLicensed:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    :catch_1
    move-exception v1

    .line 421
    .local v1, ex:Ljava/lang/NullPointerException;
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v4, v4, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 423
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    .line 424
    sget-object v5, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0213:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 425
    const-string v6, "NPE while binding to App Center License Service"

    .line 423
    invoke-virtual {v4, v5, v6, v1}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 431
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 435
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v4, v4, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 437
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    .line 438
    sget-object v5, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0221:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 439
    const-string v6, "Unable to access AndroidPIT App Center to check license."

    .line 437
    invoke-virtual {v4, v5, v6, v1}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 503
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v3       #response:Lde/androidpit/app/services/SignedResponse;
    :cond_2
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v4, v4, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 505
    sget-object v4, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    invoke-virtual {v4, v0}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 507
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v4, v4, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

    invoke-interface {v4}, Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;->allow()V

    .line 521
    :goto_1
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-boolean v4, v4, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAutoDestroyAfterCheck:Z

    if-eqz v4, :cond_1

    .line 523
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    invoke-virtual {v4}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->onDestroy()V

    goto :goto_0

    .line 510
    :cond_3
    sget-object v4, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->NOT_LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    invoke-virtual {v4, v0}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 512
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v4, v4, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

    invoke-interface {v4}, Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;->dontAllow()V

    goto :goto_1

    .line 517
    :cond_4
    iget-object v4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    invoke-virtual {v4, v0, v9, v9}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    .line 555
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 557
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->mLoginDialogView:Landroid/view/View;

    .line 558
    sget v8, Lde/androidpit/licensing/R$id;->editEmailAddress:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 557
    check-cast v1, Landroid/widget/EditText;

    .line 559
    .local v1, editEmailAddress:Landroid/widget/EditText;
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->mLoginDialogView:Landroid/view/View;

    .line 560
    sget v8, Lde/androidpit/licensing/R$id;->editPassword:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 559
    check-cast v2, Landroid/widget/EditText;

    .line 561
    .local v2, editPassword:Landroid/widget/EditText;
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->mLoginDialogView:Landroid/view/View;

    .line 562
    sget v8, Lde/androidpit/licensing/R$id;->checkBoxRemember:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 561
    check-cast v0, Landroid/widget/CheckBox;

    .line 564
    .local v0, checkBoxRemember:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, emailAddress:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 566
    .local v5, password:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 568
    .local v6, remember:Z
    iput-object v9, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->mLoginDialogView:Landroid/view/View;

    .line 572
    :try_start_0
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v7, v7, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitLicenseService:Lde/androidpit/app/services/ISignedLicenseService;

    invoke-interface {v7, v3, v5, v6}, Lde/androidpit/app/services/ISignedLicenseService;->authenticate(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    invoke-direct {p0}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->checkLicense()V

    .line 601
    .end local v0           #checkBoxRemember:Landroid/widget/CheckBox;
    .end local v1           #editEmailAddress:Landroid/widget/EditText;
    .end local v2           #editPassword:Landroid/widget/EditText;
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v5           #password:Ljava/lang/String;
    .end local v6           #remember:Z
    :goto_0
    return-void

    .line 577
    .restart local v0       #checkBoxRemember:Landroid/widget/CheckBox;
    .restart local v1       #editEmailAddress:Landroid/widget/EditText;
    .restart local v2       #editPassword:Landroid/widget/EditText;
    .restart local v3       #emailAddress:Ljava/lang/String;
    .restart local v5       #password:Ljava/lang/String;
    .restart local v6       #remember:Z
    :catch_0
    move-exception v4

    .line 579
    .local v4, ex:Landroid/os/RemoteException;
    const-string v7, "AndroidPitSignedLicenseChecker"

    const-string v8, "Unable to access AndroidPIT App Center to store login information."

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 592
    .end local v0           #checkBoxRemember:Landroid/widget/CheckBox;
    .end local v1           #editEmailAddress:Landroid/widget/EditText;
    .end local v2           #editPassword:Landroid/widget/EditText;
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v4           #ex:Landroid/os/RemoteException;
    .end local v5           #password:Ljava/lang/String;
    .end local v6           #remember:Z
    :cond_0
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v7, v7, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 594
    iput-object v9, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->mLoginDialogView:Landroid/view/View;

    .line 596
    iget-object v7, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    .line 597
    sget-object v8, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_NOT_AUTHENTICATED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 596
    invoke-virtual {v7, v8, v9, v9}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 532
    monitor-enter p0

    :try_start_0
    const-string v1, "mutex"

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 534
    :try_start_1
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    .line 535
    invoke-static {p2}, Lde/androidpit/app/services/ISignedLicenseService$Stub;->asInterface(Landroid/os/IBinder;)Lde/androidpit/app/services/ISignedLicenseService;

    move-result-object v2

    .line 534
    iput-object v2, v0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitLicenseService:Lde/androidpit/app/services/ISignedLicenseService;

    .line 537
    const-string v0, "mutex"

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 532
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    monitor-exit p0

    return-void

    .line 532
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
    .line 544
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    const/4 v1, 0x0

    iput-object v1, v0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitLicenseService:Lde/androidpit/app/services/ISignedLicenseService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    monitor-exit p0

    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 351
    const-string v1, "AndroidPitSignedLicenseChecker"

    const-string v2, "Binding to App Center..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Landroid/content/Intent;

    .line 354
    const-string v1, "de.androidpit.app.services.ISignedLicenseService"

    .line 353
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, licenseIntent:Landroid/content/Intent;
    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v1, v1, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    .line 359
    const/4 v2, 0x1

    .line 356
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    invoke-direct {p0}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->checkLicense()V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    .line 366
    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_COMMUNICATING_WITH_APPCENTER_0211:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 367
    const-string v3, "Failed waiting for binding to App Center License Service"

    .line 368
    const/4 v4, 0x0

    .line 365
    invoke-virtual {v1, v2, v3, v4}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 370
    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-boolean v1, v1, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAutoDestroyAfterCheck:Z

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    invoke-virtual {v1}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->onDestroy()V

    goto :goto_0
.end method
