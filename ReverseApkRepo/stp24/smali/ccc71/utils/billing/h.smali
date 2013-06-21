.class public final Lccc71/utils/billing/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/security/SecureRandom;

.field private static b:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lccc71/utils/billing/h;->a:Ljava/security/SecureRandom;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lccc71/utils/billing/h;->b:Ljava/util/HashSet;

    .line 37
    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 79
    sget-object v0, Lccc71/utils/billing/h;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 80
    sget-object v2, Lccc71/utils/billing/h;->b:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    return-wide v0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .parameter

    .prologue
    .line 198
    :try_start_0
    invoke-static {p0}, Lccc71/utils/billing/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 199
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 200
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lccc71/utils/billing/b; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 203
    :catch_1
    move-exception v0

    .line 204
    const-string v1, "Security"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 206
    :catch_2
    move-exception v0

    .line 207
    const-string v1, "Security"

    const-string v2, "Base64 decoding failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    const-string v2, "Security"

    const-string v3, "data is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v2, 0x0

    .line 186
    :goto_0
    return-object v2

    .line 112
    :cond_0
    const/4 v2, 0x0

    .line 113
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 127
    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAksmUkUdLXTDJFmFMqInUMPVjVXuuDtZ5KY51JNHjmbxm5udQJ+f9M0eYkOovwaEIHR4uJ/s8erRbPMdQpLsUbRj98QtckId2BzdjlWPW2lPJfxZT6BP6LVlHbCMtij7YNdU2H23uAEo7fkUnL0gqhWC56btbR6wnpMCha0lQcFtcMCofKthYHmFw4m4Ot5eRoVHoggU6e0dhuzHGInIEZFLOL0YLxEcFHG7qS7DWEgbhJzPCsvSJlvyakwNmC4qOICc8p6uUbt7OuaKZ4jElheDetl2GLB3+QpBp+ruBLYKY98XFFlzTaLmLovH/FIR9OGkhtdQ4CD9cXG/F/ssiKwIDAQAB"

    .line 128
    invoke-static {v2}, Lccc71/utils/billing/h;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1}, Lccc71/utils/billing/h;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 130
    if-nez v2, :cond_1

    .line 131
    const-string v2, "Security"

    const-string v3, "signature does not match data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v10, v2

    .line 138
    :goto_1
    const/4 v2, 0x0

    .line 141
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    const-string v4, "nonce"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 145
    const-string v4, "orders"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 146
    if-eqz v16, :cond_7

    .line 147
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v11, v2

    .line 153
    :goto_2
    sget-object v2, Lccc71/utils/billing/h;->b:Ljava/util/HashSet;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 154
    const-string v2, "Security"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Nonce not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v2, 0x0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0

    .line 158
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 160
    const/4 v2, 0x0

    move v13, v2

    :goto_3
    if-lt v13, v11, :cond_3

    .line 185
    invoke-static {v14, v15}, Lccc71/utils/billing/h;->a(J)V

    move-object v2, v12

    .line 186
    goto :goto_0

    .line 161
    :cond_3
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 162
    const-string v3, "purchaseState"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 163
    invoke-static {v3}, Lccc71/utils/billing/d;->a(I)Lccc71/utils/billing/d;

    move-result-object v3

    .line 164
    const-string v4, "productId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    const-string v4, "purchaseTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 166
    const-string v4, "orderId"

    const-string v6, ""

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 167
    const/4 v4, 0x0

    .line 168
    const-string v9, "notificationId"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 169
    const-string v4, "notificationId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    :cond_4
    const-string v9, "developerPayload"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 175
    sget-object v2, Lccc71/utils/billing/d;->a:Lccc71/utils/billing/d;

    if-ne v3, v2, :cond_5

    if-eqz v10, :cond_6

    .line 176
    :cond_5
    new-instance v2, Lccc71/utils/billing/i;

    .line 179
    invoke-direct/range {v2 .. v9}, Lccc71/utils/billing/i;-><init>(Lccc71/utils/billing/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 178
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :cond_6
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_3

    .line 181
    :catch_1
    move-exception v2

    .line 182
    const-string v3, "Security"

    const-string v4, "JSON exception: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    move v11, v2

    goto/16 :goto_2

    :cond_8
    move v10, v2

    goto/16 :goto_1
.end method

.method public static a(J)V
    .locals 2
    .parameter

    .prologue
    .line 85
    sget-object v0, Lccc71/utils/billing/h;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method private static a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 227
    :try_start_0
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 228
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 230
    invoke-static {p2}, Lccc71/utils/billing/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    const-string v1, "Security"

    const-string v2, "Signature verification failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lccc71/utils/billing/b; {:try_start_0 .. :try_end_0} :catch_3

    .line 244
    :goto_0
    return v0

    .line 234
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    const-string v1, "Security"

    const-string v2, "NoSuchAlgorithmException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :catch_1
    move-exception v1

    const-string v1, "Security"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :catch_2
    move-exception v1

    const-string v1, "Security"

    const-string v2, "Signature exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :catch_3
    move-exception v1

    const-string v1, "Security"

    const-string v2, "Base64 decoding failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
