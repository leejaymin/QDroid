.class Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "LicenseCheck.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/LicenseCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;


# direct methods
.method private constructor <init>(Lcom/wolfram/android/alpha/activity/LicenseCheck;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wolfram/android/alpha/activity/LicenseCheck;Lcom/wolfram/android/alpha/activity/LicenseCheck$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;-><init>(Lcom/wolfram/android/alpha/activity/LicenseCheck;)V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setLicenseChecked(Z)V

    .line 31
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->finish()V

    goto :goto_0
.end method

.method public allow(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 72
    return-void
.end method

.method public applicationError(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 82
    return-void
.end method

.method public applicationError1(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->toast(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    #calls: Lcom/wolfram/android/alpha/activity/LicenseCheck;->startMainActivity()V
    invoke-static {v0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->access$000(Lcom/wolfram/android/alpha/activity/LicenseCheck;)V

    goto :goto_0
.end method

.method public dontAllow()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;->this$0:Lcom/wolfram/android/alpha/activity/LicenseCheck;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->showDialog(I)V

    goto :goto_0
.end method

.method public dontAllow(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 77
    return-void
.end method
