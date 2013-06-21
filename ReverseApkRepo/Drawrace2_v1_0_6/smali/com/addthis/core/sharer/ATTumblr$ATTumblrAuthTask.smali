.class public Lcom/addthis/core/sharer/ATTumblr$ATTumblrAuthTask;
.super Landroid/os/AsyncTask;
.source "ATTumblr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/core/sharer/ATTumblr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ATTumblrAuthTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
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
    .line 139
    iput-object p1, p0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrAuthTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 14
    .parameter "params"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 144
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 145
    .local v7, result:Ljava/lang/Boolean;
    aget-object v10, p1, v11

    .line 146
    .local v10, username:Ljava/lang/String;
    aget-object v4, p1, v12

    .line 147
    .local v4, password:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 148
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    const-string v11, "http://www.tumblr.com/api/authenticate"

    invoke-direct {v5, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 149
    .local v5, request:Lorg/apache/http/client/methods/HttpPost;
    const-string v11, "Tumblr class"

    const-string v12, "About to execute tumblr api call"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v3, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "email"

    invoke-direct {v11, v12, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "password"

    invoke-direct {v11, v12, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v11, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 159
    invoke-interface {v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 160
    .local v6, response:Lorg/apache/http/HttpResponse;
    const-string v11, "Tumblr class"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Recieved response"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 163
    .local v9, status:Lorg/apache/http/StatusLine;
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_0

    .line 164
    const-string v11, "Tumblr class"

    const-string v12, "Error statuscode"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 184
    .end local v3           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #status:Lorg/apache/http/StatusLine;
    :goto_0
    return-object v7

    .line 170
    .restart local v3       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #status:Lorg/apache/http/StatusLine;
    :cond_0
    iget-object v11, p0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrAuthTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    iget-object v11, v11, Lcom/addthis/core/sharer/ATTumblr;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/addthis/ui/activities/ATShareActivity;

    const-string v12, "attumblr_pref"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/addthis/ui/activities/ATShareActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 171
    .local v8, settings:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 172
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "attumblr_pref_username"

    invoke-interface {v2, v11, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v11, "attumblr_pref_password"

    invoke-interface {v2, v11, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 176
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #settings:Landroid/content/SharedPreferences;
    .end local v9           #status:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v1

    .line 178
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 181
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

    invoke-virtual {p0, p1}, Lcom/addthis/core/sharer/ATTumblr$ATTumblrAuthTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 188
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrAuthTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    #calls: Lcom/addthis/core/sharer/ATTumblr;->successfullyAuthenticated()V
    invoke-static {v0}, Lcom/addthis/core/sharer/ATTumblr;->access$0(Lcom/addthis/core/sharer/ATTumblr;)V

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTumblr$ATTumblrAuthTask;->this$0:Lcom/addthis/core/sharer/ATTumblr;

    #calls: Lcom/addthis/core/sharer/ATTumblr;->failedToAuthenticate()V
    invoke-static {v0}, Lcom/addthis/core/sharer/ATTumblr;->access$1(Lcom/addthis/core/sharer/ATTumblr;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/addthis/core/sharer/ATTumblr$ATTumblrAuthTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
