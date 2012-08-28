.class public Lorg/connectbot/bean/PubkeyBean;
.super Lorg/connectbot/bean/AbstractBean;
.source "PubkeyBean.java"


# instance fields
.field private confirmUse:Z

.field private encrypted:Z

.field private id:J

.field private lifetime:I

.field private nickname:Ljava/lang/String;

.field private privateKey:[B

.field private publicKey:Ljava/security/PublicKey;

.field private startup:Z

.field private type:Ljava/lang/String;

.field private unlocked:Z

.field private unlockedPrivate:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lorg/connectbot/bean/AbstractBean;-><init>()V

    .line 52
    iput-boolean v0, p0, Lorg/connectbot/bean/PubkeyBean;->encrypted:Z

    .line 53
    iput-boolean v0, p0, Lorg/connectbot/bean/PubkeyBean;->startup:Z

    .line 54
    iput-boolean v0, p0, Lorg/connectbot/bean/PubkeyBean;->confirmUse:Z

    .line 55
    iput v0, p0, Lorg/connectbot/bean/PubkeyBean;->lifetime:I

    .line 58
    iput-boolean v0, p0, Lorg/connectbot/bean/PubkeyBean;->unlocked:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/bean/PubkeyBean;->unlockedPrivate:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method private decodePublicKeyAs(Ljava/security/spec/EncodedKeySpec;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .parameter "keySpec"
    .parameter "keyType"

    .prologue
    const/4 v2, 0x0

    .line 106
    :try_start_0
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 107
    .local v1, kf:Ljava/security/KeyFactory;
    invoke-virtual {v1, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 111
    .end local v1           #kf:Ljava/security/KeyFactory;
    :goto_0
    return-object v2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 110
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, e:Ljava/security/spec/InvalidKeySpecException;
    goto :goto_0
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "oldPassword"
    .parameter "newPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lorg/connectbot/bean/PubkeyBean;->getPrivateKey()[B

    move-result-object v4

    invoke-virtual {p0}, Lorg/connectbot/bean/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/connectbot/util/PubkeyUtils;->decodePrivate([BLjava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    .local v1, priv:Ljava/security/PrivateKey;
    invoke-static {v1, p2}, Lorg/connectbot/util/PubkeyUtils;->getEncodedPrivate(Ljava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/connectbot/bean/PubkeyBean;->setPrivateKey([B)V

    .line 232
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p0, v2}, Lorg/connectbot/bean/PubkeyBean;->setEncrypted(Z)V

    .line 234
    .end local v1           #priv:Ljava/security/PrivateKey;
    :goto_0
    return v3

    .line 227
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v3, v2

    .line 228
    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/connectbot/bean/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    instance-of v2, v2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lorg/connectbot/bean/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 188
    .local v0, bits:I
    const-string v2, "RSA "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, "-bit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .end local v0           #bits:I
    :goto_0
    iget-boolean v2, p0, Lorg/connectbot/bean/PubkeyBean;->encrypted:Z

    if-eqz v2, :cond_0

    .line 198
    const-string v2, " (encrypted)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 191
    :cond_1
    iget-object v2, p0, Lorg/connectbot/bean/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    instance-of v2, v2, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v2, :cond_2

    .line 192
    const-string v2, "DSA 1024-bit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 194
    :cond_2
    const-string v2, "Unknown Key Type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/connectbot/bean/PubkeyBean;->id:J

    return-wide v0
.end method

.method public getLifetime()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lorg/connectbot/bean/PubkeyBean;->lifetime:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/connectbot/bean/PubkeyBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/connectbot/bean/PubkeyBean;->privateKey:[B

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/connectbot/bean/PubkeyBean;->privateKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/connectbot/bean/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/connectbot/bean/PubkeyBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "nickname"

    iget-object v4, p0, Lorg/connectbot/bean/PubkeyBean;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "type"

    iget-object v4, p0, Lorg/connectbot/bean/PubkeyBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "private"

    iget-object v4, p0, Lorg/connectbot/bean/PubkeyBean;->privateKey:[B

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 213
    const-string v1, "public"

    iget-object v4, p0, Lorg/connectbot/bean/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 214
    const-string v4, "encrypted"

    iget-boolean v1, p0, Lorg/connectbot/bean/PubkeyBean;->encrypted:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v4, "startup"

    iget-boolean v1, p0, Lorg/connectbot/bean/PubkeyBean;->startup:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string v1, "confirmuse"

    iget-boolean v4, p0, Lorg/connectbot/bean/PubkeyBean;->confirmUse:Z

    if-eqz v4, :cond_2

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v1, "lifetime"

    iget v2, p0, Lorg/connectbot/bean/PubkeyBean;->lifetime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    return-object v0

    :cond_0
    move v1, v3

    .line 214
    goto :goto_0

    :cond_1
    move v1, v3

    .line 215
    goto :goto_1

    :cond_2
    move v2, v3

    .line 216
    goto :goto_2
.end method

.method public isConfirmUse()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lorg/connectbot/bean/PubkeyBean;->confirmUse:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/connectbot/bean/PubkeyBean;->encrypted:Z

    return v0
.end method

.method public isStartup()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lorg/connectbot/bean/PubkeyBean;->startup:Z

    return v0
.end method

.method public setConfirmUse(Z)V
    .locals 0
    .parameter "confirmUse"

    .prologue
    .line 153
    iput-boolean p1, p0, Lorg/connectbot/bean/PubkeyBean;->confirmUse:Z

    .line 154
    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0
    .parameter "encrypted"

    .prologue
    .line 137
    iput-boolean p1, p0, Lorg/connectbot/bean/PubkeyBean;->encrypted:Z

    .line 138
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 67
    iput-wide p1, p0, Lorg/connectbot/bean/PubkeyBean;->id:J

    .line 68
    return-void
.end method

.method public setLifetime(I)V
    .locals 0
    .parameter "lifetime"

    .prologue
    .line 161
    iput p1, p0, Lorg/connectbot/bean/PubkeyBean;->lifetime:I

    .line 162
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/connectbot/bean/PubkeyBean;->nickname:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setPrivateKey([B)V
    .locals 1
    .parameter "privateKey"

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/bean/PubkeyBean;->privateKey:[B

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/connectbot/bean/PubkeyBean;->privateKey:[B

    goto :goto_0
.end method

.method public setPublicKey([B)V
    .locals 2
    .parameter "encoded"

    .prologue
    .line 116
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 117
    .local v0, pubKeySpec:Ljava/security/spec/X509EncodedKeySpec;
    iget-object v1, p0, Lorg/connectbot/bean/PubkeyBean;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lorg/connectbot/bean/PubkeyBean;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/connectbot/bean/PubkeyBean;->decodePublicKeyAs(Ljava/security/spec/EncodedKeySpec;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/bean/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v1, "RSA"

    invoke-direct {p0, v0, v1}, Lorg/connectbot/bean/PubkeyBean;->decodePublicKeyAs(Ljava/security/spec/EncodedKeySpec;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/bean/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    .line 121
    iget-object v1, p0, Lorg/connectbot/bean/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_2

    .line 122
    const-string v1, "RSA"

    iput-object v1, p0, Lorg/connectbot/bean/PubkeyBean;->type:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_2
    const-string v1, "DSA"

    invoke-direct {p0, v0, v1}, Lorg/connectbot/bean/PubkeyBean;->decodePublicKeyAs(Ljava/security/spec/EncodedKeySpec;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/bean/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    .line 125
    iget-object v1, p0, Lorg/connectbot/bean/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "DSA"

    iput-object v1, p0, Lorg/connectbot/bean/PubkeyBean;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public setStartup(Z)V
    .locals 0
    .parameter "startup"

    .prologue
    .line 145
    iput-boolean p1, p0, Lorg/connectbot/bean/PubkeyBean;->startup:Z

    .line 146
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 83
    iput-object p1, p0, Lorg/connectbot/bean/PubkeyBean;->type:Ljava/lang/String;

    .line 84
    return-void
.end method
