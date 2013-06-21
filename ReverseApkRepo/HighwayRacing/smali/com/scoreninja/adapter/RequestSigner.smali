.class final Lcom/scoreninja/adapter/RequestSigner;
.super Ljava/lang/Object;
.source "RequestSigner.java"


# static fields
.field private static final HEX_CHAR:[C


# instance fields
.field private final hmacSha1:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/scoreninja/adapter/RequestSigner;->HEX_CHAR:[C

    .line 30
    return-void

    .line 31
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
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "privateKey"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-direct {p0, p1}, Lcom/scoreninja/adapter/RequestSigner;->getNewHmacSha1(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreninja/adapter/RequestSigner;->hmacSha1:Ljavax/crypto/Mac;

    .line 37
    return-void
.end method

.method private getNewHmacSha1(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 7
    .parameter "privateKey"

    .prologue
    const/4 v5, 0x0

    const-string v6, "HmacSHA1"

    .line 68
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "HmacSHA1"

    invoke-direct {v2, v3, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 71
    .local v2, secretKey:Ljavax/crypto/SecretKey;
    :try_start_0
    const-string v3, "HmacSHA1"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 73
    .local v1, mac:Ljavax/crypto/Mac;
    :try_start_1
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v1

    .line 80
    .end local v1           #mac:Ljavax/crypto/Mac;
    :goto_0
    return-object v3

    .line 74
    .restart local v1       #mac:Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/security/InvalidKeyException;
    move-object v3, v5

    .line 75
    goto :goto_0

    .line 77
    .end local v0           #e:Ljava/security/InvalidKeyException;
    .end local v1           #mac:Ljavax/crypto/Mac;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    move-object v3, v5

    .line 78
    goto :goto_0
.end method


# virtual methods
.method getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "plainText"

    .prologue
    .line 46
    iget-object v4, p0, Lcom/scoreninja/adapter/RequestSigner;->hmacSha1:Ljavax/crypto/Mac;

    if-nez v4, :cond_0

    .line 47
    const-string v4, ""

    .line 58
    :goto_0
    return-object v4

    .line 50
    :cond_0
    iget-object v4, p0, Lcom/scoreninja/adapter/RequestSigner;->hmacSha1:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->update([B)V

    .line 51
    iget-object v4, p0, Lcom/scoreninja/adapter/RequestSigner;->hmacSha1:Ljavax/crypto/Mac;

    invoke-virtual {v4}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    .line 52
    .local v1, digest:[B
    const/16 v4, 0x28

    new-array v2, v4, [C

    .line 53
    .local v2, hexDigest:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v4, 0x14

    if-lt v3, v4, :cond_1

    .line 58
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 54
    :cond_1
    aget-byte v4, v1, v3

    and-int/lit16 v0, v4, 0xff

    .line 55
    .local v0, byteValue:I
    mul-int/lit8 v4, v3, 0x2

    sget-object v5, Lcom/scoreninja/adapter/RequestSigner;->HEX_CHAR:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    .line 56
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/scoreninja/adapter/RequestSigner;->HEX_CHAR:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
