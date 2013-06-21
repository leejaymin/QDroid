.class final Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;
.super Ljava/lang/Thread;
.source "GoogleLoginServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->getCredentials(Landroid/app/Activity;ILandroid/os/Bundle;ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$promptUser:Z

.field final synthetic val$requestCode:I

.field final synthetic val$requestExtras:Landroid/os/Bundle;

.field final synthetic val$requireGoogle:Z

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/os/Handler;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requireGoogle:Z

    iput-object p3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$promptUser:Z

    iput-object p5, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iput p7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-string v6, "YouTubeUser"

    .line 243
    const/4 v4, 0x0

    .line 244
    .local v4, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v1, b:Landroid/os/Bundle;
    :try_start_0
    new-instance v5, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .local v5, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_1
    iget-boolean v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requireGoogle:Z

    invoke-virtual {v5, v6}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, account:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$promptUser:Z

    if-nez v7, :cond_3

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v2

    .line 268
    .local v2, credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    const-string v6, "callerExtras"

    iget-object v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 269
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 275
    const-string v6, "authtoken"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v6, "authAccount"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    const-string v7, "youtube"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    const-string v6, "YouTubeUser"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v7

    const-string v8, "YouTubeUser"

    invoke-virtual {v5, v7, v8}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v8, -0x1

    iget v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    #calls: Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v6, v7, v8, v9, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    if-eqz v5, :cond_1

    .line 346
    invoke-virtual {v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_1
    move-object v4, v5

    .end local v0           #account:Ljava/lang/String;
    .end local v2           #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_2
    :goto_1
    return-void

    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v0       #account:Ljava/lang/String;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_3
    move v7, v8

    .line 251
    goto :goto_0

    .line 293
    .restart local v2       #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 299
    iget-boolean v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$promptUser:Z

    if-eqz v6, :cond_6

    .line 305
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;

    invoke-direct {v7, p0, v2}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;-><init>(Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;Lcom/google/android/googleapps/GoogleLoginCredentialsResult;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 345
    if-eqz v5, :cond_5

    .line 346
    invoke-virtual {v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_5
    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_1

    .line 325
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_6
    :try_start_3
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v8, -0x1

    iget v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    #calls: Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v6, v7, v8, v9, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 345
    if-eqz v5, :cond_7

    .line 346
    invoke-virtual {v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_7
    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_1

    .line 335
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_8
    :try_start_4
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Malformed credentialsResult from helper.getCredentials()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 338
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :catch_0
    move-exception v6

    move-object v3, v6

    move-object v4, v5

    .line 339
    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .local v3, e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :goto_2
    :try_start_5
    const-string v6, "errorCode"

    invoke-virtual {v3}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;->getErrorCode()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    #calls: Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v6, v7, v8, v9, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 345
    if-eqz v4, :cond_2

    .line 346
    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_1

    .line 345
    .end local v3           #e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_9

    .line 346
    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_9
    throw v6

    .line 345
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_3

    .line 338
    :catch_1
    move-exception v6

    move-object v3, v6

    goto :goto_2
.end method
