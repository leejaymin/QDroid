.class Lcom/admob/android/ads/AdRequester;
.super Ljava/lang/Object;
.source "AdRequester.java"


# static fields
.field private static final ADMOB_ENDPOINT:Ljava/lang/String; = "http://r.admob.com/ad_source.php"

.field private static timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0xbb8

    sput v0, Lcom/admob/android/ads/AdRequester;->timeout:I

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const-string v2, "UTF-8"

    .line 217
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 219
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    return-void
.end method

.method public static requestAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/admob/android/ads/Ad;
    .locals 12
    .parameter "context"
    .parameter "keywords"
    .parameter "searchQuery"

    .prologue
    .line 46
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 48
    const-string v0, "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->clientError(Ljava/lang/String;)V

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    .local v0, ad:Lcom/admob/android/ads/Ad;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 56
    .local v6, start:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v1, contents:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 61
    .local v2, iconURL:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v5, post:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 65
    .local v3, now:J
    const-string v8, "z"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    div-long v9, v3, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    rem-long/2addr v3, v9

    .end local v3           #now:J
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    const-string v3, "rt"

    const-string v4, "0"

    invoke-static {v5, v3, v4}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getPublisherId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, publisherID:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 75
    new-instance p1, Ljava/lang/IllegalStateException;

    .end local p1
    const-string p2, "Publisher ID is not set!  To serve ads you must set your publisher ID assigned from www.admob.com.  Either add it to AndroidManifest.xml under the <application> tag or call AdManager.setPublisherId()."

    .end local p2
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v3           #publisherID:Ljava/lang/String;
    .end local v5           #post:Ljava/lang/StringBuilder;
    :catch_0
    move-exception p1

    move-object p2, v2

    .line 181
    .end local v2           #iconURL:Ljava/lang/String;
    .local p1, ex:Ljava/lang/Exception;
    .local p2, iconURL:Ljava/lang/String;
    :goto_0
    const-string v2, "AdMob SDK"

    const-string v3, "Could not get ad from AdMob servers."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local p1           #ex:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    .local p1, html:Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 189
    invoke-static {p0, p1, p2}, Lcom/admob/android/ads/Ad;->createAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/admob/android/ads/Ad;

    move-result-object p0

    .line 192
    .end local v0           #ad:Lcom/admob/android/ads/Ad;
    .local p0, ad:Lcom/admob/android/ads/Ad;
    :goto_2
    const-string p1, "AdMob SDK"

    .end local p1           #html:Ljava/lang/String;
    const/4 p2, 0x4

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local p2           #iconURL:Ljava/lang/String;
    move-result p1

    if-eqz p1, :cond_1

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v6

    .line 196
    .local p1, time:J
    if-nez p0, :cond_b

    .line 198
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

    .line 206
    :cond_1
    :goto_3
    return-object p0

    .line 79
    .restart local v0       #ad:Lcom/admob/android/ads/Ad;
    .restart local v1       #contents:Ljava/lang/StringBuilder;
    .restart local v2       #iconURL:Ljava/lang/String;
    .restart local v3       #publisherID:Ljava/lang/String;
    .restart local v5       #post:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, keywords:Ljava/lang/String;
    .local p2, searchQuery:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "s"

    invoke-static {v5, v4, v3}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v3, "f"

    .end local v3           #publisherID:Ljava/lang/String;
    const-string v4, "html_no_js"

    invoke-static {v5, v3, v4}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "y"

    const-string v4, "text"

    invoke-static {v5, v3, v4}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "client_sdk"

    const-string v4, "1"

    invoke-static {v5, v3, v4}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "ex"

    const-string v4, "1"

    invoke-static {v5, v3, v4}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v3, "v"

    const-string v4, "20090331-ANDROID-cc0d740c1b8c3da5"

    invoke-static {v5, v3, v4}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "t"

    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "d[coord]"

    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getCoordinatesAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "d[dob]"

    invoke-static {}, Lcom/admob/android/ads/AdManager;->getBirthdayAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "k"

    invoke-static {v5, v3, p1}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string p1, "search"

    .end local p1           #keywords:Ljava/lang/String;
    invoke-static {v5, p1, p2}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/admob/android/ads/AdManager;->isInTestMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 114
    const-string p1, "m"

    const-string p2, "test"

    .end local p2           #searchQuery:Ljava/lang/String;
    invoke-static {v5, p1, p2}, Lcom/admob/android/ads/AdRequester;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :cond_3
    const/4 v8, 0x0

    .line 119
    .local v8, writer:Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 123
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_2
    new-instance p1, Ljava/net/URL;

    const-string p2, "http://r.admob.com/ad_source.php"

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 124
    .local p1, admob_url:Ljava/net/URL;
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    .line 125
    .local p2, connection:Ljava/net/HttpURLConnection;
    const-string p1, "POST"

    .end local p1           #admob_url:Ljava/net/URL;
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 126
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 127
    const-string p1, "User-Agent"

    invoke-static {}, Lcom/admob/android/ads/AdManager;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string p1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {p2, p1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string p1, "Content-Length"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget p1, Lcom/admob/android/ads/AdRequester;->timeout:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 131
    sget p1, Lcom/admob/android/ads/AdRequester;->timeout:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    .local p1, body:Ljava/lang/String;
    const-string v3, "AdMob SDK"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v5           #post:Ljava/lang/StringBuilder;
    move-result v3

    if-eqz v3, :cond_4

    .line 136
    const-string v3, "AdMob SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requesting an ad with POST parmams:  "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_4
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 140
    .local v3, out:Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    .end local v8           #writer:Ljava/io/BufferedWriter;
    .local v5, writer:Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {v5, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 144
    new-instance v3, Ljava/io/BufferedReader;

    .end local v3           #out:Ljava/io/OutputStream;
    new-instance p1, Ljava/io/InputStreamReader;

    .end local p1           #body:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {p1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 145
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .local p1, line:Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 162
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
    move-object v2, v5

    .line 164
    .end local v5           #writer:Ljava/io/BufferedWriter;
    .local v2, writer:Ljava/io/BufferedWriter;
    :goto_5
    if-eqz v2, :cond_5

    .line 166
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 169
    :cond_5
    if-eqz p2, :cond_6

    .line 171
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 176
    .end local p2           #reader:Ljava/io/BufferedReader;
    :cond_6
    :goto_6
    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 179
    :catch_1
    move-exception p2

    move-object v11, p2

    move-object p2, p1

    .end local p1           #iconURL:Ljava/lang/String;
    .local p2, iconURL:Ljava/lang/String;
    move-object p1, v11

    goto/16 :goto_0

    .line 151
    .local v2, iconURL:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v5       #writer:Ljava/io/BufferedWriter;
    .local p1, line:Ljava/lang/String;
    .local p2, connection:Ljava/net/HttpURLConnection;
    :cond_7
    :try_start_7
    const-string p1, "X-AdMob-Android-Category-Icon"

    .end local p1           #line:Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object p1

    .line 153
    .end local v2           #iconURL:Ljava/lang/String;
    .local p1, iconURL:Ljava/lang/String;
    if-nez p1, :cond_8

    .line 156
    :try_start_8
    const-string p1, "http://mm.admob.com/static/android/tiles/default.png"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 164
    :cond_8
    if-eqz v5, :cond_9

    .line 166
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 169
    :cond_9
    if-eqz v3, :cond_a

    .line 171
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .end local p2           #connection:Ljava/net/HttpURLConnection;
    :cond_a
    :goto_7
    move-object p2, p1

    .line 182
    .end local p1           #iconURL:Ljava/lang/String;
    .local p2, iconURL:Ljava/lang/String;
    goto/16 :goto_1

    .line 202
    .end local v0           #ad:Lcom/admob/android/ads/Ad;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v5           #writer:Ljava/io/BufferedWriter;
    .end local p2           #iconURL:Ljava/lang/String;
    .local p0, ad:Lcom/admob/android/ads/Ad;
    .local p1, time:J
    :cond_b
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

    goto/16 :goto_3

    .line 174
    .restart local v0       #ad:Lcom/admob/android/ads/Ad;
    .restart local v1       #contents:Ljava/lang/StringBuilder;
    .local v2, writer:Ljava/io/BufferedWriter;
    .local p0, context:Landroid/content/Context;
    .local p1, iconURL:Ljava/lang/String;
    .local p2, reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception p2

    goto :goto_6

    .line 162
    .end local p1           #iconURL:Ljava/lang/String;
    .end local p2           #reader:Ljava/io/BufferedReader;
    .local v2, iconURL:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v8       #writer:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception p1

    move-object v3, p1

    move-object p2, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local p2       #reader:Ljava/io/BufferedReader;
    move-object p1, v2

    .end local v2           #iconURL:Ljava/lang/String;
    .restart local p1       #iconURL:Ljava/lang/String;
    move-object v2, v8

    .end local v8           #writer:Ljava/io/BufferedWriter;
    .local v2, writer:Ljava/io/BufferedWriter;
    goto :goto_5

    .end local p1           #iconURL:Ljava/lang/String;
    .local v2, iconURL:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #writer:Ljava/io/BufferedWriter;
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
    move-object v2, v5

    .end local v5           #writer:Ljava/io/BufferedWriter;
    .local v2, writer:Ljava/io/BufferedWriter;
    goto :goto_5

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v5       #writer:Ljava/io/BufferedWriter;
    .local p2, connection:Ljava/net/HttpURLConnection;
    :catchall_3
    move-exception p2

    move-object v2, v5

    .end local v5           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    move-object v11, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v11, reader:Ljava/io/BufferedReader;
    move-object v3, p2

    move-object p2, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .local p2, reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 174
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v5       #writer:Ljava/io/BufferedWriter;
    .local p2, connection:Ljava/net/HttpURLConnection;
    :catch_3
    move-exception p2

    goto :goto_7

    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v5           #writer:Ljava/io/BufferedWriter;
    .local p1, html:Ljava/lang/String;
    .local p2, iconURL:Ljava/lang/String;
    :cond_c
    move-object p0, v0

    .end local v0           #ad:Lcom/admob/android/ads/Ad;
    .local p0, ad:Lcom/admob/android/ads/Ad;
    goto/16 :goto_2
.end method
