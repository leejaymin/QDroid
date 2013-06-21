.class public Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;
.super Landroid/os/AsyncTask;
.source "ATTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/core/sharer/ATTwitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ATMessageSendingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
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
    .line 289
    iput-object p1, p0, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11
    .parameter "args"

    .prologue
    const/4 v10, 0x0

    .line 300
    const-string v7, "ATTwitter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Inside async task"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, p1, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v6, 0x0

    .line 303
    .local v6, statusCode:I
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 304
    .local v0, client:Lorg/apache/http/client/HttpClient;
    iget-object v7, p0, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    iget-object v7, v7, Lcom/addthis/core/sharer/ATTwitter;->mConsumer:Loauth/signpost/OAuthConsumer;

    iget-object v8, p0, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    iget-object v8, v8, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN:Ljava/lang/String;

    iget-object v9, p0, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    iget-object v9, v9, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN_SECRET:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v7, "http://twitter.com/statuses/update.xml"

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 308
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v2, nvps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "status"

    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 313
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    .line 314
    const-string v8, "http.protocol.expect-continue"

    const/4 v9, 0x0

    .line 313
    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 315
    iget-object v7, p0, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    iget-object v7, v7, Lcom/addthis/core/sharer/ATTwitter;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v7, v3}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    .line 317
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 318
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 319
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 320
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, reason:Ljava/lang/String;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 324
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    .line 325
    const-string v7, "TwitterConnector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 341
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #nvps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #reason:Ljava/lang/String;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 330
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 331
    .local v1, e:Loauth/signpost/exception/OAuthMessageSignerException;
    invoke-virtual {v1}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    goto :goto_0

    .line 332
    .end local v1           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :catch_2
    move-exception v1

    .line 333
    .local v1, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    invoke-virtual {v1}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    goto :goto_0

    .line 334
    .end local v1           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_3
    move-exception v1

    .line 335
    .local v1, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v1}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    goto :goto_0

    .line 336
    .end local v1           #e:Loauth/signpost/exception/OAuthCommunicationException;
    :catch_4
    move-exception v1

    .line 337
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 338
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_5
    move-exception v1

    .line 339
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 345
    iget-object v1, p0, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATShareActivity;

    invoke-virtual {v1}, Lcom/addthis/ui/activities/ATShareActivity;->stopProgressDialog()V

    .line 346
    const-string v0, "Share completed"

    .line 347
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 348
    const-string v0, "Couldnot complete the share, please try again later"

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    invoke-virtual {v1, v0}, Lcom/addthis/core/sharer/ATTwitter;->didCompleteShare(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 293
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 294
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    iget-object v0, v0, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    .line 295
    iget-object v1, p0, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->this$0:Lcom/addthis/core/sharer/ATTwitter;

    iget-object v1, v1, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "uploading_please_wait"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 294
    invoke-virtual {v0, v1}, Lcom/addthis/ui/activities/ATShareActivity;->showProgressDialog(I)V

    .line 296
    return-void
.end method
