.class public Lcom/wareone/tappmt/CurrencyRunner;
.super Ljava/lang/Object;
.source "CurrencyRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_Ctx:Landroid/content/Context;

.field private m_currency:[Ljava/lang/String;

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/wareone/tappmt/CurrencyRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/CurrencyRunner;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;[Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "handler"
    .parameter "currency"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_Ctx:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_handler:Landroid/os/Handler;

    .line 44
    iput-object p3, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_currency:[Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/wareone/tappmt/PmtDbAdapter;

    iget-object v1, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_Ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 48
    return-void
.end method

.method private doQueryExchangeRate()V
    .locals 15

    .prologue
    .line 71
    sget-object v12, Lcom/wareone/tappmt/CurrencyRunner;->TAG:Ljava/lang/String;

    const-string v13, "query exchange rate"

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v12, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v12}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, currency:Ljava/lang/String;
    sget-object v12, Lcom/wareone/tappmt/CurrencyRunner;->TAG:Ljava/lang/String;

    const-string v13, "Create a new HttpClient and Post Header"

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 78
    .local v5, httpclient:Lorg/apache/http/client/HttpClient;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v12, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_currency:[Ljava/lang/String;

    array-length v12, v12

    if-lt v7, v12, :cond_0

    .line 116
    :goto_1
    return-void

    .line 79
    :cond_0
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "http://hk.finance.yahoo.com/d/quotes.csv?s="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_currency:[Ljava/lang/String;

    aget-object v13, v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "=X&f=sl1d1t1c1ohgv&e=.csv"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 83
    .local v6, httpget:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    sget-object v12, Lcom/wareone/tappmt/CurrencyRunner;->TAG:Ljava/lang/String;

    const-string v13, "Execute HTTP Get Request"

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 85
    .local v10, response:Lorg/apache/http/HttpResponse;
    sget-object v12, Lcom/wareone/tappmt/CurrencyRunner;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Response Code --> "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_1

    .line 87
    sget-object v12, Lcom/wareone/tappmt/CurrencyRunner;->TAG:Ljava/lang/String;

    const-string v13, "Read response text"

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 90
    .local v8, is:Ljava/io/InputStream;
    const/16 v12, 0x400

    new-array v3, v12, [B

    .line 92
    .local v3, data:[B
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v12, 0x400

    invoke-direct {v1, v12}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 93
    .local v1, buf:Lorg/apache/http/util/ByteArrayBuffer;
    :goto_2
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, n:I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_2

    .line 96
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 97
    .local v11, str:Ljava/lang/String;
    sget-object v12, Lcom/wareone/tappmt/CurrencyRunner;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "response text ---> "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, array:[Ljava/lang/String;
    sget-object v12, Lcom/wareone/tappmt/CurrencyRunner;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "response exchange rate ---> "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    aget-object v14, v0, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :try_start_1
    iget-object v12, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "update currency set rate="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    aget-object v14, v0, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " where "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "currency_name"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "=\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_currency:[Ljava/lang/String;

    aget-object v14, v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/wareone/tappmt/PmtDbAdapter;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3           #data:[B
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #n:I
    .end local v11           #str:Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 94
    .restart local v1       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v3       #data:[B
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #n:I
    :cond_2
    const/4 v12, 0x0

    :try_start_2
    invoke-virtual {v1, v3, v12, v9}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 106
    .end local v1           #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3           #data:[B
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #n:I
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 108
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    goto/16 :goto_1

    .line 109
    .end local v4           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v12

    move-object v4, v12

    .line 111
    .local v4, e:Ljava/io/IOException;
    goto/16 :goto_1

    .line 102
    .end local v4           #e:Ljava/io/IOException;
    .restart local v0       #array:[Ljava/lang/String;
    .restart local v1       #buf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v3       #data:[B
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #n:I
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    .restart local v11       #str:Ljava/lang/String;
    :catch_2
    move-exception v12

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    sget-object v1, Lcom/wareone/tappmt/CurrencyRunner;->TAG:Ljava/lang/String;

    const-string v2, "task thread start"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_Ctx:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 55
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    .line 58
    :cond_0
    sget-object v1, Lcom/wareone/tappmt/CurrencyRunner;->TAG:Ljava/lang/String;

    const-string v2, "open database"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 60
    invoke-direct {p0}, Lcom/wareone/tappmt/CurrencyRunner;->doQueryExchangeRate()V

    .line 61
    sget-object v1, Lcom/wareone/tappmt/CurrencyRunner;->TAG:Ljava/lang/String;

    const-string v2, "close database"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/wareone/tappmt/CurrencyRunner;->m_handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    return-void
.end method
