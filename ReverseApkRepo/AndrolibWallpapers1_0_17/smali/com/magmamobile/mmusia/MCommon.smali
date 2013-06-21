.class public Lcom/magmamobile/mmusia/MCommon;
.super Ljava/lang/Object;
.source "MCommon.java"


# static fields
.field public static GUID:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "MMUSIA"

.field public static final USE_DEBUG:Z

.field private static mDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-string v0, ""

    sput-object v0, Lcom/magmamobile/mmusia/MCommon;->GUID:Ljava/lang/String;

    .line 270
    const/4 v0, 0x0

    sput v0, Lcom/magmamobile/mmusia/MCommon;->mDensity:F

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Log_d(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 47
    return-void
.end method

.method public static Log_d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 52
    return-void
.end method

.method public static Log_e(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 50
    return-void
.end method

.method public static Log_e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 55
    return-void
.end method

.method public static Log_i(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 48
    return-void
.end method

.method public static Log_i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 53
    return-void
.end method

.method public static Log_v(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 51
    return-void
.end method

.method public static Log_v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 56
    return-void
.end method

.method public static Log_w(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 49
    return-void
.end method

.method public static Log_w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 54
    return-void
.end method

.method public static buildUrlParam(Landroid/content/Context;IZ)Ljava/util/List;
    .locals 5
    .parameter "context"
    .parameter "LatestNewsId"
    .parameter "forceUpdate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "di"

    invoke-static {p0}, Lcom/magmamobile/mmusia/MCommon;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "lng"

    invoke-static {}, Lcom/magmamobile/mmusia/MCommon;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "lid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/magmamobile/mmusia/MCommon;->getAppVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "pn"

    invoke-static {p0}, Lcom/magmamobile/mmusia/MCommon;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "pm"

    invoke-static {}, Lcom/magmamobile/mmusia/MCommon;->getModelNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sw"

    invoke-static {p0}, Lcom/magmamobile/mmusia/MCommon;->getScreenSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sv"

    invoke-static {}, Lcom/magmamobile/mmusia/MCommon;->getSDK()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "mmver"

    invoke-static {}, Lcom/magmamobile/mmusia/MCommon;->getMMUSIAVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    if-eqz p2, :cond_0

    .line 169
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "gu"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    return-object v0
.end method

.method public static final dpi(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 280
    sget v0, Lcom/magmamobile/mmusia/MCommon;->mDensity:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    move v0, p0

    .line 282
    :goto_0
    return v0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dpi : value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float v1, p0

    sget v2, Lcom/magmamobile/mmusia/MCommon;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/magmamobile/mmusia/MCommon;->Log_d(Ljava/lang/String;)V

    .line 282
    int-to-float v0, p0

    sget v1, Lcom/magmamobile/mmusia/MCommon;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static final dpiImage(I)I
    .locals 6
    .parameter "value"

    .prologue
    const/high16 v4, 0x4040

    const-string v5, "dpi : value "

    .line 285
    sget v0, Lcom/magmamobile/mmusia/MCommon;->mDensity:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    move v0, p0

    .line 292
    :goto_0
    return v0

    .line 286
    :cond_0
    sget v0, Lcom/magmamobile/mmusia/MCommon;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dpi : value "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x2 => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float v1, p0

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/magmamobile/mmusia/MCommon;->Log_d(Ljava/lang/String;)V

    .line 289
    int-to-float v0, p0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_0

    .line 291
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dpi : value "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float v1, p0

    sget v2, Lcom/magmamobile/mmusia/MCommon;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/magmamobile/mmusia/MCommon;->Log_d(Ljava/lang/String;)V

    .line 292
    int-to-float v0, p0

    sget v1, Lcom/magmamobile/mmusia/MCommon;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static generateString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "stream"

    .prologue
    .line 178
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 179
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 180
    .local v0, buffer:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, cur:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 190
    .end local v1           #cur:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 184
    .restart local v1       #cur:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 186
    .end local v1           #cur:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 187
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 192
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static generateString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "stream"
    .parameter "charset"

    .prologue
    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v4, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 203
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 205
    .local v0, buffer:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, cur:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 208
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v1           #cur:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 206
    .restart local v0       #buffer:Ljava/io/BufferedReader;
    .restart local v1       #cur:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    :cond_0
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 209
    .end local v0           #buffer:Ljava/io/BufferedReader;
    .end local v1           #cur:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 210
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 110
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, pn:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 112
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #pn:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 113
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 114
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 116
    const-string v4, ""

    goto :goto_0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 96
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, pn:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 98
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #pn:Ljava/lang/String;
    :goto_0
    return v4

    .line 99
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 100
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v4, v5

    .line 102
    goto :goto_0
.end method

.method public static getAssetDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .local v1, d:Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .line 259
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 255
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 257
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAssetDrawableResize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "d"
    .parameter "W"
    .parameter "H"

    .prologue
    .line 263
    if-nez p0, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 267
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static final getDensity(Landroid/content/Context;)F
    .locals 2
    .parameter "context"

    .prologue
    .line 275
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 276
    .local v0, metrics:Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 277
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, deviceId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 124
    const-string v1, "emulator"

    .line 152
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/magmamobile/mmusia/MMUSIA;->LANGUAGE:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "en"

    sput-object v0, Lcom/magmamobile/mmusia/MMUSIA;->LANGUAGE:Ljava/lang/String;

    .line 68
    :cond_0
    sget-object v0, Lcom/magmamobile/mmusia/MMUSIA;->LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static getMMUSIAVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "1"

    return-object v0
.end method

.method public static getModelNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 83
    .local v0, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPrefNotifStatus(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 239
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 240
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "mmusianotif"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSDK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 86
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 87
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 88
    .local v0, disp:Landroid/view/Display;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static openMarket(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "pname"

    .prologue
    const/16 v7, 0x7d0

    .line 299
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "market://details?id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 301
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/magmamobile/mmusia/data/LanguageBase;->MARKET_NOT_FOUND:Ljava/lang/String;

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static openMarketLink(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "link"

    .prologue
    const/16 v6, 0x7d0

    .line 307
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 309
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/magmamobile/mmusia/data/LanguageBase;->MARKET_NOT_FOUND:Ljava/lang/String;

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static openUrlPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "url"

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 315
    .local v0, intent:Landroid/content/Intent;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/16 v1, 0x270e

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    return-void
.end method

.method public static setPrefNotifStatus(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "activate"

    .prologue
    .line 244
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 245
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 246
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "mmusianotif"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    return-void
.end method

.method public static showPrefs(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/magmamobile/mmusia/views/PrefView;

    invoke-direct {v2, p0}, Lcom/magmamobile/mmusia/views/PrefView;-><init>(Landroid/content/Context;)V

    .line 220
    .local v2, v:Landroid/view/View;
    sget v3, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_PREF_CHECK_ENABLE:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 222
    .local v1, check:Landroid/widget/CheckBox;
    invoke-static {p0}, Lcom/magmamobile/mmusia/MCommon;->getPrefNotifStatus(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 224
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 226
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 227
    sget-object v3, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_SETTINGS_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 228
    sget-object v3, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_SETTINGS_CLOSE:Ljava/lang/String;

    new-instance v4, Lcom/magmamobile/mmusia/MCommon$1;

    invoke-direct {v4, p0, v1}, Lcom/magmamobile/mmusia/MCommon$1;-><init>(Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 235
    return-void
.end method

.method public static final useDpi(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 272
    invoke-static {p0}, Lcom/magmamobile/mmusia/MCommon;->getDensity(Landroid/content/Context;)F

    move-result v0

    sput v0, Lcom/magmamobile/mmusia/MCommon;->mDensity:F

    .line 273
    return-void
.end method
