.class public Lcom/addthis/utils/ATUtil;
.super Ljava/lang/Object;
.source "ATUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ATUtil"

.field public static showToasts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/addthis/utils/ATUtil;->showToasts:Z

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUrl(Lcom/addthis/models/ATShareItem;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .parameter "item"
    .parameter "serviceCode"
    .parameter "isOExchange"

    .prologue
    .line 256
    const-string v2, "http://api.addthis.com/oexchange/0.8/forward/"

    .line 257
    .local v2, finalUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/addthis/models/ATShareItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/addthis/utils/ATUtil;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/addthis/models/ATShareItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/addthis/utils/ATUtil;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/addthis/models/ATShareItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/addthis/utils/ATUtil;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, desc:Ljava/lang/String;
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v7

    invoke-virtual {v7}, Lcom/addthis/core/Config;->getAddThisAppId()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, appId:Ljava/lang/String;
    const-string v3, "drd-0.0.5"

    .line 264
    .local v3, pco:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",app-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    :cond_0
    const-string v4, ""

    .line 270
    .local v4, pubId:Ljava/lang/String;
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v7

    invoke-virtual {v7}, Lcom/addthis/core/Config;->getAddThisPubId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "&pubid="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v8

    invoke-virtual {v8}, Lcom/addthis/core/Config;->getAddThisPubId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 282
    const-string v7, "twitter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 283
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/offer?url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&title="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 284
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&via="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v8

    invoke-virtual {v8}, Lcom/addthis/core/Config;->getTwitterViaText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&pco="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 283
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    :goto_1
    const-string v7, "ATUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "url = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-object v2

    .line 273
    :cond_2
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v7

    invoke-virtual {v7}, Lcom/addthis/core/Config;->getAddThisUsername()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 274
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "&username="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v8

    invoke-virtual {v8}, Lcom/addthis/core/Config;->getAddThisUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 288
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/offer?url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&title="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 289
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&description="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&pco="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 288
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 295
    :cond_4
    const-string v2, "http://api.addthis.com/oexchange/0.8/shared/"

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&title="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 297
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&description="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&pco="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 296
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public static doesSupportImageSharing(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "serviceCode"

    .prologue
    .line 126
    const-string v0, "facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "twitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-string v0, "mailto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, "tumblr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "urlString"

    .prologue
    .line 104
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    const-string p0, ""

    .line 112
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 108
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    :try_start_0
    const-string v1, "utf-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generatePostBody(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[B
    .locals 14
    .parameter
    .parameter "boundry"
    .parameter "dataKey"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    .local p0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "UTF-8"

    .line 174
    .local v1, ENCODING:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "--"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, bodyString:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\r\n--"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, endLine:Ljava/lang/String;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    .local v9, os:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 179
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 189
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Content-Disposition: form-data; name=\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 190
    const-string v12, "\"; filename=\"image.jpg\"\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 189
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, cd:Ljava/lang/String;
    const-string v4, "Content-Type: image/png\r\n\r\n"

    .line 192
    .local v4, ct:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 193
    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 194
    if-eqz p3, :cond_0

    .line 195
    move-object/from16 v0, p3

    instance-of v11, v0, Landroid/graphics/Bitmap;

    if-eqz v11, :cond_2

    .line 196
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 197
    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 203
    :cond_0
    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 204
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    return-object v11

    .line 179
    .end local v3           #cd:Ljava/lang/String;
    .end local v4           #ct:Ljava/lang/String;
    .restart local p3
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 180
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 181
    .local v8, key:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 182
    .local v10, value:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Content-Disposition: form-data; name=\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 183
    const-string v13, "\"\r\n\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 182
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .restart local v3       #cd:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 185
    invoke-virtual {v10, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 186
    invoke-virtual {v5, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_0

    .line 198
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #key:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    .restart local v4       #ct:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    instance-of v11, v0, [B

    if-eqz v11, :cond_0

    move-object/from16 v7, p3

    .line 199
    check-cast v7, [B

    .line 200
    .local v7, imagedata:[B
    invoke-virtual {v9, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1
.end method

.method public static getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "ctx"
    .parameter "className"
    .parameter "name"

    .prologue
    .line 209
    const/4 v6, 0x0

    .line 210
    .local v6, r:Ljava/lang/Class;
    const/4 v4, 0x0

    .line 212
    .local v4, id:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 213
    .local v5, info:Landroid/content/pm/ApplicationInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".R"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 215
    invoke-virtual {v6}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 216
    .local v0, classes:[Ljava/lang/Class;
    const/4 v1, 0x0

    .line 218
    .local v1, desireClass:Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v0

    if-lt v3, v7, :cond_1

    .line 224
    :goto_1
    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 238
    .end local v0           #classes:[Ljava/lang/Class;
    .end local v1           #desireClass:Ljava/lang/Class;
    .end local v3           #i:I
    .end local v5           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_2
    return v4

    .line 219
    .restart local v0       #classes:[Ljava/lang/Class;
    .restart local v1       #desireClass:Ljava/lang/Class;
    .restart local v3       #i:I
    .restart local v5       #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 220
    aget-object v1, v0, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    .line 221
    goto :goto_1

    .line 218
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    .end local v0           #classes:[Ljava/lang/Class;
    .end local v1           #desireClass:Ljava/lang/Class;
    .end local v3           #i:I
    .end local v5           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 227
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 228
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 229
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 230
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 231
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 232
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 233
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 234
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 235
    .local v2, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5
    .parameter "ctx"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 64
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "addthispref"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, prefName:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 66
    .local v2, settings:Landroid/content/SharedPreferences;
    return-object v2
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    .line 45
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 46
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 47
    .local v1, result:Z
    return v1
.end method

.method public static isNonOExchange(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "serviceCode"

    .prologue
    .line 143
    const-string v0, "facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addthis/core/Config;->shouldUseFacebookConnect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    :cond_0
    const-string v0, "twitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addthis/core/Config;->shouldUseTwitterOAuth()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    :cond_1
    const-string v0, "mailto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    const-string v0, "tumblr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static showNotificationToast(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 4
    .parameter "charSq"
    .parameter "context"

    .prologue
    .line 82
    sget-boolean v3, Lcom/addthis/utils/ATUtil;->showToasts:Z

    if-nez v3, :cond_0

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    move-object v1, p0

    .line 86
    .local v1, text:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 87
    .local v0, duration:I
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 88
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
