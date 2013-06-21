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
    const/4 v4, 0x0

    const/4 v3, 0x1

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

    if-le v2, v3, :cond_0

    aget-byte v2, v0, v4

    if-nez v2, :cond_0

    .line 99
    array-length v2, v0

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 103
    :goto_0
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 101
    :cond_0
    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    goto :goto_0
.end method

.method public static generateSignature([BLcom/trilead/ssh2/signature/RSAPrivateKey;)Lcom/trilead/ssh2/signature/RSASignature;
    .locals 6
    .parameter "message"
    .parameter "pk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 109
    .local v0, md:Lcom/trilead/ssh2/crypto/digest/SHA1;
    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([B)V

    .line 110
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result p0

    .end local p0
    new-array v2, p0, [B

    .line 111
    .local v2, sha_message:[B
    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 113
    const/16 p0, 0xf

    new-array p0, p0, [B

    const/4 v0, 0x0

    const/16 v1, 0x30

    aput-byte v1, p0, v0

    .end local v0           #md:Lcom/trilead/ssh2/crypto/digest/SHA1;
    const/4 v0, 0x1

    const/16 v1, 0x21

    aput-byte v1, p0, v0

    const/4 v0, 0x2

    const/16 v1, 0x30

    aput-byte v1, p0, v0

    const/4 v0, 0x3

    const/16 v1, 0x9

    aput-byte v1, p0, v0

    const/4 v0, 0x4

    const/4 v1, 0x6

    aput-byte v1, p0, v0

    const/4 v0, 0x5

    const/4 v1, 0x5

    aput-byte v1, p0, v0

    const/4 v0, 0x6

    const/16 v1, 0x2b

    aput-byte v1, p0, v0

    const/4 v0, 0x7

    const/16 v1, 0xe

    aput-byte v1, p0, v0

    const/16 v0, 0x8

    const/4 v1, 0x3

    aput-byte v1, p0, v0

    const/16 v0, 0x9

    const/4 v1, 0x2

    aput-byte v1, p0, v0

    const/16 v0, 0xa

    const/16 v1, 0x1a

    aput-byte v1, p0, v0

    const/16 v0, 0xb

    const/4 v1, 0x5

    aput-byte v1, p0, v0

    const/16 v0, 0xd

    .line 114
    const/4 v1, 0x4

    aput-byte v1, p0, v0

    const/16 v0, 0xe

    const/16 v1, 0x14

    aput-byte v1, p0, v0

    .line 116
    .local p0, der_header:[B
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 118
    .local v0, rsa_block_len:I
    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    array-length v3, v2

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int v1, v0, v1

    .line 120
    .local v1, num_pad:I
    const/16 v0, 0x8

    if-ge v1, v0, :cond_0

    .line 121
    .end local v0           #rsa_block_len:I
    new-instance p0, Ljava/io/IOException;

    .end local p0           #der_header:[B
    const-string p1, "Cannot sign with RSA, message too long"

    .end local p1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    .restart local p0       #der_header:[B
    .restart local p1
    :cond_0
    array-length v0, p0

    array-length v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    new-array v3, v0, [B

    .line 125
    .local v3, sig:[B
    const/4 v0, 0x0

    const/4 v4, 0x1

    aput-byte v4, v3, v0

    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 132
    add-int/lit8 v0, v1, 0x1

    const/4 v4, 0x0

    aput-byte v4, v3, v0

    .line 134
    .end local v0           #i:I
    const/4 v0, 0x0

    add-int/lit8 v4, v1, 0x2

    array-length v5, p0

    invoke-static {p0, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x2

    array-length p0, p0

    .end local v1           #num_pad:I
    .end local p0           #der_header:[B
    add-int/2addr p0, v1

    array-length v1, v2

    invoke-static {v2, v0, v3, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    new-instance p0, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 139
    .local p0, m:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, v0, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 141
    .local p0, s:Ljava/math/BigInteger;
    new-instance p1, Lcom/trilead/ssh2/signature/RSASignature;

    invoke-direct {p1, p0}, Lcom/trilead/ssh2/signature/RSASignature;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    .line 129
    .restart local v0       #i:I
    .restart local v1       #num_pad:I
    .local p0, der_header:[B
    .restart local p1
    :cond_1
    add-int/lit8 v4, v0, 0x1

    const/4 v5, -0x1

    aput-byte v5, v3, v4

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static verifySignature([BLcom/trilead/ssh2/signature/RSASignature;Lcom/trilead/ssh2/signature/RSAPublicKey;)Z
    .locals 4
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
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 147
    .local v0, md:Lcom/trilead/ssh2/crypto/digest/SHA1;
    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([B)V

    .line 148
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result p0

    .end local p0
    new-array v1, p0, [B

    .line 149
    .local v1, sha_message:[B
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 151
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object v0

    .line 152
    .local v0, n:Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object p0

    .line 153
    .local p0, e:Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSASignature;->getS()Ljava/math/BigInteger;

    move-result-object p2

    .line 155
    .local p2, s:Ljava/math/BigInteger;
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    .end local p1
    if-gtz p1, :cond_0

    .line 157
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .end local p0           #e:Ljava/math/BigInteger;
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: n.compareTo(s) <= 0"

    .end local p2           #s:Ljava/math/BigInteger;
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 158
    const/4 p0, 0x0

    .line 283
    .end local v0           #n:Ljava/math/BigInteger;
    :goto_0
    return p0

    .line 161
    .restart local v0       #n:Ljava/math/BigInteger;
    .restart local p0       #e:Ljava/math/BigInteger;
    .restart local p2       #s:Ljava/math/BigInteger;
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    .line 165
    .local p1, rsa_block_len:I
    const/4 v2, 0x1

    if-ge p1, v2, :cond_1

    .line 167
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .end local p0           #e:Ljava/math/BigInteger;
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: rsa_block_len < 1"

    .end local p2           #s:Ljava/math/BigInteger;
    .end local p1           #rsa_block_len:I
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 168
    const/4 p0, 0x0

    goto :goto_0

    .line 171
    .restart local p0       #e:Ljava/math/BigInteger;
    .restart local p1       #rsa_block_len:I
    .restart local p2       #s:Ljava/math/BigInteger;
    :cond_1
    invoke-virtual {p2, p0, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .end local p0           #e:Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 173
    .local v0, v:[B
    const/4 p0, 0x0

    .line 175
    .local p0, startpos:I
    array-length p2, v0

    .end local p2           #s:Ljava/math/BigInteger;
    if-lez p2, :cond_12

    const/4 p2, 0x0

    aget-byte p2, v0, p2

    if-nez p2, :cond_12

    .line 176
    add-int/lit8 p0, p0, 0x1

    move p2, p0

    .line 178
    .end local p0           #startpos:I
    .local p2, startpos:I
    :goto_1
    array-length p0, v0

    sub-int/2addr p0, p2

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    if-eq p0, p1, :cond_2

    .line 180
    .end local p1           #rsa_block_len:I
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: (v.length - startpos) != (rsa_block_len - 1)"

    .end local p2           #startpos:I
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 181
    const/4 p0, 0x0

    goto :goto_0

    .line 184
    .restart local p2       #startpos:I
    :cond_2
    aget-byte p0, v0, p2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    .line 186
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: v[startpos] != 0x01"

    .end local p2           #startpos:I
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 187
    const/4 p0, 0x0

    goto :goto_0

    .line 190
    .restart local p2       #startpos:I
    :cond_3
    add-int/lit8 p0, p2, 0x1

    .local p0, pos:I
    move p1, p0

    .line 194
    .end local p0           #pos:I
    .local p1, pos:I
    :goto_2
    array-length p0, v0

    if-lt p1, p0, :cond_4

    .line 196
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: pos >= v.length"

    .end local p2           #startpos:I
    .end local p1           #pos:I
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 197
    const/4 p0, 0x0

    goto :goto_0

    .line 199
    .restart local p1       #pos:I
    .restart local p2       #startpos:I
    :cond_4
    aget-byte p0, v0, p1

    if-nez p0, :cond_5

    .line 209
    add-int/lit8 p0, p2, 0x1

    sub-int p0, p1, p0

    .line 211
    .local p0, num_pad:I
    const/16 p2, 0x8

    if-ge p0, p2, :cond_7

    .line 213
    .end local p2           #startpos:I
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .end local p0           #num_pad:I
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: num_pad < 8"

    .end local p1           #pos:I
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 214
    const/4 p0, 0x0

    goto :goto_0

    .line 201
    .restart local p1       #pos:I
    .restart local p2       #startpos:I
    :cond_5
    aget-byte p0, v0, p1

    const/4 v2, -0x1

    if-eq p0, v2, :cond_6

    .line 203
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: v[pos] != (byte) 0xff"

    .end local p1           #pos:I
    .end local p2           #startpos:I
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 204
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 206
    .restart local p1       #pos:I
    .restart local p2       #startpos:I
    :cond_6
    add-int/lit8 p0, p1, 0x1

    .local p0, pos:I
    move p1, p0

    .line 192
    goto :goto_2

    .line 217
    .end local p2           #startpos:I
    .local p0, num_pad:I
    :cond_7
    add-int/lit8 p0, p1, 0x1

    .line 219
    .local p0, pos:I
    array-length p1, v0

    .end local p1           #pos:I
    if-lt p0, p1, :cond_8

    .line 221
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .end local p0           #pos:I
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: pos >= v.length"

    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 222
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 225
    .restart local p0       #pos:I
    :cond_8
    new-instance p2, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    array-length p1, v0

    sub-int/2addr p1, p0

    invoke-direct {p2, v0, p0, p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([BII)V

    .line 227
    .local p2, dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p0

    .line 229
    .local p0, seq:[B
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result p1

    if-eqz p1, :cond_9

    .line 231
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .end local p0           #seq:[B
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: dr.available() != 0"

    .end local p2           #dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 232
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 235
    .restart local p0       #seq:[B
    .restart local p2       #dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    :cond_9
    invoke-virtual {p2, p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 239
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p0

    .line 243
    .local p0, digestAlgorithm:[B
    array-length p1, p0

    const/16 v0, 0x8

    if-lt p1, v0, :cond_a

    .end local v0           #v:[B
    array-length p1, p0

    const/16 v0, 0x9

    if-le p1, v0, :cond_b

    .line 245
    :cond_a
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .end local p0           #digestAlgorithm:[B
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: (digestAlgorithm.length < 8) || (digestAlgorithm.length > 9)"

    .end local p2           #dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 246
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 249
    .restart local p0       #digestAlgorithm:[B
    .restart local p2       #dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    :cond_b
    const/16 p1, 0x9

    new-array p1, p1, [B

    const/4 v0, 0x0

    const/4 v2, 0x6

    aput-byte v2, p1, v0

    const/4 v0, 0x1

    const/4 v2, 0x5

    aput-byte v2, p1, v0

    const/4 v0, 0x2

    const/16 v2, 0x2b

    aput-byte v2, p1, v0

    const/4 v0, 0x3

    const/16 v2, 0xe

    aput-byte v2, p1, v0

    const/4 v0, 0x4

    const/4 v2, 0x3

    aput-byte v2, p1, v0

    const/4 v0, 0x5

    const/4 v2, 0x2

    aput-byte v2, p1, v0

    const/4 v0, 0x6

    const/16 v2, 0x1a

    aput-byte v2, p1, v0

    const/4 v0, 0x7

    const/4 v2, 0x5

    aput-byte v2, p1, v0

    .line 251
    .local p1, digestAlgorithm_sha1:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v2, p0

    if-lt v0, v2, :cond_c

    .line 260
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOctetString()[B

    move-result-object p0

    .line 262
    .local p0, digest:[B
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result p1

    .end local p1           #digestAlgorithm_sha1:[B
    if-eqz p1, :cond_e

    .line 264
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .end local p0           #digest:[B
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: dr.available() != 0 (II)"

    .end local p2           #dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 265
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 253
    .local p0, digestAlgorithm:[B
    .restart local p1       #digestAlgorithm_sha1:[B
    .restart local p2       #dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    :cond_c
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_d

    .line 255
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .end local p0           #digestAlgorithm:[B
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: digestAlgorithm[i] != digestAlgorithm_sha1[i]"

    .end local p1           #digestAlgorithm_sha1:[B
    .end local p2           #dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 256
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 251
    .restart local p0       #digestAlgorithm:[B
    .restart local p1       #digestAlgorithm_sha1:[B
    .restart local p2       #dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 268
    .end local p1           #digestAlgorithm_sha1:[B
    .local p0, digest:[B
    :cond_e
    array-length p1, p0

    array-length p2, v1

    .end local p2           #dr:Lcom/trilead/ssh2/crypto/SimpleDERReader;
    if-eq p1, p2, :cond_f

    .line 270
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .end local p0           #digest:[B
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: digest.length != sha_message.length"

    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 271
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 274
    .restart local p0       #digest:[B
    :cond_f
    const/4 p1, 0x0

    .end local v0           #i:I
    .local p1, i:I
    :goto_4
    array-length p2, v1

    if-lt p1, p2, :cond_10

    .line 283
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 276
    :cond_10
    aget-byte p2, v1, p1

    aget-byte v0, p0, p1

    if-eq p2, v0, :cond_11

    .line 278
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .end local p0           #digest:[B
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: sha_message[i] != digest[i]"

    .end local p1           #i:I
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 279
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 274
    .restart local p0       #digest:[B
    .restart local p1       #i:I
    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .local v0, v:[B
    .local p0, startpos:I
    .local p1, rsa_block_len:I
    :cond_12
    move p2, p0

    .local p2, startpos:I
    goto/16 :goto_1
.end method
