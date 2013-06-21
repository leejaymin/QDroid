.class Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;
.super Ljava/lang/Thread;
.source "GoogleLoginServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->getCredentials(Landroid/app/Activity;ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$promptUser:Z

.field final synthetic val$requestCode:I

.field final synthetic val$requestExtras:Landroid/os/Bundle;

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Landroid/os/Handler;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

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
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v8, "YouTubeUser"

    .line 322
    const/4 v4, 0x0

    .line 323
    .local v4, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v1, b:Landroid/os/Bundle;
    :try_start_0
    new-instance v5, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .local v5, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    const/4 v7, 0x0

    .line 330
    .local v7, requiresGoogleTemp:Z
    :try_start_1
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$100()Ljava/lang/String;

    move-result-object v9

    if-ne v8, v9, :cond_3

    .line 331
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, account:Ljava/lang/String;
    :goto_0
    move v6, v7

    .line 340
    .local v6, requiresGoogle:Z
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$promptUser:Z

    if-nez v9, :cond_5

    move v9, v11

    :goto_1
    invoke-virtual {v5, v0, v8, v9}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v2

    .line 357
    .local v2, credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    const-string v8, "callerExtras"

    iget-object v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 358
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 364
    const-string v8, "authtoken"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v8, "authAccount"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v8, "youtube"

    iget-object v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 369
    const-string v8, "YouTubeUser"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v9

    const-string v10, "YouTubeUser"

    invoke-virtual {v5, v9, v10}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v10, -0x1

    iget v11, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    #calls: Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v8, v9, v10, v11, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 448
    if-eqz v5, :cond_1

    .line 449
    invoke-virtual {v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_1
    move-object v4, v5

    .end local v0           #account:Ljava/lang/String;
    .end local v2           #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .end local v6           #requiresGoogle:Z
    .end local v7           #requiresGoogleTemp:Z
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_2
    :goto_2
    return-void

    .line 332
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v7       #requiresGoogleTemp:Z
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$200()Ljava/lang/String;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 333
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v0

    .line 334
    .restart local v0       #account:Ljava/lang/String;
    const/4 v7, 0x1

    goto :goto_0

    .line 336
    .end local v0           #account:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    .restart local v0       #account:Ljava/lang/String;
    goto :goto_0

    .restart local v6       #requiresGoogle:Z
    :cond_5
    move v9, v10

    .line 340
    goto :goto_1

    .line 382
    .restart local v2       #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 388
    iget-boolean v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$promptUser:Z

    if-eqz v8, :cond_8

    .line 394
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v9, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;

    invoke-direct {v9, p0, v2, v6}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;-><init>(Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;Lcom/google/android/googleapps/GoogleLoginCredentialsResult;Z)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 448
    if-eqz v5, :cond_7

    .line 449
    invoke-virtual {v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_7
    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_2

    .line 428
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_8
    :try_start_3
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v10, -0x1

    iget v11, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    #calls: Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v8, v9, v10, v11, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 448
    if-eqz v5, :cond_9

    .line 449
    invoke-virtual {v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_9
    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_2

    .line 438
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_a
    :try_start_4
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Malformed credentialsResult from helper.getCredentials()"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 441
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    .end local v6           #requiresGoogle:Z
    :catch_0
    move-exception v8

    move-object v3, v8

    move-object v4, v5

    .line 442
    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .end local v7           #requiresGoogleTemp:Z
    .local v3, e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :goto_3
    :try_start_5
    const-string v8, "errorCode"

    invoke-virtual {v3}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;->getErrorCode()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    #calls: Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v8, v9, v10, v11, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 448
    if-eqz v4, :cond_2

    .line 449
    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_2

    .line 448
    .end local v3           #e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v4, :cond_b

    .line 449
    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_b
    throw v8

    .line 448
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v7       #requiresGoogleTemp:Z
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_4

    .line 441
    .end local v7           #requiresGoogleTemp:Z
    :catch_1
    move-exception v8

    move-object v3, v8

    goto :goto_3
.end method
