.class public Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;
.super Landroid/os/AsyncTask;
.source "ATTumblr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/core/sharer/ATTumblr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ATTumblrMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/core/sharer/ATTumblr;


# direct methods
.method protected constructor <init>(Lcom/addthis/core/sharer/ATTumblr;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 17
    .parameter "args"

    .prologue
    .line 209
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 211
    .local v11, result:Ljava/lang/Boolean;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 212
    .local v4, client:Lorg/apache/http/client/HttpClient;
    const-string v14, "Tumblr class"

    const-string v15, "About to execute tumblr api call"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :try_start_0
    const-string v1, "0xKhTmLbOuNdArY"

    .line 217
    .local v1, STRING_BOUNDARY:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "multipart/form-data; boundary="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 217
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, contentType:Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    const-string v14, "https://www.tumblr.com/api/write"

    invoke-direct {v8, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 220
    .local v8, post:Lorg/apache/http/client/methods/HttpPost;
    const/4 v14, 0x0

    aget-object v2, p1, v14

    .line 221
    .local v2, arg1:Landroid/os/Bundle;
    const-string v14, "Content-Type"

    invoke-virtual {v8, v14, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v14, "sharetitle"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, caption:Ljava/lang/String;
    const-string v14, "sharedesc"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 224
    .local v13, tags:Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v7, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "email"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    #getter for: Lcom/addthis/core/sharer/ATTumblr;->mUsername:Ljava/lang/String;
    invoke-static {v15}, Lcom/addthis/core/sharer/ATTumblr;->access$2(Lcom/addthis/core/sharer/ATTumblr;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v14, "password"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    #getter for: Lcom/addthis/core/sharer/ATTumblr;->mPassword:Ljava/lang/String;
    invoke-static {v15}, Lcom/addthis/core/sharer/ATTumblr;->access$3(Lcom/addthis/core/sharer/ATTumblr;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v14, "type"

    const-string v15, "photo"

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v14, "private"

    const-string v15, "0"

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    if-eqz v3, :cond_0

    .line 230
    const-string v14, "caption"

    invoke-interface {v7, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    if-eqz v13, :cond_1

    .line 232
    const-string v14, "tags"

    invoke-interface {v7, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_1
    new-instance v9, Lorg/apache/http/entity/ByteArrayEntity;

    .line 234
    const-string v14, "data"

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    iget-object v15, v15, Lcom/addthis/core/sharer/ATTumblr;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v15}, Lcom/addthis/models/ATShareItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 234
    invoke-static {v7, v1, v14, v15}, Lcom/addthis/utils/ATUtil;->generatePostBody(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v14

    .line 233
    invoke-direct {v9, v14}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 236
    .local v9, req_entity:Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v8, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 237
    invoke-interface {v4, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 238
    .local v10, response:Lorg/apache/http/HttpResponse;
    const-string v14, "Tumblr class"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Recieved response"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 242
    .local v12, status:Lorg/apache/http/StatusLine;
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-eq v14, v15, :cond_2

    .line 243
    const-string v14, "Tumblr class"

    const-string v15, "Error statuscode"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 257
    .end local v1           #STRING_BOUNDARY:Ljava/lang/String;
    .end local v2           #arg1:Landroid/os/Bundle;
    .end local v3           #caption:Ljava/lang/String;
    .end local v5           #contentType:Ljava/lang/String;
    .end local v7           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #req_entity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #status:Lorg/apache/http/StatusLine;
    .end local v13           #tags:Ljava/lang/String;
    :goto_0
    return-object v11

    .line 248
    .restart local v1       #STRING_BOUNDARY:Ljava/lang/String;
    .restart local v2       #arg1:Landroid/os/Bundle;
    .restart local v3       #caption:Ljava/lang/String;
    .restart local v5       #contentType:Ljava/lang/String;
    .restart local v7       #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v9       #req_entity:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    .restart local v12       #status:Lorg/apache/http/StatusLine;
    .restart local v13       #tags:Ljava/lang/String;
    :cond_2
    const-string v14, "Tumblr class"

    const-string v15, "Succeded"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 251
    .end local v1           #STRING_BOUNDARY:Ljava/lang/String;
    .end local v2           #arg1:Landroid/os/Bundle;
    .end local v3           #caption:Ljava/lang/String;
    .end local v5           #contentType:Ljava/lang/String;
    .end local v7           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v9           #req_entity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #status:Lorg/apache/http/StatusLine;
    .end local v13           #tags:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 252
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 253
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v6

    .line 254
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->doInBackground([Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATShareActivity;->stopProgressDialog()V

    .line 262
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "successfully_posted"

    invoke-static {v0, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/addthis/core/sharer/ATTumblr;->didCompleteShare(I)V

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/addthis/core/sharer/ATTumblr;->didCompleteShare(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 202
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 203
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 204
    iget-object v1, p0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrMessageTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "uploading_please_wait"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->showProgressDialog(I)V

    .line 205
    return-void
.end method
