.class public final Lcom/trilead/ssh2/crypto/digest/MAC;
.super Ljava/lang/Object;
.source "MAC.java"


# instance fields
.field mac:Lcom/trilead/ssh2/crypto/digest/Digest;

.field size:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .parameter "type"
    .parameter "key"

    .prologue
    const/16 v2, 0xc

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "hmac-sha1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/HMAC;

    new-instance v1, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    const/16 v2, 0x14

    invoke-direct {v0, v1, p2, v2}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->getDigestLength()I

    move-result v0

    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->size:I

    .line 63
    return-void

    .line 47
    :cond_0
    const-string v0, "hmac-sha1-96"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/HMAC;

    new-instance v1, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    invoke-direct {v0, v1, p2, v2}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "hmac-md5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/HMAC;

    new-instance v1, Lcom/trilead/ssh2/crypto/digest/MD5;

    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/digest/MD5;-><init>()V

    const/16 v2, 0x10

    invoke-direct {v0, v1, p2, v2}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "hmac-md5-96"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/HMAC;

    new-instance v1, Lcom/trilead/ssh2/crypto/digest/MD5;

    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/digest/MD5;-><init>()V

    invoke-direct {v0, v1, p2, v2}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    goto :goto_0

    .line 60
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unkown algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getKeyLen(Ljava/lang/String;)I
    .locals 3
    .parameter "type"

    .prologue
    const/16 v0, 0x14

    const/16 v1, 0x10

    .line 30
    const-string v2, "hmac-sha1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    const-string v2, "hmac-sha1-96"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    const-string v0, "hmac-md5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string v0, "hmac-md5-96"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unkown algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getMacList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hmac-sha1-96"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hmac-sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hmac-md5-96"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hmac-md5"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public final getMac([BI)V
    .locals 1
    .parameter "out"
    .parameter "off"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1, p2}, Lcom/trilead/ssh2/crypto/digest/Digest;->digest([BI)V

    .line 82
    return-void
.end method

.method public final initMac(I)V
    .locals 2
    .parameter "seq"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->reset()V

    .line 68
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 69
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 70
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 71
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 72
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->size:I

    return v0
.end method

.method public final update([BII)V
    .locals 1
    .parameter "packetdata"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([BII)V

    .line 77
    return-void
.end method
