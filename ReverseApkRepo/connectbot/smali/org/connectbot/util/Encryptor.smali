.class public final Lorg/connectbot/util/Encryptor;
.super Ljava/lang/Object;
.source "Encryptor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static decrypt([BILjava/lang/String;[B)[B
    .locals 11
    .parameter "salt"
    .parameter "iterations"
    .parameter "password"
    .parameter "ciphertext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    const/4 v10, 0x0

    .line 168
    const-string v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 169
    .local v6, shaDigest:Ljava/security/MessageDigest;
    const-string v7, "UTF-8"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 171
    .local v4, pw:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 186
    new-array v3, v9, [B

    .line 187
    .local v3, key:[B
    new-array v2, v9, [B

    .line 188
    .local v2, iv:[B
    invoke-static {v4, v10, v3, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    invoke-static {v4, v9, v2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 193
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 196
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v7, 0x2

    .line 197
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v3, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 198
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v9, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 195
    invoke-virtual {v0, v7, v8, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 200
    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 201
    invoke-static {v2, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 203
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    return-object v7

    .line 174
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #iv:[B
    .end local v3           #key:[B
    :cond_0
    array-length v7, v4

    array-length v8, p0

    add-int/2addr v7, v8

    new-array v5, v7, [B

    .line 175
    .local v5, salted:[B
    array-length v7, v4

    invoke-static {v4, v10, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    array-length v7, v4

    array-length v8, p0

    invoke-static {p0, v10, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 180
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 181
    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 182
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static encrypt([BILjava/lang/String;[B)[B
    .locals 11
    .parameter "salt"
    .parameter "iterations"
    .parameter "password"
    .parameter "cleartext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    const/4 v10, 0x0

    .line 96
    const-string v7, "SHA1PRNG"

    invoke-static {v7}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 99
    const-string v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 100
    .local v6, shaDigest:Ljava/security/MessageDigest;
    const-string v7, "UTF-8"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 102
    .local v4, pw:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 117
    new-array v3, v9, [B

    .line 118
    .local v3, key:[B
    new-array v2, v9, [B

    .line 119
    .local v2, iv:[B
    invoke-static {v4, v10, v3, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    invoke-static {v4, v9, v2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 124
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 127
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    .line 128
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v3, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 129
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v9, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 126
    invoke-virtual {v0, v7, v8, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 131
    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 132
    invoke-static {v2, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 134
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    return-object v7

    .line 105
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #iv:[B
    .end local v3           #key:[B
    :cond_0
    array-length v7, v4

    array-length v8, p0

    add-int/2addr v7, v8

    new-array v5, v7, [B

    .line 106
    .local v5, salted:[B
    array-length v7, v4

    invoke-static {v4, v10, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    array-length v7, v4

    array-length v8, p0

    invoke-static {p0, v10, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 111
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 112
    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 113
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
