.class Lcom/ui/LapseIt/upload/UploadLoginView$4;
.super Ljava/lang/Object;
.source "UploadLoginView.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/upload/UploadLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadLoginView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadLoginView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$4;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 248
    const-string v0, "trace"

    const-string v1, "Canceled facebook"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$4;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadLoginView$4;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/ui/LapseIt/upload/UploadLoginView;->dialog:Landroid/app/ProgressDialog;

    .line 225
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$4;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v0, v0, Lcom/ui/LapseIt/upload/UploadLoginView;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Logging in with your Facebook account"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$4;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v0, v0, Lcom/ui/LapseIt/upload/UploadLoginView;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 228
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$4;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v0, v0, Lcom/ui/LapseIt/upload/UploadLoginView;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 229
    const-string v0, "trace"

    const-string v1, "completed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$4;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    const-string v1, "facebook_access_token"

    sget-object v2, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$4;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    const-string v1, "facebook_access_expires"

    sget-object v2, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$4;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->facebookLogin:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$3(Lcom/ui/LapseIt/upload/UploadLoginView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 234
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 243
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 238
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method
