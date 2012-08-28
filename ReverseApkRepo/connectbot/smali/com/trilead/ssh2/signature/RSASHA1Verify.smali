.class public Lcom/trilead/ssh2/signature/RSASHA1Verify;
.super Ljava/lang/Object;
.source "RSASHA1Verify.java"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/trilead/ssh2/signature/RSASHA1Verify;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

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

.method public static decodeSSHRSAPublicKey([B)Lcom/trilead/ssh2/signature/RSAPublicKey;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v3, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v3, p0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 28
    .local v3, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, key_format:Ljava/lang/String;
    const-string v4, "ssh-rsa"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 31
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "This is not a ssh-rsa public key"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 33
    :cond_0
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v0

    .line 34
    .local v0, e:Ljava/math/BigInteger;
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    .line 36
    .local v2, n:Ljava/math/BigInteger;
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Padding in RSA public key!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 39
    :cond_1
    new-instance v4, Lcom/trilead/ssh2/signature/RSAPublicKey;

    invoke-direct {v4, v0, v2}, Lcom/trilead/ssh2/signature/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v4
.end method

.method public static decodeSSHRSASignature([B)Lcom/trilead/ssh2/signature/RSASignature;
    .locals 7
    .parameter "sig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v2, p0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 57
    .local v2, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, sig_format:Ljava/lang/String;
    const-string v3, "ssh-rsa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Peer sent wrong signature format"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_0
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v0

    .line 69
    .local v0, s:[B
    array-length v3, v0

    if-nez v3, :cond_1

    .line 70
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error in RSA signature, S is empty."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_1
    sget-object v3, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    sget-object v3, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v4, 0x50

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Decoding ssh-rsa signature string (length: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 77
    :cond_2
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Padding in RSA signature!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_3
    new-instance v3, Lcom/trilead/ssh2/signature/RSASignature;

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v3, v4}, Lcom/trilead/ssh2/signature/RSASignature;-><init>(Ljava/math/BigInteger;)V

    return-object v3
.end method

.method public static encodeSSHRSAPublicKey(Lcom/trilead/ssh2/signature/RSAPublicKey;)[B
    .locals 2
    .parameter "pk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 46
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const-string v1, "ssh-rsa"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 48
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 50
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static encodeSSHRSASignature(Lcom/trilead/ssh2/signature/RSASignature;)[B
    .locals 5
    .parameter "sig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 87
    .local v1, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const-string v2, "ssh-rsa"

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSASignature;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 98
    .local v0, s:[B
    array-length v2, v0

    if-le v2, v4, :cond_0

    aget-byte v2, v0, v3

    if-nez v2, :cond_0

    .line 99
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v4, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 103
    :goto_0
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 101
    :cond_0
    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    goto :goto_0
.end method

.method public static generateSignature([BLcom/trilead/ssh2/signature/RSAPrivateKey;)Lcom/trilead/ssh2/signature/RSASignature;
    .locals 12
    .parameter "message"
    .parameter "pk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v3, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v3}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 109
    .local v3, md:Lcom/trilead/ssh2/crypto/digest/SHA1;
    invoke-virtual {v3, p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([B)V

    .line 110
    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result v9

    new-array v7, v9, [B

    .line 111
    .local v7, sha_message:[B
    invoke-virtual {v3, v7}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 113
    const/16 v9, 0xf

    new-array v0, v9, [B

    const/4 v9, 0x0

    const/16 v10, 0x30

    aput-byte v10, v0, v9

    const/4 v9, 0x1

    const/16 v10, 0x21

    aput-byte v10, v0, v9

    const/4 v9, 0x2

    const/16 v10, 0x30

    aput-byte v10, v0, v9

    const/4 v9, 0x3

    const/16 v10, 0x9

    aput-byte v10, v0, v9

    const/4 v9, 0x4

    const/4 v10, 0x6

    aput-byte v10, v0, v9

    const/4 v9, 0x5

    const/4 v10, 0x5

    aput-byte v10, v0, v9

    const/4 v9, 0x6

    const/16 v10, 0x2b

    aput-byte v10, v0, v9

    const/4 v9, 0x7

    const/16 v10, 0xe

    aput-byte v10, v0, v9

    const/16 v9, 0x8

    const/4 v10, 0x3

    aput-byte v10, v0, v9

    const/16 v9, 0x9

    const/4 v10, 0x2

    aput-byte v10, v0, v9

    const/16 v9, 0xa

    const/16 v10, 0x1a

    aput-byte v10, v0, v9

    const/16 v9, 0xb

    const/4 v10, 0x5

    aput-byte v10, v0, v9

    const/16 v9, 0xd

    .line 114
    const/4 v10, 0x4

    aput-byte v10, v0, v9

    const/16 v9, 0xe

    const/16 v10, 0x14

    aput-byte v10, v0, v9

    .line 116
    .local v0, der_header:[B
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    add-int/lit8 v9, v9, 0x7

    div-int/lit8 v5, v9, 0x8

    .line 118
    .local v5, rsa_block_len:I
    array-length v9, v0

    add-int/lit8 v9, v9, 0x2

    array-length v10, v7

    add-int/2addr v9, v10

    sub-int v9, v5, v9

    add-int/lit8 v4, v9, -0x1

    .line 120
    .local v4, num_pad:I
    const/16 v9, 0x8

    if-ge v4, v9, :cond_0

    .line 121
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Cannot sign with RSA, message too long"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 123
    :cond_0
    array-length v9, v0

    array-length v10, v7

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    new-array v8, v9, [B

    .line 125
    .local v8, sig:[B
    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-byte v10, v8, v9

    .line 127
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_1

    .line 132
    add-int/lit8 v9, v4, 0x1

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    .line 134
    const/4 v9, 0x0

    add-int/lit8 v10, v4, 0x2

    array-length v11, v0

    invoke-static {v0, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    const/4 v9, 0x0

    add-int/lit8 v10, v4, 0x2

    array-length v11, v0

    add-int/2addr v10, v11

    array-length v11, v7

    invoke-static {v7, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    new-instance v2, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v2, v9, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 139
    .local v2, m:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 141
    .local v6, s:Ljava/math/BigInteger;
    new-instance v9, Lcom/trilead/ssh2/signature/RSASignature;

    invoke-direct {v9, v6}, Lcom/trilead/ssh2/signature/RSASignature;-><init>(Ljava/math/BigInteger;)V

    return-object v9

    .line 129
    .end local v2           #m:Ljava/math/BigInteger;
    .end local v6           #s:Ljava/math/BigInteger;
    :cond_1
    add-int/lit8 v9, v1, 0x1

    const/4 v10, -0x1

    aput-byte v10, v8, v9

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static verifySignature([BLcom/trilead/ssh2/signature/RSASignature;Lcom/trilead/ssh2/signature/RSAPublicKey;)Z
    .locals 21
    .parameter "message"
    .parameter "ds"
    .parameter "dpk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v8, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v8}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 147
    .local v8, md:Lcom/trilead/ssh2/crypto/digest/SHA1;
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([B)V

    .line 148
    invoke-virtual {v8}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result v18

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 149
    .local v15, sha_message:[B
    invoke-virtual {v8, v15}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object v9

    .line 152
    .local v9, n:Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object v6

    .line 153
    .local v6, e:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/signature/RSASignature;->getS()Ljava/math/BigInteger;

    move-result-object v13

    .line 155
    .local v13, s:Ljava/math/BigInteger;
    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v18

    if-gtz v18, :cond_0

    .line 157
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: n.compareTo(s) <= 0"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 158
    const/16 v18, 0x0

    .line 283
    :goto_0
    return v18

    .line 161
    :cond_0
    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v18

    add-int/lit8 v18, v18, 0x7

    div-int/lit8 v12, v18, 0x8

    .line 165
    .local v12, rsa_block_len:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_1

    .line 167
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: rsa_block_len < 1"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 168
    const/16 v18, 0x0

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v13, v6, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v17

    .line 173
    .local v17, v:[B
    const/16 v16, 0x0

    .line 175
    .local v16, startpos:I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_2

    const/16 v18, 0x0

    aget-byte v18, v17, v18

    if-nez v18, :cond_2

    .line 176
    add-int/lit8 v16, v16, 0x1

    .line 178
    :cond_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v16

    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 180
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: (v.length - startpos) != (rsa_block_len - 1)"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 181
    const/16 v18, 0x0

    goto :goto_0

    .line 184
    :cond_3
    aget-byte v18, v17, v16

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 186
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: v[startpos] != 0x01"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 187
    const/16 v18, 0x0

    goto :goto_0

    .line 190
    :cond_4
    add-int/lit8 v11, v16, 0x1

    .line 194
    .local v11, pos:I
    :goto_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v11, v0, :cond_5

    .line 196
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: pos >= v.length"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 197
    const/16 v18, 0x0

    goto :goto_0

    .line 199
    :cond_5
    aget-byte v18, v17, v11

    if-nez v18, :cond_6

    .line 209
    add-int/lit8 v18, v16, 0x1

    sub-int v10, v11, v18

    .line 211
    .local v10, num_pad:I
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v10, v0, :cond_8

    .line 213
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: num_pad < 8"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 214
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 201
    .end local v10           #num_pad:I
    :cond_6
    aget-byte v18, v17, v11

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 203
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: v[pos] != (byte) 0xff"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 204
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 206
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 192
    goto :goto_1

    .line 217
    .restart local v10       #num_pad:I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 219
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v11, v0, :cond_9

    .line 221
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: pos >= v.length"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 222
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 225
    :cond_9
    new-instance v5, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v11

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v11, v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([BII)V

    .line 227
    .local v5, dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object v14

    .line 229
    .local v14, seq:[B
    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v18

    if-eqz v18, :cond_a

    .line 231
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: dr.available() != 0"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 232
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 235
    :cond_a
    invoke-virtual {v5, v14}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 239
    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object v3

    .line 243
    .local v3, digestAlgorithm:[B
    array-length v0, v3

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_b

    array-length v0, v3

    move/from16 v18, v0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 245
    :cond_b
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: (digestAlgorithm.length < 8) || (digestAlgorithm.length > 9)"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 246
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 249
    :cond_c
    const/16 v18, 0x9

    move/from16 v0, v18

    new-array v4, v0, [B

    const/16 v18, 0x0

    const/16 v19, 0x6

    aput-byte v19, v4, v18

    const/16 v18, 0x1

    const/16 v19, 0x5

    aput-byte v19, v4, v18

    const/16 v18, 0x2

    const/16 v19, 0x2b

    aput-byte v19, v4, v18

    const/16 v18, 0x3

    const/16 v19, 0xe

    aput-byte v19, v4, v18

    const/16 v18, 0x4

    const/16 v19, 0x3

    aput-byte v19, v4, v18

    const/16 v18, 0x5

    const/16 v19, 0x2

    aput-byte v19, v4, v18

    const/16 v18, 0x6

    const/16 v19, 0x1a

    aput-byte v19, v4, v18

    const/16 v18, 0x7

    const/16 v19, 0x5

    aput-byte v19, v4, v18

    .line 251
    .local v4, digestAlgorithm_sha1:[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v7, v0, :cond_d

    .line 260
    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOctetString()[B

    move-result-object v2

    .line 262
    .local v2, digest:[B
    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v18

    if-eqz v18, :cond_f

    .line 264
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: dr.available() != 0 (II)"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 265
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 253
    .end local v2           #digest:[B
    :cond_d
    aget-byte v18, v3, v7

    aget-byte v19, v4, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 255
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: digestAlgorithm[i] != digestAlgorithm_sha1[i]"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 256
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 251
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 268
    .restart local v2       #digest:[B
    :cond_f
    array-length v0, v2

    move/from16 v18, v0

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 270
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: digest.length != sha_message.length"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 271
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 274
    :cond_10
    const/4 v7, 0x0

    :goto_3
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v7, v0, :cond_11

    .line 283
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 276
    :cond_11
    aget-byte v18, v15, v7

    aget-byte v19, v2, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    .line 278
    sget-object v18, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v19, 0x14

    const-string v20, "ssh-rsa signature: sha_message[i] != digest[i]"

    invoke-virtual/range {v18 .. v20}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 279
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 274
    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method
