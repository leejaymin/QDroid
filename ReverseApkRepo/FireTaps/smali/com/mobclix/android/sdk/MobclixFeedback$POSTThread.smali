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
.field controller:Lcom/mobclix/android/sdk/Mobclix;

.field listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

.field params:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V
    .locals 1
    .parameter "u"
    .parameter "p"
    .parameter "l"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->url:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->params:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 95
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

    .line 96
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread$2;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread$2;-><init>(Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread$1;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread$1;-><init>(Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, ostream:Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .line 104
    .local v1, con:Ljava/net/HttpURLConnection;
    :cond_0
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->isRemoteConfigSet()I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 106
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    .local v6, u:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 111
    const-string v7, "POST"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 112
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 113
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 116
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 117
    .end local v3           #ostream:Ljava/io/DataOutputStream;
    .local v4, ostream:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->params:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 122
    .local v5, responseCode:I
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->onSuccess()V

    .line 127
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    if-eqz v4, :cond_4

    .line 134
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 135
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 141
    .end local v4           #ostream:Ljava/io/DataOutputStream;
    .end local v5           #responseCode:I
    .end local v6           #u:Ljava/net/URL;
    .restart local v3       #ostream:Ljava/io/DataOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 125
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

    .line 129
    .end local v5           #responseCode:I
    :catch_0
    move-exception v7

    move-object v2, v7

    move-object v3, v4

    .line 130
    .end local v4           #ostream:Ljava/io/DataOutputStream;
    .end local v6           #u:Ljava/net/URL;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #ostream:Ljava/io/DataOutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->onFailure()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    if-eqz v3, :cond_1

    .line 134
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 135
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 136
    :catch_1
    move-exception v7

    move-object v2, v7

    goto :goto_1

    .line 131
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 132
    :goto_3
    if-eqz v3, :cond_3

    .line 134
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 135
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 138
    :cond_3
    throw v7

    .line 136
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

    .line 131
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

    .line 129
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
