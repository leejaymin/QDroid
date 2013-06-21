.class final Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;
.super Ljava/lang/Object;
.source "GoogleLoginServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

.field final synthetic val$credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;


# direct methods
.method constructor <init>(Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;Lcom/google/android/googleapps/GoogleLoginCredentialsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iput-object p2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->val$credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->val$credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    invoke-virtual {v1}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 309
    .local v0, credentialsIntent:Landroid/content/Intent;
    const-string v1, "callerExtras"

    iget-object v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget-object v2, v2, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget-object v1, v1, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget v2, v2, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 318
    return-void
.end method
