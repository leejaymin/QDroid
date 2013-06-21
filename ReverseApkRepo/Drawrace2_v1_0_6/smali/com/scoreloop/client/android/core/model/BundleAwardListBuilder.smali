.class public final Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "en.lproj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Localizable.strings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->b:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private static a(Ljava/io/InputStream;[B)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v2, v0

    move v1, v0

    .line 338
    :goto_0
    if-ge v2, v3, :cond_0

    .line 340
    aget-byte v0, p1, v2

    const/16 v4, 0xd

    if-eq v0, v4, :cond_1

    .line 341
    add-int/lit8 v0, v1, 0x1

    aget-byte v4, p1, v2

    aput-byte v4, p1, v1

    .line 338
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 345
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/AwardList;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 139
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "Info.plist.checksum"

    invoke-direct {p0, p1, v2}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->a(Ljava/lang/String;)[B

    move-result-object v1

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string v0, "Info.plist"

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v0, 0x400

    new-array v4, v0, [B

    invoke-static {v3, v4}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->a(Ljava/io/InputStream;[B)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {v2, v4, v6, v0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-static {v3, v4}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->a(Ljava/io/InputStream;[B)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unsupported hashing method"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string v0, "f02e3c85572dc9ad7cb77c2a638e3"

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v1, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid plist - checksums do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/core/util/PlistParser;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/PlistParser;-><init>()V

    .line 142
    const-string v1, "Info.plist"

    invoke-direct {p0, p1, v1}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/util/PlistParser;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/util/PlistParser;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 144
    const-string v1, "SLAchievableListIdentifier"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/scoreloop/client/android/core/util/PlistParser;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/scoreloop/client/android/core/model/AwardList;->a(Ljava/lang/String;)V

    .line 147
    const-string v1, "SLAwards"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/scoreloop/client/android/core/util/PlistParser;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "identifier"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/scoreloop/client/android/core/util/PlistParser;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "counterRange"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/scoreloop/client/android/core/util/PlistParser;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->c:Ljava/util/regex/Pattern;

    if-nez v3, :cond_3

    const-string v3, "\\s*\\{\\s*(\\d+)\\s*,\\s*(\\d+)\\s*\\}\\s*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iput-object v3, p0, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->c:Ljava/util/regex/Pattern;

    :cond_3
    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wrong counterRange value in plist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/scoreloop/client/android/core/model/Range;

    invoke-direct {v3, v4, v1}, Lcom/scoreloop/client/android/core/model/Range;-><init>(II)V

    const-string v1, "importance"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/scoreloop/client/android/core/util/PlistParser;->a(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "rewardMoney"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/util/PlistParser;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v4, "amount"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/scoreloop/client/android/core/util/PlistParser;->a(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "currency"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/util/PlistParser;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/scoreloop/client/android/core/model/Money;

    new-instance v8, Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v8, v4}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-direct {v5, v0, v8}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    new-instance v0, Lcom/scoreloop/client/android/core/model/Award;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/scoreloop/client/android/core/model/Award;-><init>(Lcom/scoreloop/client/android/core/model/Award$a;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Range;ILcom/scoreloop/client/android/core/model/Money;B)V

    .line 149
    invoke-virtual {p2, v0}, Lcom/scoreloop/client/android/core/model/AwardList;->a(Lcom/scoreloop/client/android/core/model/Award;)V

    goto/16 :goto_1

    .line 151
    :cond_5
    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 61
    const/16 v1, 0x28

    if-eq v3, v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "checksum must be 40 characters long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    const/16 v1, 0x14

    new-array v4, v1, [B

    move v1, v0

    .line 66
    :goto_0
    if-ge v0, v3, :cond_1

    .line 67
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 68
    add-int/lit8 v2, v1, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 66
    add-int/lit8 v0, v0, 0x2

    move v1, v2

    goto :goto_0

    .line 70
    :cond_1
    return-object v4
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 269
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/AwardList;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 157
    new-instance v11, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v11}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 159
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v0, "achievable_list_identifier"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v11, v1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v11}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    invoke-virtual {p2, v0}, Lcom/scoreloop/client/android/core/model/AwardList;->a(Ljava/lang/String;)V

    .line 166
    :cond_0
    const-string v0, "awards"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v11, v1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->e(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    invoke-virtual {v11}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/json/JSONArray;

    move v7, v8

    .line 169
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 170
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v0, "identifier"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v11, v3, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_1
    const-string v0, "counterMin"

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v11, v3, v0, v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v11}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    :goto_2
    const-string v0, "counterRange"

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v11, v3, v0, v4}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    :goto_3
    const-string v0, "importance"

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v11, v3, v0, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v10, v0

    :goto_4
    const-string v0, "rewardMoney"

    sget-object v5, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v11, v3, v0, v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v5, Lcom/scoreloop/client/android/core/model/Money;

    invoke-direct {v5, v0}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Lorg/json/JSONObject;)V

    :goto_5
    const-string v0, "achievedIconUrl"

    sget-object v12, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v11, v3, v0, v12}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    const-string v0, "unachievedIconUrl"

    sget-object v12, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v11, v3, v0, v12}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    new-instance v0, Lcom/scoreloop/client/android/core/model/Award;

    new-instance v3, Lcom/scoreloop/client/android/core/model/Range;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/scoreloop/client/android/core/model/Range;-><init>(II)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/core/model/Award;-><init>(Lcom/scoreloop/client/android/core/model/Award$a;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Range;ILcom/scoreloop/client/android/core/model/Money;)V

    .line 171
    invoke-virtual {p2, v0}, Lcom/scoreloop/client/android/core/model/AwardList;->a(Lcom/scoreloop/client/android/core/model/Award;)V

    .line 169
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_0

    :cond_1
    move-object v2, v9

    .line 170
    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, v0

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object v10, v0

    goto :goto_4

    :cond_5
    move-object v5, v9

    goto :goto_5

    .line 174
    :cond_6
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 129
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 130
    const-string v5, "Info.json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    const/4 v0, 0x1

    .line 135
    :cond_0
    return v0

    .line 129
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "Info.json"

    invoke-direct {p0, p1, v2}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    const/16 v2, 0x400

    new-array v2, v2, [C

    .line 286
    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    .line 288
    if-lez v3, :cond_1

    .line 289
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 291
    :cond_1
    array-length v4, v2

    if-eq v3, v4, :cond_0

    .line 292
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v2, v1

    .line 300
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 301
    aget-object v4, v3, v2

    const-string v5, "Info.plist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    :cond_0
    :goto_1
    return v0

    .line 304
    :cond_1
    aget-object v4, v3, v2

    const-string v5, "Info.json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move v0, v1

    .line 310
    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/AwardList;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 81
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SLAwards.bundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v6, v0

    .line 82
    :goto_0
    if-nez v6, :cond_3

    move-object v0, v2

    .line 121
    :goto_1
    return-object v0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SLAwards.bundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v6, v0

    goto :goto_0

    :cond_1
    const-string v0, "SLAwards.bundle"

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v6, v0

    goto :goto_0

    :cond_2
    move-object v6, v2

    goto :goto_0

    .line 87
    :cond_3
    :try_start_0
    new-instance v3, Lcom/scoreloop/client/android/core/model/AwardList;

    invoke-direct {v3}, Lcom/scoreloop/client/android/core/model/AwardList;-><init>()V

    .line 89
    invoke-direct {p0, v6}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    invoke-direct {p0, v6, v3}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->b(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/AwardList;)V

    .line 96
    :goto_2
    const-string v0, "Award.default.achieved.png"

    invoke-direct {p0, v6, v0}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 97
    const-string v0, "Award.default.unachieved.png"

    invoke-direct {p0, v6, v0}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 99
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/AwardList;->getAwards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Award;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Award."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ".achieved.png"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Award;->a(Landroid/graphics/Bitmap;)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Award."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ".unachieved.png"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_6

    :goto_5
    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Award;->b(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error reading awards from bundle"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 121
    goto/16 :goto_1

    .line 92
    :cond_4
    :try_start_1
    invoke-direct {p0, v6, v3}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/AwardList;)V

    goto/16 :goto_2

    :cond_5
    move-object v1, v5

    .line 101
    goto :goto_4

    :cond_6
    move-object v1, v4

    .line 104
    goto :goto_5

    .line 108
    :cond_7
    sget-object v0, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->a:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/util/StringsParser;->a(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v4

    .line 111
    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/AwardList;->getAwards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Award;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Award."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".title"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Award;->b(Ljava/lang/String;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Award."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".description"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Award;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_8
    move-object v0, v3

    .line 116
    goto/16 :goto_1
.end method
