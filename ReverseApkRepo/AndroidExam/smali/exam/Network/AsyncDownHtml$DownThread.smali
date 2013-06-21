.class Lexam/Network/AsyncDownHtml$DownThread;
.super Ljava/lang/Thread;
.source "AsyncDownHtml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Network/AsyncDownHtml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownThread"
.end annotation


# instance fields
.field mAddr:Ljava/lang/String;

.field mResult:Ljava/lang/String;

.field final synthetic this$0:Lexam/Network/AsyncDownHtml;


# direct methods
.method constructor <init>(Lexam/Network/AsyncDownHtml;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "addr"

    .prologue
    .line 35
    iput-object p1, p0, Lexam/Network/AsyncDownHtml$DownThread;->this$0:Lexam/Network/AsyncDownHtml;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    iput-object p2, p0, Lexam/Network/AsyncDownHtml$DownThread;->mAddr:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lexam/Network/AsyncDownHtml$DownThread;->mResult:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v2, html:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lexam/Network/AsyncDownHtml$DownThread;->mAddr:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 45
    .local v1, conn:Ljava/net/HttpURLConnection;
    if-eqz v1, :cond_1

    .line 46
    const/16 v5, 0x2710

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 47
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 48
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 49
    new-instance v0, Ljava/io/BufferedReader;

    .line 50
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 49
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 56
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lexam/Network/AsyncDownHtml$DownThread;->mResult:Ljava/lang/String;

    .line 59
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v4           #url:Ljava/net/URL;
    :cond_1
    :goto_1
    iget-object v5, p0, Lexam/Network/AsyncDownHtml$DownThread;->this$0:Lexam/Network/AsyncDownHtml;

    iget-object v5, v5, Lexam/Network/AsyncDownHtml;->mAfterDown:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    return-void

    .line 54
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

    .line 62
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #url:Ljava/net/URL;
    :catch_0
    move-exception v5

    goto :goto_1
.end method
