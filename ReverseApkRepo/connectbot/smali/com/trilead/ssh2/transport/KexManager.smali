.class public Lcom/trilead/ssh2/transport/KexManager;
.super Ljava/lang/Object;
.source "KexManager.java"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field final accessLock:Ljava/lang/Object;

.field connectionClosed:Z

.field csh:Lcom/trilead/ssh2/transport/ClientServerHello;

.field final hostname:Ljava/lang/String;

.field ignore_next_kex_packet:Z

.field kexCount:I

.field km:Lcom/trilead/ssh2/crypto/KeyMaterial;

.field kxs:Lcom/trilead/ssh2/transport/KexState;

.field lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

.field nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

.field nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

.field final port:I

.field final rnd:Ljava/security/SecureRandom;

.field sessionId:[B

.field final tm:Lcom/trilead/ssh2/transport/TransportManager;

.field verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/trilead/ssh2/transport/KexManager;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;Lcom/trilead/ssh2/transport/ClientServerHello;Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/lang/String;ILcom/trilead/ssh2/ServerHostKeyVerifier;Ljava/security/SecureRandom;)V
    .locals 2
    .parameter "tm"
    .parameter "csh"
    .parameter "initialCwl"
    .parameter "hostname"
    .parameter "port"
    .parameter "keyVerifier"
    .parameter "rnd"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    .line 57
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/KexManager;->connectionClosed:Z

    .line 59
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    .line 74
    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 75
    iput-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    .line 76
    iput-object p3, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 77
    new-instance v0, Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {v0}, Lcom/trilead/ssh2/DHGexParameters;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 78
    iput-object p4, p0, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    .line 79
    iput p5, p0, Lcom/trilead/ssh2/transport/KexManager;->port:I

    .line 80
    iput-object p6, p0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;

    .line 81
    iput-object p7, p0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    .line 82
    return-void
.end method

