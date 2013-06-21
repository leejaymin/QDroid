.class Lcom/samsung/zirconia/LicenseRetriever;
.super Ljava/lang/Object;
.source "LicenseRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;
    }
.end annotation


# instance fields
.field private applicationID:Ljava/lang/String;

.field private deviceIMEI:Ljava/lang/String;

.field private deviceIMSI:Ljava/lang/String;

.field private deviceMIN:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private errorCode:I

.field private executableFilePath:Ljava/lang/String;

.field private httpURL:Ljava/net/URL;

.field private httpUrlConnection:Ljava/net/HttpURLConnection;

.field private licenseFilePath:Ljava/lang/String;

.field private numRedirects:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 243
    invoke-static {}, Lcom/samsung/zirconia/LicenseRetriever;->disableSSLCertificateChecking()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "deviceIMEI"
    .parameter "applicationID"
    .parameter "deviceIMSI"
    .parameter "deviceModel"
    .parameter "deviceMIN"
    .parameter "licenseFilePath"
    .parameter "executableFilePath"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    .line 25
    iput-object p1, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceIMEI:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/samsung/zirconia/LicenseRetriever;->applicationID:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceIMSI:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceModel:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceMIN:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/samsung/zirconia/LicenseRetriever;->licenseFilePath:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/samsung/zirconia/LicenseRetriever;->executableFilePath:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    iput-object v1, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpURL:Ljava/net/URL;

    .line 197
    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 199
    :cond_0
    iput-object v1, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    .line 200
    return-void
.end method

