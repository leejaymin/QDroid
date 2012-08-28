.class public Lorg/connectbot/util/PubkeyUtils;
.super Ljava/lang/Object;
.source "PubkeyUtils.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 324
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/connectbot/util/PubkeyUtils;->HEX_DIGITS:[C

    .line 64
    return-void

    .line 324
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cipher(I[B[B)[B
    .locals 4
    .parameter "mode"
    .parameter "data"
    .parameter "secret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p2}, Lorg/connectbot/util/PubkeyUtils;->sha256([B)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 88
    .local v1, secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 89
    .local v0, c:Ljavax/crypto/Cipher;
    invoke-virtual {v0, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 90
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method public static convertToOpenSSHFormat(Ljava/security/PublicKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "pk"
    .parameter "origNickname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 233
    move-object v1, p1

    .line 234
    .local v1, nickname:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 235
    const-string v1, "connectbot@android"

    .line 237
    :cond_0
    instance-of v2, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_1

    .line 238
    const-string v0, "ssh-rsa "

    .line 239
    .local v0, data:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-static {p0}, Lorg/connectbot/util/PubkeyUtils;->convertToTrilead(Ljava/security/PublicKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/signature/RSAPublicKey;

    .line 239
    invoke-static {v2}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->encodeSSHRSAPublicKey(Lcom/trilead/ssh2/signature/RSAPublicKey;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    :goto_0
    return-object v2

    .line 242
    .end local v0           #data:Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v2, :cond_2

    .line 243
    const-string v0, "ssh-dss "

    .line 244
    .restart local v0       #data:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-static {p0}, Lorg/connectbot/util/PubkeyUtils;->convertToTrilead(Ljava/security/PublicKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/signature/DSAPublicKey;

    .line 244
    invoke-static {v2}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->encodeSSHDSAPublicKey(Lcom/trilead/ssh2/signature/DSAPublicKey;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 249
    .end local v0           #data:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Unknown key type"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static convertToTrilead(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/lang/Object;
    .locals 7
    .parameter "priv"
    .parameter "pub"

    .prologue
    .line 213
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 214
    new-instance v1, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    move-object v0, p0

    .line 215
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 216
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 217
    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;

    .end local p0
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    .line 214
    invoke-direct {v1, v0, v2, v3}, Lcom/trilead/ssh2/signature/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, v1

    .line 220
    .local v6, dp:Ljava/security/interfaces/DSAParams;
    :goto_0
    return-object v0

    .line 218
    .end local v6           #dp:Ljava/security/interfaces/DSAParams;
    .restart local p0
    .restart local p1
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 219
    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    .line 220
    .restart local v6       #dp:Ljava/security/interfaces/DSAParams;
    new-instance v0, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    .line 221
    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    .end local p1
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    .line 222
    check-cast p0, Ljava/security/interfaces/DSAPrivateKey;

    .end local p0
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v5

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/trilead/ssh2/signature/DSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 225
    .end local v6           #dp:Ljava/security/interfaces/DSAParams;
    .restart local p0
    .restart local p1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key is not RSA or DSA format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertToTrilead(Ljava/security/PublicKey;)Ljava/lang/Object;
    .locals 6
    .parameter "pk"

    .prologue
    .line 199
    instance-of v1, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_0

    .line 200
    new-instance v2, Lcom/trilead/ssh2/signature/RSAPublicKey;

    move-object v1, p0

    .line 201
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    .line 202
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    .end local p0
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    .line 200
    invoke-direct {v2, v1, v3}, Lcom/trilead/ssh2/signature/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v1, v2

    .line 205
    .local v0, dp:Ljava/security/interfaces/DSAParams;
    :goto_0
    return-object v1

    .line 203
    .end local v0           #dp:Ljava/security/interfaces/DSAParams;
    .restart local p0
    :cond_0
    instance-of v1, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_1

    move-object v1, p0

    .line 204
    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 205
    .restart local v0       #dp:Ljava/security/interfaces/DSAParams;
    new-instance v1, Lcom/trilead/ssh2/signature/DSAPublicKey;

    .line 206
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v4

    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    .end local p0
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    .line 205
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/trilead/ssh2/signature/DSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 209
    .end local v0           #dp:Ljava/security/interfaces/DSAParams;
    .restart local p0
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PublicKey is not RSA or DSA format"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decodePrivate([BLjava/lang/String;)Ljava/security/PrivateKey;
    .locals 3
    .parameter "encoded"
    .parameter "keyType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 142
    .local v1, privKeySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 143
    .local v0, kf:Ljava/security/KeyFactory;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2
.end method

.method public static decodePrivate([BLjava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .parameter "encoded"
    .parameter "keyType"
    .parameter "secret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    invoke-static {p0, p2}, Lorg/connectbot/util/PubkeyUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/connectbot/util/PubkeyUtils;->decodePrivate([BLjava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/connectbot/util/PubkeyUtils;->decodePrivate([BLjava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .locals 6
    .parameter "complete"
    .parameter "secret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    const/16 v3, 0x8

    :try_start_0
    new-array v2, v3, [B

    .line 112
    .local v2, salt:[B
    array-length v3, p0

    array-length v4, v2

    sub-int/2addr v3, v4

    new-array v0, v3, [B

    .line 114
    .local v0, ciphertext:[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {p0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {p0, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    const/16 v3, 0x3e8

    invoke-static {v2, v3, p1, v0}, Lorg/connectbot/util/Encryptor;->decrypt([BILjava/lang/String;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 121
    .end local v0           #ciphertext:[B
    .end local v2           #salt:[B
    :goto_0
    return-object v3

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "decrypt"

    const-string v4, "Could not decrypt with new method"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v3, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, p0, v4}, Lorg/connectbot/util/PubkeyUtils;->cipher(I[B[B)[B

    move-result-object v3

    goto :goto_0
.end method

.method protected static encodeHex([B)Ljava/lang/String;
    .locals 8
    .parameter "bytes"

    .prologue
    .line 327
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 329
    .local v1, hex:[C
    const/4 v2, 0x0

    .line 330
    .local v2, i:I
    array-length v5, p0

    const/4 v4, 0x0

    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 335
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 330
    :cond_0
    aget-byte v0, p0, v4

    .line 331
    .local v0, b:B
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    sget-object v6, Lorg/connectbot/util/PubkeyUtils;->HEX_DIGITS:[C

    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v3

    .line 332
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    sget-object v6, Lorg/connectbot/util/PubkeyUtils;->HEX_DIGITS:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v2

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static encrypt([BLjava/lang/String;)[B
    .locals 6
    .parameter "cleartext"
    .parameter "secret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 94
    const/16 v3, 0x8

    new-array v2, v3, [B

    .line 96
    .local v2, salt:[B
    const/16 v3, 0x3e8

    invoke-static {v2, v3, p1, p0}, Lorg/connectbot/util/Encryptor;->encrypt([BILjava/lang/String;[B)[B

    move-result-object v0

    .line 98
    .local v0, ciphertext:[B
    array-length v3, v2

    array-length v4, v0

    add-int/2addr v3, v4

    new-array v1, v3, [B

    .line 100
    .local v1, complete:[B
    array-length v3, v2

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    array-length v3, v2

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 104
    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 106
    return-object v1
.end method

.method public static exportPEM(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "key"
    .parameter "secret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidParameterSpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v10, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    .line 280
    .local v1, data:[B
    const-string v12, "-----BEGIN PRIVATE KEY-----"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const/16 v12, 0xa

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    if-eqz p1, :cond_0

    .line 284
    const/16 v12, 0x8

    new-array v9, v12, [B

    .line 285
    .local v9, salt:[B
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    .line 286
    .local v8, random:Ljava/security/SecureRandom;
    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 288
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v12, 0x1

    invoke-direct {v2, v9, v12}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 289
    .local v2, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v5

    .line 291
    .local v5, params:Ljava/security/AlgorithmParameters;
    invoke-virtual {v5, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 293
    new-instance v6, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    invoke-direct {v6, v12}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 295
    .local v6, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 296
    .local v4, keyFact:Ljavax/crypto/SecretKeyFactory;
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 297
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v12, 0x3

    invoke-virtual {v4, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v13

    invoke-virtual {v0, v12, v13, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 299
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v11

    .line 301
    .local v11, wrappedKey:[B
    new-instance v7, Ljavax/crypto/EncryptedPrivateKeyInfo;

    invoke-direct {v7, v5, v11}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>(Ljava/security/AlgorithmParameters;[B)V

    .line 303
    .local v7, pinfo:Ljavax/crypto/EncryptedPrivateKeyInfo;
    invoke-virtual {v7}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v1

    .line 305
    const-string v12, "Proc-Type: 4,ENCRYPTED\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v12, "DEK-Info: DES-EDE3-CBC,"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {v9}, Lorg/connectbot/util/PubkeyUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v12, "\n\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v4           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v5           #params:Ljava/security/AlgorithmParameters;
    .end local v6           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v7           #pinfo:Ljavax/crypto/EncryptedPrivateKeyInfo;
    .end local v8           #random:Ljava/security/SecureRandom;
    .end local v9           #salt:[B
    .end local v11           #wrappedKey:[B
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 312
    .local v3, i:I
    invoke-static {v1}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 313
    add-int/lit8 v3, v3, 0x3f

    :goto_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lt v3, v12, :cond_1

    .line 317
    const/16 v12, 0xa

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    const-string v12, "-----END PRIVATE KEY-----"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const/16 v12, 0xa

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 314
    :cond_1
    const-string v12, "\n"

    invoke-virtual {v10, v3, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    add-int/lit8 v3, v3, 0x40

    goto :goto_0
.end method

.method public static extractOpenSSHPublic(Ljava/lang/Object;)[B
    .locals 3
    .parameter "trileadKey"

    .prologue
    const/4 v1, 0x0

    .line 262
    :try_start_0
    instance-of v2, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    if-eqz v2, :cond_1

    .line 264
    check-cast p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    .end local p0
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getPublicKey()Lcom/trilead/ssh2/signature/RSAPublicKey;

    move-result-object v2

    .line 263
    invoke-static {v2}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->encodeSSHRSAPublicKey(Lcom/trilead/ssh2/signature/RSAPublicKey;)[B

    move-result-object v1

    .line 271
    .local v0, e:Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v1

    .line 265
    .end local v0           #e:Ljava/io/IOException;
    .restart local p0
    :cond_1
    instance-of v2, p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    if-eqz v2, :cond_0

    .line 267
    check-cast p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    .end local p0
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getPublicKey()Lcom/trilead/ssh2/signature/DSAPublicKey;

    move-result-object v2

    .line 266
    invoke-static {v2}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->encodeSSHDSAPublicKey(Lcom/trilead/ssh2/signature/DSAPublicKey;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .restart local v0       #e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static formatKey(Ljava/security/Key;)Ljava/lang/String;
    .locals 5
    .parameter "key"

    .prologue
    .line 75
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, algo:Ljava/lang/String;
    invoke-interface {p0}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, fmt:Ljava/lang/String;
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 78
    .local v1, encoded:[B
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Key[algorithm="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 79
    const-string v4, ", bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getEncodedPrivate(Ljava/security/PrivateKey;)[B
    .locals 2
    .parameter "pk"

    .prologue
    .line 130
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static getEncodedPrivate(Ljava/security/PrivateKey;Ljava/lang/String;)[B
    .locals 1
    .parameter "pk"
    .parameter "secret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    invoke-static {p0}, Lorg/connectbot/util/PubkeyUtils;->getEncodedPrivate(Ljava/security/PrivateKey;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/connectbot/util/PubkeyUtils;->encrypt([BLjava/lang/String;)[B

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/connectbot/util/PubkeyUtils;->getEncodedPrivate(Ljava/security/PrivateKey;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getEncodedPublic(Ljava/security/PublicKey;)[B
    .locals 2
    .parameter "pk"

    .prologue
    .line 126
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static recoverKeyPair([B)Ljava/security/KeyPair;
    .locals 12
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v5, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 167
    .local v5, privKeySpec:Ljava/security/spec/KeySpec;
    :try_start_0
    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 168
    .local v2, kf:Ljava/security/KeyFactory;
    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    .line 170
    .local v4, priv:Ljava/security/PrivateKey;
    new-instance v7, Ljava/security/spec/RSAPublicKeySpec;

    move-object v0, v4

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    move-object v9, v0

    .line 171
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v10

    move-object v0, v4

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    move-object v9, v0

    .line 172
    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v9

    .line 170
    invoke-direct {v7, v10, v9}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 174
    .local v7, pubKeySpec:Ljava/security/spec/KeySpec;
    invoke-virtual {v2, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 191
    .local v6, pub:Ljava/security/PublicKey;
    :goto_0
    new-instance v9, Ljava/security/KeyPair;

    invoke-direct {v9, v6, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v9

    .line 175
    .end local v2           #kf:Ljava/security/KeyFactory;
    .end local v4           #priv:Ljava/security/PrivateKey;
    .end local v6           #pub:Ljava/security/PublicKey;
    .end local v7           #pubKeySpec:Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v9, "DSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 177
    .restart local v2       #kf:Ljava/security/KeyFactory;
    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    .restart local v4       #priv:Ljava/security/PrivateKey;
    move-object v9, v4

    .line 179
    check-cast v9, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v9}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    .line 182
    .local v3, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v10

    move-object v9, v4

    check-cast v9, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v9}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v9

    .line 183
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v11

    .line 182
    invoke-virtual {v10, v9, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 185
    .local v8, y:Ljava/math/BigInteger;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    .line 186
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v11

    .line 185
    invoke-direct {v7, v8, v9, v10, v11}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 188
    .restart local v7       #pubKeySpec:Ljava/security/spec/KeySpec;
    invoke-virtual {v2, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    .restart local v6       #pub:Ljava/security/PublicKey;
    goto :goto_0
.end method

.method public static sha256([B)[B
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 83
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method
