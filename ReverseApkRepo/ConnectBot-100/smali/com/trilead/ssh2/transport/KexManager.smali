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
    .line 44
    const-class v0, Lcom/trilead/ssh2/transport/KexManager;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 42
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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    .line 55
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/KexManager;->connectionClosed:Z

    .line 57
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    .line 72
    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 73
    iput-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    .line 74
    iput-object p3, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 75
    new-instance v0, Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {v0}, Lcom/trilead/ssh2/DHGexParameters;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 76
    iput-object p4, p0, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    .line 77
    iput p5, p0, Lcom/trilead/ssh2/transport/KexManager;->port:I

    .line 78
    iput-object p6, p0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;

    .line 79
    iput-object p7, p0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    .line 80
    return-void
.end method

.method public static final checkKexAlgorithmList([Ljava/lang/String;)V
    .locals 4
    .parameter "algos"

    .prologue
    .line 326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 339
    return-void

    .line 328
    :cond_0
    const-string v1, "diffie-hellman-group-exchange-sha1"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_2
    const-string v1, "diffie-hellman-group14-sha1"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    const-string v1, "diffie-hellman-group1-sha1"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown kex algorithm \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final checkServerHostkeyAlgorithmsList([Ljava/lang/String;)V
    .locals 4
    .parameter "algos"

    .prologue
    .line 311
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 316
    return-void

    .line 313
    :cond_0
    const-string v1, "ssh-rsa"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ssh-dss"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown server host key algorithm \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 127
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 130
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_2

    .line 131
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    .line 133
    :cond_2
    array-length v0, p1

    if-eqz v0, :cond_3

    array-length v0, p2

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 134
    goto :goto_0

    .line 136
    :cond_4
    aget-object v0, p1, v1

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private establishKeyMaterial()Z
    .locals 11

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/digest/MAC;->getKeyLen(Ljava/lang/String;)I

    move-result v6

    .line 255
    .local v6, mac_cs_key_len:I
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getKeySize(Ljava/lang/String;)I

    move-result v4

    .line 256
    .local v4, enc_cs_key_len:I
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getBlockSize(Ljava/lang/String;)I

    move-result v5

    .line 258
    .local v5, enc_cs_block_len:I
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/digest/MAC;->getKeyLen(Ljava/lang/String;)I

    move-result v9

    .line 259
    .local v9, mac_sc_key_len:I
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getKeySize(Ljava/lang/String;)I

    move-result v7

    .line 260
    .local v7, enc_sc_key_len:I
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getBlockSize(Ljava/lang/String;)I

    move-result v8

    .line 262
    .local v8, enc_sc_block_len:I
    const-string v0, "SHA1"

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->H:[B

    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    .line 263
    invoke-static/range {v0 .. v9}, Lcom/trilead/ssh2/crypto/KeyMaterial;->create(Ljava/lang/String;[BLjava/math/BigInteger;[BIIIIII)Lcom/trilead/ssh2/crypto/KeyMaterial;

    move-result-object v0

    .line 262
    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    const/4 v0, 0x1

    .end local v6           #mac_cs_key_len:I
    .end local v4           #enc_cs_key_len:I
    .end local v5           #enc_cs_block_len:I
    .end local v9           #mac_sc_key_len:I
    .end local v7           #enc_sc_key_len:I
    .end local v8           #enc_sc_block_len:I
    :goto_0
    return v0

    .line 265
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 267
    .local v10, e:Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishKex()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    if-nez v4, :cond_0

    .line 275
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->H:[B

    iput-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/trilead/ssh2/transport/KexManager;->establishKeyMaterial()Z

    .line 281
    new-instance v2, Lcom/trilead/ssh2/packets/PacketNewKeys;

    invoke-direct {v2}, Lcom/trilead/ssh2/packets/PacketNewKeys;-><init>()V

    .line 282
    .local v2, ign:Lcom/trilead/ssh2/packets/PacketNewKeys;
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketNewKeys;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 289
    :try_start_0
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v6, v6, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_client_to_server:[B

    .line 290
    iget-object v7, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v7, v7, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_client_to_server:[B

    .line 289
    invoke-static {v4, v5, v6, v7}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    move-result-object v0

    .line 292
    .local v0, cbc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    new-instance v3, Lcom/trilead/ssh2/crypto/digest/MAC;

    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    iget-object v5, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v5, v5, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_client_to_server:[B

    invoke-direct {v3, v4, v5}, Lcom/trilead/ssh2/crypto/digest/MAC;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .local v3, mac:Lcom/trilead/ssh2/crypto/digest/MAC;
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4, v0, v3}, Lcom/trilead/ssh2/transport/TransportManager;->changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 301
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4}, Lcom/trilead/ssh2/transport/TransportManager;->kexFinished()V

    .line 302
    return-void

    .line 295
    .end local v0           #cbc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .end local v3           #mac:Lcom/trilead/ssh2/crypto/digest/MAC;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 297
    .local v1, e1:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Fatal error during MAC startup!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static final getDefaultKexAlgorithmList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "diffie-hellman-group-exchange-sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "diffie-hellman-group14-sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 321
    const-string v2, "diffie-hellman-group1-sha1"

    aput-object v2, v0, v1

    .line 320
    return-object v0
.end method

.method public static final getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 306
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
    .line 108
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 109
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 111
    :cond_1
    array-length v2, p1

    if-nez v2, :cond_2

    .line 112
    const/4 v2, 0x0

    .line 119
    :goto_0
    return-object v2

    .line 114
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_3

    .line 122
    new-instance v2, Lcom/trilead/ssh2/transport/NegotiateException;

    invoke-direct {v2}, Lcom/trilead/ssh2/transport/NegotiateException;-><init>()V

    throw v2

    .line 116
    :cond_3
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v2, p2

    if-lt v1, v2, :cond_4

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_4
    aget-object v2, p1, v0

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    aget-object v2, p1, v0

    goto :goto_0

    .line 116
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private isGuessOK(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Z
    .locals 3
    .parameter "cpar"
    .parameter "spar"

    .prologue
    const/4 v2, 0x0

    .line 141
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 144
    :cond_1
    iget-object v0, p1, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    iget-object v1, p2, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/trilead/ssh2/transport/KexManager;->compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 160
    :goto_0
    return v0

    .line 149
    :cond_2
    iget-object v0, p1, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    iget-object v1, p2, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/trilead/ssh2/transport/KexManager;->compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 151
    goto :goto_0

    .line 160
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mergeKexParameters(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Lcom/trilead/ssh2/transport/NegotiatedParameters;
    .locals 9
    .parameter "client"
    .parameter "server"

    .prologue
    const/4 v8, 0x0

    .line 165
    new-instance v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;

    invoke-direct {v3}, Lcom/trilead/ssh2/transport/NegotiatedParameters;-><init>()V

    .line 169
    .local v3, np:Lcom/trilead/ssh2/transport/NegotiatedParameters;
    :try_start_0
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    iget-object v5, p2, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    .line 171
    sget-object v4, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "kex_algo="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 173
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 174
    iget-object v5, p2, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    iput-object v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    .line 176
    sget-object v4, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "server_host_key_algo="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 178
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    .line 179
    iget-object v5, p2, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    iput-object v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    .line 180
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    .line 181
    iget-object v5, p2, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    iput-object v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    .line 183
    sget-object v4, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "enc_algo_client_to_server="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 184
    sget-object v4, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "enc_algo_server_to_client="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 186
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    .line 187
    iget-object v5, p2, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    iput-object v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    .line 188
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    .line 189
    iget-object v5, p2, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    iput-object v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    .line 191
    sget-object v4, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mac_algo_client_to_server="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 192
    sget-object v4, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mac_algo_server_to_client="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 194
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    .line 195
    iget-object v5, p2, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    iput-object v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    .line 196
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    .line 197
    iget-object v5, p2, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    iput-object v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    .line 199
    sget-object v4, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "comp_algo_client_to_server="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 200
    sget-object v4, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "comp_algo_server_to_client="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/trilead/ssh2/transport/NegotiateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :try_start_1
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    .line 211
    iget-object v5, p2, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    iput-object v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_client_to_server:Ljava/lang/String;
    :try_end_1
    .catch Lcom/trilead/ssh2/transport/NegotiateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :goto_0
    :try_start_2
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    .line 221
    iget-object v5, p2, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    iput-object v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_server_to_client:Ljava/lang/String;
    :try_end_2
    .catch Lcom/trilead/ssh2/transport/NegotiateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 228
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/transport/KexManager;->isGuessOK(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->guessOK:Z

    :cond_0
    move-object v4, v3

    .line 231
    :goto_2
    return-object v4

    .line 203
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Lcom/trilead/ssh2/transport/NegotiateException;
    move-object v4, v8

    .line 205
    goto :goto_2

    .line 213
    .end local v0           #e:Lcom/trilead/ssh2/transport/NegotiateException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 215
    .local v1, e1:Lcom/trilead/ssh2/transport/NegotiateException;
    iput-object v8, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_client_to_server:Ljava/lang/String;

    goto :goto_0

    .line 223
    .end local v1           #e1:Lcom/trilead/ssh2/transport/NegotiateException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 225
    .local v2, e2:Lcom/trilead/ssh2/transport/NegotiateException;
    iput-object v8, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_server_to_client:Ljava/lang/String;

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

    .line 343
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    const-string v5, "ssh-rsa"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    invoke-static {p1}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->decodeSSHRSASignature([B)Lcom/trilead/ssh2/signature/RSASignature;

    move-result-object v3

    .line 346
    .local v3, rs:Lcom/trilead/ssh2/signature/RSASignature;
    invoke-static {p2}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->decodeSSHRSAPublicKey([B)Lcom/trilead/ssh2/signature/RSAPublicKey;

    move-result-object v2

    .line 348
    .local v2, rpk:Lcom/trilead/ssh2/signature/RSAPublicKey;
    sget-object v4, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const-string v5, "Verifying ssh-rsa signature"

    invoke-virtual {v4, v6, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 350
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->H:[B

    invoke-static {v4, v3, v2}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->verifySignature([BLcom/trilead/ssh2/signature/RSASignature;Lcom/trilead/ssh2/signature/RSAPublicKey;)Z

    move-result v4

    .line 360
    .end local v3           #rs:Lcom/trilead/ssh2/signature/RSASignature;
    .end local v2           #rpk:Lcom/trilead/ssh2/signature/RSAPublicKey;
    :goto_0
    return v4

    .line 353
    :cond_0
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    const-string v5, "ssh-dss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    invoke-static {p1}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->decodeSSHDSASignature([B)Lcom/trilead/ssh2/signature/DSASignature;

    move-result-object v1

    .line 356
    .local v1, ds:Lcom/trilead/ssh2/signature/DSASignature;
    invoke-static {p2}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->decodeSSHDSAPublicKey([B)Lcom/trilead/ssh2/signature/DSAPublicKey;

    move-result-object v0

    .line 358
    .local v0, dpk:Lcom/trilead/ssh2/signature/DSAPublicKey;
    sget-object v4, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const-string v5, "Verifying ssh-dss signature"

    invoke-virtual {v4, v6, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 360
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->H:[B

    invoke-static {v4, v1, v0}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->verifySignature([BLcom/trilead/ssh2/signature/DSASignature;Lcom/trilead/ssh2/signature/DSAPublicKey;)Z

    move-result v4

    goto :goto_0

    .line 363
    .end local v1           #ds:Lcom/trilead/ssh2/signature/DSASignature;
    .end local v0           #dpk:Lcom/trilead/ssh2/signature/DSAPublicKey;
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
    .line 84
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    iget v1, v1, Lcom/trilead/ssh2/ConnectionInfo;->keyExchangeCounter:I

    if-lt v1, p1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    monitor-exit v0

    return-object v1

    .line 91
    :cond_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/transport/KexManager;->connectionClosed:Z

    if-eqz v1, :cond_1

    .line 92
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Key exchange was not finished, connection is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .line 92
    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 97
    .restart local p0
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized handleMessage([BI)V
    .locals 25
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    monitor-enter p0

    if-nez p1, :cond_0

    .line 372
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    move-object v4, v0

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 374
    const/4 v5, 0x1

    :try_start_1
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/trilead/ssh2/transport/KexManager;->connectionClosed:Z

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 376
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    :goto_0
    monitor-exit p0

    return-void

    .line 372
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 370
    .end local p1
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 380
    .restart local p1
    :cond_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    aget-byte v4, p1, v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_1

    .line 381
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected KEX message (type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-byte v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 383
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    move v4, v0

    if-eqz v4, :cond_2

    .line 385
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    goto :goto_0

    .line 389
    :cond_2
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_c

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget v4, v4, Lcom/trilead/ssh2/transport/KexState;->state:I

    if-eqz v4, :cond_3

    .line 392
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected SSH_MSG_KEXINIT message during on-going kex exchange!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 394
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    if-nez v4, :cond_4

    .line 400
    new-instance v4, Lcom/trilead/ssh2/transport/KexState;

    invoke-direct {v4}, Lcom/trilead/ssh2/transport/KexState;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    move-object v5, v0

    iput-object v5, v4, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 402
    new-instance v19, Lcom/trilead/ssh2/packets/PacketKexInit;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/packets/PacketKexInit;-><init>(Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/security/SecureRandom;)V

    .line 403
    .local v19, kip:Lcom/trilead/ssh2/packets/PacketKexInit;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    move-object/from16 v0, v19

    move-object v1, v4

    iput-object v0, v1, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v4, v0

    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 407
    .end local v19           #kip:Lcom/trilead/ssh2/packets/PacketKexInit;
    :cond_4
    new-instance v19, Lcom/trilead/ssh2/packets/PacketKexInit;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move v2, v4

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/PacketKexInit;-><init>([BII)V

    .line 408
    .restart local v19       #kip:Lcom/trilead/ssh2/packets/PacketKexInit;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    move-object/from16 v0, v19

    move-object v1, v4

    iput-object v0, v1, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v5, v0

    iget-object v5, v5, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/PacketKexInit;->getKexParameters()Lcom/trilead/ssh2/transport/KexParameters;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v6, v0

    iget-object v6, v6, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v6}, Lcom/trilead/ssh2/packets/PacketKexInit;->getKexParameters()Lcom/trilead/ssh2/transport/KexParameters;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/transport/KexManager;->mergeKexParameters(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Lcom/trilead/ssh2/transport/NegotiatedParameters;

    move-result-object v5

    iput-object v5, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    if-nez v4, :cond_5

    .line 413
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Cannot negotiate, proposals do not match."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 415
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/PacketKexInit;->isFirst_kex_packet_follows()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-boolean v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->guessOK:Z

    if-nez v4, :cond_6

    .line 421
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    .line 424
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group-exchange-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-virtual {v4}, Lcom/trilead/ssh2/DHGexParameters;->getMin_group_len()I

    move-result v4

    if-nez v4, :cond_7

    .line 428
    new-instance v14, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {v14, v4}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;-><init>(Lcom/trilead/ssh2/DHGexParameters;)V

    .line 429
    .local v14, dhgexreq:Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v4, v0

    invoke-virtual {v14}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 437
    .end local v14           #dhgexreq:Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/trilead/ssh2/transport/KexState;->state:I

    goto/16 :goto_0

    .line 434
    :cond_7
    new-instance v14, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {v14, v4}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;-><init>(Lcom/trilead/ssh2/DHGexParameters;)V

    .line 435
    .local v14, dhgexreq:Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v4, v0

    invoke-virtual {v14}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    goto :goto_1

    .line 441
    .end local v14           #dhgexreq:Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group1-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group14-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 444
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    new-instance v5, Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-direct {v5}, Lcom/trilead/ssh2/crypto/dh/DhExchange;-><init>()V

    iput-object v5, v4, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group1-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->init(ILjava/security/SecureRandom;)V

    .line 451
    :goto_2
    new-instance v20, Lcom/trilead/ssh2/packets/PacketKexDHInit;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-virtual {v4}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->getE()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/packets/PacketKexDHInit;-><init>(Ljava/math/BigInteger;)V

    .line 452
    .local v20, kp:Lcom/trilead/ssh2/packets/PacketKexDHInit;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v4, v0

    invoke-virtual/range {v20 .. v20}, Lcom/trilead/ssh2/packets/PacketKexDHInit;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/trilead/ssh2/transport/KexState;->state:I

    goto/16 :goto_0

    .line 449
    .end local v20           #kp:Lcom/trilead/ssh2/packets/PacketKexDHInit;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->init(ILjava/security/SecureRandom;)V

    goto :goto_2

    .line 457
    :cond_b
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unkown KEX method!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 460
    .end local v19           #kip:Lcom/trilead/ssh2/packets/PacketKexInit;
    :cond_c
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_e

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    move-object v4, v0

    if-nez v4, :cond_d

    .line 463
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Peer sent SSH_MSG_NEWKEYS, but I have no key material ready!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 470
    :cond_d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    const/4 v5, 0x0

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    move-object v6, v0

    iget-object v6, v6, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_server_to_client:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    move-object v7, v0

    iget-object v7, v7, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_server_to_client:[B

    .line 470
    invoke-static {v4, v5, v6, v7}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    move-result-object v11

    .line 473
    .local v11, cbc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    new-instance v21, Lcom/trilead/ssh2/crypto/digest/MAC;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    move-object v5, v0

    iget-object v5, v5, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_server_to_client:[B

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/crypto/digest/MAC;-><init>(Ljava/lang/String;[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 481
    .local v21, mac:Lcom/trilead/ssh2/crypto/digest/MAC;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 483
    new-instance v23, Lcom/trilead/ssh2/ConnectionInfo;

    invoke-direct/range {v23 .. v23}, Lcom/trilead/ssh2/ConnectionInfo;-><init>()V

    .line 485
    .local v23, sci:Lcom/trilead/ssh2/ConnectionInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/trilead/ssh2/ConnectionInfo;->keyExchangeAlgorithm:Ljava/lang/String;

    .line 488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, v23

    iput v0, v1, Lcom/trilead/ssh2/ConnectionInfo;->keyExchangeCounter:I

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerCryptoAlgorithm:Ljava/lang/String;

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientCryptoAlgorithm:Ljava/lang/String;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerMACAlgorithm:Ljava/lang/String;

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientMACAlgorithm:Ljava/lang/String;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/trilead/ssh2/ConnectionInfo;->serverHostKeyAlgorithm:Ljava/lang/String;

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    move-object v0, v4

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/trilead/ssh2/ConnectionInfo;->serverHostKey:[B

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    move-object v4, v0

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 498
    :try_start_7
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 496
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 502
    const/4 v4, 0x0

    :try_start_8
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    goto/16 :goto_0

    .line 476
    .end local v11           #cbc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .end local v21           #mac:Lcom/trilead/ssh2/crypto/digest/MAC;
    .end local v23           #sci:Lcom/trilead/ssh2/ConnectionInfo;
    :catch_0
    move-exception v4

    move-object/from16 v18, v4

    .line 478
    .local v18, e1:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Fatal error during MAC startup!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 496
    .end local v18           #e1:Ljava/lang/IllegalArgumentException;
    .restart local v11       #cbc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .restart local v21       #mac:Lcom/trilead/ssh2/crypto/digest/MAC;
    .restart local v23       #sci:Lcom/trilead/ssh2/ConnectionInfo;
    :catchall_2
    move-exception v5

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v5

    .line 506
    .end local v11           #cbc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .end local v21           #mac:Lcom/trilead/ssh2/crypto/digest/MAC;
    .end local v23           #sci:Lcom/trilead/ssh2/ConnectionInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget v4, v4, Lcom/trilead/ssh2/transport/KexState;->state:I

    if-nez v4, :cond_10

    .line 507
    :cond_f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected Kex submessage!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 509
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group-exchange-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget v4, v4, Lcom/trilead/ssh2/transport/KexState;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 513
    new-instance v12, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;

    const/4 v4, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    move v2, v4

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;-><init>([BII)V

    .line 514
    .local v12, dhgexgrp:Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    new-instance v5, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v12}, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v12}, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v5, v4, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->init(Ljava/security/SecureRandom;)V

    .line 516
    new-instance v13, Lcom/trilead/ssh2/packets/PacketKexDhGexInit;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v4}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->getE()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v13, v4}, Lcom/trilead/ssh2/packets/PacketKexDhGexInit;-><init>(Ljava/math/BigInteger;)V

    .line 517
    .local v13, dhgexinit:Lcom/trilead/ssh2/packets/PacketKexDhGexInit;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v4, v0

    invoke-virtual {v13}, Lcom/trilead/ssh2/packets/PacketKexDhGexInit;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/trilead/ssh2/transport/KexState;->state:I

    goto/16 :goto_0

    .line 522
    .end local v12           #dhgexgrp:Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;
    .end local v13           #dhgexinit:Lcom/trilead/ssh2/packets/PacketKexDhGexInit;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget v4, v4, Lcom/trilead/ssh2/transport/KexState;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_14

    .line 524
    new-instance v15, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;

    const/4 v4, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move v2, v4

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;-><init>([BII)V

    .line 526
    .local v15, dhgexrpl:Lcom/trilead/ssh2/packets/PacketKexDhGexReply;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    invoke-virtual {v15}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getHostKey()[B

    move-result-object v5

    iput-object v5, v4, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;

    move-object v4, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v4, :cond_12

    .line 530
    const/16 v24, 0x0

    .line 534
    .local v24, vres:Z
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/trilead/ssh2/transport/KexManager;->port:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v7, v0

    iget-object v7, v7, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v7, v7, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v8, v0

    iget-object v8, v8, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/trilead/ssh2/ServerHostKeyVerifier;->verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result v24

    .line 542
    if-nez v24, :cond_12

    .line 543
    :try_start_c
    new-instance v4, Ljava/io/IOException;

    const-string v5, "The server hostkey was not accepted by the verifier callback"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 536
    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    .line 538
    .local v17, e:Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    .line 539
    const-string v5, "The server hostkey was not accepted by the verifier callback."

    .line 538
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 539
    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 538
    .end local p1
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 546
    .end local v24           #vres:Z
    .end local v17           #e:Ljava/lang/Exception;
    .restart local p1
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v15}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getF()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->setF(Ljava/math/BigInteger;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 550
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/trilead/ssh2/transport/ClientServerHello;->getClientString()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/trilead/ssh2/transport/ClientServerHello;->getServerString()[B

    move-result-object v6

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v7, v0

    iget-object v7, v7, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v8, v0

    iget-object v8, v8, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v8

    invoke-virtual {v15}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getHostKey()[B

    move-result-object v9

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v10, v0

    iget-object v10, v10, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-virtual/range {v4 .. v10}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->calculateH([B[B[B[B[BLcom/trilead/ssh2/DHGexParameters;)[B

    move-result-object v4

    .line 550
    iput-object v4, v11, Lcom/trilead/ssh2/transport/KexState;->H:[B
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_2

    .line 559
    :try_start_e
    invoke-virtual {v15}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getSignature()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v5, v0

    iget-object v5, v5, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/transport/KexManager;->verifySignature([B[B)Z

    move-result v22

    .line 561
    .local v22, res:Z
    if-nez v22, :cond_13

    .line 562
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Hostkey signature sent by remote is wrong!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 554
    .end local v22           #res:Z
    :catch_2
    move-exception v4

    move-object/from16 v17, v4

    .line 556
    .local v17, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "KEX error."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 564
    .end local v17           #e:Ljava/lang/IllegalArgumentException;
    .restart local v22       #res:Z
    .restart local p1
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v5, v0

    iget-object v5, v5, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->getK()Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, v4, Lcom/trilead/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/transport/KexManager;->finishKex()V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/trilead/ssh2/transport/KexState;->state:I

    goto/16 :goto_0

    .line 571
    .end local v15           #dhgexrpl:Lcom/trilead/ssh2/packets/PacketKexDhGexReply;
    .end local v22           #res:Z
    :cond_14
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Illegal State in KEX Exchange!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 574
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group1-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group14-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 577
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget v4, v4, Lcom/trilead/ssh2/transport/KexState;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    .line 580
    new-instance v16, Lcom/trilead/ssh2/packets/PacketKexDHReply;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move v2, v4

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/PacketKexDHReply;-><init>([BII)V

    .line 582
    .local v16, dhr:Lcom/trilead/ssh2/packets/PacketKexDHReply;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    invoke-virtual/range {v16 .. v16}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getHostKey()[B

    move-result-object v5

    iput-object v5, v4, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;

    move-object v4, v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v4, :cond_17

    .line 586
    const/16 v24, 0x0

    .line 590
    .restart local v24       #vres:Z
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/trilead/ssh2/transport/KexManager;->port:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v7, v0

    iget-object v7, v7, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v7, v7, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v8, v0

    iget-object v8, v8, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/trilead/ssh2/ServerHostKeyVerifier;->verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    move-result v24

    .line 598
    .restart local v24       #vres:Z
    if-nez v24, :cond_17

    .line 599
    :try_start_10
    new-instance v4, Ljava/io/IOException;

    const-string v5, "The server hostkey was not accepted by the verifier callback"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 592
    :catch_3
    move-exception v4

    move-object/from16 v17, v4

    .line 594
    .local v17, e:Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    .line 595
    const-string v5, "The server hostkey was not accepted by the verifier callback."

    .line 594
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 595
    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 594
    .end local p1
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 602
    .end local v24           #vres:Z
    .end local v17           #e:Ljava/lang/Exception;
    .restart local p1
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-virtual/range {v16 .. v16}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getF()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->setF(Ljava/math/BigInteger;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 606
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/trilead/ssh2/transport/ClientServerHello;->getClientString()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/trilead/ssh2/transport/ClientServerHello;->getServerString()[B

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v7, v0

    iget-object v7, v7, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v7

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v8, v0

    iget-object v8, v8, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getHostKey()[B

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->calculateH([B[B[B[B[B)[B

    move-result-object v4

    .line 606
    iput-object v4, v10, Lcom/trilead/ssh2/transport/KexState;->H:[B
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_4

    .line 614
    :try_start_12
    invoke-virtual/range {v16 .. v16}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getSignature()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v5, v0

    iget-object v5, v5, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/transport/KexManager;->verifySignature([B[B)Z

    move-result v22

    .line 616
    .restart local v22       #res:Z
    if-nez v22, :cond_18

    .line 617
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Hostkey signature sent by remote is wrong!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 609
    .end local v22           #res:Z
    :catch_4
    move-exception v4

    move-object/from16 v17, v4

    .line 611
    .local v17, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "KEX error."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 619
    .end local v17           #e:Ljava/lang/IllegalArgumentException;
    .restart local v22       #res:Z
    .restart local p1
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v5, v0

    iget-object v5, v5, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->getK()Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, v4, Lcom/trilead/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/transport/KexManager;->finishKex()V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/trilead/ssh2/transport/KexState;->state:I

    goto/16 :goto_0

    .line 627
    .end local v16           #dhr:Lcom/trilead/ssh2/packets/PacketKexDHReply;
    .end local v22           #res:Z
    :cond_19
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unkown KEX method! ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    move-object v6, v0

    iget-object v6, v6, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v6, v6, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
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
    .line 236
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 237
    iput-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 239
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    if-nez v1, :cond_0

    .line 241
    new-instance v1, Lcom/trilead/ssh2/transport/KexState;

    invoke-direct {v1}, Lcom/trilead/ssh2/transport/KexState;-><init>()V

    iput-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 243
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    iput-object v2, v1, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 244
    new-instance v0, Lcom/trilead/ssh2/packets/PacketKexInit;

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/packets/PacketKexInit;-><init>(Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/security/SecureRandom;)V

    .line 245
    .local v0, kp:Lcom/trilead/ssh2/packets/PacketKexInit;
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput-object v0, v1, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 246
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v0           #kp:Lcom/trilead/ssh2/packets/PacketKexInit;
    :cond_0
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
