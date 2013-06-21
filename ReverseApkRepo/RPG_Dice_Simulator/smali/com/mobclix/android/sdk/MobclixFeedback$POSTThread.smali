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

.field params:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "u"
    .parameter "p"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->url:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->params:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 87
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 92
    const/4 v6, 0x0

    .line 93
    .local v6, ostream:Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .line 95
    .local v3, con:Ljava/net/HttpURLConnection;
    :cond_0
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v9}, Lcom/mobclix/android/sdk/Mobclix;->isRemoteConfigSet()I

    move-result v9

    if-ne v9, v10, :cond_0

    .line 97
    :try_start_0
    new-instance v8, Ljava/net/URL;

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->url:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 98
    .local v8, u:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 102
    const-string v9, "POST"

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 103
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 104
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 107
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 108
    .end local v6           #ostream:Ljava/io/DataOutputStream;
    .local v7, ostream:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->params:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    .line 113
    .local v5, is:Ljava/io/InputStream;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v1, buf:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, c:I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_3

    .line 118
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    if-eqz v7, :cond_1

    .line 125
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 126
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    move-object v6, v7

    .line 132
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #c:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #ostream:Ljava/io/DataOutputStream;
    .end local v8           #u:Ljava/net/URL;
    .restart local v6       #ostream:Ljava/io/DataOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 116
    .end local v6           #ostream:Ljava/io/DataOutputStream;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    .restart local v2       #c:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #ostream:Ljava/io/DataOutputStream;
    .restart local v8       #u:Ljava/net/URL;
    :cond_3
    int-to-char v9, v2

    :try_start_3
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 120
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #c:I
    .end local v5           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v9

    move-object v6, v7

    .line 123
    .end local v7           #ostream:Ljava/io/DataOutputStream;
    .end local v8           #u:Ljava/net/URL;
    .restart local v6       #ostream:Ljava/io/DataOutputStream;
    :goto_2
    if-eqz v6, :cond_2

    .line 125
    :try_start_4
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 126
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 127
    :catch_1
    move-exception v9

    move-object v4, v9

    .local v4, e:Ljava/io/IOException;
    goto :goto_1

    .line 122
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 123
    :goto_3
    if-eqz v6, :cond_4

    .line 125
    :try_start_5
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 126
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 129
    :cond_4
    throw v9

    .line 127
    :catch_2
    move-exception v9

    move-object v4, v9

    .restart local v4       #e:Ljava/io/IOException;
    goto :goto_1

    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #ostream:Ljava/io/DataOutputStream;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    .restart local v2       #c:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #ostream:Ljava/io/DataOutputStream;
    .restart local v8       #u:Ljava/net/URL;
    :catch_3
    move-exception v9

    move-object v4, v9

    .restart local v4       #e:Ljava/io/IOException;
    move-object v6, v7

    .end local v7           #ostream:Ljava/io/DataOutputStream;
    .restart local v6       #ostream:Ljava/io/DataOutputStream;
    goto :goto_1

    .line 122
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #c:I
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #ostream:Ljava/io/DataOutputStream;
    .restart local v7       #ostream:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #ostream:Ljava/io/DataOutputStream;
    .restart local v6       #ostream:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 120
    .end local v8           #u:Ljava/net/URL;
    :catch_4
    move-exception v9

    goto :goto_2
.end method
