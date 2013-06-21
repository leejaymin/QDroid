.class Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;
.super Ljava/lang/Object;
.source "Mobclix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchRemoteConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 915
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    return-void
.end method

.method private downloadCustomImages()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v8, 0x0

    .line 1214
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$38()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v11, v8

    :goto_0
    if-lt v11, v10, :cond_0

    .line 1245
    return-void

    .line 1214
    :cond_0
    aget-object v7, v9, v11

    .line 1215
    .local v7, s:Ljava/lang/String;
    iget-object v8, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1216
    .local v1, c:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1219
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1222
    .local v3, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v5, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v8, "Cookie"

    invoke-static {v1}, Lcom/mobclix/android/sdk/Mobclix;->getCookieStringFromCookieManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v8, v12}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-virtual {v3, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1227
    .local v6, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 1230
    .local v4, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/mobclix/android/sdk/Mobclix;->syncCookiesToCookieManager(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V

    .line 1232
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1234
    .local v0, bmImg:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "_mc_cached_custom_ad.png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1235
    .local v2, fos:Ljava/io/FileOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x5a

    invoke-virtual {v0, v8, v12, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1236
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1238
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "CustomAdUrl"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v8, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v12, v8}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object v8, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/mobclix/android/sdk/Mobclix;->access$42(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v8

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v8, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    .end local v0           #bmImg:Landroid/graphics/Bitmap;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v5           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_1
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    goto/16 :goto_0

    .line 1242
    :cond_1
    iget-object v8, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/mobclix/android/sdk/Mobclix;->access$42(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v8, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1240
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private getConfigUrl(Z)Ljava/lang/String;
    .locals 6
    .parameter "usePref"

    .prologue
    .line 1161
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;
    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->access$53(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, c:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1164
    .local v1, data:Ljava/lang/StringBuffer;
    :try_start_0
    const-string v3, "ConfigServer"

    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 1165
    const-string v3, "ConfigServer"

    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1166
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1167
    const-string v3, "?p=android"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1168
    const-string v3, "&a="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1169
    const-string v3, "&m="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1170
    const-string v3, "&v="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->access$17(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1171
    const-string v3, "&d="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1172
    const-string v3, "&dm="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1173
    const-string v3, "&dv="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->access$59(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1174
    const-string v3, "&hwdm="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceHardwareModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1175
    const-string v3, "&g="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->access$60(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1176
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1177
    const-string v3, "&ll="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1179
    :cond_1
    const-string v3, "offlineSessions"

    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1181
    :try_start_1
    const-string v3, "&off="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "offlineSessions"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1184
    :cond_2
    :goto_0
    :try_start_2
    const-string v3, "totalSessionTime"

    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 1186
    :try_start_3
    const-string v3, "&st="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "totalSessionTime"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1189
    :cond_3
    :goto_1
    :try_start_4
    const-string v3, "totalIdleTime"

    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1191
    :try_start_5
    const-string v3, "&it="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "totalIdleTime"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1196
    :cond_4
    :goto_2
    :try_start_6
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->access$57(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1197
    const-string v3, "&pd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->access$57(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1198
    :cond_5
    const-string v3, "&mcc="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->access$61(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1199
    const-string v3, "&mnc="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->access$62(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1200
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z
    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->access$63(Lcom/mobclix/android/sdk/Mobclix;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1201
    const-string v3, "&new=true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1206
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v3

    .line 1208
    :goto_3
    return-object v3

    .line 1207
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1208
    .local v2, e:Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_3

    .line 1192
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2

    .line 1187
    :catch_2
    move-exception v3

    goto :goto_1

    .line 1182
    :catch_3
    move-exception v3

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 920
    const-string v5, ""

    .line 923
    .local v5, app_name:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    move-result-object v5

    .line 926
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 928
    .local v19, package_manager:Landroid/content/pm/PackageManager;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v30, v0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$23(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 932
    :goto_1
    :try_start_3
    const-string v29, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_c

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    new-instance v30, Landroid/location/Criteria;

    invoke-direct/range {v30 .. v30}, Landroid/location/Criteria;-><init>()V

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$24(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/Criteria;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$25(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Criteria;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$26(Lcom/mobclix/android/sdk/Mobclix;Z)V

    .line 943
    :goto_2
    const-string v29, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_e

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$27(Lcom/mobclix/android/sdk/Mobclix;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 951
    .end local v19           #package_manager:Landroid/content/pm/PackageManager;
    :goto_3
    :try_start_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 952
    .local v12, d:Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$28(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$29(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v29

    const-string v30, "phone"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/TelephonyManager;

    .line 957
    .local v26, telephoney_manager:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$30(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v29

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$28(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$30(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v29

    if-nez v29, :cond_0

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "null"

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$28(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 964
    :cond_0
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v18

    .line 965
    .local v18, networkOperator:Ljava/lang/String;
    if-eqz v18, :cond_1

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$31(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$32(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e

    .line 972
    .end local v12           #d:Ljava/util/Locale;
    .end local v18           #networkOperator:Ljava/lang/String;
    .end local v26           #telephoney_manager:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_4
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 977
    :try_start_5
    const-string v29, "deviceId"

    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 978
    const-string v29, "deviceId"

    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 979
    .local v20, prefDeviceId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$33(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$34(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 988
    .end local v20           #prefDeviceId:Ljava/lang/String;
    :cond_2
    :goto_5
    const-string v29, "idleTimeout"

    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "idleTimeout"

    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$36(Lcom/mobclix/android/sdk/Mobclix;I)V

    .line 990
    :cond_3
    const-string v29, "pollTime"

    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "pollTime"

    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->pollTime:I
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$37(Lcom/mobclix/android/sdk/Mobclix;I)V

    .line 993
    :cond_4
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$38()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x0

    :goto_6
    move/from16 v0, v31

    move/from16 v1, v30

    if-lt v0, v1, :cond_10

    .line 1015
    const/16 v22, 0x1

    .line 1016
    .end local v5           #app_name:Ljava/lang/String;
    .local v22, repeat:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$44(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    .line 1127
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$44(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_b

    .line 1128
    const-string v29, "ConfigServer"

    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "ConfigServer"

    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$46(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1130
    :cond_6
    const-string v29, "AdServer"

    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "AdServer"

    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$47(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1132
    :cond_7
    const-string v29, "AnalyticsServer"

    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "AnalyticsServer"

    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$48(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1134
    :cond_8
    const-string v29, "VcServer"

    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "VcServer"

    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$49(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1136
    :cond_9
    const-string v29, "FeedbackServer"

    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "FeedbackServer"

    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$50(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1138
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$58(Lcom/mobclix/android/sdk/Mobclix;Z)V

    .line 1156
    :cond_b
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->sync()V

    .line 1157
    return-void

    .line 929
    .end local v22           #repeat:Z
    .restart local v5       #app_name:Ljava/lang/String;
    .restart local v19       #package_manager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v29

    move-object/from16 v13, v29

    .line 930
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "null"

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$23(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 948
    .end local v13           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19           #package_manager:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v29

    goto/16 :goto_3

    .line 936
    .restart local v19       #package_manager:Landroid/content/pm/PackageManager;
    :cond_c
    const-string v29, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    if-nez v29, :cond_d

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    new-instance v30, Landroid/location/Criteria;

    invoke-direct/range {v30 .. v30}, Landroid/location/Criteria;-><init>()V

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$24(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/Criteria;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$25(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Criteria;

    move-result-object v29

    const/16 v30, 0x2

    invoke-virtual/range {v29 .. v30}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$26(Lcom/mobclix/android/sdk/Mobclix;Z)V

    goto/16 :goto_2

    .line 941
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$26(Lcom/mobclix/android/sdk/Mobclix;Z)V

    goto/16 :goto_2

    .line 946
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$27(Lcom/mobclix/android/sdk/Mobclix;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 983
    .end local v19           #package_manager:Landroid/content/pm/PackageManager;
    :cond_f
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$35(Lcom/mobclix/android/sdk/Mobclix;Z)V

    .line 984
    const-string v29, "deviceId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$33(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_5

    .line 986
    :catch_2
    move-exception v29

    goto/16 :goto_5

    .line 993
    :cond_10
    aget-object v25, v29, v31

    .line 994
    .local v25, s:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 995
    invoke-static/range {v25 .. v25}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 996
    .local v8, c:Ljava/lang/String;
    const-string v32, ","

    move-object v0, v8

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 997
    .local v11, cs:[Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v32, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->access$39(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v33, v11, v33

    const-string v34, "true"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 999
    :goto_8
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v32, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v11, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1001
    :goto_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v32, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->access$41(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x2

    aget-object v33, v11, v33

    const-string v34, "true"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 1008
    .end local v8           #c:Ljava/lang/String;
    .end local v11           #cs:[Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v32, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->access$42(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, "CustomAdUrl"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v32, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "CustomAdUrl"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :goto_b
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_6

    .line 998
    .restart local v8       #c:Ljava/lang/String;
    .restart local v11       #cs:[Ljava/lang/String;
    :catch_3
    move-exception v32

    move-object/from16 v13, v32

    .local v13, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v32, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->access$39(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 1000
    .end local v13           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v32

    move-object/from16 v13, v32

    .restart local v13       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v32, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v32

    const-wide/16 v33, 0x7530

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 1002
    .end local v13           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v32

    move-object/from16 v13, v32

    .restart local v13       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v32, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->access$41(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 1004
    .end local v8           #c:Ljava/lang/String;
    .end local v11           #cs:[Ljava/lang/String;
    .end local v13           #e:Ljava/lang/Exception;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v32, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->access$39(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v32, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v32

    const-wide/16 v33, 0x7530

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v32, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->access$41(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v32

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 1012
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v32, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static/range {v32 .. v32}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v32

    const-string v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 1018
    .end local v5           #app_name:Ljava/lang/String;
    .end local v25           #s:Ljava/lang/String;
    .restart local v22       #repeat:Z
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->getConfigUrl(Z)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->url:Ljava/lang/String;

    .line 1019
    const-string v23, ""

    .line 1020
    .local v23, response:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1021
    .local v9, con:Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 1024
    .local v7, br:Ljava/io/BufferedReader;
    :try_start_b
    new-instance v14, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->url:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object v0, v14

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v14, httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    invoke-virtual {v14}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->execute()Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 1027
    .local v16, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    .line 1028
    .local v15, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    .line 1030
    .local v24, responseCode:I
    const/16 v29, 0xc8

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 1031
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v29, Ljava/io/InputStreamReader;

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v30, 0x1f40

    move-object v0, v6

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 1032
    .end local v7           #br:Ljava/io/BufferedReader;
    .local v6, br:Ljava/io/BufferedReader;
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    .line 1033
    .local v27, tmp:Ljava/lang/String;
    :goto_c
    if-nez v27, :cond_17

    .line 1037
    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1039
    const-string v29, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-result v29

    if-nez v29, :cond_15

    .line 1043
    :try_start_d
    new-instance v10, Lorg/json/JSONObject;

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v10, config:Lorg/json/JSONObject;
    const-string v29, "urls"

    move-object v0, v10

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 1045
    .local v28, urls:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "config"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$46(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "ads"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$47(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "analytics"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$48(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "vc"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$49(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "feedback"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$50(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "idle_timeout"

    move-object v0, v10

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v30, v0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$36(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 1052
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const-string v30, "poll_time"

    move-object v0, v10

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v30, v0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->pollTime:I
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$37(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 1055
    :goto_d
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->pollTime:I
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$51(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v31, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I
    invoke-static/range {v31 .. v31}, Lcom/mobclix/android/sdk/Mobclix;->access$52(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v31

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v30

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->pollTime:I
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$37(Lcom/mobclix/android/sdk/Mobclix;I)V

    .line 1057
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 1058
    .local v21, rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v29, "ConfigServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$53(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    const-string v29, "AdServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$54(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    const-string v29, "AnalyticsServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$19(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const-string v29, "VcServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$55(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const-string v29, "FeedbackServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$56(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string v29, "idleTimeout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$52(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    const-string v29, "pollTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->pollTime:I
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$51(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    const-string v29, "ad_units"

    move-object v0, v10

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1068
    .local v4, adUnits:Lorg/json/JSONArray;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_e
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v17

    move/from16 v1, v29

    if-lt v0, v1, :cond_18

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$57(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_14

    .line 1093
    const-string v29, "deviceId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$33(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_14
    const-string v29, "offlineSessions"

    const-string v30, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    const-string v29, "totalSessionTime"

    const-string v30, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    const-string v29, "totalIdleTime"

    const-string v30, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    invoke-static/range {v21 .. v21}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/util/Map;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$58(Lcom/mobclix/android/sdk/Mobclix;Z)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 1116
    .end local v4           #adUnits:Lorg/json/JSONArray;
    .end local v10           #config:Lorg/json/JSONObject;
    .end local v17           #i:I
    .end local v21           #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27           #tmp:Ljava/lang/String;
    .end local v28           #urls:Lorg/json/JSONObject;
    :cond_15
    :goto_f
    :try_start_10
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 1118
    :goto_10
    if-eqz v9, :cond_16

    .line 1119
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1122
    .end local v14           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v15           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v16           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v24           #responseCode:I
    :cond_16
    :goto_11
    if-eqz v22, :cond_5

    .line 1124
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 1034
    .restart local v14       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v15       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v16       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v24       #responseCode:I
    .restart local v27       #tmp:Ljava/lang/String;
    :cond_17
    :try_start_11
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1035
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    move-result-object v27

    goto/16 :goto_c

    .line 1069
    .restart local v4       #adUnits:Lorg/json/JSONArray;
    .restart local v10       #config:Lorg/json/JSONObject;
    .restart local v17       #i:I
    .restart local v21       #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v28       #urls:Lorg/json/JSONObject;
    :cond_18
    :try_start_12
    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1070
    .local v3, a:Lorg/json/JSONObject;
    const-string v29, "size"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1071
    .restart local v25       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$39(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const-string v30, "enabled"

    move-object v0, v3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    const-string v29, "refresh"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v29

    const-wide/16 v31, -0x1

    cmp-long v29, v29, v31

    if-nez v29, :cond_19

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const-wide/16 v30, -0x1

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$41(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const-string v30, "autoplay"

    move-object v0, v3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$39(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;
    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$41(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    .line 1080
    :try_start_13
    const-string v29, "customAdUrl"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1081
    .restart local v8       #c:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const-string v30, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    .line 1068
    .end local v8           #c:Ljava/lang/String;
    :goto_13
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_e

    .line 1075
    :cond_19
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const-string v30, "refresh"

    move-object v0, v3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    mul-long v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_12

    .line 1103
    .end local v3           #a:Lorg/json/JSONObject;
    .end local v4           #adUnits:Lorg/json/JSONArray;
    .end local v10           #config:Lorg/json/JSONObject;
    .end local v17           #i:I
    .end local v21           #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25           #s:Ljava/lang/String;
    .end local v28           #urls:Lorg/json/JSONObject;
    :catch_6
    move-exception v29

    move-object/from16 v13, v29

    .line 1104
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    goto/16 :goto_f

    .line 1111
    .end local v13           #e:Ljava/lang/Exception;
    .end local v27           #tmp:Ljava/lang/String;
    :catch_7
    move-exception v29

    move-object/from16 v13, v29

    .line 1113
    .end local v14           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v15           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v16           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v24           #responseCode:I
    .restart local v13       #e:Ljava/lang/Exception;
    :goto_14
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1116
    :try_start_17
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    .line 1118
    :goto_15
    if-eqz v9, :cond_16

    .line 1119
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_11

    .line 1084
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v3       #a:Lorg/json/JSONObject;
    .restart local v4       #adUnits:Lorg/json/JSONArray;
    .restart local v8       #c:Ljava/lang/String;
    .restart local v10       #config:Lorg/json/JSONObject;
    .restart local v14       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v15       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v16       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v17       #i:I
    .restart local v21       #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24       #responseCode:I
    .restart local v25       #s:Ljava/lang/String;
    .restart local v27       #tmp:Ljava/lang/String;
    .restart local v28       #urls:Lorg/json/JSONObject;
    :cond_1a
    :try_start_18
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "CustomAdUrl"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->removePref(Ljava/lang/String;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    goto :goto_13

    .line 1087
    .end local v8           #c:Ljava/lang/String;
    :catch_8
    move-exception v29

    move-object/from16 v13, v29

    .line 1088
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const-string v30, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    goto/16 :goto_13

    .line 1114
    .end local v3           #a:Lorg/json/JSONObject;
    .end local v4           #adUnits:Lorg/json/JSONArray;
    .end local v10           #config:Lorg/json/JSONObject;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v15           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v16           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v17           #i:I
    .end local v21           #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24           #responseCode:I
    .end local v25           #s:Ljava/lang/String;
    .end local v27           #tmp:Ljava/lang/String;
    .end local v28           #urls:Lorg/json/JSONObject;
    :catchall_0
    move-exception v29

    .line 1116
    :goto_16
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a

    .line 1118
    :goto_17
    if-eqz v9, :cond_1b

    .line 1119
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1120
    :cond_1b
    throw v29

    .line 1109
    .end local v6           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v14       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v15       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v16       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v24       #responseCode:I
    :cond_1c
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    goto/16 :goto_f

    .line 1117
    .end local v14           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v15           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v16           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v24           #responseCode:I
    .restart local v13       #e:Ljava/lang/Exception;
    :catch_9
    move-exception v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V

    goto :goto_15

    .end local v13           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v13

    .restart local v13       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v30, v0

    const/16 v31, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v30 .. v31}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V

    goto :goto_17

    .end local v13           #e:Ljava/lang/Exception;
    .restart local v14       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v15       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v16       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v24       #responseCode:I
    :catch_b
    move-exception v13

    .restart local v13       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v29 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V

    goto/16 :goto_10

    .line 1114
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v15           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v16           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v24           #responseCode:I
    .restart local v7       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v29

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    goto :goto_16

    .line 1111
    .end local v6           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    :catch_c
    move-exception v29

    move-object/from16 v13, v29

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    goto/16 :goto_14

    .line 1053
    .restart local v10       #config:Lorg/json/JSONObject;
    .restart local v14       #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .restart local v15       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v16       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v24       #responseCode:I
    .restart local v27       #tmp:Ljava/lang/String;
    .restart local v28       #urls:Lorg/json/JSONObject;
    :catch_d
    move-exception v29

    goto/16 :goto_d

    .line 969
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v9           #con:Ljava/net/HttpURLConnection;
    .end local v10           #config:Lorg/json/JSONObject;
    .end local v14           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v15           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v16           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v22           #repeat:Z
    .end local v23           #response:Ljava/lang/String;
    .end local v24           #responseCode:I
    .end local v27           #tmp:Ljava/lang/String;
    .end local v28           #urls:Lorg/json/JSONObject;
    .restart local v5       #app_name:Ljava/lang/String;
    :catch_e
    move-exception v29

    goto/16 :goto_4

    .line 924
    :catch_f
    move-exception v29

    goto/16 :goto_0
.end method
