.class final Lde/androidpit/licensing/AndroidPitLicensingResponseValidator;
.super Ljava/lang/Object;
.source "AndroidPitLicensingResponseValidator.java"

# interfaces
.implements Lde/androidpit/licensing/ILicensingResponseValidator;


# static fields
.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mSalt:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lde/androidpit/licensing/AndroidPitLicensingResponseValidator;->mSalt:I

    .line 47
    iput-object p1, p0, Lde/androidpit/licensing/AndroidPitLicensingResponseValidator;->mPackageName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private createPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 9
    .parameter "pubKeyBase64"

    .prologue
    .line 149
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 150
    invoke-static {p1}, Lcom/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 149
    invoke-direct {v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 151
    .local v4, pubKeyByteArray:Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 153
    .local v5, publicKeyObject:Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 154
    .local v3, modulus:Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 156
    .local v1, exponent:Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v3, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 157
    .local v2, keySpec:Ljava/security/spec/RSAPublicKeySpec;
    const-string v7, "RSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 158
    .local v6, rsaKeyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v6, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 166
    .end local v1           #exponent:Ljava/math/BigInteger;
    .end local v2           #keySpec:Ljava/security/spec/RSAPublicKeySpec;
    .end local v3           #modulus:Ljava/math/BigInteger;
    .end local v4           #pubKeyByteArray:Ljava/io/ByteArrayInputStream;
    .end local v5           #publicKeyObject:Ljava/io/ObjectInputStream;
    .end local v6           #rsaKeyFactory:Ljava/security/KeyFactory;
    :goto_0
    return-object v7

    .line 160
    :catch_0
    move-exception v0

    .line 163
    .local v0, ex:Ljava/lang/Exception;
    const-string v7, "LicenseResponseValidator"

    .line 164
    const-string v8, "Deserialization of public key failed."

    .line 162
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkResponse(Ljava/lang/String;Lde/androidpit/app/services/SignedResponse;)Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    .locals 8
    .parameter "publicKeyStr"
    .parameter "response"

    .prologue
    .line 68
    invoke-virtual {p2}, Lde/androidpit/app/services/SignedResponse;->getIsLicensed()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->valueOf(Ljava/lang/String;)Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    move-result-object v2

    .line 71
    .local v2, responseCode:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    sget-object v5, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    invoke-virtual {v2, v5}, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    :try_start_0
    invoke-direct {p0, p1}, Lde/androidpit/licensing/AndroidPitLicensingResponseValidator;->createPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 76
    .local v1, pubKey:Ljava/security/PublicKey;
    const-string v5, "SHA1withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 77
    .local v4, sig:Ljava/security/Signature;
    invoke-virtual {v4, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 78
    invoke-virtual {p2}, Lde/androidpit/app/services/SignedResponse;->getSignedData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Signature;->update([B)V

    .line 80
    invoke-virtual {p2}, Lde/androidpit/app/services/SignedResponse;->getSign()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 84
    const-string v6, "failed to verify signature of response"

    .line 82
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->NOT_LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 134
    .end local v1           #pubKey:Ljava/security/PublicKey;
    .end local v2           #responseCode:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    .end local v4           #sig:Ljava/security/Signature;
    :cond_0
    :goto_0
    return-object v2

    .line 88
    .restart local v2       #responseCode:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;
    :catch_0
    move-exception v0

    .line 90
    .local v0, ex:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no such algorithm."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 93
    .end local v0           #ex:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, ex:Ljava/security/InvalidKeyException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bad public key."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->ERROR_INVALID_PUBLIC_KEY:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    goto :goto_0

    .line 98
    .end local v0           #ex:Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 100
    .local v0, ex:Ljava/security/SignatureException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bad signature."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 103
    .end local v0           #ex:Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 106
    .local v0, ex:Lcom/android/vending/licensing/util/Base64DecoderException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "failed decode base64 string of signature ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lcom/android/vending/licensing/util/Base64DecoderException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 107
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->NOT_LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    goto :goto_0

    .line 113
    .end local v0           #ex:Lcom/android/vending/licensing/util/Base64DecoderException;
    .restart local v1       #pubKey:Ljava/security/PublicKey;
    .restart local v4       #sig:Ljava/security/Signature;
    :cond_1
    invoke-virtual {p2}, Lde/androidpit/app/services/SignedResponse;->getSignedData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lde/androidpit/licensing/AndroidPitResponseData;->parse(Ljava/lang/String;)Lde/androidpit/licensing/AndroidPitResponseData;

    move-result-object v3

    .line 116
    .local v3, responseData:Lde/androidpit/licensing/AndroidPitResponseData;
    iget-object v5, p0, Lde/androidpit/licensing/AndroidPitLicensingResponseValidator;->mPackageName:Ljava/lang/String;

    .line 117
    invoke-virtual {p2}, Lde/androidpit/app/services/SignedResponse;->getIsLicensed()Ljava/lang/String;

    move-result-object v6

    .line 118
    iget v7, p0, Lde/androidpit/licensing/AndroidPitLicensingResponseValidator;->mSalt:I

    .line 115
    invoke-virtual {v3, v5, v6, v7}, Lde/androidpit/licensing/AndroidPitResponseData;->verifiesAgainst(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "verification successful."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 127
    const-string v6, "signature verification failed - invalid data."

    .line 125
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v2, Lde/androidpit/licensing/AndroidPitLicenseCheckCode;->NOT_LICENSED:Lde/androidpit/licensing/AndroidPitLicenseCheckCode;

    goto/16 :goto_0
.end method

.method public getSalt()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lde/androidpit/licensing/AndroidPitLicensingResponseValidator;->mSalt:I

    return v0
.end method
