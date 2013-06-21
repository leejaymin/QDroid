.class public Lnet/robotmedia/billing/security/DefaultSignatureValidator;
.super Ljava/lang/Object;
.source "DefaultSignatureValidator.java"

# interfaces
.implements Lnet/robotmedia/billing/security/ISignatureValidator;


# static fields
.field protected static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field protected static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"


# instance fields
.field private configuration:Lnet/robotmedia/billing/BillingController$IConfiguration;


# direct methods
.method public constructor <init>(Lnet/robotmedia/billing/BillingController$IConfiguration;)V
    .locals 0
    .parameter "configuration"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lnet/robotmedia/billing/security/DefaultSignatureValidator;->configuration:Lnet/robotmedia/billing/BillingController$IConfiguration;

    .line 67
    return-void
.end method


# virtual methods
.method protected generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .parameter "encodedPublicKey"

    .prologue
    .line 49
    :try_start_0
    invoke-static {p1}, Lnet/robotmedia/billing/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 50
    .local v0, decodedKey:[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 51
    .local v2, keyFactory:Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/robotmedia/billing/utils/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 52
    .end local v0           #decodedKey:[B
    .end local v2           #keyFactory:Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 54
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 55
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "Billing"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 57
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 58
    .local v1, e:Lnet/robotmedia/billing/utils/Base64DecoderException;
    const-string v3, "Billing"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "signedData"
    .parameter "signature"

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v3, p0, Lnet/robotmedia/billing/security/DefaultSignatureValidator;->configuration:Lnet/robotmedia/billing/BillingController$IConfiguration;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/robotmedia/billing/security/DefaultSignatureValidator;->configuration:Lnet/robotmedia/billing/BillingController$IConfiguration;

    invoke-interface {v3}, Lnet/robotmedia/billing/BillingController$IConfiguration;->getPublicKey()Ljava/lang/String;

    move-result-object v1

    .local v1, publicKey:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    .end local v1           #publicKey:Ljava/lang/String;
    :cond_0
    const-string v3, "Billing"

    const-string v4, "Please set the public key or turn on debug mode"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return v2

    .line 99
    .restart local v1       #publicKey:Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 100
    const-string v3, "Billing"

    const-string v4, "Data is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0, v1}, Lnet/robotmedia/billing/security/DefaultSignatureValidator;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 104
    .local v0, key:Ljava/security/PublicKey;
    invoke-virtual {p0, v0, p1, p2}, Lnet/robotmedia/billing/security/DefaultSignatureValidator;->validate(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method protected validate(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "publicKey"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    const/4 v2, 0x0

    .line 72
    :try_start_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 73
    .local v1, sig:Ljava/security/Signature;
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 75
    invoke-static {p3}, Lnet/robotmedia/billing/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    const-string v3, "Billing"

    const-string v4, "Signature verification failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/robotmedia/billing/utils/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 89
    .end local v1           #sig:Ljava/security/Signature;
    :goto_0
    return v2

    .line 79
    .restart local v1       #sig:Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 80
    .end local v1           #sig:Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Billing"

    const-string v4, "NoSuchAlgorithmException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 83
    .local v0, e:Ljava/security/InvalidKeyException;
    const-string v3, "Billing"

    const-string v4, "Invalid key specification"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 85
    .local v0, e:Ljava/security/SignatureException;
    const-string v3, "Billing"

    const-string v4, "Signature exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v0           #e:Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 87
    .local v0, e:Lnet/robotmedia/billing/utils/Base64DecoderException;
    const-string v3, "Billing"

    const-string v4, "Base64 decoding failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
