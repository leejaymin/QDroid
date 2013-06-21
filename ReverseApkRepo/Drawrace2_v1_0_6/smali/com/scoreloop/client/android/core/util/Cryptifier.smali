.class public Lcom/scoreloop/client/android/core/util/Cryptifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljavax/crypto/Cipher;

.field private final b:[B

.field private final c:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/Cryptifier;->a:Ljavax/crypto/Cipher;

    .line 35
    invoke-static {p1, p2}, Lcom/scoreloop/client/android/core/util/Cryptifier;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/Cryptifier;->b:[B

    .line 36
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/Cryptifier;->b:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/Cryptifier;->c:Ljavax/crypto/spec/SecretKeySpec;

    .line 37
    return-void
.end method

.method private a()Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scoreloop/client/android/core/util/CryptifierException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cryptifier;->a:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    .line 100
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/Cryptifier;->a:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cryptifier;->a:Ljavax/crypto/Cipher;

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Lcom/scoreloop/client/android/core/util/CryptifierException;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/util/CryptifierException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 107
    :catch_1
    move-exception v0

    .line 108
    new-instance v1, Lcom/scoreloop/client/android/core/util/CryptifierException;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/util/CryptifierException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 109
    :catch_2
    move-exception v0

    .line 110
    new-instance v1, Lcom/scoreloop/client/android/core/util/CryptifierException;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/util/CryptifierException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 42
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 48
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 56
    const/16 v0, 0x10

    new-array v3, v0, [B

    .line 57
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 58
    add-int/lit8 v4, v0, 0x6

    array-length v5, v1

    rem-int/2addr v4, v5

    aget-byte v4, v1, v4

    add-int/lit8 v5, v0, 0x3

    array-length v6, v2

    rem-int/2addr v5, v6

    aget-byte v5, v2, v5

    xor-int/2addr v4, v5

    xor-int/lit8 v4, v4, 0x3e

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 60
    :cond_0
    return-object v3
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scoreloop/client/android/core/util/CryptifierException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/util/Cryptifier;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/util/Base64;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([B)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scoreloop/client/android/core/util/CryptifierException;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/Cryptifier;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/scoreloop/client/android/core/util/Cryptifier;->c:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lcom/scoreloop/client/android/core/util/Cryptifier;->b:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 89
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/Cryptifier;->a()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Lcom/scoreloop/client/android/core/util/CryptifierException;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/util/CryptifierException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 92
    :catch_1
    move-exception v0

    .line 93
    new-instance v1, Lcom/scoreloop/client/android/core/util/CryptifierException;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/util/CryptifierException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Ljava/lang/String;)[B
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scoreloop/client/android/core/util/CryptifierException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/Cryptifier;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/util/Cryptifier;->c:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lcom/scoreloop/client/android/core/util/Cryptifier;->b:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 70
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/Cryptifier;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Lcom/scoreloop/client/android/core/util/CryptifierException;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/util/CryptifierException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :catch_1
    move-exception v0

    .line 74
    new-instance v1, Lcom/scoreloop/client/android/core/util/CryptifierException;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/util/CryptifierException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scoreloop/client/android/core/util/CryptifierException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    invoke-static {p1}, Lcom/scoreloop/client/android/core/util/Base64;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/util/Cryptifier;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Lcom/scoreloop/client/android/core/util/CryptifierException;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/util/CryptifierException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