.method private compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    .line 129
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 132
    :cond_1
    array-length v1, p1

    if-nez v1, :cond_3

    array-length v1, p2

    if-nez v1, :cond_3

    .line 133
    const/4 v0, 0x1

    .line 138
    :cond_2
    :goto_0
    return v0

    .line 135
    :cond_3
    array-length v1, p1

    if-eqz v1, :cond_2

    array-length v1, p2

    if-eqz v1, :cond_2

    .line 138
    aget-object v1, p1, v0

    aget-object v0, p2, v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private establishKeyMaterial()Z
    .locals 11

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/digest/MAC;->getKeyLen(Ljava/lang/String;)I

    move-result v6

    .line 257
    .local v6, mac_cs_key_len:I
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getKeySize(Ljava/lang/String;)I

    move-result v4

    .line 258
    .local v4, enc_cs_key_len:I
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getBlockSize(Ljava/lang/String;)I

    move-result v5

    .line 260
    .local v5, enc_cs_block_len:I
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/digest/MAC;->getKeyLen(Ljava/lang/String;)I

    move-result v9

    .line 261
    .local v9, mac_sc_key_len:I
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getKeySize(Ljava/lang/String;)I

    move-result v7

    .line 262
    .local v7, enc_sc_key_len:I
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getBlockSize(Ljava/lang/String;)I

    move-result v8

    .line 264
    .local v8, enc_sc_block_len:I
    const-string v0, "SHA1"

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->H:[B

    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    invoke-static/range {v0 .. v9}, Lcom/trilead/ssh2/crypto/KeyMaterial;->create(Ljava/lang/String;[BLjava/math/BigInteger;[BIIIIII)Lcom/trilead/ssh2/crypto/KeyMaterial;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    const/4 v0, 0x1

    .end local v4           #enc_cs_key_len:I
    .end local v5           #enc_cs_block_len:I
    .end local v6           #mac_cs_key_len:I
    .end local v7           #enc_sc_key_len:I
    .end local v8           #enc_sc_block_len:I
    .end local v9           #mac_sc_key_len:I
    :goto_0
    return v0

    .line 267
    :catch_0
    move-exception v10

    .line 269
    .local v10, e:Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishKex()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v5, p0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    if-nez v5, :cond_0

    .line 277
    iget-object v5, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v5, v5, Lcom/trilead/ssh2/transport/KexState;->H:[B

    iput-object v5, p0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/trilead/ssh2/transport/KexManager;->establishKeyMaterial()Z

    .line 283
    new-instance v3, Lcom/trilead/ssh2/packets/PacketNewKeys;

    invoke-direct {v3}, Lcom/trilead/ssh2/packets/PacketNewKeys;-><init>()V

    .line 284
    .local v3, ign:Lcom/trilead/ssh2/packets/PacketNewKeys;
    iget-object v5, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketNewKeys;->getPayload()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 292
    :try_start_0
    iget-object v5, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v5, v5, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v5, v5, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v7, v7, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_client_to_server:[B

    .line 293
    iget-object v8, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v8, v8, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_client_to_server:[B

    .line 292
    invoke-static {v5, v6, v7, v8}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    move-result-object v0

    .line 295
    .local v0, cbc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    new-instance v4, Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v5, v5, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v5, v5, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    iget-object v6, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v6, v6, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_client_to_server:[B

    invoke-direct {v4, v5, v6}, Lcom/trilead/ssh2/crypto/digest/MAC;-><init>(Ljava/lang/String;[B)V

    .line 297
    .local v4, mac:Lcom/trilead/ssh2/crypto/digest/MAC;
    iget-object v5, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v5, v5, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v5, v5, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    invoke-static {v5}, Lcom/trilead/ssh2/compression/CompressionFactory;->createCompressor(Ljava/lang/String;)Lcom/trilead/ssh2/compression/ICompressor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 305
    .local v1, comp:Lcom/trilead/ssh2/compression/ICompressor;
    iget-object v5, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v5, v0, v4}, Lcom/trilead/ssh2/transport/TransportManager;->changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 306
    iget-object v5, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v5, v1}, Lcom/trilead/ssh2/transport/TransportManager;->changeSendCompression(Lcom/trilead/ssh2/compression/ICompressor;)V

    .line 307
    iget-object v5, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v5}, Lcom/trilead/ssh2/transport/TransportManager;->kexFinished()V

    .line 308
    return-void

    .line 300
    .end local v0           #cbc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .end local v1           #comp:Lcom/trilead/ssh2/compression/ICompressor;
    .end local v4           #mac:Lcom/trilead/ssh2/crypto/digest/MAC;
    :catch_0
    move-exception v2

    .line 302
    .local v2, e1:Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Fatal error during MAC startup!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static final getDefaultKexAlgorithmList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 326
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "diffie-hellman-group-exchange-sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "diffie-hellman-group14-sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 327
    const-string v2, "diffie-hellman-group1-sha1"

    aput-object v2, v0, v1

    .line 326
    return-object v0
.end method

.method public static final getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ssh-rsa"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ssh-dss"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "client"
    .parameter "server"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/trilead/ssh2/transport/NegotiateException;
        }
    .end annotation

    .prologue
    .line 110
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 111
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 113
    :cond_1
    array-length v2, p1

    if-nez v2, :cond_2

    .line 114
    const/4 v2, 0x0

    .line 121
    :goto_0
    return-object v2

    .line 116
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_3

    .line 124
    new-instance v2, Lcom/trilead/ssh2/transport/NegotiateException;

    invoke-direct {v2}, Lcom/trilead/ssh2/transport/NegotiateException;-><init>()V

    throw v2

    .line 118
    :cond_3
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v2, p2

    if-lt v1, v2, :cond_4

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_4
    aget-object v2, p1, v0

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 121
    aget-object v2, p1, v0

    goto :goto_0

    .line 118
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private isGuessOK(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Z
    .locals 3
    .parameter "cpar"
    .parameter "spar"

    .prologue
    const/4 v0, 0x0

    .line 143
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 146
    :cond_1
    iget-object v1, p1, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    iget-object v2, p2, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/trilead/ssh2/transport/KexManager;->compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 162
    :cond_2
    :goto_0
    return v0

    .line 151
    :cond_3
    iget-object v1, p1, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    iget-object v2, p2, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/trilead/ssh2/transport/KexManager;->compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mergeKexParameters(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Lcom/trilead/ssh2/transport/NegotiatedParameters;
    .locals 9
    .parameter "client"
    .parameter "server"

    .prologue
    const/4 v4, 0x0

    .line 167
    new-instance v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;

    invoke-direct {v3}, Lcom/trilead/ssh2/transport/NegotiatedParameters;-><init>()V

    .line 171
    .local v3, np:Lcom/trilead/ssh2/transport/NegotiatedParameters;
    :try_start_0
    iget-object v5, p1, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    .line 173
    sget-object v5, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v6, 0x14

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "kex_algo="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 175
    iget-object v5, p1, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 176
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 175
    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    .line 178
    sget-object v5, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v6, 0x14

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "server_host_key_algo="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 180
    iget-object v5, p1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    .line 181
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    .line 180
    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    .line 182
    iget-object v5, p1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    .line 183
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    .line 182
    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    .line 185
    sget-object v5, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v6, 0x14

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "enc_algo_client_to_server="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 186
    sget-object v5, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v6, 0x14

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "enc_algo_server_to_client="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 188
    iget-object v5, p1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    .line 189
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    .line 188
    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    .line 190
    iget-object v5, p1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    .line 191
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    .line 190
    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    .line 193
    sget-object v5, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v6, 0x14

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mac_algo_client_to_server="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 194
    sget-object v5, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v6, 0x14

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mac_algo_server_to_client="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 196
    iget-object v5, p1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    .line 197
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    .line 196
    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    .line 198
    iget-object v5, p1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    .line 199
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    .line 198
    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    .line 201
    sget-object v5, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v6, 0x14

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "comp_algo_client_to_server="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 202
    sget-object v5, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v6, 0x14

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "comp_algo_server_to_client="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/trilead/ssh2/transport/NegotiateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :try_start_1
    iget-object v5, p1, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    .line 213
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    .line 212
    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_client_to_server:Ljava/lang/String;
    :try_end_1
    .catch Lcom/trilead/ssh2/transport/NegotiateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :goto_0
    :try_start_2
    iget-object v5, p1, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    .line 223
    iget-object v6, p2, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    .line 222
    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_server_to_client:Ljava/lang/String;
    :try_end_2
    .catch Lcom/trilead/ssh2/transport/NegotiateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 230
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/transport/KexManager;->isGuessOK(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->guessOK:Z

    .line 233
    .end local v3           #np:Lcom/trilead/ssh2/transport/NegotiatedParameters;
    :cond_0
    :goto_2
    return-object v3

    .line 205
    .restart local v3       #np:Lcom/trilead/ssh2/transport/NegotiatedParameters;
    :catch_0
    move-exception v0

    .local v0, e:Lcom/trilead/ssh2/transport/NegotiateException;
    move-object v3, v4

    .line 207
    goto :goto_2

    .line 215
    .end local v0           #e:Lcom/trilead/ssh2/transport/NegotiateException;
    :catch_1
    move-exception v1

    .line 217
    .local v1, e1:Lcom/trilead/ssh2/transport/NegotiateException;
    iput-object v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_client_to_server:Ljava/lang/String;

    goto :goto_0

    .line 225
    .end local v1           #e1:Lcom/trilead/ssh2/transport/NegotiateException;
    :catch_2
    move-exception v2

    .line 227
    .local v2, e2:Lcom/trilead/ssh2/transport/NegotiateException;
    iput-object v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_server_to_client:Ljava/lang/String;

    goto :goto_1
.end method

.method private verifySignature([B[B)Z
    .locals 7
    .parameter "sig"
    .parameter "hostkey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x32

    .line 349
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    const-string v5, "ssh-rsa"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    invoke-static {p1}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->decodeSSHRSASignature([B)Lcom/trilead/ssh2/signature/RSASignature;

    move-result-object v3

    .line 352
    .local v3, rs:Lcom/trilead/ssh2/signature/RSASignature;
    invoke-static {p2}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->decodeSSHRSAPublicKey([B)Lcom/trilead/ssh2/signature/RSAPublicKey;

    move-result-object v2

    .line 354
    .local v2, rpk:Lcom/trilead/ssh2/signature/RSAPublicKey;
    sget-object v4, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const-string v5, "Verifying ssh-rsa signature"

    invoke-virtual {v4, v6, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 356
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->H:[B

    invoke-static {v4, v3, v2}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->verifySignature([BLcom/trilead/ssh2/signature/RSASignature;Lcom/trilead/ssh2/signature/RSAPublicKey;)Z

    move-result v4

    .line 366
    .end local v2           #rpk:Lcom/trilead/ssh2/signature/RSAPublicKey;
    .end local v3           #rs:Lcom/trilead/ssh2/signature/RSASignature;
    :goto_0
    return v4

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    const-string v5, "ssh-dss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    invoke-static {p1}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->decodeSSHDSASignature([B)Lcom/trilead/ssh2/signature/DSASignature;

    move-result-object v1

    .line 362
    .local v1, ds:Lcom/trilead/ssh2/signature/DSASignature;
    invoke-static {p2}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->decodeSSHDSAPublicKey([B)Lcom/trilead/ssh2/signature/DSAPublicKey;

    move-result-object v0

    .line 364
    .local v0, dpk:Lcom/trilead/ssh2/signature/DSAPublicKey;
    sget-object v4, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const-string v5, "Verifying ssh-dss signature"

    invoke-virtual {v4, v6, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 366
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->H:[B

    invoke-static {v4, v1, v0}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->verifySignature([BLcom/trilead/ssh2/signature/DSASignature;Lcom/trilead/ssh2/signature/DSAPublicKey;)Z

    move-result v4

    goto :goto_0

    .line 369
    .end local v0           #dpk:Lcom/trilead/ssh2/signature/DSAPublicKey;
    .end local v1           #ds:Lcom/trilead/ssh2/signature/DSASignature;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown server host key algorithm \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v6, v6, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v6, v6, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getOrWaitForConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 3
    .parameter "minKexCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget v0, v0, Lcom/trilead/ssh2/ConnectionInfo;->keyExchangeCounter:I

    if-lt v0, p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    monitor-exit v1

    return-object v0

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/transport/KexManager;->connectionClosed:Z

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Key exchange was not finished, connection is closed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 94
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized handleMessage([BI)V
    .locals 26
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    monitor-enter p0

    if-nez p1, :cond_0

    .line 378
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 380
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/trilead/ssh2/transport/KexManager;->connectionClosed:Z

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 382
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    :goto_0
    monitor-exit p0

    return-void

    .line 378
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 376
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 386
    :cond_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_1

    .line 387
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected KEX message (type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    if-eqz v3, :cond_2

    .line 391
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    goto :goto_0

    .line 395
    :cond_2
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_d

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget v3, v3, Lcom/trilead/ssh2/transport/KexState;->state:I

    if-eqz v3, :cond_3

    .line 398
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected SSH_MSG_KEXINIT message during on-going kex exchange!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 400
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    if-nez v3, :cond_4

    .line 406
    new-instance v3, Lcom/trilead/ssh2/transport/KexState;

    invoke-direct {v3}, Lcom/trilead/ssh2/transport/KexState;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    iput-object v4, v3, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 408
    new-instance v19, Lcom/trilead/ssh2/packets/PacketKexInit;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Lcom/trilead/ssh2/packets/PacketKexInit;-><init>(Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/security/SecureRandom;)V

    .line 409
    .local v19, kip:Lcom/trilead/ssh2/packets/PacketKexInit;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 413
    .end local v19           #kip:Lcom/trilead/ssh2/packets/PacketKexInit;
    :cond_4
    new-instance v19, Lcom/trilead/ssh2/packets/PacketKexInit;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/trilead/ssh2/packets/PacketKexInit;-><init>([BII)V

    .line 414
    .restart local v19       #kip:Lcom/trilead/ssh2/packets/PacketKexInit;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/PacketKexInit;->getKexParameters()Lcom/trilead/ssh2/transport/KexParameters;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v5, v5, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/PacketKexInit;->getKexParameters()Lcom/trilead/ssh2/transport/KexParameters;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->mergeKexParameters(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Lcom/trilead/ssh2/transport/NegotiatedParameters;

    move-result-object v4

    iput-object v4, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    if-nez v3, :cond_5

    .line 419
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cannot negotiate, proposals do not match."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 421
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/PacketKexInit;->isFirst_kex_packet_follows()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-boolean v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->guessOK:Z

    if-nez v3, :cond_6

    .line 427
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    .line 430
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group-exchange-sha1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-virtual {v3}, Lcom/trilead/ssh2/DHGexParameters;->getMin_group_len()I

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/ClientServerHello;->server_versioncomment:Ljava/lang/String;

    const-string v4, "OpenSSH_2\\.([0-4]\\.|5\\.[0-2]).*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 434
    :cond_7
    new-instance v14, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {v14, v3}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;-><init>(Lcom/trilead/ssh2/DHGexParameters;)V

    .line 435
    .local v14, dhgexreq:Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v14}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 443
    .end local v14           #dhgexreq:Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    const/4 v4, 0x1

    iput v4, v3, Lcom/trilead/ssh2/transport/KexState;->state:I

    goto/16 :goto_0

    .line 440
    :cond_8
    new-instance v14, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {v14, v3}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;-><init>(Lcom/trilead/ssh2/DHGexParameters;)V

    .line 441
    .local v14, dhgexreq:Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v14}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    goto :goto_1

    .line 447
    .end local v14           #dhgexreq:Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group1-sha1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group14-sha1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 450
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    new-instance v4, Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-direct {v4}, Lcom/trilead/ssh2/crypto/dh/DhExchange;-><init>()V

    iput-object v4, v3, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group1-sha1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->init(ILjava/security/SecureRandom;)V

    .line 457
    :goto_2
    new-instance v20, Lcom/trilead/ssh2/packets/PacketKexDHInit;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->getE()Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/trilead/ssh2/packets/PacketKexDHInit;-><init>(Ljava/math/BigInteger;)V

    .line 458
    .local v20, kp:Lcom/trilead/ssh2/packets/PacketKexDHInit;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual/range {v20 .. v20}, Lcom/trilead/ssh2/packets/PacketKexDHInit;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    const/4 v4, 0x1

    iput v4, v3, Lcom/trilead/ssh2/transport/KexState;->state:I

    goto/16 :goto_0

    .line 455
    .end local v20           #kp:Lcom/trilead/ssh2/packets/PacketKexDHInit;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    const/16 v4, 0xe

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->init(ILjava/security/SecureRandom;)V

    goto :goto_2

    .line 463
    :cond_c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unkown KEX method!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 466
    .end local v19           #kip:Lcom/trilead/ssh2/packets/PacketKexInit;
    :cond_d
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_f

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    if-nez v3, :cond_e

    .line 469
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Peer sent SSH_MSG_NEWKEYS, but I have no key material ready!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 477
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    const/4 v4, 0x0

    .line 478
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v5, v5, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_server_to_client:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v6, v6, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_server_to_client:[B

    .line 477
    invoke-static {v3, v4, v5, v6}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    move-result-object v10

    .line 480
    .local v10, cbc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    new-instance v21, Lcom/trilead/ssh2/crypto/digest/MAC;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v4, v4, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_server_to_client:[B

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/trilead/ssh2/crypto/digest/MAC;-><init>(Ljava/lang/String;[B)V

    .line 482
    .local v21, mac:Lcom/trilead/ssh2/crypto/digest/MAC;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    invoke-static {v3}, Lcom/trilead/ssh2/compression/CompressionFactory;->createCompressor(Ljava/lang/String;)Lcom/trilead/ssh2/compression/ICompressor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v11

    .line 489
    .local v11, comp:Lcom/trilead/ssh2/compression/ICompressor;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object/from16 v0, v21

    invoke-virtual {v3, v10, v0}, Lcom/trilead/ssh2/transport/TransportManager;->changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3, v11}, Lcom/trilead/ssh2/transport/TransportManager;->changeRecvCompression(Lcom/trilead/ssh2/compression/ICompressor;)V

    .line 492
    new-instance v23, Lcom/trilead/ssh2/ConnectionInfo;

    invoke-direct/range {v23 .. v23}, Lcom/trilead/ssh2/ConnectionInfo;-><init>()V

    .line 494
    .local v23, sci:Lcom/trilead/ssh2/ConnectionInfo;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/trilead/ssh2/ConnectionInfo;->keyExchangeAlgorithm:Ljava/lang/String;

    .line 497
    move-object/from16 v0, p0

    iget v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    move-object/from16 v0, v23

    iput v3, v0, Lcom/trilead/ssh2/ConnectionInfo;->keyExchangeCounter:I

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerCryptoAlgorithm:Ljava/lang/String;

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientCryptoAlgorithm:Ljava/lang/String;

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerMACAlgorithm:Ljava/lang/String;

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientMACAlgorithm:Ljava/lang/String;

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/trilead/ssh2/ConnectionInfo;->serverHostKeyAlgorithm:Ljava/lang/String;

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/trilead/ssh2/ConnectionInfo;->serverHostKey:[B

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 507
    :try_start_7
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    .line 508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 505
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 511
    const/4 v3, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    goto/16 :goto_0

    .line 484
    .end local v10           #cbc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .end local v11           #comp:Lcom/trilead/ssh2/compression/ICompressor;
    .end local v21           #mac:Lcom/trilead/ssh2/crypto/digest/MAC;
    .end local v23           #sci:Lcom/trilead/ssh2/ConnectionInfo;
    :catch_0
    move-exception v18

    .line 486
    .local v18, e1:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Fatal error during MAC startup!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 505
    .end local v18           #e1:Ljava/lang/IllegalArgumentException;
    .restart local v10       #cbc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .restart local v11       #comp:Lcom/trilead/ssh2/compression/ICompressor;
    .restart local v21       #mac:Lcom/trilead/ssh2/crypto/digest/MAC;
    .restart local v23       #sci:Lcom/trilead/ssh2/ConnectionInfo;
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v3

    .line 515
    .end local v10           #cbc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .end local v11           #comp:Lcom/trilead/ssh2/compression/ICompressor;
    .end local v21           #mac:Lcom/trilead/ssh2/crypto/digest/MAC;
    .end local v23           #sci:Lcom/trilead/ssh2/ConnectionInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget v3, v3, Lcom/trilead/ssh2/transport/KexState;->state:I

    if-nez v3, :cond_11

    .line 516
    :cond_10
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected Kex submessage!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 518
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group-exchange-sha1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget v3, v3, Lcom/trilead/ssh2/transport/KexState;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 522
    new-instance v12, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v12, v0, v3, v1}, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;-><init>([BII)V

    .line 523
    .local v12, dhgexgrp:Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    new-instance v4, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v12}, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v12}, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v4, v3, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->init(Ljava/security/SecureRandom;)V

    .line 525
    new-instance v13, Lcom/trilead/ssh2/packets/PacketKexDhGexInit;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->getE()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v13, v3}, Lcom/trilead/ssh2/packets/PacketKexDhGexInit;-><init>(Ljava/math/BigInteger;)V

    .line 526
    .local v13, dhgexinit:Lcom/trilead/ssh2/packets/PacketKexDhGexInit;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v13}, Lcom/trilead/ssh2/packets/PacketKexDhGexInit;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    const/4 v4, 0x2

    iput v4, v3, Lcom/trilead/ssh2/transport/KexState;->state:I

    goto/16 :goto_0

    .line 531
    .end local v12           #dhgexgrp:Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;
    .end local v13           #dhgexinit:Lcom/trilead/ssh2/packets/PacketKexDhGexInit;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget v3, v3, Lcom/trilead/ssh2/transport/KexState;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_15

    .line 533
    new-instance v15, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v15, v0, v3, v1}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;-><init>([BII)V

    .line 535
    .local v15, dhgexrpl:Lcom/trilead/ssh2/packets/PacketKexDhGexReply;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    invoke-virtual {v15}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getHostKey()[B

    move-result-object v4

    iput-object v4, v3, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v3, :cond_13

    .line 539
    const/16 v24, 0x0

    .line 543
    .local v24, vres:Z
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/trilead/ssh2/transport/KexManager;->port:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v6, v6, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v6, v6, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v7, v7, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/trilead/ssh2/ServerHostKeyVerifier;->verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result v24

    .line 551
    if-nez v24, :cond_13

    .line 552
    :try_start_c
    new-instance v3, Ljava/io/IOException;

    const-string v4, "The server hostkey was not accepted by the verifier callback"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 545
    :catch_1
    move-exception v17

    .line 547
    .local v17, e:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    .line 548
    const-string v4, "The server hostkey was not accepted by the verifier callback."

    .line 547
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 547
    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 555
    .end local v17           #e:Ljava/lang/Exception;
    .end local v24           #vres:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v15}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getF()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->setF(Ljava/math/BigInteger;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 559
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    invoke-virtual {v4}, Lcom/trilead/ssh2/transport/ClientServerHello;->getClientString()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    invoke-virtual {v5}, Lcom/trilead/ssh2/transport/ClientServerHello;->getServerString()[B

    move-result-object v5

    .line 560
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v6, v6, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v6}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v7, v7, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v7

    invoke-virtual {v15}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getHostKey()[B

    move-result-object v8

    .line 561
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v9, v9, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 559
    invoke-virtual/range {v3 .. v9}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->calculateH([B[B[B[B[BLcom/trilead/ssh2/DHGexParameters;)[B

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/trilead/ssh2/transport/KexState;->H:[B
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_2

    .line 568
    :try_start_e
    invoke-virtual {v15}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getSignature()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/trilead/ssh2/transport/KexManager;->verifySignature([B[B)Z

    move-result v22

    .line 570
    .local v22, res:Z
    if-nez v22, :cond_14

    .line 571
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Hostkey signature sent by remote is wrong!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 563
    .end local v22           #res:Z
    :catch_2
    move-exception v17

    .line 565
    .local v17, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "KEX error."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 573
    .end local v17           #e:Ljava/lang/IllegalArgumentException;
    .restart local v22       #res:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v4}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->getK()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v3, Lcom/trilead/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/transport/KexManager;->finishKex()V

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    const/4 v4, -0x1

    iput v4, v3, Lcom/trilead/ssh2/transport/KexState;->state:I

    goto/16 :goto_0

    .line 580
    .end local v15           #dhgexrpl:Lcom/trilead/ssh2/packets/PacketKexDhGexReply;
    .end local v22           #res:Z
    :cond_15
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Illegal State in KEX Exchange!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 583
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group1-sha1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group14-sha1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 586
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget v3, v3, Lcom/trilead/ssh2/transport/KexState;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    .line 589
    new-instance v16, Lcom/trilead/ssh2/packets/PacketKexDHReply;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/trilead/ssh2/packets/PacketKexDHReply;-><init>([BII)V

    .line 591
    .local v16, dhr:Lcom/trilead/ssh2/packets/PacketKexDHReply;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    invoke-virtual/range {v16 .. v16}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getHostKey()[B

    move-result-object v4

    iput-object v4, v3, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v3, :cond_18

    .line 595
    const/16 v24, 0x0

    .line 599
    .restart local v24       #vres:Z
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/trilead/ssh2/transport/KexManager;->port:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v6, v6, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v6, v6, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v7, v7, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/trilead/ssh2/ServerHostKeyVerifier;->verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    move-result v24

    .line 607
    if-nez v24, :cond_18

    .line 608
    :try_start_10
    new-instance v3, Ljava/io/IOException;

    const-string v4, "The server hostkey was not accepted by the verifier callback"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 601
    :catch_3
    move-exception v17

    .line 603
    .local v17, e:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    .line 604
    const-string v4, "The server hostkey was not accepted by the verifier callback."

    .line 603
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 603
    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 611
    .end local v17           #e:Ljava/lang/Exception;
    .end local v24           #vres:Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-virtual/range {v16 .. v16}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getF()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->setF(Ljava/math/BigInteger;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 615
    :try_start_11
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    invoke-virtual {v4}, Lcom/trilead/ssh2/transport/ClientServerHello;->getClientString()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    invoke-virtual {v5}, Lcom/trilead/ssh2/transport/ClientServerHello;->getServerString()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v6, v6, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v6}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v6

    .line 616
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v7, v7, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getHostKey()[B

    move-result-object v8

    .line 615
    invoke-virtual/range {v3 .. v8}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->calculateH([B[B[B[B[B)[B

    move-result-object v3

    iput-object v3, v9, Lcom/trilead/ssh2/transport/KexState;->H:[B
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_4

    .line 623
    :try_start_12
    invoke-virtual/range {v16 .. v16}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getSignature()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/trilead/ssh2/transport/KexManager;->verifySignature([B[B)Z

    move-result v22

    .line 625
    .restart local v22       #res:Z
    if-nez v22, :cond_19

    .line 626
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Hostkey signature sent by remote is wrong!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 618
    .end local v22           #res:Z
    :catch_4
    move-exception v17

    .line 620
    .local v17, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "KEX error."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 628
    .end local v17           #e:Ljava/lang/IllegalArgumentException;
    .restart local v22       #res:Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-virtual {v4}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->getK()Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, v3, Lcom/trilead/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    .line 630
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/transport/KexManager;->finishKex()V

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    const/4 v4, -0x1

    iput v4, v3, Lcom/trilead/ssh2/transport/KexState;->state:I

    goto/16 :goto_0

    .line 636
    .end local v16           #dhr:Lcom/trilead/ssh2/packets/PacketKexDHReply;
    .end local v22           #res:Z
    :cond_1a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unkown KEX method! ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v5, v5, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v5, v5, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
.end method

.method public declared-synchronized initiateKEX(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V
    .locals 3
    .parameter "cwl"
    .parameter "dhgex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 239
    iput-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 241
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Lcom/trilead/ssh2/transport/KexState;

    invoke-direct {v1}, Lcom/trilead/ssh2/transport/KexState;-><init>()V

    iput-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 245
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    iput-object v2, v1, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 246
    new-instance v0, Lcom/trilead/ssh2/packets/PacketKexInit;

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/packets/PacketKexInit;-><init>(Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/security/SecureRandom;)V

    .line 247
    .local v0, kp:Lcom/trilead/ssh2/packets/PacketKexInit;
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput-object v0, v1, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 248
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .end local v0           #kp:Lcom/trilead/ssh2/packets/PacketKexInit;
    :cond_0
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
