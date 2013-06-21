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
    .line 897
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 897
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    return-void
.end method

.method private downloadCustomImages()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v8, 0x0

    .line 1188
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$38()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v11, v8

    :goto_0
    if-lt v11, v10, :cond_0

    .line 1219
    return-void

    .line 1188
    :cond_0
    aget-object v7, v9, v11

    .line 1189
    .local v7, s:Ljava/lang/String;
    iget-object v8, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1190
    .local v1, c:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1193
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1196
    .local v3, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v5, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v8, "Cookie"

    invoke-static {v1}, Lcom/mobclix/android/sdk/Mobclix;->getCookieStringFromCookieManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v8, v12}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v3, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1201
    .local v6, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 1204
    .local v4, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/mobclix/android/sdk/Mobclix;->syncCookiesToCookieManager(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V

    .line 1206
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1208
    .local v0, bmImg:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/app/Activity;

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

    invoke-virtual {v8, v12, v13}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1209
    .local v2, fos:Ljava/io/FileOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x5a

    invoke-virtual {v0, v8, v12, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1210
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1212
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

    .line 1213
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

    .line 1188
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

    .line 1216
    :cond_1
    iget-object v8, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/mobclix/android/sdk/Mobclix;->access$42(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v8, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1214
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private getConfigUrl(Z)Ljava/lang/String;
    .locals 6
    .parameter "usePref"

    .prologue
    const-string v3, "totalSessionTime"

    const-string v3, "totalIdleTime"

    const-string v3, "offlineSessions"

    const-string v3, "ConfigServer"

    const-string v3, "UTF-8"

    .line 1135
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;
    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->access$53(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, c:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1138
    .local v1, data:Ljava/lang/StringBuffer;
    :try_start_0
    const-string v3, "ConfigServer"

    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 1139
    const-string v3, "ConfigServer"

    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1141
    const-string v3, "?p=android"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1142
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

    .line 1143
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

    .line 1144
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

    .line 1145
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

    .line 1146
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

    .line 1147
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

    .line 1148
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

    .line 1149
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

    .line 1150
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1151
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

    .line 1153
    :cond_1
    const-string v3, "offlineSessions"

    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1155
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

    .line 1158
    :cond_2
    :goto_0
    :try_start_2
    const-string v3, "totalSessionTime"

    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 1160
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

    .line 1163
    :cond_3
    :goto_1
    :try_start_4
    const-string v3, "totalIdleTime"

    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1165
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

    .line 1170
    :cond_4
    :goto_2
    :try_start_6
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->access$57(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1171
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

    .line 1172
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

    .line 1173
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

    .line 1174
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z
    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->access$63(Lcom/mobclix/android/sdk/Mobclix;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1175
    const-string v3, "&new=true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1180
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v3

    .line 1182
    :goto_3
    return-object v3

    .line 1181
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1182
    .local v2, e:Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_3

    .line 1166
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2

    .line 1161
    :catch_2
    move-exception v3

    goto :goto_1

    .line 1156
    :catch_3
    move-exception v3

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 901
    const-string v5, ""

    .line 904
    .local v5, app_name:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    move-result-object v5

    .line 907
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    .line 909
    .local v16, package_manager:Landroid/content/pm/PackageManager;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move-object v1, v5

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v27, v0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$23(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 913
    :goto_1
    :try_start_3
    const-string v26, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_c

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    new-instance v27, Landroid/location/Criteria;

    invoke-direct/range {v27 .. v27}, Landroid/location/Criteria;-><init>()V

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$24(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/Criteria;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$25(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Criteria;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$26(Lcom/mobclix/android/sdk/Mobclix;Z)V

    .line 924
    :goto_2
    const-string v26, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_e

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$27(Lcom/mobclix/android/sdk/Mobclix;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 932
    .end local v16           #package_manager:Landroid/content/pm/PackageManager;
    :goto_3
    :try_start_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 933
    .local v12, d:Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$28(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$29(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/app/Activity;

    move-result-object v26

    const-string v27, "phone"

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/TelephonyManager;

    .line 938
    .local v23, telephoney_manager:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$30(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$28(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$30(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_0

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "null"

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$28(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 945
    :cond_0
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v15

    .line 946
    .local v15, networkOperator:Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x3

    move-object v0, v15

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$31(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    move-object v0, v15

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$32(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e

    .line 953
    .end local v12           #d:Ljava/util/Locale;
    .end local v15           #networkOperator:Ljava/lang/String;
    .end local v23           #telephoney_manager:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_4
    :try_start_5
    const-string v26, "deviceId"

    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 954
    const-string v26, "deviceId"

    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 955
    .local v17, prefDeviceId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$33(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$34(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 964
    .end local v17           #prefDeviceId:Ljava/lang/String;
    :cond_2
    :goto_5
    const-string v26, "idleTimeout"

    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "idleTimeout"

    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$36(Lcom/mobclix/android/sdk/Mobclix;I)V

    .line 966
    :cond_3
    const-string v26, "pollTime"

    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "pollTime"

    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->pollTime:I
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$37(Lcom/mobclix/android/sdk/Mobclix;I)V

    .line 969
    :cond_4
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$38()[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    :goto_6
    move/from16 v0, v28

    move/from16 v1, v27

    if-lt v0, v1, :cond_10

    .line 991
    const/16 v19, 0x1

    .line 992
    .end local v5           #app_name:Ljava/lang/String;
    .local v19, repeat:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$44(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 1100
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$44(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    .line 1101
    const-string v26, "ConfigServer"

    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "ConfigServer"

    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$46(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1103
    :cond_6
    const-string v26, "AdServer"

    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "AdServer"

    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$47(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1105
    :cond_7
    const-string v26, "AnalyticsServer"

    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "AnalyticsServer"

    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$48(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1107
    :cond_8
    const-string v26, "VcServer"

    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "VcServer"

    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$49(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1109
    :cond_9
    const-string v26, "FeedbackServer"

    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "FeedbackServer"

    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$50(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1111
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$58(Lcom/mobclix/android/sdk/Mobclix;Z)V

    .line 1130
    :cond_b
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->sync()V

    .line 1131
    return-void

    .line 910
    .end local v19           #repeat:Z
    .restart local v5       #app_name:Ljava/lang/String;
    .restart local v16       #package_manager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v26

    move-object/from16 v13, v26

    .line 911
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "null"

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$23(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 929
    .end local v13           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16           #package_manager:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v26

    goto/16 :goto_3

    .line 917
    .restart local v16       #package_manager:Landroid/content/pm/PackageManager;
    :cond_c
    const-string v26, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_d

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    new-instance v27, Landroid/location/Criteria;

    invoke-direct/range {v27 .. v27}, Landroid/location/Criteria;-><init>()V

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$24(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/Criteria;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$25(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Criteria;

    move-result-object v26

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$26(Lcom/mobclix/android/sdk/Mobclix;Z)V

    goto/16 :goto_2

    .line 922
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$26(Lcom/mobclix/android/sdk/Mobclix;Z)V

    goto/16 :goto_2

    .line 927
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$27(Lcom/mobclix/android/sdk/Mobclix;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 959
    .end local v16           #package_manager:Landroid/content/pm/PackageManager;
    :cond_f
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$35(Lcom/mobclix/android/sdk/Mobclix;Z)V

    .line 960
    const-string v26, "deviceId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$33(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_5

    .line 962
    :catch_2
    move-exception v26

    goto/16 :goto_5

    .line 969
    :cond_10
    aget-object v22, v26, v28

    .line 970
    .local v22, s:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 971
    invoke-static/range {v22 .. v22}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 972
    .local v8, c:Ljava/lang/String;
    const-string v29, ","

    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 973
    .local v11, cs:[Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$39(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x0

    aget-object v30, v11, v30

    const-string v31, "true"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 975
    :goto_8
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x1

    aget-object v30, v11, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 977
    :goto_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$41(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    aget-object v30, v11, v30

    const-string v31, "true"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 984
    .end local v8           #c:Ljava/lang/String;
    .end local v11           #cs:[Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$42(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "CustomAdUrl"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v31, "CustomAdUrl"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    :goto_b
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6

    .line 974
    .restart local v8       #c:Ljava/lang/String;
    .restart local v11       #cs:[Ljava/lang/String;
    :catch_3
    move-exception v29

    move-object/from16 v13, v29

    .local v13, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$39(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 976
    .end local v13           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v29

    move-object/from16 v13, v29

    .restart local v13       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const-wide/16 v30, 0x7530

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 978
    .end local v13           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v29

    move-object/from16 v13, v29

    .restart local v13       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$41(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 980
    .end local v8           #c:Ljava/lang/String;
    .end local v11           #cs:[Ljava/lang/String;
    .end local v13           #e:Ljava/lang/Exception;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$39(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const-wide/16 v30, 0x7530

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$41(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 988
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v29, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v29

    const-string v30, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 994
    .end local v5           #app_name:Ljava/lang/String;
    .end local v22           #s:Ljava/lang/String;
    .restart local v19       #repeat:Z
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->getConfigUrl(Z)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->url:Ljava/lang/String;

    .line 995
    const-string v20, ""

    .line 996
    .local v20, response:Ljava/lang/String;
    const/4 v9, 0x0

    .line 997
    .local v9, con:Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 1000
    .local v7, br:Ljava/io/BufferedReader;
    :try_start_b
    new-instance v26, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->url:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 1001
    const-string v26, "GET"

    move-object v0, v9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1002
    const-string v26, "User-Agent"

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v27

    move-object v0, v9

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 1004
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    .line 1005
    .local v21, responseCode:I
    const/16 v26, 0xc8

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 1006
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v27, 0x1f40

    move-object v0, v6

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 1007
    .end local v7           #br:Ljava/io/BufferedReader;
    .local v6, br:Ljava/io/BufferedReader;
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .line 1008
    .local v24, tmp:Ljava/lang/String;
    :goto_c
    if-nez v24, :cond_17

    .line 1012
    const-string v26, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    move-result v26

    if-nez v26, :cond_15

    .line 1016
    :try_start_d
    new-instance v10, Lorg/json/JSONObject;

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1017
    .local v10, config:Lorg/json/JSONObject;
    const-string v26, "urls"

    move-object v0, v10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 1018
    .local v25, urls:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "config"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$46(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "ads"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$47(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "analytics"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$48(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "vc"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$49(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "feedback"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$50(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "idle_timeout"

    move-object v0, v10

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$36(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 1025
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const-string v27, "poll_time"

    move-object v0, v10

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->pollTime:I
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$37(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 1028
    :goto_d
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->pollTime:I
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$51(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v28, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I
    invoke-static/range {v28 .. v28}, Lcom/mobclix/android/sdk/Mobclix;->access$52(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v27

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->pollTime:I
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$37(Lcom/mobclix/android/sdk/Mobclix;I)V

    .line 1030
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1031
    .local v18, rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v26, "ConfigServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$53(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const-string v26, "AdServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$54(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const-string v26, "AnalyticsServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$19(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const-string v26, "VcServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$55(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    const-string v26, "FeedbackServer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$56(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const-string v26, "idleTimeout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$52(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    const-string v26, "pollTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->pollTime:I
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$51(Lcom/mobclix/android/sdk/Mobclix;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const-string v26, "ad_units"

    move-object v0, v10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1041
    .local v4, adUnits:Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_e
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v26

    move v0, v14

    move/from16 v1, v26

    if-lt v0, v1, :cond_18

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$57(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_14

    .line 1066
    const-string v26, "deviceId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$33(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_14
    const-string v26, "offlineSessions"

    const-string v27, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string v26, "totalSessionTime"

    const-string v27, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    const-string v26, "totalIdleTime"

    const-string v27, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    invoke-static/range {v18 .. v18}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/util/Map;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$58(Lcom/mobclix/android/sdk/Mobclix;Z)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 1089
    .end local v4           #adUnits:Lorg/json/JSONArray;
    .end local v10           #config:Lorg/json/JSONObject;
    .end local v14           #i:I
    .end local v18           #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24           #tmp:Ljava/lang/String;
    .end local v25           #urls:Lorg/json/JSONObject;
    :cond_15
    :goto_f
    :try_start_10
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 1091
    :goto_10
    if-eqz v9, :cond_16

    .line 1092
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1095
    .end local v21           #responseCode:I
    :cond_16
    :goto_11
    if-eqz v19, :cond_5

    .line 1097
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 1009
    .restart local v21       #responseCode:I
    .restart local v24       #tmp:Ljava/lang/String;
    :cond_17
    :try_start_11
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1010
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    move-result-object v24

    goto/16 :goto_c

    .line 1042
    .restart local v4       #adUnits:Lorg/json/JSONArray;
    .restart local v10       #config:Lorg/json/JSONObject;
    .restart local v14       #i:I
    .restart local v18       #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v25       #urls:Lorg/json/JSONObject;
    :cond_18
    :try_start_12
    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1043
    .local v3, a:Lorg/json/JSONObject;
    const-string v26, "size"

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1044
    .restart local v22       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$39(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v26

    const-string v27, "enabled"

    move-object v0, v3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    const-string v26, "refresh"

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    const-wide/16 v28, -0x1

    cmp-long v26, v26, v28

    if-nez v26, :cond_19

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v26

    const-wide/16 v27, -0x1

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$41(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v26

    const-string v27, "autoplay"

    move-object v0, v3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$39(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;
    invoke-static/range {v27 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$41(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    .line 1053
    :try_start_13
    const-string v26, "customAdUrl"

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1054
    .restart local v8       #c:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v26

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    .line 1041
    .end local v8           #c:Ljava/lang/String;
    :goto_13
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_e

    .line 1048
    :cond_19
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v26

    const-string v27, "refresh"

    move-object v0, v3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    mul-long v27, v27, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_12

    .line 1076
    .end local v3           #a:Lorg/json/JSONObject;
    .end local v4           #adUnits:Lorg/json/JSONArray;
    .end local v10           #config:Lorg/json/JSONObject;
    .end local v14           #i:I
    .end local v18           #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22           #s:Ljava/lang/String;
    .end local v25           #urls:Lorg/json/JSONObject;
    :catch_6
    move-exception v26

    move-object/from16 v13, v26

    .line 1077
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    goto/16 :goto_f

    .line 1084
    .end local v13           #e:Ljava/lang/Exception;
    .end local v24           #tmp:Ljava/lang/String;
    :catch_7
    move-exception v26

    move-object/from16 v13, v26

    .line 1086
    .end local v21           #responseCode:I
    .restart local v13       #e:Ljava/lang/Exception;
    :goto_14
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1089
    :try_start_17
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    .line 1091
    :goto_15
    if-eqz v9, :cond_16

    .line 1092
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_11

    .line 1057
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v3       #a:Lorg/json/JSONObject;
    .restart local v4       #adUnits:Lorg/json/JSONArray;
    .restart local v8       #c:Ljava/lang/String;
    .restart local v10       #config:Lorg/json/JSONObject;
    .restart local v14       #i:I
    .restart local v18       #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21       #responseCode:I
    .restart local v22       #s:Ljava/lang/String;
    .restart local v24       #tmp:Ljava/lang/String;
    .restart local v25       #urls:Lorg/json/JSONObject;
    :cond_1a
    :try_start_18
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "CustomAdUrl"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->removePref(Ljava/lang/String;)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    goto :goto_13

    .line 1060
    .end local v8           #c:Ljava/lang/String;
    :catch_8
    move-exception v26

    move-object/from16 v13, v26

    .line 1061
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/mobclix/android/sdk/Mobclix;->access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;

    move-result-object v26

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    goto/16 :goto_13

    .line 1087
    .end local v3           #a:Lorg/json/JSONObject;
    .end local v4           #adUnits:Lorg/json/JSONArray;
    .end local v10           #config:Lorg/json/JSONObject;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #i:I
    .end local v18           #rcPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21           #responseCode:I
    .end local v22           #s:Ljava/lang/String;
    .end local v24           #tmp:Ljava/lang/String;
    .end local v25           #urls:Lorg/json/JSONObject;
    :catchall_0
    move-exception v26

    .line 1089
    :goto_16
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a

    .line 1091
    :goto_17
    if-eqz v9, :cond_1b

    .line 1092
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1093
    :cond_1b
    throw v26

    .line 1082
    .end local v6           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v21       #responseCode:I
    :cond_1c
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    goto/16 :goto_f

    .line 1090
    .end local v21           #responseCode:I
    .restart local v13       #e:Ljava/lang/Exception;
    :catch_9
    move-exception v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V

    goto :goto_15

    .end local v13           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v13

    .restart local v13       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v27 .. v28}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V

    goto :goto_17

    .end local v13           #e:Ljava/lang/Exception;
    .restart local v21       #responseCode:I
    :catch_b
    move-exception v13

    .restart local v13       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v26, v0

    const/16 v27, -0x1

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I
    invoke-static/range {v26 .. v27}, Lcom/mobclix/android/sdk/Mobclix;->access$45(Lcom/mobclix/android/sdk/Mobclix;I)V

    goto/16 :goto_10

    .line 1087
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v21           #responseCode:I
    .restart local v7       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v26

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    goto :goto_16

    .line 1084
    .end local v6           #br:Ljava/io/BufferedReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    :catch_c
    move-exception v26

    move-object/from16 v13, v26

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    goto/16 :goto_14

    .line 1026
    .restart local v10       #config:Lorg/json/JSONObject;
    .restart local v21       #responseCode:I
    .restart local v24       #tmp:Ljava/lang/String;
    .restart local v25       #urls:Lorg/json/JSONObject;
    :catch_d
    move-exception v26

    goto/16 :goto_d

    .line 950
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v9           #con:Ljava/net/HttpURLConnection;
    .end local v10           #config:Lorg/json/JSONObject;
    .end local v19           #repeat:Z
    .end local v20           #response:Ljava/lang/String;
    .end local v21           #responseCode:I
    .end local v24           #tmp:Ljava/lang/String;
    .end local v25           #urls:Lorg/json/JSONObject;
    .restart local v5       #app_name:Ljava/lang/String;
    :catch_e
    move-exception v26

    goto/16 :goto_4

    .line 905
    :catch_f
    move-exception v26

    goto/16 :goto_0
.end method
