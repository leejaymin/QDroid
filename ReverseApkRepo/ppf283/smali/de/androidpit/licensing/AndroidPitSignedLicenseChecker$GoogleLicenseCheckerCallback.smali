.class Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "AndroidPitSignedLicenseChecker.java"

# interfaces
.implements Lcom/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoogleLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;


# direct methods
.method constructor <init>(Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 2

    .prologue
    .line 614
    const-string v0, "AndroidPitSignedLicenseChecker"

    const-string v1, "GoogleLicenseCheckerCallback.allow() invoked."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-object v0, v0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

    invoke-interface {v0}, Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;->allow()V

    .line 618
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    iget-boolean v0, v0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAutoDestroyAfterCheck:Z

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    invoke-virtual {v0}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->onDestroy()V

    .line 622
    :cond_0
    return-void
.end method

.method public applicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 643
    const-string v0, "AndroidPitSignedLicenseChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleLicenseCheckerCallback.applicationError() invoked; errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 645
    const-string v2, "; now checking with AndroidPIT..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    invoke-virtual {v0}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->androidPitDoCheck()V

    .line 649
    return-void
.end method

.method public dontAllow()V
    .locals 2

    .prologue
    .line 630
    const-string v0, "AndroidPitSignedLicenseChecker"

    const-string v1, "GoogleLicenseCheckerCallback.dontAllow() invoked; now checking with AndroidPIT..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;->this$0:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;

    invoke-virtual {v0}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->androidPitDoCheck()V

    .line 635
    return-void
.end method
