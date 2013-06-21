.class Lcom/admob/android/ads/AdRequester;
.super Ljava/lang/Object;
.source "AdRequester.java"


# static fields
.field private static final ADMOB_ENDPOINT:Ljava/lang/String; = "http://r.admob.com/ad_source.php"

.field private static REQUEST_TIMEOUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0xbb8

    sput v0, Lcom/admob/android/ads/AdRequester;->REQUEST_TIMEOUT:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "param"
    .parameter "key"
    .parameter "val"

    .prologue
    const-string v1, "UTF-8"

    .line 238
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 242
    :try_start_0
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 247
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "AdMob SDK"

    const-string v2, "UTF-8 encoding is not supported on this device.  Ad requests are impossible."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static buildParamString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "keywords"
    .parameter "searchQuery"

    .prologue
    const-wide/16 v7, 0x3e8

    const-string v9, "1"

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v2, post:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 178
    .local v0, now:J
    const-string v4, "z"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-long v5, v0, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    rem-long v5, v0, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    const-string v4, "rt"

    const-string v5, "0"

    invoke-static {v2, v4, v5}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getPublisherId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, publisherID:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 188
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Publisher ID is not set!  To serve ads you must set your publisher ID assigned from www.admob.com.  Either add it to AndroidManifest.xml under the <application> tag or call AdManager.setPublisherId()."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 192
    :cond_0
    const-string v4, "s"

    invoke-static {v2, v4, v3}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v4, "f"

    const-string v5, "html_no_js"

    invoke-static {v2, v4, v5}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v4, "y"

    const-string v5, "text"

    invoke-static {v2, v4, v5}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v4, "client_sdk"

    const-string v5, "1"

    invoke-static {v2, v4, v9}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v4, "ex"

    const-string v5, "1"

    invoke-static {v2, v4, v9}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v4, "v"

    const-string v5, "20091123-ANDROID-3312276cc1406347"

    invoke-static {v2, v4, v5}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v4, "t"

    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v4, "d[coord]"

    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getCoordinatesAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v4, "d[dob]"

    invoke-static {}, Lcom/admob/android/ads/AdManager;->getBirthdayAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v4, "k"

    invoke-static {v2, v4, p1}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v4, "search"

    invoke-static {v2, v4, p2}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/admob/android/ads/AdManager;->isInTestMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    const-string v4, "m"

    const-string v5, "test"

    invoke-static {v2, v4, v5}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static requestAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/admob/android/ads/Ad;
    .locals 11
    .parameter "context"
    .parameter "keywords"
    .parameter "searchQuery"

    .prologue
    .line 49
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 51
    const-string v0, "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->clientError(Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/admob/android/ads/AdMobLocalizer;->init(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, ad:Lcom/admob/android/ads/Ad;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 62
    .local v5, start:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v1, contents:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 67
    .local v2, iconURL:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/admob/android/ads/AdRequester;->buildParamString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 70
    .local v3, postString:Ljava/lang/String;
    const/4 v7, 0x0

    .line 71
    .local v7, writer:Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 75
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance p1, Ljava/net/URL;

    .end local p1
    const-string p2, "http://r.admob.com/ad_source.php"

    .end local p2
    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    .local p1, admob_url:Ljava/net/URL;
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    .line 77
    .local p2, connection:Ljava/net/HttpURLConnection;
    const-string p1, "POST"

    .end local p1           #admob_url:Ljava/net/URL;
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 78
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 79
    const-string p1, "User-Agent"

    invoke-static {}, Lcom/admob/android/ads/AdManager;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, p1, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string p1, "Content-Type"

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {p2, p1, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string p1, "Content-Length"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, p1, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget p1, Lcom/admob/android/ads/AdRequester;->REQUEST_TIMEOUT:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    sget p1, Lcom/admob/android/ads/AdRequester;->REQUEST_TIMEOUT:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 84
    move-object p1, v3

    .line 86
    .local p1, body:Ljava/lang/String;
    const-string v3, "AdMob SDK"

    .end local v3           #postString:Ljava/lang/String;
    const/4 v8, 0x3

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    const-string v3, "AdMob SDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requesting an ad with POST parmams:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 92
    .local v3, out:Ljava/io/OutputStream;
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    .end local v7           #writer:Ljava/io/BufferedWriter;
    .local v8, writer:Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v8, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 96
    new-instance v3, Ljava/io/BufferedReader;

    .end local v3           #out:Ljava/io/OutputStream;
    new-instance p1, Ljava/io/InputStreamReader;

    .end local p1           #body:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {p1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 97
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .local p1, line:Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 114
    .end local p1           #line:Ljava/lang/String;
    :catchall_0
    move-exception p1

    move-object p2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .local p2, reader:Ljava/io/BufferedReader;
    move-object v3, p1

    move-object p1, v2

    .end local v2           #iconURL:Ljava/lang/String;
    .local p1, iconURL:Ljava/lang/String;
    move-object v2, v8

    .line 116
    .end local v8           #writer:Ljava/io/BufferedWriter;
    .local v2, writer:Ljava/io/BufferedWriter;
    :goto_1
    if-eqz v2, :cond_2

    .line 118
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 121
    :cond_2
    if-eqz p2, :cond_3

    .line 123
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 128
    .end local p2           #reader:Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 131
    :catch_0
    move-exception p2

    move-object v10, p2

    move-object p2, p1

    .end local p1           #iconURL:Ljava/lang/String;
    .local p2, iconURL:Ljava/lang/String;
    move-object p1, v10

    .line 133
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .local p1, ex:Ljava/lang/Exception;
    :goto_3
    const-string v2, "AdMob SDK"

    const-string v3, "Could not get ad from AdMob servers."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local p1           #ex:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    .local p1, html:Ljava/lang/String;
    if-eqz p1, :cond_a

    .line 141
    invoke-static {p0, p1, p2}, Lcom/admob/android/ads/Ad;->createAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/admob/android/ads/Ad;

    move-result-object p0

    .line 144
    .end local v0           #ad:Lcom/admob/android/ads/Ad;
    .local p0, ad:Lcom/admob/android/ads/Ad;
    :goto_5
    const-string p1, "AdMob SDK"

    .end local p1           #html:Ljava/lang/String;
    const/4 p2, 0x4

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local p2           #iconURL:Ljava/lang/String;
    move-result p1

    if-eqz p1, :cond_4

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v5

    .line 148
    .local p1, time:J
    if-nez p0, :cond_9

    .line 150
    const-string v0, "AdMob SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #contents:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server replied that no ads are available ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #time:J
    const-string p2, "ms)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_4
    :goto_6
    return-object p0

    .line 103
    .restart local v0       #ad:Lcom/admob/android/ads/Ad;
    .restart local v1       #contents:Ljava/lang/StringBuilder;
    .local v2, iconURL:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v8       #writer:Ljava/io/BufferedWriter;
    .local p0, context:Landroid/content/Context;
    .local p1, line:Ljava/lang/String;
    .local p2, connection:Ljava/net/HttpURLConnection;
    :cond_5
    :try_start_6
    const-string p1, "X-AdMob-Android-Category-Icon"

    .end local p1           #line:Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object p1

    .line 105
    .end local v2           #iconURL:Ljava/lang/String;
    .local p1, iconURL:Ljava/lang/String;
    if-nez p1, :cond_6

    .line 108
    :try_start_7
    const-string p1, "http://mm.admob.com/static/android/tiles/default.png"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 116
    :cond_6
    if-eqz v8, :cond_7

    .line 118
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 121
    :cond_7
    if-eqz v3, :cond_8

    .line 123
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .end local p2           #connection:Ljava/net/HttpURLConnection;
    :cond_8
    :goto_7
    move-object p2, p1

    .line 134
    .end local p1           #iconURL:Ljava/lang/String;
    .local p2, iconURL:Ljava/lang/String;
    goto :goto_4

    .line 154
    .end local v0           #ad:Lcom/admob/android/ads/Ad;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v8           #writer:Ljava/io/BufferedWriter;
    .end local p2           #iconURL:Ljava/lang/String;
    .local p0, ad:Lcom/admob/android/ads/Ad;
    .local p1, time:J
    :cond_9
    const-string v0, "AdMob SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #contents:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad returned in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #time:J
    const-string p2, "ms:  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 131
    .restart local v0       #ad:Lcom/admob/android/ads/Ad;
    .restart local v1       #contents:Ljava/lang/StringBuilder;
    .restart local v2       #iconURL:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, keywords:Ljava/lang/String;
    .local p2, searchQuery:Ljava/lang/String;
    :catch_1
    move-exception p1

    move-object p2, v2

    .end local v2           #iconURL:Ljava/lang/String;
    .local p2, iconURL:Ljava/lang/String;
    goto :goto_3

    .line 126
    .local v2, writer:Ljava/io/BufferedWriter;
    .local p1, iconURL:Ljava/lang/String;
    .local p2, reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception p2

    goto/16 :goto_2

    .line 114
    .end local p1           #iconURL:Ljava/lang/String;
    .end local p2           #reader:Ljava/io/BufferedReader;
    .local v2, iconURL:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v7       #writer:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception p1

    move-object v3, p1

    move-object p2, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local p2       #reader:Ljava/io/BufferedReader;
    move-object p1, v2

    .end local v2           #iconURL:Ljava/lang/String;
    .restart local p1       #iconURL:Ljava/lang/String;
    move-object v2, v7

    .end local v7           #writer:Ljava/io/BufferedWriter;
    .local v2, writer:Ljava/io/BufferedWriter;
    goto/16 :goto_1

    .end local p1           #iconURL:Ljava/lang/String;
    .local v2, iconURL:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v8       #writer:Ljava/io/BufferedWriter;
    .local p2, connection:Ljava/net/HttpURLConnection;
    :catchall_2
    move-exception p1

    move-object v3, p1

    move-object p2, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .local p2, reader:Ljava/io/BufferedReader;
    move-object p1, v2

    .end local v2           #iconURL:Ljava/lang/String;
    .restart local p1       #iconURL:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #writer:Ljava/io/BufferedWriter;
    .local v2, writer:Ljava/io/BufferedWriter;
    goto/16 :goto_1

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v8       #writer:Ljava/io/BufferedWriter;
    .local p2, connection:Ljava/net/HttpURLConnection;
    :catchall_3
    move-exception p2

    move-object v2, v8

    .end local v8           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    move-object v10, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v10, reader:Ljava/io/BufferedReader;
    move-object v3, p2

    move-object p2, v10

    .end local v10           #reader:Ljava/io/BufferedReader;
    .local p2, reader:Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 126
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v8       #writer:Ljava/io/BufferedWriter;
    .local p2, connection:Ljava/net/HttpURLConnection;
    :catch_3
    move-exception p2

    goto :goto_7

    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v8           #writer:Ljava/io/BufferedWriter;
    .local p1, html:Ljava/lang/String;
    .local p2, iconURL:Ljava/lang/String;
    :cond_a
    move-object p0, v0

    .end local v0           #ad:Lcom/admob/android/ads/Ad;
    .local p0, ad:Lcom/admob/android/ads/Ad;
    goto/16 :goto_5
.end method