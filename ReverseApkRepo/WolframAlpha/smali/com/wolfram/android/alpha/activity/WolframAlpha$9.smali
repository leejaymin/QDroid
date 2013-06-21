.class Lcom/wolfram/android/alpha/activity/WolframAlpha$9;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V
    .locals 0
    .parameter

    .prologue
    .line 2993
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$9;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 3018
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 2997
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$9;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$1600(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2999
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$9;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook:Lcom/facebook/android/Facebook;
    invoke-static {v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$1700(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/facebook/android/Facebook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3002
    const-string v1, "access_expires"

    iget-object v2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$9;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->facebook:Lcom/facebook/android/Facebook;
    invoke-static {v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$1700(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/facebook/android/Facebook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3005
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3007
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$9;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #calls: Lcom/wolfram/android/alpha/activity/WolframAlpha;->postFeedonFacebook()V
    invoke-static {v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$1800(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V

    .line 3009
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 3015
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 3012
    return-void
.end method
