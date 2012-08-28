.class public Lcom/trilead/ssh2/crypto/cipher/CTRMode;
.super Ljava/lang/Object;
.source "CTRMode.java"

# interfaces
.implements Lcom/trilead/ssh2/crypto/cipher/BlockCipher;


# instance fields
.field X:[B

.field Xenc:[B

.field bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

.field blockSize:I

.field count:I

.field doEncrypt:Z


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V
    .locals 3
    .parameter "tc"
    .parameter "iv"
    .parameter "doEnc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->count:I

    .line 27
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 28
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    .line 29
    iput-boolean p3, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->doEncrypt:Z

    .line 31
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IV must be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long! (currently "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->X:[B

    .line 35
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->Xenc:[B

    .line 37
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->X:[B

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-void
.end method


# virtual methods
.method public final getBlockSize()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    return v0
.end method

.method public init(Z[B)V
    .locals 0
    .parameter "forEncryption"
    .parameter "key"

    .prologue
    .line 23
    return-void
.end method

.method public final transformBlock([BI[BI)V
    .locals 5
    .parameter "src"
    .parameter "srcoff"
    .parameter "dst"
    .parameter "dstoff"

    .prologue
    const/4 v4, 0x0

    .line 47
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->bc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->X:[B

    iget-object v3, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->Xenc:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    if-lt v0, v1, :cond_1

    .line 54
    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->blockSize:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    :goto_1
    if-gez v0, :cond_2

    .line 61
    :cond_0
    return-void

    .line 51
    :cond_1
    add-int v1, p4, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    iget-object v3, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->Xenc:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->X:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 57
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CTRMode;->X:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_0

    .line 54
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
