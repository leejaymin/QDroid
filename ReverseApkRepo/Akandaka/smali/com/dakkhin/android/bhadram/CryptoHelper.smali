.class public Lcom/dakkhin/android/bhadram/CryptoHelper;
.super Ljava/lang/Object;
.source "CryptoHelper.java"


# static fields
.field private static final salt:[B


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private keyFactory:Ljavax/crypto/SecretKeyFactory;

.field private paramSpec:Ljavax/crypto/spec/PBEParameterSpec;

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dakkhin/android/bhadram/CryptoHelper;->salt:[B

    .line 25
    return-void

    .line 32
    :array_0
    .array-data 0x1
        0xeat
        0x92t
        0xd3t
        0xa6t
        0xb7t
        0x78t
        0x5ft
        0x7ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-string v0, "PBEWITHSHA256AND256BITAES-CBC-BC"

    const-string v0, "BC"

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    sget-object v1, Lcom/dakkhin/android/bhadram/CryptoHelper;->salt:[B

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v0, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->paramSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 42
    :try_start_0
    const-string v0, "PBEWITHSHA256AND256BITAES-CBC-BC"

    const-string v1, "BC"

    .line 41
    invoke-static {v0, v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->keyFactory:Ljavax/crypto/SecretKeyFactory;

    .line 43
    const-string v0, "PBEWITHSHA256AND256BITAES-CBC-BC"

    .line 44
    const-string v1, "BC"

    .line 43
    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    goto :goto_0

    .line 45
    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public decrypt([B)Ljava/lang/String;
    .locals 3
    .parameter "text"

    .prologue
    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 89
    .local v1, decryptedBytes:[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, decrypted:Ljava/lang/String;
    move-object v2, v0

    .line 94
    .end local v0           #decrypted:Ljava/lang/String;
    .end local v1           #decryptedBytes:[B
    :goto_0
    return-object v2

    .line 92
    :catch_0
    move-exception v2

    .line 94
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 91
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public decryptInit()V
    .locals 4

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->secretKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->paramSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;)[B
    .locals 3
    .parameter "text"

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, encryptedBytes:[B
    move-object v1, v0

    .line 75
    .end local v0           #encryptedBytes:[B
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v1

    .line 75
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 72
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public encryptInit()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->secretKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->paramSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public generateKey([C)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 53
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 55
    .local v0, keySpec:Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    iget-object v1, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->keyFactory:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/dakkhin/android/bhadram/CryptoHelper;->secretKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v1

    goto :goto_0
.end method
