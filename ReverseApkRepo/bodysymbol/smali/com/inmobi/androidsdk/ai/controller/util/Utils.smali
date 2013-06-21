.class public Lcom/inmobi/androidsdk/ai/controller/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final a:Ljava/lang/String; = "ISO-8859-1"

.field private static final b:Ljava/lang/String; = "C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B"

.field private static final c:Ljava/lang/String; = "010001"

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->d:I

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 239
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 240
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "010001"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 241
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 242
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v4, v0, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 244
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 243
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 246
    const-string v2, "RSA/ECB/nopadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 247
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 249
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 251
    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->a([BILjavax/crypto/Cipher;)[B

    move-result-object v0

    .line 254
    const/4 v2, 0x0

    .line 253
    invoke-static {v0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/Base64;->encode([BI)[B

    move-result-object v2

    .line 256
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 260
    sget-boolean v2, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 261
    const-string v2, "InMobiAndroidSDK_3.5.2"

    const-string v3, "Exception in encryptRSA"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 207
    const-string v1, ""

    .line 212
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 214
    array-length v0, v2

    new-array v3, v0, [B

    .line 215
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 217
    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-lt v0, v5, :cond_0

    .line 220
    const/4 v0, 0x2

    invoke-static {v3, v0}, Lcom/inmobi/androidsdk/ai/controller/util/Base64;->encode([BI)[B

    move-result-object v2

    .line 221
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 232
    :goto_1
    return-object v0

    .line 218
    :cond_0
    aget-byte v5, v2, v0

    array-length v6, v4

    rem-int v6, v0, v6

    aget-byte v6, v4, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    sget-boolean v2, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 227
    const-string v2, "InMobiAndroidSDK_3.5.2"

    .line 228
    const-string v3, "Exception in xor with random integer"

    .line 227
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static a([BILjavax/crypto/Cipher;)[B
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x40

    const/4 v0, 0x0

    .line 272
    new-array v2, v0, [B

    .line 273
    new-array v3, v0, [B

    .line 275
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 276
    :cond_0
    array-length v4, p0

    .line 278
    new-array v2, v1, [B

    move v7, v0

    move-object v0, v2

    move-object v2, v3

    move v3, v7

    .line 280
    :goto_0
    if-lt v3, v4, :cond_1

    .line 293
    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 294
    invoke-static {v2, v0}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->a([B[B)[B

    move-result-object v0

    .line 296
    return-object v0

    .line 281
    :cond_1
    if-lez v3, :cond_2

    rem-int v5, v3, v1

    if-nez v5, :cond_2

    .line 282
    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 283
    invoke-static {v2, v0}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->a([B[B)[B

    move-result-object v2

    .line 285
    add-int/lit8 v0, v3, 0x40

    if-le v0, v4, :cond_3

    .line 286
    sub-int v0, v4, v3

    .line 288
    :goto_1
    new-array v0, v0, [B

    .line 290
    :cond_2
    rem-int v5, v3, v1

    aget-byte v6, p0, v3

    aput-byte v6, v0, v5

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static a([B[B)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 300
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v2, v0, [B

    move v0, v1

    .line 301
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 304
    :goto_1
    array-length v0, p1

    if-lt v1, v0, :cond_1

    .line 307
    return-object v2

    .line 302
    :cond_0
    aget-byte v3, p0, v0

    aput-byte v3, v2, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_1
    array-length v0, p0

    add-int/2addr v0, v1

    aget-byte v3, p1, v1

    aput-byte v3, v2, v0

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 42
    const/4 v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v2

    const/4 v2, 0x1

    and-int/lit8 v3, p0, 0xf

    aget-char v0, v0, v3

    aput-char v0, v1, v2

    .line 43
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 40
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 57
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 69
    :goto_1
    return-object v0

    .line 59
    :cond_0
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_1

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, v1, v0

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->byteToHex(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    aget-byte v3, v1, v0

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 66
    :catch_0
    move-exception v0

    .line 69
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static createMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 89
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 91
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_1
    return-object v0

    .line 96
    :cond_0
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 98
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getODIN1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 116
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 120
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 123
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_1
    return-object v0

    .line 125
    :cond_0
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 126
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 133
    const-string v1, "InMobiAndroidSDK_3.5.2"

    const-string v2, "Exception in getting ODIN-1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getUIDMap(Lcom/inmobi/androidsdk/IMAdRequest;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 142
    .line 146
    if-eqz p0, :cond_8

    .line 147
    sget-object v0, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;->ID_LOGIN:Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getIDType(Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;)Ljava/lang/String;

    move-result-object v4

    .line 148
    sget-object v0, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;->ID_SESSION:Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getIDType(Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMAdRequest;->getDeviceIdMask()I

    move-result v0

    .line 152
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    const/4 v6, 0x0

    .line 154
    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    if-eqz v4, :cond_7

    .line 156
    invoke-static {v4, p2}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    const-string v6, "LID:\'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v4, "\'"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v5

    .line 163
    :goto_1
    if-eqz v2, :cond_6

    .line 164
    if-ne v4, v5, :cond_0

    .line 165
    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_0
    invoke-static {v2, p2}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    const-string v4, "SID:\'"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v2, "\'"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v5

    .line 173
    :goto_2
    if-nez p0, :cond_3

    .line 174
    if-eqz p1, :cond_5

    .line 175
    if-ne v2, v5, :cond_1

    .line 176
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_1
    invoke-static {p1, p2}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "O1:\'"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v0, "\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v5

    .line 197
    :goto_3
    const-string v1, "}"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    if-ne v0, v5, :cond_2

    .line 199
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    :cond_2
    return-object v3

    .line 185
    :cond_3
    if-eqz p1, :cond_5

    and-int/lit8 v4, v0, 0x1

    if-eq v4, v5, :cond_5

    .line 186
    and-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_5

    .line 187
    if-ne v2, v5, :cond_4

    .line 188
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_4
    invoke-static {p1, p2}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v1, "O1:\'"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v0, "\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v5

    .line 194
    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    move v4, v6

    goto :goto_1

    :cond_8
    move v0, v1

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_0
.end method

.method public static declared-synchronized incrementBaseUrl()I
    .locals 2

    .prologue
    .line 311
    const-class v1, Lcom/inmobi/androidsdk/ai/controller/util/Utils;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->d:I

    .line 312
    sget v0, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static readFileFromJar(Ljava/lang/String;)Ljava/util/Properties;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 347
    .line 348
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 350
    :try_start_0
    const-class v2, Lcom/inmobi/androidsdk/ai/controller/JSAssetController;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 353
    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 354
    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 357
    :cond_0
    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 358
    if-lez v3, :cond_1

    .line 359
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 360
    :cond_1
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v3, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 362
    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 363
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 372
    if-eqz v2, :cond_2

    .line 374
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 380
    :cond_2
    :goto_0
    return-object v0

    .line 366
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 367
    :goto_1
    :try_start_3
    sget-boolean v3, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 368
    const-string v3, "InMobiAndroidSDK_3.5.2"

    .line 369
    const-string v4, "Exception in reading File from JAR"

    .line 368
    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 372
    :cond_3
    if-eqz v2, :cond_4

    .line 374
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_2
    move-object v0, v1

    .line 380
    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    .line 372
    :goto_3
    if-eqz v1, :cond_5

    .line 374
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 379
    :cond_5
    :goto_4
    throw v0

    .line 375
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 371
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 366
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static validateAppId(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 331
    if-nez p0, :cond_0

    .line 332
    const-string v1, "InMobiAndroidSDK_3.5.2"

    .line 333
    const-string v2, "Cannot load ad because appId is null. Please provide a valid appId."

    .line 332
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_0
    return v0

    .line 337
    :cond_0
    const-string v1, "(x)+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    const-string v1, "InMobiAndroidSDK_3.5.2"

    .line 339
    const-string v2, "Cannot load ad because appId is null. Please provide a valid appId."

    .line 338
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
