.class public Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;
.super Ljava/lang/Object;
.source "InMobiAndroidTrackerHTTPRequest.java"


# static fields
.field private static final h:Ljava/lang/String; = "android"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->b:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MD5"

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->createMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->c:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->c:Ljava/lang/String;

    .line 42
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->g:Ljava/util/Random;

    .line 43
    const-string v0, "1"

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->f:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->a:Landroid/content/Context;

    .line 127
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 128
    const-string v2, "android_id"

    .line 126
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 131
    :goto_0
    if-nez v0, :cond_0

    .line 133
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->a:Landroid/content/Context;

    .line 134
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    const-string v1, "android_id"

    .line 133
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 140
    :cond_0
    :goto_1
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v0, ""

    goto :goto_1

    .line 129
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 165
    const-string v0, ""

    .line 167
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v0, ""

    goto :goto_0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->e:Ljava/lang/String;

    .line 162
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-object v0

    .line 152
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public setupConnection()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->g:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->a(I)V

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->e:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->getUIDMap(Lcom/inmobi/androidsdk/IMAdRequest;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->d:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 57
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "http://ma.inmobi.com/downloads/trackerV1?adv_id="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->d:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&u-id-map="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->d:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&u-id-key="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&u-id-ver="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&app_id="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const-string v4, "&platform="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "android"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&timestamp="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-boolean v3, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 71
    const-string v3, "InMobiAndroidSDK_3.5.2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Url String: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 75
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 76
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 77
    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 78
    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 81
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 82
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 81
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    sget-boolean v4, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 84
    const-string v4, "InMobiAndroidSDK_3.5.2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ping HTTP response code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_6

    .line 90
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 92
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 93
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 95
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 96
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    move-object v8, v2

    move v2, v0

    move v0, v1

    move-object v1, v8

    .line 98
    :goto_0
    if-ne v2, v7, :cond_3

    .line 120
    :goto_1
    return v0

    .line 100
    :cond_3
    if-eqz v2, :cond_5

    .line 101
    if-eq v2, v7, :cond_5

    .line 102
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 103
    :try_start_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 111
    :goto_2
    :try_start_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_0

    .line 104
    :cond_4
    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 105
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 106
    if-eqz v1, :cond_5

    .line 107
    :try_start_4
    const-string v2, "Status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_2

    .line 113
    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    .line 114
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 117
    :catch_1
    move-exception v1

    .line 118
    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 117
    :catch_2
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_4

    .line 113
    :catch_3
    move-exception v1

    goto :goto_3

    :cond_5
    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method
