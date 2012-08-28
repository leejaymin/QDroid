.class public Lcom/trilead/ssh2/channel/AuthAgentForwardThread;
.super Ljava/lang/Thread;
.source "AuthAgentForwardThread.java"

# interfaces
.implements Lcom/trilead/ssh2/channel/IChannelWorkerThread;


# static fields
.field private static final SSH_AGENT_FAILURE:[B

.field private static final SSH_AGENT_SUCCESS:[B

.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

.field buffer:[B

.field c:Lcom/trilead/ssh2/channel/Channel;

.field is:Ljava/io/InputStream;

.field os:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x5

    .line 47
    new-array v0, v1, [B

    aput-byte v2, v0, v3

    aput-byte v1, v0, v4

    sput-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    .line 48
    new-array v0, v1, [B

    aput-byte v2, v0, v3

    const/4 v1, 0x6

    aput-byte v1, v0, v4

    sput-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_SUCCESS:[B

    .line 76
    const-class v0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->log:Lcom/trilead/ssh2/log/Logger;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/AuthAgentCallback;)V
    .locals 3
    .parameter "c"
    .parameter "authAgent"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 83
    const/16 v0, 0x7530

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->buffer:[B

    .line 87
    iput-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 88
    iput-object p2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    .line 90
    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v1, 0x14

    const-string v2, "AuthAgentForwardThread started"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method private addIdentity(Lcom/trilead/ssh2/packets/TypesReader;Z)V
    .locals 17
    .parameter "tr"
    .parameter "checkConstraints"

    .prologue
    .line 266
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->failWhenLocked()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 331
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v14

    .line 274
    .local v14, type:Ljava/lang/String;
    const-string v15, "ssh-rsa"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v13

    .line 276
    .local v13, n:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v11

    .line 277
    .local v11, e:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v10

    .line 278
    .local v10, d:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, comment:Ljava/lang/String;
    new-instance v1, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    invoke-direct {v1, v10, v11, v13}, Lcom/trilead/ssh2/signature/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 298
    .end local v10           #d:Ljava/math/BigInteger;
    .end local v11           #e:Ljava/math/BigInteger;
    .end local v13           #n:Ljava/math/BigInteger;
    :goto_1
    const/4 v8, 0x0

    .line 299
    .local v8, confirmUse:Z
    const/4 v12, 0x0

    .line 301
    .local v12, lifetime:I
    if-eqz p2, :cond_1

    .line 302
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v15

    if-gtz v15, :cond_4

    .line 316
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v15, v1, v7, v8, v12}, Lcom/trilead/ssh2/AuthAgentCallback;->addIdentity(Ljava/lang/Object;Ljava/lang/String;ZI)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v16, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_SUCCESS:[B

    invoke-virtual/range {v15 .. v16}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    .end local v7           #comment:Ljava/lang/String;
    .end local v8           #confirmUse:Z
    .end local v12           #lifetime:I
    .end local v14           #type:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 325
    .local v11, e:Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v16, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual/range {v15 .. v16}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 327
    :catch_1
    move-exception v15

    goto :goto_0

    .line 284
    .end local v11           #e:Ljava/io/IOException;
    .restart local v14       #type:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v15, "ssh-dss"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    .line 286
    .local v2, p:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v3

    .line 287
    .local v3, q:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v4

    .line 288
    .local v4, g:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v5

    .line 289
    .local v5, y:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v6

    .line 290
    .local v6, x:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v7

    .line 292
    .restart local v7       #comment:Ljava/lang/String;
    new-instance v1, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    invoke-direct/range {v1 .. v6}, Lcom/trilead/ssh2/signature/DSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .local v1, key:Lcom/trilead/ssh2/signature/DSAPrivateKey;
    goto :goto_1

    .line 294
    .end local v1           #key:Lcom/trilead/ssh2/signature/DSAPrivateKey;
    .end local v2           #p:Ljava/math/BigInteger;
    .end local v3           #q:Ljava/math/BigInteger;
    .end local v4           #g:Ljava/math/BigInteger;
    .end local v5           #y:Ljava/math/BigInteger;
    .end local v6           #x:Ljava/math/BigInteger;
    .end local v7           #comment:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v16, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual/range {v15 .. v16}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    .line 303
    .restart local v7       #comment:Ljava/lang/String;
    .restart local v8       #confirmUse:Z
    .restart local v12       #lifetime:I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v9

    .line 304
    .local v9, constraint:I
    const/4 v15, 0x2

    if-ne v9, v15, :cond_5

    .line 305
    const/4 v8, 0x1

    goto :goto_2

    .line 306
    :cond_5
    const/4 v15, 0x1

    if-ne v9, v15, :cond_6

    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v12

    goto :goto_2

    .line 310
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v16, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual/range {v15 .. v16}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    .line 319
    .end local v9           #constraint:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v16, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual/range {v15 .. v16}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private failWhenLocked()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v0}, Lcom/trilead/ssh2/AuthAgentCallback;->isAgentLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v1, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processLockRequest(Lcom/trilead/ssh2/packets/TypesReader;)V
    .locals 4
    .parameter "tr"

    .prologue
    .line 450
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->failWhenLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, lockPassphrase:Ljava/lang/String;
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v2, v1}, Lcom/trilead/ssh2/AuthAgentCallback;->setAgentLock(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v3, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    .end local v1           #lockPassphrase:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 464
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v3, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 466
    :catch_1
    move-exception v2

    goto :goto_0

    .line 458
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #lockPassphrase:Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v3, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_SUCCESS:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private processSignRequest(Lcom/trilead/ssh2/packets/TypesReader;)V
    .locals 10
    .parameter "tr"

    .prologue
    .line 390
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->failWhenLocked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 442
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v3

    .line 394
    .local v3, publicKey:[B
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v0

    .line 396
    .local v0, challenge:[B
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    .line 398
    .local v2, flags:I
    if-eqz v2, :cond_1

    .line 400
    iget-object v8, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v9, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    .end local v0           #challenge:[B
    .end local v2           #flags:I
    .end local v3           #publicKey:[B
    :catch_0
    move-exception v1

    .line 436
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    iget-object v8, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v9, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 438
    :catch_1
    move-exception v8

    goto :goto_0

    .line 404
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #challenge:[B
    .restart local v2       #flags:I
    .restart local v3       #publicKey:[B
    :cond_1
    :try_start_2
    iget-object v8, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v8, v3}, Lcom/trilead/ssh2/AuthAgentCallback;->getPrivateKey([B)Ljava/lang/Object;

    move-result-object v6

    .line 406
    .local v6, trileadKey:Ljava/lang/Object;
    if-nez v6, :cond_2

    .line 407
    iget-object v8, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v9, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 413
    :cond_2
    instance-of v8, v6, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    if-eqz v8, :cond_3

    .line 415
    check-cast v6, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    .line 414
    .end local v6           #trileadKey:Ljava/lang/Object;
    invoke-static {v0, v6}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->generateSignature([BLcom/trilead/ssh2/signature/RSAPrivateKey;)Lcom/trilead/ssh2/signature/RSASignature;

    move-result-object v5

    .line 416
    .local v5, signature:Lcom/trilead/ssh2/signature/RSASignature;
    invoke-static {v5}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->encodeSSHRSASignature(Lcom/trilead/ssh2/signature/RSASignature;)[B

    move-result-object v4

    .line 426
    .end local v5           #signature:Lcom/trilead/ssh2/signature/RSASignature;
    .local v4, response:[B
    :goto_1
    new-instance v7, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v7}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 427
    .local v7, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 428
    const/4 v8, 0x0

    array-length v9, v4

    invoke-virtual {v7, v4, v8, v9}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 430
    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->sendPacket([B)V

    goto :goto_0

    .line 417
    .end local v4           #response:[B
    .end local v7           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    .restart local v6       #trileadKey:Ljava/lang/Object;
    :cond_3
    instance-of v8, v6, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    if-eqz v8, :cond_4

    .line 419
    check-cast v6, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    .end local v6           #trileadKey:Ljava/lang/Object;
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    .line 418
    invoke-static {v0, v6, v8}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->generateSignature([BLcom/trilead/ssh2/signature/DSAPrivateKey;Ljava/security/SecureRandom;)Lcom/trilead/ssh2/signature/DSASignature;

    move-result-object v5

    .line 420
    .local v5, signature:Lcom/trilead/ssh2/signature/DSASignature;
    invoke-static {v5}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->encodeSSHDSASignature(Lcom/trilead/ssh2/signature/DSASignature;)[B

    move-result-object v4

    .restart local v4       #response:[B
    goto :goto_1

    .line 422
    .end local v4           #response:[B
    .end local v5           #signature:Lcom/trilead/ssh2/signature/DSASignature;
    .restart local v6       #trileadKey:Ljava/lang/Object;
    :cond_4
    iget-object v8, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v9, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private processUnlockRequest(Lcom/trilead/ssh2/packets/TypesReader;)V
    .locals 4
    .parameter "tr"

    .prologue
    .line 479
    :try_start_0
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, unlockPassphrase:Ljava/lang/String;
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v2, v1}, Lcom/trilead/ssh2/AuthAgentCallback;->requestAgentUnlock(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v3, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_SUCCESS:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 496
    .end local v1           #unlockPassphrase:Ljava/lang/String;
    :goto_0
    return-void

    .line 484
    .restart local v1       #unlockPassphrase:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v3, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    .end local v1           #unlockPassphrase:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v3, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 492
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private removeAllIdentities(Lcom/trilead/ssh2/packets/TypesReader;)V
    .locals 3
    .parameter "tr"

    .prologue
    .line 366
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->failWhenLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v1}, Lcom/trilead/ssh2/AuthAgentCallback;->removeAllIdentities()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_SUCCESS:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 380
    :catch_1
    move-exception v1

    goto :goto_0

    .line 372
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private removeIdentity(Lcom/trilead/ssh2/packets/TypesReader;)V
    .locals 4
    .parameter "tr"

    .prologue
    .line 339
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->failWhenLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v1

    .line 343
    .local v1, publicKey:[B
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v2, v1}, Lcom/trilead/ssh2/AuthAgentCallback;->removeIdentity([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v3, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_SUCCESS:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    .end local v1           #publicKey:[B
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v3, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 354
    :catch_1
    move-exception v2

    goto :goto_0

    .line 346
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #publicKey:[B
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v3, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private sendIdentities()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v2, 0x0

    .line 237
    .local v2, keys:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v4, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v4}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 238
    .local v4, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 239
    const/4 v3, 0x0

    .line 241
    .local v3, numKeys:I
    iget-object v5, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v5}, Lcom/trilead/ssh2/AuthAgentCallback;->isAgentLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 242
    iget-object v5, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v5}, Lcom/trilead/ssh2/AuthAgentCallback;->retrieveIdentities()Ljava/util/Map;

    move-result-object v2

    .line 244
    :cond_0
    if-eqz v2, :cond_1

    .line 245
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    .line 247
    :cond_1
    invoke-virtual {v4, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 249
    if-eqz v2, :cond_2

    .line 250
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 257
    :cond_2
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->sendPacket([B)V

    .line 258
    return-void

    .line 250
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 252
    .local v1, keyBytes:[B
    const/4 v5, 0x0

    array-length v7, v1

    invoke-virtual {v4, v1, v5, v7}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 253
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPacket([B)V
    .locals 3
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 505
    .local v0, packet:Lcom/trilead/ssh2/packets/TypesWriter;
    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 506
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 507
    iget-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 508
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    .line 99
    :try_start_0
    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v6, v6, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v6, p0}, Lcom/trilead/ssh2/channel/ChannelManager;->registerThread(Lcom/trilead/ssh2/channel/IChannelWorkerThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v6, v6, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v7, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v6, v7}, Lcom/trilead/ssh2/channel/ChannelManager;->sendOpenConfirmation(Lcom/trilead/ssh2/channel/Channel;)V

    .line 111
    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v6}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->is:Ljava/io/InputStream;

    .line 112
    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v6}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 114
    const/4 v4, 0x4

    .line 115
    .local v4, totalSize:I
    const/4 v3, 0x0

    .line 122
    .local v3, readSoFar:I
    :cond_0
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->is:Ljava/io/InputStream;

    iget-object v7, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->buffer:[B

    iget-object v8, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->buffer:[B

    array-length v8, v8

    sub-int/2addr v8, v3

    invoke-virtual {v6, v7, v3, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    .line 130
    .local v1, len:I
    if-gtz v1, :cond_1

    .line 178
    :try_start_3
    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v6, v6, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v7, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    const-string v8, "EOF on both streams reached."

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 208
    .end local v1           #len:I
    .end local v3           #readSoFar:I
    .end local v4           #totalSize:I
    :goto_1
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->stopWorking()V

    goto :goto_1

    .line 124
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #readSoFar:I
    .restart local v4       #totalSize:I
    :catch_1
    move-exception v0

    .line 126
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->stopWorking()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 180
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #readSoFar:I
    .end local v4           #totalSize:I
    :catch_2
    move-exception v0

    .line 182
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v6, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v7, 0x32

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IOException in agent forwarder: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 186
    :try_start_5
    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->is:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 194
    :goto_2
    :try_start_6
    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 202
    :goto_3
    :try_start_7
    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v6, v6, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v7, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IOException in agent forwarder ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 204
    :catch_3
    move-exception v6

    goto :goto_1

    .line 133
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #len:I
    .restart local v3       #readSoFar:I
    .restart local v4       #totalSize:I
    :cond_1
    add-int/2addr v3, v1

    .line 135
    if-lt v3, v9, :cond_2

    .line 136
    :try_start_8
    new-instance v5, Lcom/trilead/ssh2/packets/TypesReader;

    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->buffer:[B

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 137
    .local v5, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v6

    add-int/lit8 v4, v6, 0x4

    .line 140
    .end local v5           #tr:Lcom/trilead/ssh2/packets/TypesReader;
    :cond_2
    if-ne v4, v3, :cond_0

    .line 141
    new-instance v5, Lcom/trilead/ssh2/packets/TypesReader;

    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->buffer:[B

    const/4 v7, 0x4

    add-int/lit8 v8, v3, -0x4

    invoke-direct {v5, v6, v7, v8}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 142
    .restart local v5       #tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v2

    .line 144
    .local v2, messageType:I
    packed-switch v2, :pswitch_data_0

    .line 170
    :pswitch_0
    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v7, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 174
    :goto_4
    const/4 v3, 0x0

    .line 117
    goto/16 :goto_0

    .line 146
    :pswitch_1
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->sendIdentities()V

    goto :goto_4

    .line 149
    :pswitch_2
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->addIdentity(Lcom/trilead/ssh2/packets/TypesReader;Z)V

    goto :goto_4

    .line 152
    :pswitch_3
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->addIdentity(Lcom/trilead/ssh2/packets/TypesReader;Z)V

    goto :goto_4

    .line 155
    :pswitch_4
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->removeIdentity(Lcom/trilead/ssh2/packets/TypesReader;)V

    goto :goto_4

    .line 158
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->removeAllIdentities(Lcom/trilead/ssh2/packets/TypesReader;)V

    goto :goto_4

    .line 161
    :pswitch_6
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->processSignRequest(Lcom/trilead/ssh2/packets/TypesReader;)V

    goto :goto_4

    .line 164
    :pswitch_7
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->processLockRequest(Lcom/trilead/ssh2/packets/TypesReader;)V

    goto :goto_4

    .line 167
    :pswitch_8
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->processUnlockRequest(Lcom/trilead/ssh2/packets/TypesReader;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 196
    .end local v1           #len:I
    .end local v2           #messageType:I
    .end local v3           #readSoFar:I
    .end local v4           #totalSize:I
    .end local v5           #tr:Lcom/trilead/ssh2/packets/TypesReader;
    .restart local v0       #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    goto :goto_3

    .line 188
    :catch_5
    move-exception v6

    goto :goto_2

    .line 144
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public stopWorking()V
    .locals 1

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    goto :goto_0
.end method
