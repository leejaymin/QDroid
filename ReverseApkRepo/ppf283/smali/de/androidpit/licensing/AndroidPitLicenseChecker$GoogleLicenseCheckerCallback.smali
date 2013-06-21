.class Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "AndroidPitLicenseChecker.java"

# interfaces
.implements Lcom/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/androidpit/licensing/AndroidPitLicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoogleLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;


# direct methods
.method constructor <init>(Lde/androidpit/licensing/AndroidPitLicenseChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 2

    .prologue
    .line 538
    const-string v0, "AndroidPitLicenseChecker"

    const-string v1, "GoogleLicenseCheckerCallback.allow() invoked."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-object v0, v0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

    invoke-interface {v0}, Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;->allow()V

    .line 542
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    iget-boolean v0, v0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAutoDestroyAfterCheck:Z

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    invoke-virtual {v0}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->onDestroy()V

    .line 546
    :cond_0
    return-void
.end method

.method public applicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 567
    const-string v0, "AndroidPitLicenseChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleLicenseCheckerCallback.applicationError() invoked; errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 569
    const-string v2, "; now checking with AndroidPIT..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    invoke-virtual {v0}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->androidPitDoCheck()V

    .line 573
    return-void
.end method

.method public dontAllow()V
    .locals 2

    .prologue
    .line 554
    const-string v0, "AndroidPitLicenseChecker"

    const-string v1, "GoogleLicenseCheckerCallback.dontAllow() invoked; now checking with AndroidPIT..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;->this$0:Lde/androidpit/licensing/AndroidPitLicenseChecker;

    invoke-virtual {v0}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->androidPitDoCheck()V

    .line 559
    return-void
.end method
