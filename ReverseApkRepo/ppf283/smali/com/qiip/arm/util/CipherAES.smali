.class public Lcom/qiip/arm/util/CipherAES;
.super Ljava/lang/Object;
.source "CipherAES.java"


# static fields
.field public static KEY:Ljava/lang/String; = null

.field private static final TRANSFORM:Ljava/lang/String; = "AES/ECB/PKCS5Padding"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, ""

    sput-object v0, Lcom/qiip/arm/util/CipherAES;->KEY:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 85
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    return-void
.end method

.method private static asHex([B)Ljava/lang/String;
    .locals 3
    .parameter "buf"

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 74
    const-string v2, ""

    .line 81
    :goto_0
    return-object v2

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 77
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 79
    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/qiip/arm/util/CipherAES;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "cipherText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    if-eqz p0, :cond_0

    .line 50
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 51
    .local v1, kgen:Ljavax/crypto/KeyGenerator;
    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 53
    sget-object v6, Lcom/qiip/arm/util/CipherAES;->KEY:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 54
    .local v4, raw:[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v4, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 56
    .local v5, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/ECB/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 57
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 59
    invoke-static {p0}, Lcom/qiip/arm/util/CipherAES;->fromString(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 60
    .local v2, original:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 63
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v2           #original:[B
    .end local v4           #raw:[B
    .end local v5           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "plainText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 27
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 28
    .local v2, kgen:Ljavax/crypto/KeyGenerator;
    const/16 v5, 0x80

    invoke-virtual {v2, v5}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 30
    sget-object v5, Lcom/qiip/arm/util/CipherAES;->KEY:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 31
    .local v3, raw:[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 33
    .local v4, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES/ECB/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 34
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 37
    .local v1, encrypted:[B
    invoke-static {v1}, Lcom/qiip/arm/util/CipherAES;->asHex([B)Ljava/lang/String;

    move-result-object v5

    .line 39
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #encrypted:[B
    .end local v2           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v3           #raw:[B
    .end local v4           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v5

    :cond_0
    const-string v5, ""

    goto :goto_0
.end method

.method private static fromDigit(C)I
    .locals 3
    .parameter "ch"

    .prologue
    .line 111
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 112
    add-int/lit8 v0, p0, -0x30

    .line 116
    :goto_0
    return v0

    .line 113
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 114
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 115
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 116
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 118
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid hex digit \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fromString(Ljava/lang/String;)[B
    .locals 8
    .parameter "hex"

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 93
    .local v5, len:I
    add-int/lit8 v6, v5, 0x1

    div-int/lit8 v6, v6, 0x2

    new-array v0, v6, [B

    .line 95
    .local v0, buf:[B
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .line 96
    .local v3, j:I
    rem-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 97
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/qiip/arm/util/CipherAES;->fromDigit(C)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 99
    :goto_0
    if-lt v2, v5, :cond_0

    .line 103
    return-object v0

    .line 100
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/qiip/arm/util/CipherAES;->fromDigit(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    .line 101
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 100
    invoke-static {v7}, Lcom/qiip/arm/util/CipherAES;->fromDigit(C)I

    move-result v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_0

    .end local v2           #i:I
    .end local v4           #j:I
    .restart local v1       #i:I
    .restart local v3       #j:I
    :cond_1
    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method
