.class public Lexam/Network/WebService;
.super Landroid/app/Activity;
.source "WebService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method DownloadHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "addr"

    .prologue
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v2, html:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 37
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 38
    .local v1, conn:Ljava/net/HttpURLConnection;
    if-eqz v1, :cond_1

    .line 39
    const/16 v5, 0x2710

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 40
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 41
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 42
    new-instance v0, Ljava/io/BufferedReader;

    .line 43
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 42
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 45
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 49
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 51
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v4           #url:Ljava/net/URL;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 47
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #url:Ljava/net/URL;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 54
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #url:Ljava/net/URL;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v1, 0x7f030047

    invoke-virtual {p0, v1}, Lexam/Network/WebService;->setContentView(I)V

    .line 17
    const v1, 0x7f0c0052

    invoke-virtual {p0, v1}, Lexam/Network/WebService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 18
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/Network/WebService$1;

    invoke-direct {v1, p0}, Lexam/Network/WebService$1;-><init>(Lexam/Network/WebService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
