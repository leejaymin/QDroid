.class public Lcom/fleapapa/helper/Flea$FakeX509;
.super Ljava/lang/Object;
.source "Flea.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/Flea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FakeX509"
.end annotation


# static fields
.field private static final _AcceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private static final trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1089
    new-array v0, v2, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lcom/fleapapa/helper/Flea$FakeX509;->_AcceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 1090
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/fleapapa/helper/Flea$FakeX509;

    invoke-direct {v1}, Lcom/fleapapa/helper/Flea$FakeX509;-><init>()V

    aput-object v1, v0, v2

    sput-object v0, Lcom/fleapapa/helper/Flea$FakeX509;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 1088
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectSSL(Ljava/net/InetSocketAddress;)Ljavax/net/ssl/SSLSocket;
    .locals 6
    .parameter "sa"

    .prologue
    const/4 v5, 0x0

    .line 1105
    new-instance v2, Lcom/fleapapa/helper/Flea$FakeX509$1;

    invoke-direct {v2}, Lcom/fleapapa/helper/Flea$FakeX509$1;-><init>()V

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 1112
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 1113
    .local v1, sctx:Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    sget-object v3, Lcom/fleapapa/helper/Flea$FakeX509;->trustManagers:[Ljavax/net/ssl/TrustManager;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1114
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V

    .line 1115
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 1116
    const/16 v4, 0x1bb

    .line 1115
    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    .line 1120
    .end local v1           #sctx:Ljavax/net/ssl/SSLContext;
    :goto_0
    return-object v2

    .line 1118
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1119
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FleaconnectSSL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 1120
    goto :goto_0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1092
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1094
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 1102
    sget-object v0, Lcom/fleapapa/helper/Flea$FakeX509;->_AcceptedIssuers:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public isClientTrusted([Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .parameter "chain"

    .prologue
    .line 1096
    const/4 v0, 0x1

    return v0
.end method

.method public isServerTrusted([Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .parameter "chain"

    .prologue
    .line 1099
    const/4 v0, 0x1

    return v0
.end method
