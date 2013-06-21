.class final Lcom/mobclix/android/sdk/cn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/mobclix/android/sdk/e;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/mobclix/android/sdk/cc;

.field e:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cn;->a:Lcom/mobclix/android/sdk/e;

    iput-object p1, p0, Lcom/mobclix/android/sdk/cn;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobclix/android/sdk/cn;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobclix/android/sdk/cn;->e:Landroid/app/Activity;

    iput-object v1, p0, Lcom/mobclix/android/sdk/cn;->d:Lcom/mobclix/android/sdk/cc;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/cn;->d:Lcom/mobclix/android/sdk/cc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cn;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cn;->e:Landroid/app/Activity;

    new-instance v1, Lcom/mobclix/android/sdk/cp;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/cp;-><init>(Lcom/mobclix/android/sdk/cn;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/mobclix/android/sdk/cn;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/cn;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/mobclix/android/sdk/cn;->d:Lcom/mobclix/android/sdk/cc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobclix/android/sdk/cn;->e:Landroid/app/Activity;

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/mobclix/android/sdk/cn;->e:Landroid/app/Activity;

    new-instance v3, Lcom/mobclix/android/sdk/co;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/co;-><init>(Lcom/mobclix/android/sdk/cn;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/mobclix/android/sdk/cn;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_2
    :try_start_5
    invoke-direct {p0}, Lcom/mobclix/android/sdk/cn;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_4
    throw v0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method
