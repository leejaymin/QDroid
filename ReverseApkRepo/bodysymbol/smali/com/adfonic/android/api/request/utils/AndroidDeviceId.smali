.class public Lcom/adfonic/android/api/request/utils/AndroidDeviceId;
.super Ljava/lang/Object;
.source "AndroidDeviceId.java"


# static fields
.field private static final HEX_CHARS:[C = null

.field private static final PREFERENCE_DEVICE_ID:Ljava/lang/String; = "UUID"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/adfonic/android/api/request/utils/AndroidDeviceId;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    .line 63
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 64
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 66
    .local v2, msg:[B
    invoke-static {v2}, Lcom/adfonic/android/api/request/utils/AndroidDeviceId;->asHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 68
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v2           #msg:[B
    :goto_0
    return-object v3

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, ""

    goto :goto_0
.end method

.method private static asHex([B)Ljava/lang/String;
    .locals 5
    .parameter "buf"

    .prologue
    .line 78
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    .line 79
    .local v0, chars:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 80
    mul-int/lit8 v2, v1, 0x2

    sget-object v3, Lcom/adfonic/android/api/request/utils/AndroidDeviceId;->HEX_CHARS:[C

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 81
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/adfonic/android/api/request/utils/AndroidDeviceId;->HEX_CHARS:[C

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private static getAndroidDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDpId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 26
    invoke-static {p0}, Lcom/adfonic/android/api/request/utils/AndroidDeviceId;->getAndroidDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, androidId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    const-string v1, ""

    .line 34
    :cond_0
    :goto_0
    return-object v1

    .line 30
    :cond_1
    invoke-static {v0}, Lcom/adfonic/android/api/request/utils/AndroidDeviceId;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, encryptedAndroidDeviceId:Ljava/lang/String;
    const-string v2, "9774d56d682e549c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-static {p0}, Lcom/adfonic/android/api/request/utils/AndroidDeviceId;->getTestRandomDeviceIdFromPreferences(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getTestRandomDeviceIdFromPreferences(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 39
    const-string v3, "Adfonic"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 40
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v3, "UUID"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adfonic/android/api/request/utils/AndroidDeviceId;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, randomUUID:Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "UUID"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #randomUUID:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v3, "UUID"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
