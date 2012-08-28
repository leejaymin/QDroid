.class public Lcom/trilead/ssh2/crypto/KeyMaterial;
.super Ljava/lang/Object;
.source "KeyMaterial.java"


# instance fields
.field public enc_key_client_to_server:[B

.field public enc_key_server_to_client:[B

.field public initial_iv_client_to_server:[B

.field public initial_iv_server_to_client:[B

.field public integrity_key_client_to_server:[B

.field public integrity_key_server_to_client:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B
    .locals 8
    .parameter "sh"
    .parameter "K"
    .parameter "H"
    .parameter "type"
    .parameter "SessionID"
    .parameter "keyLength"

    .prologue
    .line 27
    new-array v4, p5, [B

    .line 29
    .local v4, res:[B
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigestLength()I

    move-result v0

    .line 30
    .local v0, dglen:I
    add-int v1, p5, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    .line 32
    .local v1, numRounds:I
    new-array v5, v1, [[B

    .line 34
    .local v5, tmp:[[B
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->reset()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 37
    invoke-virtual {p0, p3}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByte(B)V

    .line 38
    invoke-virtual {p0, p4}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 40
    const/4 p3, 0x0

    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    .end local p3
    move-result-object p4

    .end local p4
    aput-object p4, v5, p3

    .line 42
    const/4 p3, 0x0

    .line 43
    .local p3, off:I
    invoke-static {v0, p5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 45
    .local v2, produced:I
    const/4 p4, 0x0

    aget-object p4, v5, p4

    const/4 v3, 0x0

    invoke-static {p4, v3, v4, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    sub-int/2addr p5, v2

    .line 48
    add-int p4, p3, v2

    .line 50
    .local p4, off:I
    const/4 p3, 0x1

    .local p3, i:I
    move v7, v2

    .local v7, produced:I
    move v2, p4

    .local v2, off:I
    move p4, v7

    .end local v7           #produced:I
    .local p4, produced:I
    :goto_0
    if-lt p3, v1, :cond_0

    .line 66
    return-object v4

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 55
    const/4 p4, 0x0

    .local p4, j:I
    :goto_1
    if-lt p4, p3, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    move-result-object p4

    .end local p4           #j:I
    aput-object p4, v5, p3

    .line 60
    invoke-static {v0, p5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 61
    .local v3, produced:I
    aget-object p4, v5, p3

    const/4 v6, 0x0

    invoke-static {p4, v6, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    sub-int/2addr p5, v3

    .line 63
    add-int p4, v2, v3

    .line 50
    .local p4, off:I
    add-int/lit8 p3, p3, 0x1

    move v2, p4

    move p4, v3

    .local p4, produced:I
    goto :goto_0

    .line 56
    .end local v3           #produced:I
    .local p4, j:I
    :cond_1
    aget-object v3, v5, p4

    invoke-virtual {p0, v3}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 55
    add-int/lit8 p4, p4, 0x1

    goto :goto_1
.end method

.method public static create(Ljava/lang/String;[BLjava/math/BigInteger;[BIIIIII)Lcom/trilead/ssh2/crypto/KeyMaterial;
    .locals 7
    .parameter "hashType"
    .parameter "H"
    .parameter "K"
    .parameter "SessionID"
    .parameter "keyLengthCS"
    .parameter "blockSizeCS"
    .parameter "macLengthCS"
    .parameter "keyLengthSC"
    .parameter "blockSizeSC"
    .parameter "macLengthSC"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v6, Lcom/trilead/ssh2/crypto/KeyMaterial;

    invoke-direct {v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;-><init>()V

    .line 75
    .local v6, km:Lcom/trilead/ssh2/crypto/KeyMaterial;
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, sh:Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;
    const/16 v3, 0x41

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object p0

    .end local p0
    iput-object p0, v6, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_client_to_server:[B

    .line 79
    const/16 v3, 0x42

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move v5, p8

    invoke-static/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object p0

    iput-object p0, v6, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_server_to_client:[B

    .line 81
    const/16 v3, 0x43

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object p0

    iput-object p0, v6, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_client_to_server:[B

    .line 83
    const/16 v3, 0x44

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object p0

    iput-object p0, v6, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_server_to_client:[B

    .line 85
    const/16 v3, 0x45

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object p0

    iput-object p0, v6, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_client_to_server:[B

    .line 87
    const/16 v3, 0x46

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object p0

    iput-object p0, v6, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_server_to_client:[B

    .line 89
    return-object v6
.end method
