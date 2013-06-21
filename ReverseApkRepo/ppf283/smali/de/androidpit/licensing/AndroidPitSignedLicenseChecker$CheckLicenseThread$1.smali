.class Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;
.super Ljava/lang/Object;
.source "AndroidPitSignedLicenseChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->checkLicense()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;


# direct methods
.method constructor <init>(Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;->this$1:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 459
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 460
    iget-object v2, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;->this$1:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    #getter for: Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;
    invoke-static {v2}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->access$0(Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;)Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    move-result-object v2

    iget-object v2, v2, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    .line 459
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 462
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    sget v2, Lde/androidpit/licensing/R$string;->login_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 464
    iget-object v2, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;->this$1:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    .line 465
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;->this$1:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    #getter for: Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;
    invoke-static {v3}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->access$0(Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;)Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    move-result-object v3

    iget-object v3, v3, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    .line 466
    sget v4, Lde/androidpit/licensing/R$layout;->authenticate:I

    .line 467
    const/4 v5, 0x0

    .line 464
    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->mLoginDialogView:Landroid/view/View;

    .line 468
    iget-object v2, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;->this$1:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    iget-object v2, v2, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->mLoginDialogView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 471
    sget v2, Lde/androidpit/licensing/R$string;->login_button_login:I

    .line 472
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;->this$1:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    .line 470
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 474
    sget v2, Lde/androidpit/licensing/R$string;->login_button_cancel:I

    .line 475
    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;->this$1:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    .line 473
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 481
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v1

    .line 488
    .local v1, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;->this$1:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    #getter for: Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;
    invoke-static {v2}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->access$0(Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;)Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    move-result-object v2

    iget-object v2, v2, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;->this$1:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 490
    iget-object v2, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread$1;->this$1:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    #getter for: Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;
    invoke-static {v2}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->access$0(Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;)Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    move-result-object v2

    .line 491
    sget-object v3, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_NOT_AUTHENTICATED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    .line 492
    const-string v4, "Could not show login dialog; returning ERROR_NOT_AUTHENTICATED"

    .line 490
    invoke-virtual {v2, v3, v4, v1}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
