.class Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory$1;
.super Ljava/lang/Object;
.source "ZubhiumNetworkUtils.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory$1;->this$1:Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 342
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 348
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return-object v0
.end method
