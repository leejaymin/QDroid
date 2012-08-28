.class public Lcom/trilead/ssh2/crypto/PEMDecoder;
.super Ljava/lang/Object;
.source "PEMDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([CLjava/lang/String;)Ljava/lang/Object;
    .locals 16
    .parameter "pem"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static/range {p0 .. p0}, Lcom/trilead/ssh2/crypto/PEMDecoder;->parsePEM([C)Lcom/trilead/ssh2/crypto/PEMStructure;

    move-result-object v11

    .line 315
    .local v11, ps:Lcom/trilead/ssh2/crypto/PEMStructure;
    invoke-static {v11}, Lcom/trilead/ssh2/crypto/PEMDecoder;->isPEMEncrypted(Lcom/trilead/ssh2/crypto/PEMStructure;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    if-nez p1, :cond_0

    .line 318
    new-instance v1, Ljava/io/IOException;

    const-string v14, "PEM is encrypted, but no password was specified"

    invoke-direct {v1, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_0
    const-string v1, "ISO-8859-1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v11, v1}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decryptPEM(Lcom/trilead/ssh2/crypto/PEMStructure;[B)V

    .line 323
    :cond_1
    iget v1, v11, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    const/4 v14, 0x2

    if-ne v1, v14, :cond_5

    .line 325
    new-instance v8, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    iget-object v1, v11, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    invoke-direct {v8, v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 327
    .local v8, dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object v12

    .line 329
    .local v12, seq:[B
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    new-instance v1, Ljava/io/IOException;

    const-string v14, "Padding in DSA PRIVATE KEY DER stream."

    invoke-direct {v1, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_2
    invoke-virtual {v8, v12}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 334
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v13

    .line 336
    .local v13, version:Ljava/math/BigInteger;
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v13, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    new-instance v1, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Wrong version ("

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") in DSA PRIVATE KEY DER stream."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_3
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v2

    .line 340
    .local v2, p:Ljava/math/BigInteger;
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v3

    .line 341
    .local v3, q:Ljava/math/BigInteger;
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v4

    .line 342
    .local v4, g:Ljava/math/BigInteger;
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v5

    .line 343
    .local v5, y:Ljava/math/BigInteger;
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v6

    .line 345
    .local v6, x:Ljava/math/BigInteger;
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-eqz v1, :cond_4

    .line 346
    new-instance v1, Ljava/io/IOException;

    const-string v14, "Padding in DSA PRIVATE KEY DER stream."

    invoke-direct {v1, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_4
    new-instance v1, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    invoke-direct/range {v1 .. v6}, Lcom/trilead/ssh2/signature/DSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 371
    .end local v2           #p:Ljava/math/BigInteger;
    .end local v3           #q:Ljava/math/BigInteger;
    .end local v4           #g:Ljava/math/BigInteger;
    .end local v5           #y:Ljava/math/BigInteger;
    .end local v6           #x:Ljava/math/BigInteger;
    :goto_0
    return-object v1

    .line 351
    .end local v8           #dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    .end local v12           #seq:[B
    .end local v13           #version:Ljava/math/BigInteger;
    :cond_5
    iget v1, v11, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    const/4 v14, 0x1

    if-ne v1, v14, :cond_8

    .line 353
    new-instance v8, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    iget-object v1, v11, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    invoke-direct {v8, v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 355
    .restart local v8       #dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object v12

    .line 357
    .restart local v12       #seq:[B
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-eqz v1, :cond_6

    .line 358
    new-instance v1, Ljava/io/IOException;

    const-string v14, "Padding in RSA PRIVATE KEY DER stream."

    invoke-direct {v1, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_6
    invoke-virtual {v8, v12}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 362
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v13

    .line 364
    .restart local v13       #version:Ljava/math/BigInteger;
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v13, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 365
    new-instance v1, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Wrong version ("

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") in RSA PRIVATE KEY DER stream."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_7
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v10

    .line 368
    .local v10, n:Ljava/math/BigInteger;
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v9

    .line 369
    .local v9, e:Ljava/math/BigInteger;
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v7

    .line 371
    .local v7, d:Ljava/math/BigInteger;
    new-instance v1, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    invoke-direct {v1, v7, v9, v10}, Lcom/trilead/ssh2/signature/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 374
    .end local v7           #d:Ljava/math/BigInteger;
    .end local v8           #dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    .end local v9           #e:Ljava/math/BigInteger;
    .end local v10           #n:Ljava/math/BigInteger;
    .end local v12           #seq:[B
    .end local v13           #version:Ljava/math/BigInteger;
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v14, "PEM problem: it is of unknown type"

    invoke-direct {v1, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final decryptPEM(Lcom/trilead/ssh2/crypto/PEMStructure;[B)V
    .locals 13
    .parameter "ps"
    .parameter "pw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x18

    const/4 v10, 0x0

    .line 226
    iget-object v8, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    if-nez v8, :cond_0

    .line 227
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Broken PEM, no mode and salt given, but encryption enabled"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 229
    :cond_0
    iget-object v8, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 230
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Broken PEM, DEK-Info is incomplete!"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 232
    :cond_1
    iget-object v8, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    aget-object v1, v8, v10

    .line 233
    .local v1, algo:Ljava/lang/String;
    iget-object v8, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/trilead/ssh2/crypto/PEMDecoder;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 235
    .local v7, salt:[B
    const/4 v2, 0x0

    .line 237
    .local v2, bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    const-string v8, "DES-EDE3-CBC"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 239
    new-instance v4, Lcom/trilead/ssh2/crypto/cipher/DESede;

    invoke-direct {v4}, Lcom/trilead/ssh2/crypto/cipher/DESede;-><init>()V

    .line 240
    .local v4, des3:Lcom/trilead/ssh2/crypto/cipher/DESede;
    invoke-static {p1, v7, v11}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lcom/trilead/ssh2/crypto/cipher/DESede;->init(Z[B)V

    .line 241
    new-instance v2, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    .end local v2           #bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    invoke-direct {v2, v4, v7, v10}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .line 272
    .end local v4           #des3:Lcom/trilead/ssh2/crypto/cipher/DESede;
    .restart local v2       #bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    :goto_0
    iget-object v8, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    array-length v8, v8

    invoke-interface {v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v9

    rem-int/2addr v8, v9

    if-eqz v8, :cond_7

    .line 273
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid PEM structure, size of encrypted block is not a multiple of "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-interface {v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 273
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 243
    :cond_2
    const-string v8, "DES-CBC"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 245
    new-instance v3, Lcom/trilead/ssh2/crypto/cipher/DES;

    invoke-direct {v3}, Lcom/trilead/ssh2/crypto/cipher/DES;-><init>()V

    .line 246
    .local v3, des:Lcom/trilead/ssh2/crypto/cipher/DES;
    const/16 v8, 0x8

    invoke-static {p1, v7, v8}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object v8

    invoke-virtual {v3, v10, v8}, Lcom/trilead/ssh2/crypto/cipher/DES;->init(Z[B)V

    .line 247
    new-instance v2, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    .end local v2           #bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    invoke-direct {v2, v3, v7, v10}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .restart local v2       #bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    goto :goto_0

    .line 249
    .end local v3           #des:Lcom/trilead/ssh2/crypto/cipher/DES;
    :cond_3
    const-string v8, "AES-128-CBC"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 251
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/AES;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/AES;-><init>()V

    .line 252
    .local v0, aes:Lcom/trilead/ssh2/crypto/cipher/AES;
    const/16 v8, 0x10

    invoke-static {p1, v7, v8}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object v8

    invoke-virtual {v0, v10, v8}, Lcom/trilead/ssh2/crypto/cipher/AES;->init(Z[B)V

    .line 253
    new-instance v2, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    .end local v2           #bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    invoke-direct {v2, v0, v7, v10}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .restart local v2       #bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    goto :goto_0

    .line 255
    .end local v0           #aes:Lcom/trilead/ssh2/crypto/cipher/AES;
    :cond_4
    const-string v8, "AES-192-CBC"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 257
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/AES;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/AES;-><init>()V

    .line 258
    .restart local v0       #aes:Lcom/trilead/ssh2/crypto/cipher/AES;
    invoke-static {p1, v7, v11}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object v8

    invoke-virtual {v0, v10, v8}, Lcom/trilead/ssh2/crypto/cipher/AES;->init(Z[B)V

    .line 259
    new-instance v2, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    .end local v2           #bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    invoke-direct {v2, v0, v7, v10}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .restart local v2       #bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    goto :goto_0

    .line 261
    .end local v0           #aes:Lcom/trilead/ssh2/crypto/cipher/AES;
    :cond_5
    const-string v8, "AES-256-CBC"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 263
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/AES;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/AES;-><init>()V

    .line 264
    .restart local v0       #aes:Lcom/trilead/ssh2/crypto/cipher/AES;
    const/16 v8, 0x20

    invoke-static {p1, v7, v8}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object v8

    invoke-virtual {v0, v10, v8}, Lcom/trilead/ssh2/crypto/cipher/AES;->init(Z[B)V

    .line 265
    new-instance v2, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    .end local v2           #bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    invoke-direct {v2, v0, v7, v10}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .restart local v2       #bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    goto/16 :goto_0

    .line 269
    .end local v0           #aes:Lcom/trilead/ssh2/crypto/cipher/AES;
    :cond_6
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cannot decrypt PEM structure, unknown cipher "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 278
    :cond_7
    iget-object v8, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    array-length v8, v8

    new-array v5, v8, [B

    .line 280
    .local v5, dz:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v8, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    array-length v8, v8

    invoke-interface {v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v9

    div-int/2addr v8, v9

    if-lt v6, v8, :cond_8

    .line 287
    invoke-interface {v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v8

    invoke-static {v5, v8}, Lcom/trilead/ssh2/crypto/PEMDecoder;->removePadding([BI)[B

    move-result-object v5

    .line 289
    iput-object v5, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 290
    iput-object v12, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    .line 291
    iput-object v12, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    .line 292
    return-void

    .line 282
    :cond_8
    iget-object v8, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    invoke-interface {v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v9

    mul-int/2addr v9, v6

    invoke-interface {v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v10

    mul-int/2addr v10, v6

    invoke-interface {v2, v8, v9, v5, v10}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 280
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private static generateKeyFromPasswordSaltWithMD5([B[BI)[B
    .locals 7
    .parameter "password"
    .parameter "salt"
    .parameter "keyLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 73
    array-length v4, p1

    if-ge v4, v6, :cond_0

    .line 74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Salt needs to be at least 8 bytes for key generation."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_0
    new-instance v2, Lcom/trilead/ssh2/crypto/digest/MD5;

    invoke-direct {v2}, Lcom/trilead/ssh2/crypto/digest/MD5;-><init>()V

    .line 78
    .local v2, md5:Lcom/trilead/ssh2/crypto/digest/MD5;
    new-array v1, p2, [B

    .line 79
    .local v1, key:[B
    invoke-virtual {v2}, Lcom/trilead/ssh2/crypto/digest/MD5;->getDigestLength()I

    move-result v4

    new-array v3, v4, [B

    .line 83
    .local v3, tmp:[B
    :goto_0
    array-length v4, p0

    invoke-virtual {v2, p0, v5, v4}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    .line 84
    invoke-virtual {v2, p1, v5, v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    .line 88
    array-length v4, v3

    if-ge p2, v4, :cond_1

    move v0, p2

    .line 90
    .local v0, copy:I
    :goto_1
    invoke-virtual {v2, v3, v5}, Lcom/trilead/ssh2/crypto/digest/MD5;->digest([BI)V

    .line 92
    array-length v4, v1

    sub-int/2addr v4, p2

    invoke-static {v3, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    sub-int/2addr p2, v0

    .line 96
    if-nez p2, :cond_2

    .line 97
    return-object v1

    .line 88
    .end local v0           #copy:I
    :cond_1
    array-length v0, v3

    goto :goto_1

    .line 99
    .restart local v0       #copy:I
    :cond_2
    array-length v4, v3

    invoke-virtual {v2, v3, v5, v4}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    goto :goto_0
.end method

.method private static hexToByteArray(Ljava/lang/String;)[B
    .locals 6
    .parameter "hex"

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 55
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Uneven string length in hex encoding."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 59
    .local v0, decoded:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-lt v2, v4, :cond_2

    .line 67
    return-object v0

    .line 61
    :cond_2
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/trilead/ssh2/crypto/PEMDecoder;->hexToInt(C)I

    move-result v1

    .line 62
    .local v1, hi:I
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/trilead/ssh2/crypto/PEMDecoder;->hexToInt(C)I

    move-result v3

    .line 64
    .local v3, lo:I
    mul-int/lit8 v4, v1, 0x10

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static final hexToInt(C)I
    .locals 2
    .parameter "c"

    .prologue
    .line 31
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x66

    if-gt p0, v0, :cond_0

    .line 33
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    .line 43
    :goto_0
    return v0

    .line 36
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 38
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 41
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 43
    add-int/lit8 v0, p0, -0x30

    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need hex char"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final isPEMEncrypted(Lcom/trilead/ssh2/crypto/PEMStructure;)Z
    .locals 4
    .parameter "ps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 296
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 300
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown Proc-Type field."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_2
    const-string v2, "4"

    iget-object v3, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 303
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Proc-Type field ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_3
    const-string v2, "ENCRYPTED"

    iget-object v3, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 306
    goto :goto_0
.end method

.method public static final parsePEM([C)Lcom/trilead/ssh2/crypto/PEMStructure;
    .locals 14
    .parameter "pem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 125
    new-instance v7, Lcom/trilead/ssh2/crypto/PEMStructure;

    invoke-direct {v7}, Lcom/trilead/ssh2/crypto/PEMStructure;-><init>()V

    .line 127
    .local v7, ps:Lcom/trilead/ssh2/crypto/PEMStructure;
    const/4 v4, 0x0

    .line 129
    .local v4, line:Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/CharArrayReader;

    invoke-direct {v11, p0}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v0, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 131
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 135
    .local v1, endLine:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 137
    if-nez v4, :cond_1

    .line 138
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Invalid PEM structure, \'-----BEGIN...\' missing"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 140
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 142
    const-string v11, "-----BEGIN DSA PRIVATE KEY-----"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 144
    const-string v1, "-----END DSA PRIVATE KEY-----"

    .line 145
    const/4 v11, 0x2

    iput v11, v7, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    .line 159
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 161
    if-nez v4, :cond_4

    .line 162
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Invalid PEM structure, "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " missing"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 149
    :cond_3
    const-string v11, "-----BEGIN RSA PRIVATE KEY-----"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 151
    const-string v1, "-----END RSA PRIVATE KEY-----"

    .line 152
    const/4 v11, 0x1

    iput v11, v7, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    goto :goto_0

    .line 164
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 166
    const/16 v11, 0x3a

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 168
    .local v8, sem_idx:I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_5

    .line 196
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 200
    .local v3, keyData:Ljava/lang/StringBuffer;
    :goto_1
    if-nez v4, :cond_8

    .line 201
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Invalid PEM structure, "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " missing"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 171
    .end local v3           #keyData:Ljava/lang/StringBuffer;
    :cond_5
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v4, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, name:Ljava/lang/String;
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, value:Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 176
    .local v10, values:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-lt v2, v11, :cond_6

    .line 182
    const-string v11, "Proc-Type:"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 184
    iput-object v10, v7, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_6
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 188
    :cond_7
    const-string v11, "DEK-Info:"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 190
    iput-object v10, v7, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    goto/16 :goto_0

    .line 203
    .end local v2           #i:I
    .end local v5           #name:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    .end local v10           #values:[Ljava/lang/String;
    .restart local v3       #keyData:Ljava/lang/StringBuffer;
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    new-array v6, v11, [C

    .line 214
    .local v6, pem_chars:[C
    array-length v11, v6

    invoke-virtual {v3, v12, v11, v6, v12}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 216
    invoke-static {v6}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object v11

    iput-object v11, v7, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 218
    iget-object v11, v7, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    array-length v11, v11

    if-nez v11, :cond_a

    .line 219
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Invalid PEM structure, no data available"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 208
    .end local v6           #pem_chars:[C
    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 198
    goto/16 :goto_1

    .line 221
    .restart local v6       #pem_chars:[C
    :cond_a
    return-object v7
.end method

.method private static removePadding([BI)[B
    .locals 5
    .parameter "buff"
    .parameter "blockSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 107
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 109
    .local v1, rfc_1423_padding:I
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    if-le v1, p1, :cond_1

    .line 110
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Decrypted PEM has wrong padding, did you specify the correct password?"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_1
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    if-le v0, v1, :cond_2

    .line 118
    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v2, v3, [B

    .line 119
    .local v2, tmp:[B
    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    return-object v2

    .line 114
    .end local v2           #tmp:[B
    :cond_2
    array-length v3, p0

    sub-int/2addr v3, v0

    aget-byte v3, p0, v3

    if-eq v3, v1, :cond_3

    .line 115
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Decrypted PEM has wrong padding, did you specify the correct password?"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