.method private static disableSSLCertificateChecking()V
    .locals 5

    .prologue
    .line 207
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/zirconia/LicenseRetriever$1;

    invoke-direct {v4}, Lcom/samsung/zirconia/LicenseRetriever$1;-><init>()V

    aput-object v4, v2, v3

    .line 224
    .local v2, trustAllCerts:[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 226
    .local v1, sc:Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 228
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .end local v1           #sc:Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/security/KeyManagementException;
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v0           #e:Ljava/security/KeyManagementException;
    :catch_1
    move-exception v0

    .line 232
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private makeParameter()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 69
    const-string v2, "%02d%03d"

    new-array v3, v7, [Ljava/lang/Object;

    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x78

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 69
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, versionString:Ljava/lang/String;
    const-string v2, "deviceid=%s&applicationid=%s&subscriberid=%s&model=%s&min=%s&version=%s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    iget-object v4, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceIMEI:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/zirconia/LicenseRetriever;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/samsung/zirconia/LicenseRetriever;->applicationID:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/zirconia/LicenseRetriever;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 73
    iget-object v4, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceIMSI:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/zirconia/LicenseRetriever;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceModel:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/zirconia/LicenseRetriever;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->deviceMIN:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/zirconia/LicenseRetriever;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-direct {p0, v1}, Lcom/samsung/zirconia/LicenseRetriever;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 71
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, parameterString:Ljava/lang/String;
    return-object v0
.end method

.method private open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    const-string v0, "https://zirconia.samsungapps.com:443/chkLicense.as"

    .line 84
    .local v0, urlString:Ljava/lang/String;
    const-string v1, "POST"

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->makeParameter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    iput v3, p0, Lcom/samsung/zirconia/LicenseRetriever;->numRedirects:I

    .line 91
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpURL:Ljava/net/URL;

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    .line 93
    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 94
    return-void
.end method

.method private receiveResponse()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;
        }
    .end annotation

    .prologue
    const/16 v13, 0xc

    const/16 v12, 0xb

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 147
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    iget-object v9, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 148
    .local v2, dataInputStream:Ljava/io/DataInputStream;
    const/16 v8, 0x200

    new-array v0, v8, [B

    .line 150
    .local v0, buffer:[B
    array-length v8, v0

    invoke-virtual {v2, v0, v10, v8}, Ljava/io/DataInputStream;->read([BII)I

    .line 155
    new-array v1, v13, [B

    .line 156
    .local v1, bufferHeader:[B
    invoke-static {v0, v10, v1, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    .line 162
    .local v5, licenseResponseHeader:Ljava/lang/String;
    const-string v8, "ZrO2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 163
    const/16 v8, 0x47

    iput v8, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    .line 164
    new-instance v8, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;

    invoke-direct {v8, p0, v11}, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;-><init>(Lcom/samsung/zirconia/LicenseRetriever;Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;)V

    throw v8

    .line 169
    :cond_0
    const/16 v8, 0x9

    .line 168
    invoke-virtual {v5, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 174
    .local v6, serverResponseCode:I
    if-eq v6, v13, :cond_1

    .line 175
    iput v6, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    .line 176
    new-instance v8, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;

    invoke-direct {v8, p0, v11}, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;-><init>(Lcom/samsung/zirconia/LicenseRetriever;Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;)V

    throw v8

    .line 180
    :cond_1
    const/16 v7, 0xb

    .line 181
    .local v7, start:I
    const/16 v8, 0x28

    new-array v4, v8, [B

    .line 182
    .local v4, licenseKey:[B
    const/16 v8, 0x14

    invoke-static {v0, v7, v4, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iget-object v8, p0, Lcom/samsung/zirconia/LicenseRetriever;->licenseFilePath:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/zirconia/LicenseRetriever;->executableFilePath:Ljava/lang/String;

    invoke-static {v8, v4, v9}, Lcom/samsung/zirconia/NativeInterface;->storeLicenseKey(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3

    .line 187
    .local v3, isStored:Z
    if-nez v3, :cond_2

    .line 188
    const/16 v8, 0x51

    iput v8, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    .line 189
    new-instance v8, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;

    invoke-direct {v8, p0, v11}, Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;-><init>(Lcom/samsung/zirconia/LicenseRetriever;Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException;)V

    throw v8

    .line 192
    :cond_2
    const/16 v8, 0x32

    iput v8, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    .line 193
    return-void
.end method

.method private sendRequest()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 98
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpURL:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    iput-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    .line 100
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Acceept"

    const-string v7, "*/*"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    const-string v6, "User-agent"

    const-string v7, "ZrO2-ADR"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 105
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 108
    iget v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->numRedirects:I

    if-nez v5, :cond_0

    const-string v5, "POST"

    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->makeParameter()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, postParameterData:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 114
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 116
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 117
    .local v2, outputStream:Ljava/io/OutputStream;
    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 118
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 119
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 123
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local v3           #postParameterData:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 124
    .local v4, responseCode:I
    const/16 v5, 0x12c

    if-lt v4, v5, :cond_4

    .line 125
    const/16 v5, 0x133

    if-gt v4, v5, :cond_4

    .line 126
    const/16 v5, 0x132

    if-eq v4, v5, :cond_4

    .line 127
    const/16 v5, 0x130

    if-eq v4, v5, :cond_4

    .line 128
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 129
    .local v0, base:Ljava/net/URL;
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Location"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, loc:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 131
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpURL:Ljava/net/URL;

    .line 133
    :cond_1
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 134
    iget-object v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->httpURL:Ljava/net/URL;

    if-eqz v5, :cond_2

    .line 137
    iget v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->numRedirects:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    .line 138
    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "illegal URL redirect"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 140
    :cond_3
    iget v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->numRedirects:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/zirconia/LicenseRetriever;->numRedirects:I

    .line 141
    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->sendRequest()V

    .line 143
    .end local v0           #base:Ljava/net/URL;
    .end local v1           #loc:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 65
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public retrieveLicense()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x3e

    :try_start_0
    iput v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    .line 37
    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->open()V

    .line 38
    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->sendRequest()V

    .line 40
    const/16 v0, 0x3d

    iput v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    .line 41
    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->receiveResponse()V

    .line 42
    invoke-direct {p0}, Lcom/samsung/zirconia/LicenseRetriever;->close()V
    :try_end_0
    .catch Lcom/samsung/zirconia/LicenseRetriever$LicenseRetrieverException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    iget v0, p0, Lcom/samsung/zirconia/LicenseRetriever;->errorCode:I

    return v0

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0

    .line 44
    :catch_1
    move-exception v0

    goto :goto_0

    .line 43
    :catch_2
    move-exception v0

    goto :goto_0
.end method
