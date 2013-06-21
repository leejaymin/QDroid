.class Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;
.super Ljava/lang/Object;
.source "MobclixFeedback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "POSTThread"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

.field params:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V
    .locals 0
    .parameter "u"
    .parameter "p"
    .parameter "a"
    .parameter "l"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->url:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->params:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->activity:Landroid/app/Activity;

    .line 93
    iput-object p4, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

    .line 94
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread$2;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread$2;-><init>(Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread$1;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread$1;-><init>(Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 99
    const/4 v3, 0x0

    .line 100
    .local v3, ostream:Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .line 102
    .local v1, con:Ljava/net/HttpURLConnection;
    :cond_0
    sget-object v7, Lcom/mobclix/android/sdk/MobclixFeedback;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->isRemoteConfigSet()I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 104
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 105
    .local v6, u:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 109
    const-string v7, "POST"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 110
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 111
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 114
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 115
    .end local v3           #ostream:Ljava/io/DataOutputStream;
    .local v4, ostream:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->params:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 120
    .local v5, responseCode:I
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->onSuccess()V

    .line 125
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    if-eqz v4, :cond_4

    .line 132
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 133
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 139
    .end local v4           #ostream:Ljava/io/DataOutputStream;
    .end local v5           #responseCode:I
    .end local v6           #u:Ljava/net/URL;
    .restart local v3       #ostream:Ljava/io/DataOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 123
    .end local v3           #ostream:Ljava/io/DataOutputStream;
    .restart local v4       #ostream:Ljava/io/DataOutputStream;
    .restart local v5       #responseCode:I
    .restart local v6       #u:Ljava/net/URL;
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->onFailure()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 127
    .end local v5           #responseCode:I
    :catch_0
    move-exception v7

    move-object v2, v7

    move-object v3, v4

    .line 128
    .end local v4           #ostream:Ljava/io/DataOutputStream;
    .end local v6           #u:Ljava/net/URL;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #ostream:Ljava/io/DataOutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->onFailure()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    if-eqz v3, :cond_1

    .line 132
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 133
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 134
    :catch_1
    move-exception v7

    move-object v2, v7

    goto :goto_1

    .line 129
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 130
    :goto_3
    if-eqz v3, :cond_3

    .line 132
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 133
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 136
    :cond_3
    throw v7

    .line 134
    :catch_2
    move-exception v7

    move-object v2, v7

    .restart local v2       #e:Ljava/lang/Exception;
    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ostream:Ljava/io/DataOutputStream;
    .restart local v4       #ostream:Ljava/io/DataOutputStream;
    .restart local v5       #responseCode:I
    .restart local v6       #u:Ljava/net/URL;
    :catch_3
    move-exception v7

    move-object v2, v7

    .restart local v2       #e:Ljava/lang/Exception;
    move-object v3, v4

    .end local v4           #ostream:Ljava/io/DataOutputStream;
    .restart local v3       #ostream:Ljava/io/DataOutputStream;
    goto :goto_1

    .line 129
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ostream:Ljava/io/DataOutputStream;
    .end local v5           #responseCode:I
    .restart local v4       #ostream:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #ostream:Ljava/io/DataOutputStream;
    .restart local v3       #ostream:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 127
    .end local v6           #u:Ljava/net/URL;
    :catch_4
    move-exception v7

    move-object v2, v7

    goto :goto_2

    .end local v3           #ostream:Ljava/io/DataOutputStream;
    .restart local v4       #ostream:Ljava/io/DataOutputStream;
    .restart local v5       #responseCode:I
    .restart local v6       #u:Ljava/net/URL;
    :cond_4
    move-object v3, v4

    .end local v4           #ostream:Ljava/io/DataOutputStream;
    .restart local v3       #ostream:Ljava/io/DataOutputStream;
    goto :goto_1
.end method
