.class public Lutil/googleiap/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutil/googleiap/Security$VerifiedPurchase;
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
    .line 46
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lutil/googleiap/Security;->RANDOM:Ljava/security/SecureRandom;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lutil/googleiap/Security;->sKnownNonces:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 83
    sget-object v2, Lutil/googleiap/Security;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 84
    .local v0, nonce:J
    sget-object v2, Lutil/googleiap/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    return-wide v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .parameter "encodedPublicKey"

    .prologue
    .line 231
    :try_start_0
    invoke-static {p0}, Lutil/googleiap/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 232
    .local v0, decodedKey:[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 233
    .local v2, keyFactory:Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lutil/googleiap/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 234
    .end local v0           #decodedKey:[B
    .end local v2           #keyFactory:Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 235
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 236
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 237
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 239
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 240
    .local v1, e:Lutil/googleiap/Base64DecoderException;
    const-string v3, "Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .parameter "nonce"

    .prologue
    .line 93
    sget-object v0, Lutil/googleiap/Security;->sKnownNonces:Ljava/util/HashSet;

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
    .line 89
    sget-object v0, Lutil/googleiap/Security;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "publicKey"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    const/4 v2, 0x0

    .line 260
    :try_start_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 261
    .local v1, sig:Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 263
    invoke-static {p2}, Lutil/googleiap/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    const-string v3, "Security"

    const-string v4, "Signature verification failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lutil/googleiap/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 277
    .end local v1           #sig:Ljava/security/Signature;
    :goto_0
    return v2

    .line 267
    .restart local v1       #sig:Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 268
    .end local v1           #sig:Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Security"

    const-string v4, "NoSuchAlgorithmException."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 271
    .local v0, e:Ljava/security/InvalidKeyException;
    const-string v3, "Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 273
    .local v0, e:Ljava/security/SignatureException;
    const-string v3, "Security"

    const-string v4, "Signature exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    .end local v0           #e:Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 275
    .local v0, e:Lutil/googleiap/Base64DecoderException;
    const-string v3, "Security"

    const-string v4, "Base64 decoding failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 35
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
            "Lutil/googleiap/Security$VerifiedPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    const-string v3, "Security"

    const-string v33, "data is null"

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v28, 0x0

    .line 219
    :goto_0
    return-object v28

    .line 116
    :cond_0
    const/16 v32, 0x0

    .line 117
    .local v32, verified:Z
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 134
    const-string v31, "XE-ZNX.SIzq7@R!2svjm!OPgJ5oWAUySliaf?3Pd1Q+NMd@f=?@zJf6O-fQe5ySzHItbKonPNL@VjqhNM=g5acBco44.E6aRBXfIeC7?uY1Y*e+#XvqWSt73HQ9d7oLZxwTMLZ6JJmKBx0nJ=*yfQD.emyBNPeJGMXnPLy3.-gN3j6Gd00j!@3N4x-xjXt?saOJ*oqP*idV##*q78Fue*A2?2ww8w@4kLS8c0?y9IUdnh5Xv=TiPTX/fiOK#?dPjn83vEOG#e7WrtPj_ZA#dfpR-Sd=l77%1F9#wCyr2Mr8iAf8T2Np=l8LGq#cxUsHm3sm7X9=xgLR+45++rw6tR/PTx8GKV=iqkNqf%B_%T#jZrYZ8EoFu9lc%cTJl35cgrxaqOe!q"

    .line 137
    .local v31, t:Ljava/lang/String;
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v33, 0x7f05000e

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v11

    .line 138
    .local v11, afd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v11}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v30, v0

    .line 144
    .local v30, size:I
    :try_start_0
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v33, 0x7f05000e

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v17

    .line 145
    .local v17, in:Ljava/io/InputStream;
    new-instance v14, Ljava/io/DataInputStream;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    .local v14, din:Ljava/io/DataInputStream;
    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 147
    .local v21, k:[B
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v14           #din:Ljava/io/DataInputStream;
    .end local v17           #in:Ljava/io/InputStream;
    :goto_1
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 153
    .local v12, b:[B
    move-object/from16 v0, v21

    array-length v3, v0

    new-array v0, v3, [B

    move-object/from16 v26, v0

    .line 154
    .local v26, output:[B
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_1

    .line 155
    aget-byte v3, v21, v16

    array-length v0, v12

    move/from16 v33, v0

    rem-int v33, v16, v33

    aget-byte v33, v12, v33

    xor-int v3, v3, v33

    int-to-byte v3, v3

    aput-byte v3, v26, v16

    .line 154
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 148
    .end local v12           #b:[B
    .end local v16           #i:I
    .end local v21           #k:[B
    .end local v26           #output:[B
    :catch_0
    move-exception v15

    .line 149
    .local v15, e:Ljava/io/IOException;
    const-string v3, "Security"

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/16 v21, 0x0

    .restart local v21       #k:[B
    goto :goto_1

    .line 157
    .end local v15           #e:Ljava/io/IOException;
    .restart local v12       #b:[B
    .restart local v16       #i:I
    .restart local v26       #output:[B
    :cond_1
    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V

    .line 161
    .local v13, base64EncodedPublicKey:Ljava/lang/String;
    invoke-static {v13}, Lutil/googleiap/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v22

    .line 162
    .local v22, key:Ljava/security/PublicKey;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lutil/googleiap/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v32

    .line 163
    if-nez v32, :cond_2

    .line 164
    const-string v3, "Security"

    const-string v33, "signature does not match data."

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 169
    .end local v11           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v12           #b:[B
    .end local v13           #base64EncodedPublicKey:Ljava/lang/String;
    .end local v16           #i:I
    .end local v21           #k:[B
    .end local v22           #key:Ljava/security/PublicKey;
    .end local v26           #output:[B
    .end local v30           #size:I
    .end local v31           #t:Ljava/lang/String;
    :cond_2
    const/16 v20, 0x0

    .line 170
    .local v20, jTransactionsArray:Lorg/json/JSONArray;
    const/16 v25, 0x0

    .line 171
    .local v25, numTransactions:I
    const-wide/16 v23, 0x0

    .line 173
    .local v23, nonce:J
    :try_start_1
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    .local v19, jObject:Lorg/json/JSONObject;
    const-string v3, "nonce"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 177
    const-string v3, "orders"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 178
    if-eqz v20, :cond_3

    .line 179
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v25

    .line 185
    :cond_3
    invoke-static/range {v23 .. v24}, Lutil/googleiap/Security;->isNonceKnown(J)Z

    move-result v3

    if-nez v3, :cond_4

    .line 186
    const-string v3, "Security"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Nonce not found: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 181
    .end local v19           #jObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v15

    .line 182
    .local v15, e:Lorg/json/JSONException;
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 190
    .end local v15           #e:Lorg/json/JSONException;
    .restart local v19       #jObject:Lorg/json/JSONObject;
    :cond_4
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v28, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lutil/googleiap/Security$VerifiedPurchase;>;"
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 193
    :try_start_2
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 194
    .local v18, jElement:Lorg/json/JSONObject;
    const-string v3, "purchaseState"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 195
    .local v29, response:I
    invoke-static/range {v29 .. v29}, Lutil/googleiap/Consts$PurchaseState;->valueOf(I)Lutil/googleiap/Consts$PurchaseState;

    move-result-object v4

    .line 196
    .local v4, purchaseState:Lutil/googleiap/Consts$PurchaseState;
    const-string v3, "productId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, productId:Ljava/lang/String;
    const-string v3, "packageName"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 198
    .local v27, packageName:Ljava/lang/String;
    const-string v3, "purchaseTime"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 199
    .local v8, purchaseTime:J
    const-string v3, "orderId"

    const-string v33, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, orderId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 201
    .local v5, notifyId:Ljava/lang/String;
    const-string v3, "notificationId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 202
    const-string v3, "notificationId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 204
    :cond_5
    const-string v3, "developerPayload"

    const/16 v33, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 208
    .local v10, developerPayload:Ljava/lang/String;
    sget-object v3, Lutil/googleiap/Consts$PurchaseState;->PURCHASED:Lutil/googleiap/Consts$PurchaseState;

    if-ne v4, v3, :cond_6

    if-nez v32, :cond_6

    .line 192
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 211
    :cond_6
    new-instance v3, Lutil/googleiap/Security$VerifiedPurchase;

    invoke-direct/range {v3 .. v10}, Lutil/googleiap/Security$VerifiedPurchase;-><init>(Lutil/googleiap/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 214
    .end local v4           #purchaseState:Lutil/googleiap/Consts$PurchaseState;
    .end local v5           #notifyId:Ljava/lang/String;
    .end local v6           #productId:Ljava/lang/String;
    .end local v7           #orderId:Ljava/lang/String;
    .end local v8           #purchaseTime:J
    .end local v10           #developerPayload:Ljava/lang/String;
    .end local v18           #jElement:Lorg/json/JSONObject;
    .end local v27           #packageName:Ljava/lang/String;
    .end local v29           #response:I
    :catch_2
    move-exception v15

    .line 215
    .restart local v15       #e:Lorg/json/JSONException;
    const-string v3, "Security"

    const-string v33, "JSON exception: "

    move-object/from16 v0, v33

    invoke-static {v3, v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 218
    .end local v15           #e:Lorg/json/JSONException;
    :cond_7
    invoke-static/range {v23 .. v24}, Lutil/googleiap/Security;->removeNonce(J)V

    goto/16 :goto_0
.end method
