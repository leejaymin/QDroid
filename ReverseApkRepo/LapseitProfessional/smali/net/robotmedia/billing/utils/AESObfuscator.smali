.class public Lnet/robotmedia/billing/utils/AESObfuscator;
.super Ljava/lang/Object;
.source "AESObfuscator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;
    }
.end annotation


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final IV:[B = null

.field private static final KEYGEN_ALGORITHM:Ljava/lang/String; = "PBEWITHSHAAND256BITAES-CBC-BC"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final header:Ljava/lang/String; = "net.robotmedia.billing.utils.AESObfuscator-1|"


# instance fields
.field private mDecryptor:Ljavax/crypto/Cipher;

.field private mEncryptor:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x4a

    const/16 v2, 0x10

    .line 40
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    .line 39
    sput-object v0, Lnet/robotmedia/billing/utils/AESObfuscator;->IV:[B

    .line 35
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 9
    .parameter "salt"
    .parameter "password"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    :try_start_0
    const-string v5, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 50
    .local v1, factory:Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/16 v6, 0x400

    const/16 v7, 0x100

    invoke-direct {v2, v5, p1, v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 51
    .local v2, keySpec:Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 52
    .local v4, tmp:Ljavax/crypto/SecretKey;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v3, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 53
    .local v3, secret:Ljavax/crypto/SecretKey;
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    iput-object v5, p0, Lnet/robotmedia/billing/utils/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    .line 54
    iget-object v5, p0, Lnet/robotmedia/billing/utils/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    const/4 v6, 0x1

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Lnet/robotmedia/billing/utils/AESObfuscator;->IV:[B

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, v6, v3, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 55
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    iput-object v5, p0, Lnet/robotmedia/billing/utils/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    .line 56
    iget-object v5, p0, Lnet/robotmedia/billing/utils/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Lnet/robotmedia/billing/utils/AESObfuscator;->IV:[B

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, v6, v3, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 57
    .end local v1           #factory:Ljavax/crypto/SecretKeyFactory;
    .end local v2           #keySpec:Ljava/security/spec/KeySpec;
    .end local v3           #secret:Ljavax/crypto/SecretKey;
    .end local v4           #tmp:Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid environment"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public obfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "original"

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 69
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lnet/robotmedia/billing/utils/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "net.robotmedia.billing.utils.AESObfuscator-1|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lnet/robotmedia/billing/utils/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 72
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unobfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "obfuscated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;
        }
    .end annotation

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    const/4 v3, 0x0

    .line 90
    :goto_0
    return-object v3

    .line 82
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lnet/robotmedia/billing/utils/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    invoke-static {p1}, Lnet/robotmedia/billing/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 85
    .local v2, result:Ljava/lang/String;
    const-string v3, "net.robotmedia.billing.utils.AESObfuscator-1|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, headerIndex:I
    if-eqz v1, :cond_1

    .line 87
    new-instance v3, Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Header not found (invalid data or key):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-direct {v3, p0, v4}, Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;-><init>(Lnet/robotmedia/billing/utils/AESObfuscator;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lnet/robotmedia/billing/utils/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 91
    .end local v1           #headerIndex:I
    .end local v2           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Lnet/robotmedia/billing/utils/Base64DecoderException;
    new-instance v3, Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/robotmedia/billing/utils/Base64DecoderException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;-><init>(Lnet/robotmedia/billing/utils/AESObfuscator;Ljava/lang/String;)V

    throw v3

    .line 90
    .end local v0           #e:Lnet/robotmedia/billing/utils/Base64DecoderException;
    .restart local v1       #headerIndex:I
    .restart local v2       #result:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "net.robotmedia.billing.utils.AESObfuscator-1|"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Lnet/robotmedia/billing/utils/Base64DecoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    goto :goto_0

    .line 93
    .end local v1           #headerIndex:I
    .end local v2           #result:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 94
    .local v0, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;-><init>(Lnet/robotmedia/billing/utils/AESObfuscator;Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v0           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v0

    .line 96
    .local v0, e:Ljavax/crypto/BadPaddingException;
    new-instance v3, Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;-><init>(Lnet/robotmedia/billing/utils/AESObfuscator;Ljava/lang/String;)V

    throw v3

    .line 97
    .end local v0           #e:Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v0

    .line 98
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid environment"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
