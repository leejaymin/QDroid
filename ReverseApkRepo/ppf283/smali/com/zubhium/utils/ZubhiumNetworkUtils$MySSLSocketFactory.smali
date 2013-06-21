.class Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "ZubhiumNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zubhium/utils/ZubhiumNetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MySSLSocketFactory"
.end annotation


# instance fields
.field sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 5
    .parameter "truststore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 331
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 328
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 333
    new-instance v0, Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory$1;

    invoke-direct {v0, p0}, Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory$1;-><init>(Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;)V

    .line 351
    .local v0, tm:Ljavax/net/ssl/TrustManager;
    iget-object v1, p0, Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 352
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method