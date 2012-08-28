.class public Lcom/trilead/ssh2/KnownHosts;
.super Ljava/lang/Object;
.source "KnownHosts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;
    }
.end annotation


# instance fields
.field private publicKeys:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    .line 68
    return-void
.end method

.method private final checkHashed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "entry"
    .parameter "hostname"

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x3

    const/4 v10, 0x0

    .line 191
    const-string v11, "|1|"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    .line 226
    :goto_0
    return v9

    .line 194
    :cond_0
    const/16 v11, 0x7c

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 196
    .local v0, delim_idx:I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_1

    move v9, v10

    .line 197
    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p1, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, salt_base64:Ljava/lang/String;
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, hash_base64:Ljava/lang/String;
    move-object v6, v9

    .line 202
    check-cast v6, [B

    .local v6, salt:[B
    move-object v3, v9

    .line 203
    check-cast v3, [B

    .line 207
    .local v3, hash:[B
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-static {v9}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object v6

    .line 208
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-static {v9}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 215
    new-instance v8, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v8}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 217
    .local v8, sha1:Lcom/trilead/ssh2/crypto/digest/SHA1;
    array-length v9, v6

    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result v11

    if-eq v9, v11, :cond_2

    move v9, v10

    .line 218
    goto :goto_0

    .line 210
    .end local v8           #sha1:Lcom/trilead/ssh2/crypto/digest/SHA1;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    move v9, v10

    .line 212
    goto :goto_0

    .line 220
    .end local v2           #e:Ljava/io/IOException;
    .restart local v8       #sha1:Lcom/trilead/ssh2/crypto/digest/SHA1;
    :cond_2
    invoke-static {v6, p2}, Lcom/trilead/ssh2/KnownHosts;->hmacSha1Hash([BLjava/lang/String;)[B

    move-result-object v1

    .line 222
    .local v1, dig:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v9, v1

    if-lt v5, v9, :cond_3

    .line 226
    const/4 v9, 0x1

    goto :goto_0

    .line 223
    :cond_3
    aget-byte v9, v1, v5

    aget-byte v11, v3, v5

    if-eq v9, v11, :cond_4

    move v9, v10

    .line 224
    goto :goto_0

    .line 222
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private checkKey(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 6
    .parameter "remoteHostname"
    .parameter "remoteKey"

    .prologue
    .line 231
    const/4 v3, 0x1

    .line 233
    .local v3, result:I
    iget-object v5, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v5

    .line 235
    :try_start_0
    iget-object v4, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 237
    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 233
    monitor-exit v5

    .line 252
    .end local v3           #result:I
    :goto_1
    return v3

    .line 239
    .restart local v3       #result:I
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    .line 241
    .local v1, ke:Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;
    iget-object v4, v1, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/trilead/ssh2/KnownHosts;->hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    iget-object v4, v1, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->key:Ljava/lang/Object;

    invoke-direct {p0, v4, p2}, Lcom/trilead/ssh2/KnownHosts;->matchKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 246
    .local v2, res:Z
    if-eqz v2, :cond_2

    .line 247
    monitor-exit v5

    const/4 v3, 0x0

    goto :goto_1

    .line 249
    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    .line 233
    .end local v0           #i:Ljava/util/Iterator;
    .end local v1           #ke:Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;
    .end local v2           #res:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static final createHexFingerprint(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .parameter "keytype"
    .parameter "publickey"

    .prologue
    .line 824
    const-string v1, "md5"

    invoke-static {v1, p0, p1}, Lcom/trilead/ssh2/KnownHosts;->rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 825
    .local v0, raw:[B
    invoke-static {v0}, Lcom/trilead/ssh2/KnownHosts;->rawToHexFingerprint([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final hmacSha1Hash([BLjava/lang/String;)[B
    .locals 7
    .parameter "salt"
    .parameter "hostname"

    .prologue
    .line 165
    new-instance v3, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v3}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 167
    .local v3, sha1:Lcom/trilead/ssh2/crypto/digest/SHA1;
    array-length v4, p0

    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 168
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Salt has wrong length ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/crypto/digest/HMAC;

    array-length v4, p0

    invoke-direct {v1, v3, p0, v4}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    .line 174
    .local v1, hmac:Lcom/trilead/ssh2/crypto/digest/HMAC;
    :try_start_0
    const-string v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/trilead/ssh2/crypto/digest/HMAC;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/digest/HMAC;->getDigestLength()I

    move-result v4

    new-array v0, v4, [B

    .line 184
    .local v0, dig:[B
    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/crypto/digest/HMAC;->digest([B)V

    .line 186
    return-object v0

    .line 175
    .end local v0           #dig:[B
    :catch_0
    move-exception v2

    .line 179
    .local v2, ignore:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/trilead/ssh2/crypto/digest/HMAC;->update([B)V

    goto :goto_0
.end method

.method private final hostnameMatches([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "hostpatterns"
    .parameter "hostname"

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, isMatch:Z
    const/4 v2, 0x0

    .line 323
    .local v2, negate:Z
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 325
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v5, p1

    if-lt v1, v5, :cond_0

    .line 385
    .end local v0           #isMatch:Z
    :goto_1
    return v0

    .line 327
    .restart local v0       #isMatch:Z
    :cond_0
    aget-object v5, p1, v1

    if-nez v5, :cond_2

    .line 325
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_2
    const/4 v3, 0x0

    .line 336
    .local v3, pattern:Ljava/lang/String;
    aget-object v5, p1, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    aget-object v5, p1, v1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x21

    if-ne v5, v6, :cond_4

    .line 338
    aget-object v5, p1, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 339
    const/4 v2, 0x1

    .line 349
    :goto_3
    if-eqz v0, :cond_3

    if-eqz v2, :cond_1

    .line 354
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7c

    if-ne v5, v6, :cond_6

    .line 356
    invoke-direct {p0, v3, p2}, Lcom/trilead/ssh2/KnownHosts;->checkHashed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 358
    if-eqz v2, :cond_5

    move v0, v4

    .line 359
    goto :goto_1

    .line 343
    :cond_4
    aget-object v3, p1, v1

    .line 344
    const/4 v2, 0x0

    goto :goto_3

    .line 360
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 365
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 367
    const/16 v5, 0x3f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v7, :cond_7

    const/16 v5, 0x2a

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v7, :cond_9

    .line 369
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-direct {p0, v5, v4, v6, v4}, Lcom/trilead/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 371
    if-eqz v2, :cond_8

    move v0, v4

    .line 372
    goto :goto_1

    .line 373
    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    .line 376
    :cond_9
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 378
    if-eqz v2, :cond_a

    move v0, v4

    .line 379
    goto :goto_1

    .line 380
    :cond_a
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private final matchKeys(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .parameter "key1"
    .parameter "key2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 445
    instance-of v6, p1, Lcom/trilead/ssh2/signature/RSAPublicKey;

    if-eqz v6, :cond_2

    instance-of v6, p2, Lcom/trilead/ssh2/signature/RSAPublicKey;

    if-eqz v6, :cond_2

    move-object v3, p1

    .line 447
    check-cast v3, Lcom/trilead/ssh2/signature/RSAPublicKey;

    .local v3, savedRSAKey:Lcom/trilead/ssh2/signature/RSAPublicKey;
    move-object v1, p2

    .line 448
    check-cast v1, Lcom/trilead/ssh2/signature/RSAPublicKey;

    .line 450
    .local v1, remoteRSAKey:Lcom/trilead/ssh2/signature/RSAPublicKey;
    invoke-virtual {v3}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 479
    .end local v1           #remoteRSAKey:Lcom/trilead/ssh2/signature/RSAPublicKey;
    .end local v3           #savedRSAKey:Lcom/trilead/ssh2/signature/RSAPublicKey;
    :cond_0
    :goto_0
    return v4

    .line 453
    .restart local v1       #remoteRSAKey:Lcom/trilead/ssh2/signature/RSAPublicKey;
    .restart local v3       #savedRSAKey:Lcom/trilead/ssh2/signature/RSAPublicKey;
    :cond_1
    invoke-virtual {v3}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 456
    goto :goto_0

    .line 459
    .end local v1           #remoteRSAKey:Lcom/trilead/ssh2/signature/RSAPublicKey;
    .end local v3           #savedRSAKey:Lcom/trilead/ssh2/signature/RSAPublicKey;
    :cond_2
    instance-of v6, p1, Lcom/trilead/ssh2/signature/DSAPublicKey;

    if-eqz v6, :cond_0

    instance-of v6, p2, Lcom/trilead/ssh2/signature/DSAPublicKey;

    if-eqz v6, :cond_0

    move-object v2, p1

    .line 461
    check-cast v2, Lcom/trilead/ssh2/signature/DSAPublicKey;

    .local v2, savedDSAKey:Lcom/trilead/ssh2/signature/DSAPublicKey;
    move-object v0, p2

    .line 462
    check-cast v0, Lcom/trilead/ssh2/signature/DSAPublicKey;

    .line 464
    .local v0, remoteDSAKey:Lcom/trilead/ssh2/signature/DSAPublicKey;
    invoke-virtual {v2}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 467
    invoke-virtual {v2}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 470
    invoke-virtual {v2}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 473
    invoke-virtual {v2}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 476
    goto :goto_0
.end method

.method private final pseudoRegex([CI[CI)Z
    .locals 6
    .parameter "pattern"
    .parameter "i"
    .parameter "match"
    .parameter "j"

    .prologue
    const/16 v5, 0x3f

    const/16 v4, 0x2a

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 490
    :goto_0
    array-length v2, p1

    if-ne v2, p2, :cond_2

    .line 491
    array-length v2, p3

    if-ne v2, p4, :cond_1

    .line 526
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 491
    goto :goto_1

    .line 493
    :cond_2
    aget-char v2, p1, p2

    if-ne v2, v4, :cond_6

    .line 495
    add-int/lit8 p2, p2, 0x1

    .line 497
    array-length v2, p1

    if-eq v2, p2, :cond_0

    .line 500
    aget-char v2, p1, p2

    if-eq v2, v4, :cond_5

    aget-char v2, p1, p2

    if-eq v2, v5, :cond_5

    .line 504
    :cond_3
    aget-char v2, p1, p2

    aget-char v3, p3, p4

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p4, 0x1

    invoke-direct {p0, p1, v2, p3, v3}, Lcom/trilead/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    :cond_4
    add-int/lit8 p4, p4, 0x1

    .line 507
    array-length v2, p3

    if-ne v2, p4, :cond_3

    move v0, v1

    .line 508
    goto :goto_1

    .line 514
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/trilead/ssh2/KnownHosts;->pseudoRegex([CI[CI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 516
    add-int/lit8 p4, p4, 0x1

    .line 517
    array-length v2, p3

    if-ne v2, p4, :cond_5

    move v0, v1

    .line 518
    goto :goto_1

    .line 522
    :cond_6
    array-length v2, p3

    if-ne v2, p4, :cond_7

    move v0, v1

    .line 523
    goto :goto_1

    .line 525
    :cond_7
    aget-char v2, p1, p2

    if-eq v2, v5, :cond_8

    aget-char v2, p1, p2

    aget-char v3, p3, p4

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 526
    goto :goto_1

    .line 528
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 529
    add-int/lit8 p4, p4, 0x1

    .line 486
    goto :goto_0
.end method

.method private static final rawFingerPrint(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5
    .parameter "type"
    .parameter "keyType"
    .parameter "hostkey"

    .prologue
    .line 710
    const/4 v0, 0x0

    .line 712
    .local v0, dig:Lcom/trilead/ssh2/crypto/digest/Digest;
    const-string v2, "md5"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MD5;

    .end local v0           #dig:Lcom/trilead/ssh2/crypto/digest/Digest;
    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/MD5;-><init>()V

    .line 723
    .restart local v0       #dig:Lcom/trilead/ssh2/crypto/digest/Digest;
    :goto_0
    const-string v2, "ssh-rsa"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 726
    const-string v2, "ssh-dss"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 730
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown key type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 716
    :cond_0
    const-string v2, "sha1"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    .end local v0           #dig:Lcom/trilead/ssh2/crypto/digest/Digest;
    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .restart local v0       #dig:Lcom/trilead/ssh2/crypto/digest/Digest;
    goto :goto_0

    .line 721
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown hash type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 732
    :cond_2
    if-nez p2, :cond_3

    .line 733
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "hostkey is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    :cond_3
    invoke-interface {v0, p2}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    .line 736
    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->getDigestLength()I

    move-result v2

    new-array v1, v2, [B

    .line 737
    .local v1, res:[B
    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->digest([B)V

    .line 738
    return-object v1
.end method

.method private static final rawToHexFingerprint([B)Ljava/lang/String;
    .locals 5
    .parameter "fingerprint"

    .prologue
    .line 748
    const-string v4, "0123456789abcdef"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 750
    .local v0, alpha:[C
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 752
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p0

    if-lt v2, v4, :cond_0

    .line 761
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 754
    :cond_0
    if-eqz v2, :cond_1

    .line 755
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 756
    :cond_1
    aget-byte v4, p0, v2

    and-int/lit16 v1, v4, 0xff

    .line 757
    .local v1, b:I
    shr-int/lit8 v4, v1, 0x4

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 758
    and-int/lit8 v4, v1, 0xf

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 752
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addHostkey([Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 5
    .parameter "hostnames"
    .parameter "serverHostKeyAlgorithm"
    .parameter "serverHostKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "hostnames may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_0
    const-string v2, "ssh-rsa"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-static {p3}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->decodeSSHRSAPublicKey([B)Lcom/trilead/ssh2/signature/RSAPublicKey;

    move-result-object v1

    .line 100
    .local v1, rpk:Lcom/trilead/ssh2/signature/RSAPublicKey;
    iget-object v3, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v3

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v4, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    invoke-direct {v4, p0, p1, v1}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 100
    monitor-exit v3

    .line 116
    .end local v1           #rpk:Lcom/trilead/ssh2/signature/RSAPublicKey;
    :goto_0
    return-void

    .line 100
    .restart local v1       #rpk:Lcom/trilead/ssh2/signature/RSAPublicKey;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 105
    .end local v1           #rpk:Lcom/trilead/ssh2/signature/RSAPublicKey;
    :cond_1
    const-string v2, "ssh-dss"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    invoke-static {p3}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->decodeSSHDSAPublicKey([B)Lcom/trilead/ssh2/signature/DSAPublicKey;

    move-result-object v0

    .line 109
    .local v0, dpk:Lcom/trilead/ssh2/signature/DSAPublicKey;
    iget-object v3, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    monitor-enter v3

    .line 111
    :try_start_1
    iget-object v2, p0, Lcom/trilead/ssh2/KnownHosts;->publicKeys:Ljava/util/LinkedList;

    new-instance v4, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;

    invoke-direct {v4, p0, p1, v0}, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;-><init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 109
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 115
    .end local v0           #dpk:Lcom/trilead/ssh2/signature/DSAPublicKey;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknwon host key type ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public verifyHostkey(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 9
    .parameter "hostname"
    .parameter "serverHostKeyAlgorithm"
    .parameter "serverHostKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 604
    const/4 v4, 0x0

    .line 606
    .local v4, remoteKey:Ljava/lang/Object;
    const-string v6, "ssh-rsa"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 608
    invoke-static {p3}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->decodeSSHRSAPublicKey([B)Lcom/trilead/ssh2/signature/RSAPublicKey;

    move-result-object v4

    .line 617
    .end local v4           #remoteKey:Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, p1, v4}, Lcom/trilead/ssh2/KnownHosts;->checkKey(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v5

    .line 619
    .local v5, result:I
    if-nez v5, :cond_3

    move v3, v5

    .line 644
    :cond_0
    :goto_1
    return v3

    .line 610
    .end local v5           #result:I
    .restart local v4       #remoteKey:Ljava/lang/Object;
    :cond_1
    const-string v6, "ssh-dss"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 612
    invoke-static {p3}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->decodeSSHDSAPublicKey([B)Lcom/trilead/ssh2/signature/DSAPublicKey;

    move-result-object v4

    .local v4, remoteKey:Lcom/trilead/ssh2/signature/DSAPublicKey;
    goto :goto_0

    .line 615
    .local v4, remoteKey:Ljava/lang/Object;
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unknown hostkey type "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 622
    .end local v4           #remoteKey:Ljava/lang/Object;
    .restart local v5       #result:I
    :cond_3
    const/4 v2, 0x0

    check-cast v2, [Ljava/net/InetAddress;

    .line 626
    .local v2, ipAdresses:[Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 633
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v6, v2

    if-lt v1, v6, :cond_4

    move v3, v5

    .line 644
    goto :goto_1

    .line 628
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/net/UnknownHostException;
    move v3, v5

    .line 630
    goto :goto_1

    .line 635
    .end local v0           #e:Ljava/net/UnknownHostException;
    .restart local v1       #i:I
    :cond_4
    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/trilead/ssh2/KnownHosts;->checkKey(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v3

    .line 637
    .local v3, newresult:I
    if-eqz v3, :cond_0

    .line 640
    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    .line 641
    const/4 v5, 0x2

    .line 633
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
