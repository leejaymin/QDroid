.class public Lcom/zubhium/utils/ZubhiumNetworkUtils;
.super Ljava/lang/Object;
.source "ZubhiumNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;
    }
.end annotation


# static fields
.field static final CONFIG:Ljava/lang/String; = "config"

.field static final CRASHREPORT:Ljava/lang/String; = "exception"

.field static final FEEDBACK:Ljava/lang/String; = "supportdesk"

.field static final INIT:Ljava/lang/String; = "register"

.field static final INTERNAL_ERROR:Ljava/lang/String; = "Internal error occurred"

.field static final SDK_VERSION:Ljava/lang/String; = "ZubhiumAndroidSDK 0.9"

.field static final SERVER_BASE_URL:Ljava/lang/String; = "https://api.zubhium.com/api2/"

.field static final TAG:Ljava/lang/String; = "ZubhiumAndroidSDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized config(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zubhium/utils/ZubhiumError;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 71
    const-class v9, Lcom/zubhium/utils/ZubhiumNetworkUtils;

    monitor-enter v9

    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v7, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 73
    const-string v8, "parameters"

    invoke-virtual {v7, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v8, "https://api.zubhium.com/api2/config/"

    invoke-static {v8, v7}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->executeHttpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, response:Ljava/lang/String;
    invoke-static {v5}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->parseResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 76
    .local v6, result:Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 79
    :try_start_1
    const-string v8, "config"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, base64:Ljava/lang/String;
    const/4 v2, 0x0

    check-cast v2, [B

    .line 81
    .local v2, decoded:[B
    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumBase;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 82
    const-string v8, "UTf-8"

    invoke-static {v2, v8}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, config:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .end local v0           #base64:Ljava/lang/String;
    .end local v1           #config:Ljava/lang/String;
    .end local v2           #decoded:[B
    .end local v5           #response:Ljava/lang/String;
    .end local v6           #result:Lorg/json/JSONObject;
    :cond_0
    monitor-exit v9

    return-object v4

    .line 85
    .restart local v5       #response:Ljava/lang/String;
    .restart local v6       #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 86
    .local v3, e:Lorg/json/JSONException;
    :try_start_2
    const-string v8, "JSONException"

    invoke-static {v8}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 87
    new-instance v8, Lcom/zubhium/utils/ZubhiumError;

    const-string v10, "Internal error occurred"

    invoke-direct {v8, v10}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .end local v3           #e:Lorg/json/JSONException;
    .end local v5           #response:Ljava/lang/String;
    .end local v6           #result:Lorg/json/JSONObject;
    .end local v7           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 88
    .restart local v5       #response:Ljava/lang/String;
    .restart local v6       #result:Lorg/json/JSONObject;
    .restart local v7       #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    .line 89
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    const-string v8, "IOException"

    invoke-static {v8}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 90
    new-instance v8, Lcom/zubhium/utils/ZubhiumError;

    const-string v10, "Internal error occurred"

    invoke-direct {v8, v10}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static createParamsForPosting()Lorg/apache/http/params/HttpParams;
    .locals 4

    .prologue
    const/16 v3, 0x1e

    .line 263
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 264
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v1, "ZubhiumAndroidSDK 0.9"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 265
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 266
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 270
    const-string v1, "http.conn-manager.max-total"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 271
    const-string v1, "http.conn-manager.max-per-route"

    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 272
    return-object v0
.end method

.method private static encodeUrl(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 286
    const-string v3, ""

    .line 298
    :goto_0
    return-object v3

    .line 289
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 291
    .local v0, first:Z
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 298
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 291
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 292
    .local v1, key:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 293
    const/4 v0, 0x0

    .line 296
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :cond_2
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static executeHttpGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 13
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zubhium/utils/ZubhiumError;
        }
    .end annotation

    .prologue
    .line 202
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 204
    .local v1, client:Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-static {}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->createParamsForPosting()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 206
    .local v6, params:Lorg/apache/http/params/HttpParams;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    .local v0, SDK_INT:I
    const/16 v9, 0x8

    if-ge v0, v9, :cond_1

    .line 208
    invoke-static {}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 217
    :goto_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 220
    .local v5, getRequest:Lorg/apache/http/client/methods/HttpGet;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->encodeUrl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 221
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 222
    invoke-interface {v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 223
    .local v7, response:Lorg/apache/http/HttpResponse;
    if-eqz v7, :cond_3

    .line 224
    invoke-static {v7}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->getResponseFromRawData(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v9

    .line 243
    if-eqz v1, :cond_0

    .line 244
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 247
    :cond_0
    :goto_1
    return-object v9

    .line 210
    .end local v5           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_1
    new-instance v8, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 211
    .local v8, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v11

    const/16 v12, 0x50

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v8, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 212
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    new-instance v11, Lcom/zubhium/utils/ZubhiumSocketFactory;

    invoke-direct {v11}, Lcom/zubhium/utils/ZubhiumSocketFactory;-><init>()V

    const/16 v12, 0x1bb

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v8, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 213
    new-instance v3, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v3, v6, v8}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 214
    .local v3, cm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v3, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .local v2, client:Lorg/apache/http/client/HttpClient;
    move-object v1, v2

    .end local v2           #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    goto :goto_0

    .line 226
    .end local v0           #SDK_INT:I
    .end local v3           #cm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v6           #params:Lorg/apache/http/params/HttpParams;
    .end local v8           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_0
    move-exception v4

    .line 227
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v9, "UnsupportedEncodingException"

    invoke-static {v9}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 228
    new-instance v9, Lcom/zubhium/utils/ZubhiumError;

    const-string v10, "Internal error occurred"

    invoke-direct {v9, v10}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v9

    .line 243
    if-eqz v1, :cond_2

    .line 244
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 246
    :cond_2
    throw v9

    .line 229
    :catch_1
    move-exception v4

    .line 230
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    const-string v9, "ClientProtocolException"

    invoke-static {v9}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 231
    new-instance v9, Lcom/zubhium/utils/ZubhiumError;

    const-string v10, "Internal error occurred"

    invoke-direct {v9, v10}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 232
    .end local v4           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v4

    .line 233
    .local v4, e:Ljava/io/IOException;
    const-string v9, "IOException"

    invoke-static {v9}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 234
    new-instance v9, Lcom/zubhium/utils/ZubhiumError;

    const-string v10, "Internal error occurred"

    invoke-direct {v9, v10}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 235
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 236
    .local v4, e:Ljava/net/URISyntaxException;
    const-string v9, "URISyntaxException"

    invoke-static {v9}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 237
    new-instance v9, Lcom/zubhium/utils/ZubhiumError;

    const-string v10, "Internal error occurred"

    invoke-direct {v9, v10}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    .end local v4           #e:Ljava/net/URISyntaxException;
    .restart local v0       #SDK_INT:I
    .restart local v5       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #params:Lorg/apache/http/params/HttpParams;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    if-eqz v1, :cond_4

    .line 244
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 247
    :cond_4
    const-string v9, ""

    goto/16 :goto_1
.end method

.method private static executeHttpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 14
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zubhium/utils/ZubhiumError;
        }
    .end annotation

    .prologue
    .line 155
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 157
    .local v1, client:Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-static {}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->createParamsForPosting()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 159
    .local v6, params:Lorg/apache/http/params/HttpParams;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 160
    .local v0, SDK_INT:I
    const/16 v10, 0x8

    if-ge v0, v10, :cond_1

    .line 161
    invoke-static {}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 169
    :goto_0
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 173
    .local v7, postRequest:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v7, v6}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 174
    invoke-static {p1}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->mapToFormEntity(Ljava/util/Map;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v5

    .line 175
    .local v5, formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v7, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 176
    invoke-interface {v1, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 177
    .local v8, response:Lorg/apache/http/HttpResponse;
    if-eqz v8, :cond_3

    .line 178
    invoke-static {v8}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->getResponseFromRawData(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .line 194
    if-eqz v1, :cond_0

    .line 195
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 198
    :cond_0
    :goto_1
    return-object v10

    .line 163
    .end local v5           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v7           #postRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_1
    new-instance v9, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 164
    .local v9, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v10, Lorg/apache/http/conn/scheme/Scheme;

    const-string v11, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v12

    const/16 v13, 0x50

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v10}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 165
    new-instance v10, Lorg/apache/http/conn/scheme/Scheme;

    const-string v11, "https"

    new-instance v12, Lcom/zubhium/utils/ZubhiumSocketFactory;

    invoke-direct {v12}, Lcom/zubhium/utils/ZubhiumSocketFactory;-><init>()V

    const/16 v13, 0x1bb

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v10}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 166
    new-instance v3, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v3, v6, v9}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 167
    .local v3, cm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v3, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .local v2, client:Lorg/apache/http/client/HttpClient;
    move-object v1, v2

    .end local v2           #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    goto :goto_0

    .line 180
    .end local v0           #SDK_INT:I
    .end local v3           #cm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v6           #params:Lorg/apache/http/params/HttpParams;
    .end local v9           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_0
    move-exception v4

    .line 181
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v10, "UnsupportedEncodingException"

    invoke-static {v10}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 182
    new-instance v10, Lcom/zubhium/utils/ZubhiumError;

    const-string v11, "Internal error occurred"

    invoke-direct {v10, v11}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v10

    .line 194
    if-eqz v1, :cond_2

    .line 195
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 197
    :cond_2
    throw v10

    .line 183
    :catch_1
    move-exception v4

    .line 184
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    const-string v10, "ClientProtocolException"

    invoke-static {v10}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 185
    new-instance v10, Lcom/zubhium/utils/ZubhiumError;

    const-string v11, "Internal error occurred"

    invoke-direct {v10, v11}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    throw v10

    .line 186
    .end local v4           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v4

    .line 187
    .local v4, e:Ljava/io/IOException;
    const-string v10, "IOException"

    invoke-static {v10}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 188
    new-instance v10, Lcom/zubhium/utils/ZubhiumError;

    const-string v11, "Internal error occurred"

    invoke-direct {v10, v11}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    .end local v4           #e:Ljava/io/IOException;
    .restart local v0       #SDK_INT:I
    .restart local v5       #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v6       #params:Lorg/apache/http/params/HttpParams;
    .restart local v7       #postRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    if-eqz v1, :cond_4

    .line 195
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 198
    :cond_4
    const-string v10, ""

    goto :goto_1
.end method

.method static getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    .line 303
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 304
    .local v5, trustStore:Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 306
    new-instance v4, Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;

    invoke-direct {v4, v5}, Lcom/zubhium/utils/ZubhiumNetworkUtils$MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 307
    .local v4, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 309
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 310
    .local v2, params:Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 311
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 313
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 314
    .local v3, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 315
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 317
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 319
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v0           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2           #params:Lorg/apache/http/params/HttpParams;
    .end local v3           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v6

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method private static getResponseFromRawData(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, in:Ljava/io/BufferedReader;
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #in:Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 253
    .restart local v0       #in:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 254
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 255
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized initConfig(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter "parameters"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zubhium/utils/ZubhiumError;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    const-class v5, Lcom/zubhium/utils/ZubhiumNetworkUtils;

    monitor-enter v5

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v1, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 100
    const-string v4, "parameters"

    invoke-virtual {v1, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v4, "message"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    if-eqz v1, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_1

    :goto_1
    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 103
    const-string v2, "https://api.zubhium.com/api2/register/"

    invoke-static {v2, v1}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->executeHttpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, response:Ljava/lang/String;
    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->parseResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 107
    .end local v0           #response:Ljava/lang/String;
    :goto_2
    monitor-exit v5

    return-object v2

    :cond_0
    move v4, v3

    .line 102
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 107
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 98
    .end local v1           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2
.end method

.method private static mapToFormEntity(Ljava/util/Map;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/entity/UrlEncodedFormEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 276
    .local p0, fields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .local v2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 281
    .local v0, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    return-object v0

    .line 277
    .end local v0           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 278
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static parseResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zubhium/utils/ZubhiumError;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, json:Lorg/json/JSONObject;
    const-string v3, "success"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    return-object v2

    .line 142
    :cond_0
    const-string v3, "error_message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    const-string v3, "error_message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, error_message:Ljava/lang/String;
    new-instance v3, Lcom/zubhium/utils/ZubhiumError;

    invoke-direct {v3, v1}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1           #error_message:Ljava/lang/String;
    .end local v2           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Lcom/zubhium/utils/ZubhiumError;

    const-string v4, "Internal error occured"

    invoke-direct {v3, v4}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v2       #json:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/zubhium/utils/ZubhiumError;

    const-string v4, "unknown error"

    invoke-direct {v3, v4}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static declared-synchronized submitFeedback(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter "parameters"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zubhium/utils/ZubhiumError;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 111
    const-class v5, Lcom/zubhium/utils/ZubhiumNetworkUtils;

    monitor-enter v5

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v1, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 113
    const-string v4, "parameters"

    invoke-virtual {v1, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v4, "message"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    if-eqz v1, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_1

    :goto_1
    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 116
    const-string v2, "https://api.zubhium.com/api2/supportdesk/"

    invoke-static {v2, v1}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->executeHttpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, response:Ljava/lang/String;
    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->parseResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 120
    .end local v0           #response:Ljava/lang/String;
    :goto_2
    monitor-exit v5

    return-object v2

    :cond_0
    move v4, v3

    .line 115
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 120
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 111
    .end local v1           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2
.end method

.method public static declared-synchronized submitLogs(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter "parameters"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zubhium/utils/ZubhiumError;
        }
    .end annotation

    .prologue
    .line 124
    const-class v3, Lcom/zubhium/utils/ZubhiumNetworkUtils;

    monitor-enter v3

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v1, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    const-string v2, "parameters"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 129
    const-string v2, "https://api.zubhium.com/api2/exception/"

    invoke-static {v2, v1}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->executeHttpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, response:Ljava/lang/String;
    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->parseResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 133
    .end local v0           #response:Ljava/lang/String;
    :goto_0
    monitor-exit v3

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 124
    .end local v1           #values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
