.class Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$2;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRetry:Z

.field final synthetic this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

.field final synthetic val$bRetry:Z


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$2;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iput-boolean p2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$2;->val$bRetry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$2;->val$bRetry:Z

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$2;->mRetry:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 334
    iget-boolean v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$2;->mRetry:Z

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$2;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    #calls: Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->doCheck()V
    invoke-static {v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->access$200(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;)V

    .line 336
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 345
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$2;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v3, v3, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 342
    .local v0, marketIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$2;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v1, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {v1, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startActivity(Landroid/content/Intent;)V

    .line 343
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$2;->this$1:Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;

    iget-object v1, v1, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->finish()V

    goto :goto_0
.end method
