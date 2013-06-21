.class public Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;
.super Landroid/os/AsyncTask;
.source "ATTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/core/sharer/ATTwitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ATImageSendingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/core/sharer/ATTwitter;


# direct methods
.method public constructor <init>(Lcom/addthis/core/sharer/ATTwitter;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "args"

    .prologue
    .line 197
    const-string v2, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    .line 198
    .local v2, STRING_BOUNDARY:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "multipart/form-data; boundary="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 198
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, contentType:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    const/16 v20, 0x0

    aget-object v20, p1, v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 201
    .local v11, message:Ljava/lang/String;
    const/16 v19, 0x0

    .line 203
    .local v19, statusCode:I
    :try_start_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 204
    .local v4, client:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->mConsumer:Loauth/signpost/OAuthConsumer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN_SECRET:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    const-string v20, "https://api.twitter.com/1/account/verify_credentials.json"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 208
    .local v8, get:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->mConsumer:Loauth/signpost/OAuthConsumer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    .line 209
    const-string v20, "Authorization"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpGet;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 210
    .local v3, authHeader:Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v9

    .line 211
    .local v9, headerElements:[Lorg/apache/http/HeaderElement;
    const-string v13, "OAuth realm=\"http://api.twitter.com/\""

    .line 212
    .local v13, newHeader:Ljava/lang/String;
    array-length v0, v9

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    .line 220
    new-instance v15, Lorg/apache/http/client/methods/HttpPost;

    const-string v20, "http://api.twitpic.com/2/upload.json"

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 221
    .local v15, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v20, "X-Auth-Service-Provider"

    .line 222
    const-string v21, "https://api.twitter.com/1/account/verify_credentials.json"

    .line 221
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v20, "X-Verify-Credentials-Authorization"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v13}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v20, "Content-Type"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v14, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v20, "key"

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/addthis/core/Config;->getTwitPicApiKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v20, "consumer_token"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->mConsumer:Loauth/signpost/OAuthConsumer;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Loauth/signpost/OAuthConsumer;->getConsumerKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v20, "consumer_secret"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->mConsumer:Loauth/signpost/OAuthConsumer;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Loauth/signpost/OAuthConsumer;->getConsumerSecret()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v20, "oauth_token"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v20, "oauth_secret"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN_SECRET:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v20, "message"

    move-object/from16 v0, v20

    invoke-interface {v14, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v17, Lorg/apache/http/entity/ByteArrayEntity;

    .line 234
    const-string v20, "media"

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->mItem:Lcom/addthis/models/ATShareItem;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/addthis/models/ATShareItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v21

    .line 234
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v14, v2, v0, v1}, Lcom/addthis/utils/ATUtil;->generatePostBody(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v20

    .line 233
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 236
    .local v17, req_entity:Lorg/apache/http/entity/ByteArrayEntity;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->mConsumer:Loauth/signpost/OAuthConsumer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    .line 239
    const-string v20, "Authorization"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 240
    invoke-interface {v4, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 241
    .local v18, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 242
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    .line 243
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v16

    .line 246
    .local v16, reason:Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    .line 247
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    .line 246
    invoke-static/range {v20 .. v20}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 248
    .local v10, jsonObj:Lorg/json/JSONObject;
    const-string v20, "url"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 249
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "url"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 252
    :cond_0
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 253
    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 254
    const-string v20, "Twitpic "

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v3           #authHeader:Lorg/apache/http/Header;
    .end local v4           #client:Lorg/apache/http/client/HttpClient;
    .end local v8           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v9           #headerElements:[Lorg/apache/http/HeaderElement;
    .end local v10           #jsonObj:Lorg/json/JSONObject;
    .end local v13           #newHeader:Ljava/lang/String;
    .end local v14           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v16           #reason:Ljava/lang/String;
    .end local v17           #req_entity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    :cond_1
    :goto_1
    return-object v11

    .line 212
    .restart local v3       #authHeader:Lorg/apache/http/Header;
    .restart local v4       #client:Lorg/apache/http/client/HttpClient;
    .restart local v8       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v9       #headerElements:[Lorg/apache/http/HeaderElement;
    .restart local v13       #newHeader:Ljava/lang/String;
    :cond_2
    aget-object v7, v9, v20

    .line 213
    .local v7, element:Lorg/apache/http/HeaderElement;
    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    .line 214
    .local v12, name:Ljava/lang/String;
    const-string v22, "OAuth oauth_token"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 215
    const-string v12, "oauth_token"

    .line 217
    :cond_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v13

    .line 212
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 258
    .end local v3           #authHeader:Lorg/apache/http/Header;
    .end local v4           #client:Lorg/apache/http/client/HttpClient;
    .end local v7           #element:Lorg/apache/http/HeaderElement;
    .end local v8           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v9           #headerElements:[Lorg/apache/http/HeaderElement;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #newHeader:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 259
    .local v6, e:Lorg/apache/http/ParseException;
    invoke-virtual {v6}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_1

    .line 260
    .end local v6           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v6

    .line 261
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 262
    .end local v6           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v6

    .line 263
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 264
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v6

    .line 265
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_4
    move-exception v6

    .line 267
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 268
    .end local v6           #e:Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 269
    .local v6, e:Loauth/signpost/exception/OAuthMessageSignerException;
    invoke-virtual {v6}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    goto :goto_1

    .line 270
    .end local v6           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :catch_6
    move-exception v6

    .line 271
    .local v6, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    invoke-virtual {v6}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    goto :goto_1

    .line 272
    .end local v6           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_7
    move-exception v6

    .line 273
    .local v6, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v6}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATShareActivity;->stopProgressDialog()V

    .line 280
    new-instance v0, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;

    iget-object v1, p0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    invoke-direct {v0, v1}, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;-><init>(Lcom/addthis/core/sharer/ATTwitter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 281
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 185
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 186
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 187
    iget-object v1, p0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "connecting_twitpic"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 186
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->showProgressDialog(I)V

    .line 189
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addthis/core/Config;->getTwitPicApiKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "45149651ec391a4e2b8135b43a63346b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string v1, "Please change the Twit pic api key with your own key in Config.java"

    iget-object v0, p0, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/addthis/utils/ATUtil;->showNotificationToast(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 192
    :cond_0
    return-void
.end method
