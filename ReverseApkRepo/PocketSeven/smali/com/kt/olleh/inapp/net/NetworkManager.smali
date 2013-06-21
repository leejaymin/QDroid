.class public Lcom/kt/olleh/inapp/net/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kt/olleh/inapp/net/NetworkManager$GetGenHttpsConnection;
    }
.end annotation


# static fields
.field static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier; = null

.field private static final READ_TIMEOUT:I = 0x61a8

.field private static final RETRY_COUNT:I = 0x3

.field private static final SOCKET_TIMEOUT:I = 0x61a8

.field private static final TAG:Ljava/lang/String; = "NetworkManager"


# instance fields
.field private final RS_GEN_HTTPS:Ljava/lang/String;

.field private final TB_GEN_HTTPS:Ljava/lang/String;

.field private mClient:Lcom/kt/olleh/inapp/net/HttpClient;

.field private mLastError:I

.field private mLastStatus:I

.field private mRetryCount:I

.field private volatile mRun:Z

.field private mURLConnection:Ljava/net/HttpURLConnection;

.field private mhttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/kt/olleh/inapp/net/NetworkManager$1;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/net/NetworkManager$1;-><init>()V

    sput-object v0, Lcom/kt/olleh/inapp/net/NetworkManager;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x19a

    iput v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mLastStatus:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mLastError:I

    .line 36
    iput-object v1, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 37
    iput-object v1, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mhttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 38
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRun:Z

    .line 39
    const-string v0, "https://221.148.247.203:7777/INAP_GW/inap_gw/getSymKeyGen"

    iput-object v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->TB_GEN_HTTPS:Ljava/lang/String;

    .line 40
    const-string v0, "https://inapppurchase.ollehmarket.com:443/INAP_GW/inap_gw/getSymKeyGen"

    iput-object v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->RS_GEN_HTTPS:Ljava/lang/String;

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRetryCount:I

    .line 43
    iput-object v1, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mClient:Lcom/kt/olleh/inapp/net/HttpClient;

    .line 44
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRun:Z

    .line 45
    return-void
.end method

