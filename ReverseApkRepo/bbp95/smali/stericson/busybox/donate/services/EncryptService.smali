.class public Lstericson/busybox/donate/services/EncryptService;
.super Ljava/lang/Object;
.source "EncryptService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([B)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    .line 68
    const/4 v3, 0x2

    :try_start_0
    invoke-static {v3}, Lstericson/busybox/donate/services/EncryptService;->prepareCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 70
    .local v0, cipher:Ljavax/crypto/Cipher;
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :goto_0
    return-object v2

    .line 74
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"

    .prologue
    .line 52
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Lstericson/busybox/donate/services/EncryptService;->prepareCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 54
    .local v0, cipher:Ljavax/crypto/Cipher;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :goto_0
    return-object v2

    .line 58
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static prepareCipher(I)Ljavax/crypto/Cipher;
    .locals 11
    .parameter "mode"

    .prologue
    .line 16
    const-string v1, "AES"

    .line 17
    .local v1, ENCRYPTION:Ljava/lang/String;
    const-string v0, "SHA1PRNG"

    .line 18
    .local v0, ALGORITHM:Ljava/lang/String;
    const-string v2, "BusyB0x_D3v3l0per"

    .line 22
    .local v2, SEED:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v5

    .line 24
    .local v5, keygen:Ljavax/crypto/KeyGenerator;
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v8

    .line 26
    .local v8, secrand:Ljava/security/SecureRandom;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 28
    const/16 v10, 0x80

    invoke-virtual {v5, v10, v8}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 30
    invoke-virtual {v5}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 32
    .local v7, seckey:Ljavax/crypto/SecretKey;
    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    .line 34
    .local v6, rawKey:[B
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v9, v6, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 36
    .local v9, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 38
    .local v3, cipher:Ljavax/crypto/Cipher;
    invoke-virtual {v3, p0, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #keygen:Ljavax/crypto/KeyGenerator;
    .end local v6           #rawKey:[B
    .end local v7           #seckey:Ljavax/crypto/SecretKey;
    .end local v8           #secrand:Ljava/security/SecureRandom;
    .end local v9           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 42
    :catch_0
    move-exception v4

    .line 44
    .local v4, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method
