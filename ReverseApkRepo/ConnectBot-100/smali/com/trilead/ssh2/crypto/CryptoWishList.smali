.class public Lcom/trilead/ssh2/crypto/CryptoWishList;
.super Ljava/lang/Object;
.source "CryptoWishList.java"


# instance fields
.field public c2s_enc_algos:[Ljava/lang/String;

.field public c2s_mac_algos:[Ljava/lang/String;

.field public kexAlgorithms:[Ljava/lang/String;

.field public s2c_enc_algos:[Ljava/lang/String;

.field public s2c_mac_algos:[Ljava/lang/String;

.field public serverHostKeyAlgorithms:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/trilead/ssh2/transport/KexManager;->getDefaultKexAlgorithmList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->kexAlgorithms:[Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/trilead/ssh2/transport/KexManager;->getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMacList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMacList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;

    .line 15
    return-void
.end method