.method private static trustAllHosts()V
    .locals 5

    .prologue
    .line 274
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/kt/olleh/inapp/net/NetworkManager$2;

    invoke-direct {v4}, Lcom/kt/olleh/inapp/net/NetworkManager$2;-><init>()V

    aput-object v4, v2, v3

    .line 298
    .local v2, trustAllCerts:[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 299
    .local v1, sc:Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 301
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1           #sc:Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 207
    iput-boolean v1, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRun:Z

    .line 208
    const/16 v0, -0x12

    iput v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mLastError:I

    .line 210
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 213
    iput-object v2, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 214
    iput v1, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRetryCount:I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mhttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mhttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 220
    iput-object v2, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mhttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 221
    iput v1, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRetryCount:I

    .line 223
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mClient:Lcom/kt/olleh/inapp/net/HttpClient;

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mClient:Lcom/kt/olleh/inapp/net/HttpClient;

    .line 202
    :cond_0
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 14
    .parameter "url"

    .prologue
    .line 57
    sget-boolean v11, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "NetworkManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getData, ( url = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    const/4 v11, 0x3

    iput v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRetryCount:I

    .line 60
    const/4 v4, 0x0

    .line 62
    .local v4, httpStatusCode:I
    :goto_0
    iget v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRetryCount:I

    if-gtz v11, :cond_2

    .line 183
    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 64
    :cond_2
    sget-boolean v11, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "NetworkManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getData, ( retryCount = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRetryCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_3
    :try_start_0
    iget-boolean v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRun:Z

    if-eqz v11, :cond_a

    .line 73
    const-string v11, "getSymKeyGen"

    invoke-virtual {p1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 74
    sget-boolean v11, Lcom/kt/olleh/inapp/Config/Config;->bTBserver:Z

    if-eqz v11, :cond_6

    .line 75
    const-string p1, "https://221.148.247.203:7777/INAP_GW/inap_gw/getSymKeyGen"

    .line 79
    :goto_3
    sget-boolean v11, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v11, :cond_4

    const-string v11, "NetworkManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "http->https change::case getSymKeyGen, url="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_4
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 83
    .local v9, request:Ljava/net/URL;
    invoke-static {}, Lcom/kt/olleh/inapp/net/NetworkManager;->trustAllHosts()V

    .line 84
    sget-boolean v11, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v11, :cond_5

    const-string v11, "NetworkManager"

    const-string v12, "openConnection"

    invoke-static {v11, v12}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_5
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 86
    .local v5, https:Ljavax/net/ssl/HttpsURLConnection;
    sget-object v11, Lcom/kt/olleh/inapp/net/NetworkManager;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v5, v11}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 87
    iput-object v5, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 95
    .end local v5           #https:Ljavax/net/ssl/HttpsURLConnection;
    :goto_4
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    if-nez v11, :cond_c

    const/4 v0, 0x0

    goto :goto_2

    .line 77
    .end local v9           #request:Ljava/net/URL;
    :cond_6
    const-string p1, "https://inapppurchase.ollehmarket.com:443/INAP_GW/inap_gw/getSymKeyGen"

    goto :goto_3

    .line 89
    :cond_7
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v9       #request:Ljava/net/URL;
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 91
    sget-boolean v11, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v11, :cond_8

    const-string v11, "NetworkManager"

    const-string v12, "openConnection"

    invoke-static {v11, v12}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_8
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    iput-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 105
    .end local v9           #request:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 106
    .local v2, e:Ljava/io/IOException;
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v11, :cond_9

    .line 107
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 108
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 111
    :cond_9
    sget-boolean v11, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v11, :cond_a

    const-string v11, "NetworkManager"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v2           #e:Ljava/io/IOException;
    :cond_a
    :goto_5
    sget-boolean v11, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v11, :cond_b

    const-string v11, "NetworkManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "HTTP Status : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_b
    iget-boolean v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRun:Z

    if-nez v11, :cond_e

    .line 125
    sget-boolean v11, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "NetworkManager"

    const-string v12, "User Cancel request"

    invoke-static {v11, v12}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 97
    .restart local v9       #request:Ljava/net/URL;
    :cond_c
    :try_start_1
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    const/16 v12, 0x61a8

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 98
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    const/16 v12, 0x61a8

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 99
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v12, "Content-type"

    const-string v13, "*/*;"

    invoke-virtual {v11, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v12, "Accept"

    const-string v13, "*/*;"

    invoke-virtual {v11, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 103
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_5

    .line 112
    .end local v9           #request:Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 113
    .local v2, e:Ljava/lang/Exception;
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v11, :cond_d

    .line 114
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 115
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    .line 118
    :cond_d
    sget-boolean v11, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v11, :cond_a

    const-string v11, "NetworkManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 129
    .end local v2           #e:Ljava/lang/Exception;
    :cond_e
    iput v4, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mLastStatus:I

    .line 133
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    if-nez v11, :cond_f

    .line 134
    iget v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRetryCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRetryCount:I

    goto/16 :goto_0

    .line 142
    :cond_f
    const/16 v11, 0xc8

    if-ne v4, v11, :cond_13

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v10, sb:Ljava/lang/StringBuilder;
    :try_start_2
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 146
    .local v6, inputStream:Ljava/io/InputStream;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 147
    .local v7, isr:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v11, 0x2000

    invoke-direct {v1, v7, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 150
    .local v1, br:Ljava/io/BufferedReader;
    :goto_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, line:Ljava/lang/String;
    if-nez v8, :cond_12

    .line 155
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 156
    sget-boolean v11, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v11, :cond_10

    const-string v11, "NetworkManager"

    const-string v12, "disconnect"

    invoke-static {v11, v12}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_10
    iget-object v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, bai:Ljava/io/InputStream;
    sget-boolean v11, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v11, :cond_11

    const-string v11, "NetworkManager"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_11
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .end local v0           #bai:Ljava/io/InputStream;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "utf-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 166
    .restart local v0       #bai:Ljava/io/InputStream;
    goto/16 :goto_2

    .line 152
    .end local v0           #bai:Ljava/io/InputStream;
    :cond_12
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_6

    .line 167
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #inputStream:Ljava/io/InputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .end local v8           #line:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 168
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v11, "NetworkManager"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 169
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v3

    .line 170
    .local v3, e1:Ljava/io/IOException;
    const-string v11, "NetworkManager"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 171
    .end local v3           #e1:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 172
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "NetworkManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 177
    .end local v2           #e:Ljava/lang/Exception;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :cond_13
    const/16 v11, -0xd

    iput v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mLastError:I

    .line 178
    iget v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRetryCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mRetryCount:I

    goto/16 :goto_0
.end method

.method public getDataStandAlond(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter "api"

    .prologue
    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, xml:Ljava/lang/String;
    const-string v4, "getSymKeyGen"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 321
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason> \uacfc\uae08\ucc98\ub9ac \uc2e4\ud328 [OI1200:CP/SP \uad8c\ud55c \uccb4\ud06c\uc2dc \uc5d0\ub7ec\uac00 \ubc1c\uc0dd\ud558\uc600\uc2b5\ub2c8\ub2e4.] </reason></result><value><symmetric_key>8E0IU2955MUOEE2J</symmetric_key><seq_key>KEY0131103130171</seq_key></value></response>"

    .line 466
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 468
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #input:Ljava/io/InputStream;
    .local v2, input:Ljava/io/InputStream;
    move-object v1, v2

    .line 475
    .end local v2           #input:Ljava/io/InputStream;
    .restart local v1       #input:Ljava/io/InputStream;
    :goto_1
    return-object v1

    .line 323
    .end local v1           #input:Ljava/io/InputStream;
    :cond_1
    const-string v4, "getUseDiList"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba851</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba852</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>"

    goto :goto_0

    .line 333
    :cond_2
    const-string v4, "getBuyDiList"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 335
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba851</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba852</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>"

    goto :goto_0

    .line 343
    :cond_3
    const-string v4, "getAllDiList"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 345
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba851</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba852</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>"

    goto :goto_0

    .line 353
    :cond_4
    const-string v4, "getGiftDiList"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 355
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba851</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba852</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>"

    goto :goto_0

    .line 363
    :cond_5
    const-string v4, "getReceiveDiList"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 365
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba851</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba852</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>"

    goto :goto_0

    .line 373
    :cond_6
    const-string v4, "getDiDetail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 375
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><di_id>di20110117000000001</di_id><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba85</di_title><desc>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uc124\uba85</desc><price>200</price><use_term>20110203</use_term><use_lmt_cnt>100</use_lmt_cnt></value></response>"

    goto :goto_0

    .line 387
    :cond_7
    const-string v4, "getDownloadDiList"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 389
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba851</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>\ub514\uc9c0\ud138\uc544\uc774\ud15c\uba852</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>"

    goto :goto_0

    .line 397
    :cond_8
    const-string v4, "buyDi"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 399
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id></value></response>"

    goto :goto_0

    .line 403
    :cond_9
    const-string v4, "buyCancelDi"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 405
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id></value></response>"

    goto :goto_0

    .line 409
    :cond_a
    const-string v4, "esBuyDi"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 411
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ollehstoreSoIP><resultCode>000</resultCode><resultMessage>\uc815\uc0c1</resultMessage></ollehstoreSoIP>"

    goto :goto_0

    .line 414
    :cond_b
    const-string v4, "giftDi"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 416
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id></value></response>"

    goto/16 :goto_0

    .line 420
    :cond_c
    const-string v4, "reGiftDi"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 422
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id></value></response>"

    goto/16 :goto_0

    .line 426
    :cond_d
    const-string v4, "approvedUseDi"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 428
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id></value></response>"

    goto/16 :goto_0

    .line 432
    :cond_e
    const-string v4, "approvedDownDi"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 434
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id><file_name>testfile</file_name><mime_type>txt</mime_type></value></response>"

    goto/16 :goto_0

    .line 439
    :cond_f
    const-string v4, "getFile"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 441
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason> \uc0ac\uc6a9\uc790 \uc778\uc99d \ucc98\ub9ac \uc2e4\ud328 </reason><value><seq_key>KEY010110126347</seq_key><file2byte>UEsDBAoAAAAAAGt1hz6ZFwecEAAAABAAAAAQAAAAaW5hcEZpbGVUZXN0LnR4dGluYXBGaWxlRG93blRlc3RQSwECFAAKAAAAAABrdYc+mRcHnBAAAAAQAAAAEAAAAAAAAAAAACAAAAAAAAAAaW5hcEZpbGVUZXN0LnR4dFBLBQYAAAAAAQABAD4AAAA+AAAAAAA=</file2byte></value></result></response>"

    goto/16 :goto_0

    .line 447
    :cond_10
    const-string v4, "getFile"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 449
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code> A005</code><reason> \uc0ac\uc6a9\uc790 \uc778\uc99d \ucc98\ub9ac \uc2e4\ud328 </reason><value><seq_key>KEY010110126347</seq_key><file2byte>UEsDBAoAAAAAAGt1hz6ZFwecEAAAABAAAAAQAAAAaW5hcEZpbGVUZXN0LnR4dGluYXBGaWxlRG93blRlc3RQSwECFAAKAAAAAABrdYc+mRcHnBAAAAAQAAAAEAAAAAAAAAAAACAAAAAAAAAAaW5hcEZpbGVUZXN0LnR4dFBLBQYAAAAAAQABAD4AAAA+AAAAAAA=</file2byte></value></result></response>"

    goto/16 :goto_0

    .line 455
    :cond_11
    const-string v4, "checkShowId"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>\uc0ac\uc6a9\uc790 \uc778\uc99d \ucc98\ub9ac \uc2e4\ud328 </reason></result><value><seq_key>KEY010110126347</seq_key><show_id>ollehmarket</show_id></value></response>"

    goto/16 :goto_0

    .line 470
    .restart local v1       #input:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "NetworkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDataStandAlond() encoding error : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mLastError:I

    return v0
.end method

.method public getLastHttpCode()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/kt/olleh/inapp/net/NetworkManager;->mLastStatus:I

    return v0
.end method
