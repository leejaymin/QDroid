.class public Lcom/adwhirl/AdWhirlManager;
.super Ljava/lang/Object;
.source "AdWhirlManager.java"


# static fields
.field private static final PREFS_STRING_CONFIG:Ljava/lang/String; = "config"

.field private static final PREFS_STRING_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static configExpireTimeout:J


# instance fields
.field private contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public deviceIDHash:Ljava/lang/String;

.field private extra:Lcom/adwhirl/obj/Extra;

.field public keyAdWhirl:Ljava/lang/String;

.field public localeString:Ljava/lang/String;

.field public location:Landroid/location/Location;

.field private rationsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adwhirl/obj/Ration;",
            ">;"
        }
    .end annotation
.end field

.field rollovers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/adwhirl/obj/Ration;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/adwhirl/AdWhirlManager;->configExpireTimeout:J

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "keyAdWhirl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, contextReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const-string v5, "AdWhirl SDK"

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/adwhirl/AdWhirlManager;->totalWeight:D

    .line 81
    sget-boolean v3, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v3, :cond_0

    const-string v3, "AdWhirl SDK"

    const-string v3, "Creating adWhirlManager..."

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/adwhirl/AdWhirlManager;->contextReference:Ljava/lang/ref/WeakReference;

    .line 83
    iput-object p2, p0, Lcom/adwhirl/AdWhirlManager;->keyAdWhirl:Ljava/lang/String;

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adwhirl/AdWhirlManager;->localeString:Ljava/lang/String;

    .line 86
    sget-boolean v3, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v3, :cond_1

    const-string v3, "AdWhirl SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Locale is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adwhirl/AdWhirlManager;->localeString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 91
    .local v2, md:Ljava/security/MessageDigest;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "android_id"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, deviceIDString:Ljava/lang/StringBuffer;
    const-string v3, "AdWhirl"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/adwhirl/util/AdWhirlUtil;->convertToHex([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adwhirl/AdWhirlManager;->deviceIDHash:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0           #deviceIDString:Ljava/lang/StringBuffer;
    .end local v2           #md:Ljava/security/MessageDigest;
    :goto_0
    sget-boolean v3, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v3, :cond_2

    const-string v3, "AdWhirl SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hashed device ID is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adwhirl/AdWhirlManager;->deviceIDHash:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    sget-boolean v3, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v3, :cond_3

    const-string v3, "AdWhirl SDK"

    const-string v3, "Finished creating adWhirlManager"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_3
    return-void

    .line 94
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 95
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "00000000000000000000000000000000"

    iput-object v3, p0, Lcom/adwhirl/AdWhirlManager;->deviceIDHash:Ljava/lang/String;

    goto :goto_0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .parameter "is"

    .prologue
    const/4 v6, 0x0

    const-string v8, "Caught IOException in convertStreamToString()"

    const-string v7, "AdWhirl SDK"

    .line 251
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x2000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 252
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 256
    .local v1, line:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 266
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 273
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    .line 257
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 261
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    sget-boolean v4, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v4, :cond_1

    const-string v4, "AdWhirl SDK"

    const-string v5, "Caught IOException in convertStreamToString()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v6

    .line 262
    goto :goto_1

    .line 267
    :catch_1
    move-exception v0

    .line 268
    sget-boolean v4, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v4, :cond_2

    const-string v4, "AdWhirl SDK"

    const-string v4, "Caught IOException in convertStreamToString()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v4, v6

    .line 269
    goto :goto_1

    .line 264
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 266
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 271
    throw v4

    .line 267
    :catch_2
    move-exception v0

    .line 268
    .restart local v0       #e:Ljava/io/IOException;
    sget-boolean v4, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v4, :cond_3

    const-string v4, "AdWhirl SDK"

    const-string v4, "Caught IOException in convertStreamToString()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v4, v6

    .line 269
    goto :goto_1

    .line 267
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 268
    .restart local v0       #e:Ljava/io/IOException;
    sget-boolean v4, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v4, :cond_4

    const-string v4, "AdWhirl SDK"

    const-string v4, "Caught IOException in convertStreamToString()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move-object v4, v6

    .line 269
    goto :goto_1
.end method

.method private fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "urlString"

    .prologue
    .line 404
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 405
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 406
    .local v2, is:Ljava/io/InputStream;
    const-string v4, "src"

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, d:Landroid/graphics/drawable/Drawable;
    move-object v4, v0

    .line 410
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #url:Ljava/net/URL;
    :goto_0
    return-object v4

    .line 408
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 409
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v4, :cond_0

    const-string v4, "AdWhirl SDK"

    const-string v5, "Unable to fetchImage(): "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private parseConfigurationString(Ljava/lang/String;)V
    .locals 6
    .parameter "jsonString"

    .prologue
    const-string v5, "Unable to parse response from JSON. This may or may not be fatal."

    const-string v4, "AdWhirl SDK"

    .line 277
    sget-boolean v2, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v2, :cond_0

    const-string v2, "AdWhirl SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received jsonString: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 282
    .local v1, json:Lorg/json/JSONObject;
    const-string v2, "extra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adwhirl/AdWhirlManager;->parseExtraJson(Lorg/json/JSONObject;)V

    .line 283
    const-string v2, "rations"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adwhirl/AdWhirlManager;->parseRationsJson(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    .end local v1           #json:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 286
    .local v0, e:Lorg/json/JSONException;
    sget-boolean v2, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v2, :cond_1

    const-string v2, "AdWhirl SDK"

    const-string v2, "Unable to parse response from JSON. This may or may not be fatal."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    :cond_1
    new-instance v2, Lcom/adwhirl/obj/Extra;

    invoke-direct {v2}, Lcom/adwhirl/obj/Extra;-><init>()V

    iput-object v2, p0, Lcom/adwhirl/AdWhirlManager;->extra:Lcom/adwhirl/obj/Extra;

    goto :goto_0

    .line 289
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 290
    .local v0, e:Ljava/lang/NullPointerException;
    sget-boolean v2, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v2, :cond_2

    const-string v2, "AdWhirl SDK"

    const-string v2, "Unable to parse response from JSON. This may or may not be fatal."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    :cond_2
    new-instance v2, Lcom/adwhirl/obj/Extra;

    invoke-direct {v2}, Lcom/adwhirl/obj/Extra;-><init>()V

    iput-object v2, p0, Lcom/adwhirl/AdWhirlManager;->extra:Lcom/adwhirl/obj/Extra;

    goto :goto_0
.end method

.method private parseCustomJsonString(Ljava/lang/String;)Lcom/adwhirl/obj/Custom;
    .locals 6
    .parameter "jsonString"

    .prologue
    const-string v5, "AdWhirl SDK"

    .line 374
    sget-boolean v3, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v3, :cond_0

    const-string v3, "AdWhirl SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received custom jsonString: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    new-instance v0, Lcom/adwhirl/obj/Custom;

    invoke-direct {v0}, Lcom/adwhirl/obj/Custom;-><init>()V

    .line 378
    .local v0, custom:Lcom/adwhirl/obj/Custom;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 380
    .local v2, json:Lorg/json/JSONObject;
    const-string v3, "ad_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/adwhirl/obj/Custom;->type:I

    .line 381
    const-string v3, "img_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/adwhirl/obj/Custom;->imageLink:Ljava/lang/String;

    .line 382
    const-string v3, "redirect_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/adwhirl/obj/Custom;->link:Ljava/lang/String;

    .line 383
    const-string v3, "ad_text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/adwhirl/obj/Custom;->description:Ljava/lang/String;

    .line 387
    iget-object v3, v0, Lcom/adwhirl/obj/Custom;->link:Ljava/lang/String;

    const-string v4, "market://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 389
    iget-object v3, v0, Lcom/adwhirl/obj/Custom;->link:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/adwhirl/obj/Extra2;->extraLinkMarketCustom:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/adwhirl/obj/Custom;->link:Ljava/lang/String;

    .line 392
    :cond_1
    iget-object v3, v0, Lcom/adwhirl/obj/Custom;->imageLink:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/adwhirl/AdWhirlManager;->fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/adwhirl/obj/Custom;->image:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 399
    .end local v2           #json:Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 394
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 395
    .local v1, e:Lorg/json/JSONException;
    sget-boolean v3, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v3, :cond_2

    const-string v3, "AdWhirl SDK"

    const-string v3, "Caught JSONException in parseCustomJsonString()"

    invoke-static {v5, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private parseExtraJson(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "json"

    .prologue
    const-string v4, "red"

    const-string v4, "green"

    const-string v4, "blue"

    const-string v4, "alpha"

    .line 296
    new-instance v2, Lcom/adwhirl/obj/Extra;

    invoke-direct {v2}, Lcom/adwhirl/obj/Extra;-><init>()V

    .line 299
    .local v2, extra:Lcom/adwhirl/obj/Extra;
    :try_start_0
    const-string v4, "cycle_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/adwhirl/obj/Extra;->cycleTime:I

    .line 300
    const-string v4, "location_on"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/adwhirl/obj/Extra;->locationOn:I

    .line 301
    const-string v4, "transition"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/adwhirl/obj/Extra;->transition:I

    .line 305
    const-string v4, "background_color_rgb"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 306
    .local v0, backgroundColor:Lorg/json/JSONObject;
    const-string v4, "red"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/adwhirl/obj/Extra;->bgRed:I

    .line 307
    const-string v4, "green"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/adwhirl/obj/Extra;->bgGreen:I

    .line 308
    const-string v4, "blue"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/adwhirl/obj/Extra;->bgBlue:I

    .line 309
    const-string v4, "alpha"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0xff

    iput v4, v2, Lcom/adwhirl/obj/Extra;->bgAlpha:I

    .line 311
    const-string v4, "text_color_rgb"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 312
    .local v3, textColor:Lorg/json/JSONObject;
    const-string v4, "red"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/adwhirl/obj/Extra;->fgRed:I

    .line 313
    const-string v4, "green"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/adwhirl/obj/Extra;->fgGreen:I

    .line 314
    const-string v4, "blue"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/adwhirl/obj/Extra;->fgBlue:I

    .line 315
    const-string v4, "alpha"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0xff

    iput v4, v2, Lcom/adwhirl/obj/Extra;->fgAlpha:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v0           #backgroundColor:Lorg/json/JSONObject;
    .end local v3           #textColor:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/adwhirl/AdWhirlManager;->extra:Lcom/adwhirl/obj/Extra;

    .line 322
    return-void

    .line 317
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 318
    .local v1, e:Lorg/json/JSONException;
    sget-boolean v4, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v4, :cond_0

    const-string v4, "AdWhirl SDK"

    const-string v5, "Exception in parsing config.extra JSON. This may or may not be fatal."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private parseRationsJson(Lorg/json/JSONArray;)V
    .locals 10
    .parameter "json"

    .prologue
    const-string v6, "key"

    .line 325
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v5, rationsList:Ljava/util/List;,"Ljava/util/List<Lcom/adwhirl/obj/Ration;>;"
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/adwhirl/AdWhirlManager;->totalWeight:D

    .line 331
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lt v1, v6, :cond_1

    .line 367
    :cond_0
    :goto_1
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 369
    iput-object v5, p0, Lcom/adwhirl/AdWhirlManager;->rationsList:Ljava/util/List;

    .line 370
    iget-object v6, p0, Lcom/adwhirl/AdWhirlManager;->rationsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    iput-object v6, p0, Lcom/adwhirl/AdWhirlManager;->rollovers:Ljava/util/Iterator;

    .line 371
    return-void

    .line 332
    :cond_1
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 333
    .local v2, jsonRation:Lorg/json/JSONObject;
    if-nez v2, :cond_2

    .line 331
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_2
    new-instance v4, Lcom/adwhirl/obj/Ration;

    invoke-direct {v4}, Lcom/adwhirl/obj/Ration;-><init>()V

    .line 339
    .local v4, ration:Lcom/adwhirl/obj/Ration;
    const-string v6, "nid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/adwhirl/obj/Ration;->nid:Ljava/lang/String;

    .line 340
    const-string v6, "type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/adwhirl/obj/Ration;->type:I

    .line 341
    const-string v6, "nname"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/adwhirl/obj/Ration;->name:Ljava/lang/String;

    .line 342
    const-string v6, "weight"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-double v6, v6

    iput-wide v6, v4, Lcom/adwhirl/obj/Ration;->weight:D

    .line 343
    const-string v6, "priority"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/adwhirl/obj/Ration;->priority:I

    .line 346
    iget v6, v4, Lcom/adwhirl/obj/Ration;->type:I

    packed-switch v6, :pswitch_data_0

    .line 354
    const-string v6, "key"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/adwhirl/obj/Ration;->key:Ljava/lang/String;

    .line 358
    :goto_3
    iget-wide v6, p0, Lcom/adwhirl/AdWhirlManager;->totalWeight:D

    iget-wide v8, v4, Lcom/adwhirl/obj/Ration;->weight:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/adwhirl/AdWhirlManager;->totalWeight:D

    .line 360
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 363
    .end local v2           #jsonRation:Lorg/json/JSONObject;
    .end local v4           #ration:Lcom/adwhirl/obj/Ration;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 364
    .local v0, e:Lorg/json/JSONException;
    sget-boolean v6, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v6, :cond_0

    const-string v6, "AdWhirl SDK"

    const-string v7, "JSONException in parsing config.rations JSON. This may or may not be fatal."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 348
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v2       #jsonRation:Lorg/json/JSONObject;
    .restart local v4       #ration:Lcom/adwhirl/obj/Ration;
    :pswitch_0
    :try_start_2
    const-string v6, "key"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 349
    .local v3, keyObj:Lorg/json/JSONObject;
    const-string v6, "siteID"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/adwhirl/obj/Ration;->key:Ljava/lang/String;

    .line 350
    const-string v6, "publisherID"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/adwhirl/obj/Ration;->key2:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 346
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public static setConfigExpireTimeout(J)V
    .locals 0
    .parameter "configExpireTimeout"

    .prologue
    .line 103
    sput-wide p0, Lcom/adwhirl/AdWhirlManager;->configExpireTimeout:J

    .line 104
    return-void
.end method


# virtual methods
.method public fetchConfig()V
    .locals 21

    .prologue
    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwhirl/AdWhirlManager;->contextReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 202
    .local v5, context:Landroid/content/Context;
    if-nez v5, :cond_0

    .line 248
    :goto_0
    return-void

    .line 206
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwhirl/AdWhirlManager;->keyAdWhirl:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object v0, v5

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 207
    .local v4, adWhirlPrefs:Landroid/content/SharedPreferences;
    const-string v17, "config"

    const/16 v18, 0x0

    move-object v0, v4

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 208
    .local v13, jsonString:Ljava/lang/String;
    const-string v17, "timestamp"

    const-wide/16 v18, -0x1

    move-object v0, v4

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 210
    .local v14, timestamp:J
    sget-boolean v17, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v17, :cond_1

    const-string v17, "AdWhirl SDK"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Prefs{"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwhirl/AdWhirlManager;->keyAdWhirl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "}: {\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "config"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\": \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\", \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "timestamp"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "}"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    if-eqz v13, :cond_2

    sget-wide v17, Lcom/adwhirl/AdWhirlManager;->configExpireTimeout:J

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sget-wide v19, Lcom/adwhirl/AdWhirlManager;->configExpireTimeout:J

    add-long v19, v19, v14

    cmp-long v17, v17, v19

    if-ltz v17, :cond_6

    .line 213
    :cond_2
    sget-boolean v17, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v17, :cond_3

    const-string v17, "AdWhirl SDK"

    const-string v18, "Stored config info not present or expired, fetching fresh data"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_3
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 217
    .local v9, httpClient:Lorg/apache/http/client/HttpClient;
    const-string v17, "http://mob.adwhirl.com/getInfo.php?appid=%s&appver=%d&client=2"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adwhirl/AdWhirlManager;->keyAdWhirl:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0xff

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 218
    .local v16, url:Ljava/lang/String;
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 222
    .local v10, httpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 224
    .local v11, httpResponse:Lorg/apache/http/HttpResponse;
    sget-boolean v17, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v17, :cond_4

    const-string v17, "AdWhirl SDK"

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_4
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 228
    .local v8, entity:Lorg/apache/http/HttpEntity;
    if-eqz v8, :cond_5

    .line 229
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 230
    .local v12, inputStream:Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/adwhirl/AdWhirlManager;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    .line 232
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 233
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v17, "config"

    move-object v0, v7

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    const-string v17, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v0, v7

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v10           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v12           #inputStream:Ljava/io/InputStream;
    .end local v16           #url:Ljava/lang/String;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/adwhirl/AdWhirlManager;->parseConfigurationString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    .restart local v9       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v10       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v16       #url:Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v6, v17

    .line 238
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v17, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v17, :cond_5

    const-string v17, "AdWhirl SDK"

    const-string v18, "Caught ClientProtocolException in fetchConfig()"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 239
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v17

    move-object/from16 v6, v17

    .line 240
    .local v6, e:Ljava/io/IOException;
    sget-boolean v17, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v17, :cond_5

    const-string v17, "AdWhirl SDK"

    const-string v18, "Caught IOException in fetchConfig()"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 244
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v10           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v16           #url:Ljava/lang/String;
    :cond_6
    sget-boolean v17, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v17, :cond_5

    const-string v17, "AdWhirl SDK"

    const-string v18, "Using stored config data"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCustom(Ljava/lang/String;)Lcom/adwhirl/obj/Custom;
    .locals 14
    .parameter "nid"

    .prologue
    .line 156
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 159
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    iget-object v9, p0, Lcom/adwhirl/AdWhirlManager;->extra:Lcom/adwhirl/obj/Extra;

    iget v9, v9, Lcom/adwhirl/obj/Extra;->locationOn:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/adwhirl/AdWhirlManager;->getLocation()Landroid/location/Location;

    move-result-object v9

    iput-object v9, p0, Lcom/adwhirl/AdWhirlManager;->location:Landroid/location/Location;

    .line 161
    iget-object v9, p0, Lcom/adwhirl/AdWhirlManager;->location:Landroid/location/Location;

    if-eqz v9, :cond_1

    .line 162
    const-string v9, "&location=%f,%f&location_timestamp=%d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/adwhirl/AdWhirlManager;->location:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/adwhirl/AdWhirlManager;->location:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/adwhirl/AdWhirlManager;->location:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, locationString:Ljava/lang/String;
    :goto_0
    const-string v9, "http://cus.adwhirl.com/custom.php?appid=%s&nid=%s&uuid=%s&country_code=%s%s&appver=%d&client=2"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/adwhirl/AdWhirlManager;->keyAdWhirl:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/adwhirl/AdWhirlManager;->deviceIDHash:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/adwhirl/AdWhirlManager;->localeString:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v7, v10, v11

    const/4 v11, 0x5

    const/16 v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, url:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 178
    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 180
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    sget-boolean v9, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v9, :cond_0

    const-string v9, "AdWhirl SDK"

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 184
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_3

    .line 185
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 186
    .local v5, inputStream:Ljava/io/InputStream;
    invoke-direct {p0, v5}, Lcom/adwhirl/AdWhirlManager;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, jsonString:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/adwhirl/AdWhirlManager;->parseCustomJsonString(Ljava/lang/String;)Lcom/adwhirl/obj/Custom;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 195
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #inputStream:Ljava/io/InputStream;
    .end local v6           #jsonString:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 165
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #locationString:Ljava/lang/String;
    .end local v8           #url:Ljava/lang/String;
    :cond_1
    const-string v7, ""

    .restart local v7       #locationString:Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v7           #locationString:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/adwhirl/AdWhirlManager;->location:Landroid/location/Location;

    .line 170
    const-string v7, ""

    .restart local v7       #locationString:Ljava/lang/String;
    goto :goto_0

    .line 189
    .restart local v3       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #url:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 190
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    sget-boolean v9, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v9, :cond_3

    const-string v9, "AdWhirl SDK"

    const-string v10, "Caught ClientProtocolException in getCustom()"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :cond_3
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 191
    :catch_1
    move-exception v9

    move-object v0, v9

    .line 192
    .local v0, e:Ljava/io/IOException;
    sget-boolean v9, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v9, :cond_3

    const-string v9, "AdWhirl SDK"

    const-string v10, "Caught IOException in getCustom()"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getExtra()Lcom/adwhirl/obj/Extra;
    .locals 4

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/adwhirl/AdWhirlManager;->totalWeight:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 108
    sget-boolean v0, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v0, :cond_0

    const-string v0, "AdWhirl SDK"

    const-string v1, "Sum of ration weights is 0 - no ads to be shown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/adwhirl/AdWhirlManager;->extra:Lcom/adwhirl/obj/Extra;

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "location"

    .line 415
    iget-object v3, p0, Lcom/adwhirl/AdWhirlManager;->contextReference:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 433
    :goto_0
    return-object v3

    .line 419
    :cond_0
    iget-object v3, p0, Lcom/adwhirl/AdWhirlManager;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 420
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 421
    goto :goto_0

    .line 424
    :cond_1
    const/4 v2, 0x0

    .line 426
    .local v2, location:Landroid/location/Location;
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 427
    const-string v3, "location"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 428
    .local v1, lm:Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .end local v1           #lm:Landroid/location/LocationManager;
    :cond_2
    :goto_1
    move-object v3, v2

    .line 433
    goto :goto_0

    .line 429
    :cond_3
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 430
    const-string v3, "location"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 431
    .restart local v1       #lm:Landroid/location/LocationManager;
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    goto :goto_1
.end method

.method public getRation()Lcom/adwhirl/obj/Ration;
    .locals 11

    .prologue
    .line 117
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 119
    .local v3, random:Ljava/util/Random;
    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    iget-wide v9, p0, Lcom/adwhirl/AdWhirlManager;->totalWeight:D

    mul-double v1, v7, v9

    .line 120
    .local v1, r:D
    const-wide/16 v5, 0x0

    .line 122
    .local v5, s:D
    sget-boolean v7, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v7, :cond_0

    const-string v7, "AdWhirl SDK"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Dart is <"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> of <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/adwhirl/AdWhirlManager;->totalWeight:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-object v7, p0, Lcom/adwhirl/AdWhirlManager;->rationsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 125
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/adwhirl/obj/Ration;>;"
    const/4 v4, 0x0

    .line 126
    .local v4, ration:Lcom/adwhirl/obj/Ration;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 135
    :goto_0
    return-object v4

    .line 127
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ration:Lcom/adwhirl/obj/Ration;
    check-cast v4, Lcom/adwhirl/obj/Ration;

    .line 128
    .restart local v4       #ration:Lcom/adwhirl/obj/Ration;
    iget-wide v7, v4, Lcom/adwhirl/obj/Ration;->weight:D

    add-double/2addr v5, v7

    .line 130
    cmpl-double v7, v5, v1

    if-ltz v7, :cond_1

    goto :goto_0
.end method

.method public getRollover()Lcom/adwhirl/obj/Ration;
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/adwhirl/AdWhirlManager;->rollovers:Ljava/util/Iterator;

    if-nez v1, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 148
    :goto_0
    return-object v1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 144
    .local v0, ration:Lcom/adwhirl/obj/Ration;
    iget-object v1, p0, Lcom/adwhirl/AdWhirlManager;->rollovers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/adwhirl/AdWhirlManager;->rollovers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ration:Lcom/adwhirl/obj/Ration;
    check-cast v0, Lcom/adwhirl/obj/Ration;

    .restart local v0       #ration:Lcom/adwhirl/obj/Ration;
    :cond_1
    move-object v1, v0

    .line 148
    goto :goto_0
.end method

.method public resetRollover()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/adwhirl/AdWhirlManager;->rationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adwhirl/AdWhirlManager;->rollovers:Ljava/util/Iterator;

    .line 153
    return-void
.end method
