.class public Lcom/gameboys/pocket7/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameboys/pocket7/Security$VerifiedPurchase;
    }
.end annotation


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom; = null

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "Security"

.field private static sKnownNonces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/gameboys/pocket7/Security;->RANDOM:Ljava/security/SecureRandom;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/gameboys/pocket7/Security;->sKnownNonces:Ljava/util/HashSet;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 79
    sget-object v2, Lcom/gameboys/pocket7/Security;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 80
    .local v0, nonce:J
    sget-object v2, Lcom/gameboys/pocket7/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    return-wide v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .parameter "encodedPublicKey"

    .prologue
    .line 208
    :try_start_0
    invoke-static {p0}, Lcom/gameboys/pocket7/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 210
    .local v0, decodedKey:[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 212
    .local v2, keyFactory:Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/gameboys/pocket7/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 211
    return-object v3

    .line 213
    .end local v0           #decodedKey:[B
    .end local v2           #keyFactory:Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 214
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 215
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 216
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 218
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 219
    .local v1, e:Lcom/gameboys/pocket7/util/Base64DecoderException;
    const-string v3, "Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .parameter "nonce"

    .prologue
    .line 89
    sget-object v0, Lcom/gameboys/pocket7/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeNonce(J)V
    .locals 2
    .parameter "nonce"

    .prologue
    .line 85
    sget-object v0, Lcom/gameboys/pocket7/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "publicKey"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    const/4 v2, 0x0

    .line 243
    :try_start_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 244
    .local v1, sig:Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 246
    invoke-static {p2}, Lcom/gameboys/pocket7/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    const-string v3, "Security"

    const-string v4, "Signature verification failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/gameboys/pocket7/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 260
    .end local v1           #sig:Ljava/security/Signature;
    :goto_0
    return v2

    .line 250
    .restart local v1       #sig:Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 251
    .end local v1           #sig:Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Security"

    const-string v4, "NoSuchAlgorithmException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 254
    .local v0, e:Ljava/security/InvalidKeyException;
    const-string v3, "Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 256
    .local v0, e:Ljava/security/SignatureException;
    const-string v3, "Security"

    const-string v4, "Signature exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    .end local v0           #e:Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 258
    .local v0, e:Lcom/gameboys/pocket7/util/Base64DecoderException;
    const-string v3, "Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 27
    .parameter "signedData"
    .parameter "signature"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gameboys/pocket7/Security$VerifiedPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    const-string v3, "Security"

    const-string v25, "data is null"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v22, 0x0

    .line 194
    :goto_0
    return-object v22

    .line 116
    :cond_0
    const/16 v24, 0x0

    .line 117
    .local v24, verified:Z
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    sget-object v11, Lcom/gameboys/pocket7/Dungeons;->base64EncodedPublicKey:Ljava/lang/String;

    .line 134
    .local v11, base64EncodedPublicKey:Ljava/lang/String;
    invoke-static {v11}, Lcom/gameboys/pocket7/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v17

    .line 135
    .local v17, key:Ljava/security/PublicKey;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/gameboys/pocket7/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    .line 136
    if-nez v24, :cond_1

    .line 137
    const-string v3, "Security"

    const-string v25, "signature does not match data."

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/16 v22, 0x0

    goto :goto_0

    .line 143
    .end local v11           #base64EncodedPublicKey:Ljava/lang/String;
    .end local v17           #key:Ljava/security/PublicKey;
    :cond_1
    const/16 v16, 0x0

    .line 144
    .local v16, jTransactionsArray:Lorg/json/JSONArray;
    const/16 v20, 0x0

    .line 145
    .local v20, numTransactions:I
    const-wide/16 v18, 0x0

    .line 147
    .local v18, nonce:J
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    .local v15, jObject:Lorg/json/JSONObject;
    const-string v3, "nonce"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 151
    const-string v3, "orders"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 152
    if-eqz v16, :cond_2

    .line 153
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 159
    :cond_2
    invoke-static/range {v18 .. v19}, Lcom/gameboys/pocket7/Security;->isNonceKnown(J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 160
    const-string v3, "Security"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Nonce not found: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/16 v22, 0x0

    goto :goto_0

    .line 155
    .end local v15           #jObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    .line 156
    .local v12, e:Lorg/json/JSONException;
    const/16 v22, 0x0

    goto :goto_0

    .line 164
    .end local v12           #e:Lorg/json/JSONException;
    .restart local v15       #jObject:Lorg/json/JSONObject;
    :cond_3
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v22, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/gameboys/pocket7/Security$VerifiedPurchase;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move/from16 v0, v20

    if-lt v13, v0, :cond_4

    .line 193
    invoke-static/range {v18 .. v19}, Lcom/gameboys/pocket7/Security;->removeNonce(J)V

    goto :goto_0

    .line 167
    :cond_4
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 168
    .local v14, jElement:Lorg/json/JSONObject;
    const-string v3, "purchaseState"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 169
    .local v23, response:I
    invoke-static/range {v23 .. v23}, Lcom/gameboys/pocket7/Consts$PurchaseState;->valueOf(I)Lcom/gameboys/pocket7/Consts$PurchaseState;

    move-result-object v4

    .line 170
    .local v4, purchaseState:Lcom/gameboys/pocket7/Consts$PurchaseState;
    const-string v3, "productId"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, productId:Ljava/lang/String;
    const-string v3, "packageName"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 172
    .local v21, packageName:Ljava/lang/String;
    const-string v3, "purchaseTime"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 173
    .local v8, purchaseTime:J
    const-string v3, "orderId"

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, orderId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 175
    .local v5, notifyId:Ljava/lang/String;
    const-string v3, "notificationId"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 176
    const-string v3, "notificationId"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    :cond_5
    const-string v3, "developerPayload"

    const/16 v25, 0x0

    .line 178
    move-object/from16 v0, v25

    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, developerPayload:Ljava/lang/String;
    sget-object v3, Lcom/gameboys/pocket7/Consts$PurchaseState;->PURCHASED:Lcom/gameboys/pocket7/Consts$PurchaseState;

    if-ne v4, v3, :cond_6

    if-nez v24, :cond_6

    .line 166
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 186
    :cond_6
    new-instance v3, Lcom/gameboys/pocket7/Security$VerifiedPurchase;

    .line 187
    invoke-direct/range {v3 .. v10}, Lcom/gameboys/pocket7/Security$VerifiedPurchase;-><init>(Lcom/gameboys/pocket7/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 186
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 189
    .end local v4           #purchaseState:Lcom/gameboys/pocket7/Consts$PurchaseState;
    .end local v5           #notifyId:Ljava/lang/String;
    .end local v6           #productId:Ljava/lang/String;
    .end local v7           #orderId:Ljava/lang/String;
    .end local v8           #purchaseTime:J
    .end local v10           #developerPayload:Ljava/lang/String;
    .end local v14           #jElement:Lorg/json/JSONObject;
    .end local v21           #packageName:Ljava/lang/String;
    .end local v23           #response:I
    :catch_1
    move-exception v12

    .line 190
    .restart local v12       #e:Lorg/json/JSONException;
    const-string v3, "Security"

    const-string v25, "JSON exception: "

    move-object/from16 v0, v25

    invoke-static {v3, v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    const/16 v22, 0x0

    goto/16 :goto_0
.end method
