.class Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$3;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->displayDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

.field final synthetic val$showRetry:Z


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$3;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iput-boolean p2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$3;->val$showRetry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$3;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-boolean v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$3;->val$showRetry:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->showDialog(I)V

    .line 366
    return-void

    .line 365
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
