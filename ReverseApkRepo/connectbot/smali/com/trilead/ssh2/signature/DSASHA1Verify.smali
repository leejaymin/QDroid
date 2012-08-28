.class public Lcom/trilead/ssh2/signature/DSASHA1Verify;
.super Ljava/lang/Object;
.source "DSASHA1Verify.java"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/trilead/ssh2/signature/DSASHA1Verify;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeSSHDSAPublicKey([B)Lcom/trilead/ssh2/signature/DSAPublicKey;
    .locals 8
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v4, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v4, p0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 28
    .local v4, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, key_format:Ljava/lang/String;
    const-string v6, "ssh-dss"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 31
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "This is not a ssh-dss public key!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 33
    :cond_0
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    .line 34
    .local v2, p:Ljava/math/BigInteger;
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v3

    .line 35
    .local v3, q:Ljava/math/BigInteger;
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v0

    .line 36
    .local v0, g:Ljava/math/BigInteger;
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v5

    .line 38
    .local v5, y:Ljava/math/BigInteger;
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v6

    if-eqz v6, :cond_1

    .line 39
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Padding in DSA public key!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 41
    :cond_1
    new-instance v6, Lcom/trilead/ssh2/signature/DSAPublicKey;

    invoke-direct {v6, v2, v3, v0, v5}, Lcom/trilead/ssh2/signature/DSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v6
.end method

.method public static decodeSSHDSASignature([B)Lcom/trilead/ssh2/signature/DSASignature;
    .locals 12
    .parameter "sig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x28

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x14

    .line 83
    const/4 v1, 0x0

    check-cast v1, [B

    .line 85
    .local v1, rsArray:[B
    array-length v6, p0

    if-ne v6, v8, :cond_2

    .line 88
    move-object v1, p0

    .line 111
    :cond_0
    new-array v4, v10, [B

    .line 113
    .local v4, tmp:[B
    invoke-static {v1, v11, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v7, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 116
    .local v0, r:Ljava/math/BigInteger;
    invoke-static {v1, v10, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v7, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 119
    .local v2, s:Ljava/math/BigInteger;
    sget-object v6, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v6}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    sget-object v6, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v7, 0x1e

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "decoded ssh-dss signature: first bytes r("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v9, v1, v11

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), s("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 122
    aget-byte v9, v1, v10

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 121
    invoke-virtual {v6, v7, v8}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 125
    :cond_1
    new-instance v6, Lcom/trilead/ssh2/signature/DSASignature;

    invoke-direct {v6, v0, v2}, Lcom/trilead/ssh2/signature/DSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v6

    .line 93
    .end local v0           #r:Ljava/math/BigInteger;
    .end local v2           #s:Ljava/math/BigInteger;
    .end local v4           #tmp:[B
    :cond_2
    new-instance v5, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v5, p0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 95
    .local v5, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, sig_format:Ljava/lang/String;
    const-string v6, "ssh-dss"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 98
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Peer sent wrong signature format"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 100
    :cond_3
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v1

    .line 102
    array-length v6, v1

    if-eq v6, v8, :cond_4

    .line 103
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Peer sent corrupt signature"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 105
    :cond_4
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Padding in DSA signature!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static encodeSSHDSAPublicKey(Lcom/trilead/ssh2/signature/DSAPublicKey;)[B
    .locals 2
    .parameter "pk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 48
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const-string v1, "ssh-dss"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 50
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 51
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 52
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 54
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static encodeSSHDSASignature(Lcom/trilead/ssh2/signature/DSASignature;)[B
    .locals 9
    .parameter "ds"

    .prologue
    const/16 v8, 0x28

    const/16 v6, 0x14

    .line 59
    new-instance v5, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v5}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 61
    .local v5, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const-string v7, "ssh-dss"

    invoke-virtual {v5, v7}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSASignature;->getR()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 64
    .local v1, r:[B
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSASignature;->getS()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 66
    .local v3, s:[B
    new-array v0, v8, [B

    .line 70
    .local v0, a40:[B
    array-length v7, v1

    if-ge v7, v6, :cond_0

    array-length v2, v1

    .line 71
    .local v2, r_copylen:I
    :goto_0
    array-length v7, v3

    if-ge v7, v6, :cond_1

    array-length v4, v3

    .line 73
    .local v4, s_copylen:I
    :goto_1
    array-length v6, v1

    sub-int/2addr v6, v2

    rsub-int/lit8 v7, v2, 0x14

    invoke-static {v1, v6, v0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    array-length v6, v3

    sub-int/2addr v6, v4

    rsub-int/lit8 v7, v4, 0x28

    invoke-static {v3, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v8}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 78
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v6

    return-object v6

    .end local v2           #r_copylen:I
    .end local v4           #s_copylen:I
    :cond_0
    move v2, v6

    .line 70
    goto :goto_0

    .restart local v2       #r_copylen:I
    :cond_1
    move v4, v6

    .line 71
    goto :goto_1
.end method

.method public static generateSignature([BLcom/trilead/ssh2/signature/DSAPrivateKey;Ljava/security/SecureRandom;)Lcom/trilead/ssh2/signature/DSASignature;
    .locals 9
    .parameter "message"
    .parameter "pk"
    .parameter "rnd"

    .prologue
    .line 187
    new-instance v2, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v2}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 188
    .local v2, md:Lcom/trilead/ssh2/crypto/digest/SHA1;
    invoke-virtual {v2, p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([B)V

    .line 189
    invoke-virtual {v2}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result v7

    new-array v6, v7, [B

    .line 190
    .local v6, sha_message:[B
    invoke-virtual {v2, v6}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 192
    new-instance v1, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v1, v7, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 194
    .local v1, m:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 198
    .local v3, qBitLength:I
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 200
    .local v0, k:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 204
    .local v4, r:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 206
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 208
    .local v5, s:Ljava/math/BigInteger;
    new-instance v7, Lcom/trilead/ssh2/signature/DSASignature;

    invoke-direct {v7, v4, v5}, Lcom/trilead/ssh2/signature/DSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v7
.end method

.method public static verifySignature([BLcom/trilead/ssh2/signature/DSASignature;Lcom/trilead/ssh2/signature/DSAPublicKey;)Z
    .locals 19
    .parameter "message"
    .parameter "ds"
    .parameter "dpk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v3, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v3}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 133
    .local v3, md:Lcom/trilead/ssh2/crypto/digest/SHA1;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([B)V

    .line 134
    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result v15

    new-array v8, v15, [B

    .line 135
    .local v8, sha_message:[B
    invoke-virtual {v3, v8}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 137
    new-instance v2, Ljava/math/BigInteger;

    const/4 v15, 0x1

    invoke-direct {v2, v15, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 139
    .local v2, m:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/signature/DSASignature;->getR()Ljava/math/BigInteger;

    move-result-object v6

    .line 140
    .local v6, r:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/signature/DSASignature;->getS()Ljava/math/BigInteger;

    move-result-object v7

    .line 142
    .local v7, s:Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 143
    .local v1, g:Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 144
    .local v4, p:Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 145
    .local v5, q:Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v13

    .line 147
    .local v13, y:Ljava/math/BigInteger;
    sget-object v14, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 149
    .local v14, zero:Ljava/math/BigInteger;
    sget-object v15, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v15}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 151
    sget-object v15, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v16, 0x3c

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "ssh-dss signature: m: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 152
    sget-object v15, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v16, 0x3c

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "ssh-dss signature: r: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 153
    sget-object v15, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v16, 0x3c

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "ssh-dss signature: s: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 154
    sget-object v15, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v16, 0x3c

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "ssh-dss signature: g: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 155
    sget-object v15, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v16, 0x3c

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "ssh-dss signature: p: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 156
    sget-object v15, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v16, 0x3c

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "ssh-dss signature: q: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 157
    sget-object v15, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v16, 0x3c

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "ssh-dss signature: y: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 160
    :cond_0
    invoke-virtual {v14, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_1

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gtz v15, :cond_2

    .line 162
    :cond_1
    sget-object v15, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v16, 0x14

    const-string v17, "ssh-dss signature: zero.compareTo(r) >= 0 || q.compareTo(r) <= 0"

    invoke-virtual/range {v15 .. v17}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 163
    const/4 v15, 0x0

    .line 182
    :goto_0
    return v15

    .line 166
    :cond_2
    invoke-virtual {v14, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_3

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gtz v15, :cond_4

    .line 168
    :cond_3
    sget-object v15, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v16, 0x14

    const-string v17, "ssh-dss signature: zero.compareTo(s) >= 0 || q.compareTo(s) <= 0"

    invoke-virtual/range {v15 .. v17}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 169
    const/4 v15, 0x0

    goto :goto_0

    .line 172
    :cond_4
    invoke-virtual {v7, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 174
    .local v12, w:Ljava/math/BigInteger;
    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 175
    .local v9, u1:Ljava/math/BigInteger;
    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 177
    .local v10, u2:Ljava/math/BigInteger;
    invoke-virtual {v1, v9, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 178
    invoke-virtual {v13, v10, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 180
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 182
    .local v11, v:Ljava/math/BigInteger;
    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v15

    goto :goto_0
.end method
