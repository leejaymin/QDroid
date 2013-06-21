.class Lcom/ui/LapseIt/upload/UploadLoginView$6;
.super Ljava/lang/Object;
.source "UploadLoginView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/upload/UploadLoginView;->insertFacebookLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

.field private final synthetic val$meEmail:Ljava/lang/String;

.field private final synthetic val$meGender:Ljava/lang/String;

.field private final synthetic val$meName:Ljava/lang/String;

.field private final synthetic val$meUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadLoginView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iput-object p2, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->val$meUsername:Ljava/lang/String;

    iput-object p3, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->val$meName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->val$meGender:Ljava/lang/String;

    iput-object p5, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->val$meEmail:Ljava/lang/String;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/upload/UploadLoginView$6;)Lcom/ui/LapseIt/upload/UploadLoginView;
    .locals 1
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 275
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 276
    .local v2, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const-string v10, "http.protocol.version"

    sget-object v11, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v9, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 278
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v9, "http://www.lapseit.com/upload/sendSubscription.php"

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 280
    .local v3, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v5, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "username"

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->val$meUsername:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "name"

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->val$meName:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "gender"

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->val$meGender:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "email"

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->val$meEmail:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "model"

    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "mode"

    const-string v11, "facebook"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v9, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 290
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 292
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 294
    .local v6, resEntity:Lorg/apache/http/HttpEntity;
    const/4 v8, 0x0

    .line 295
    .local v8, resultBody:I
    if-eqz v6, :cond_0

    .line 297
    :try_start_1
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v8

    .line 302
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 303
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 306
    :cond_1
    move v1, v8

    .line 307
    .local v1, finalResult:I
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Facebook result is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-lez v1, :cond_2

    .line 310
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    new-instance v10, Lcom/ui/LapseIt/upload/UploadLoginView$6$1;

    invoke-direct {v10, p0}, Lcom/ui/LapseIt/upload/UploadLoginView$6$1;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView$6;)V

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 316
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    const-class v10, Lcom/ui/LapseIt/upload/UploadView;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .local v4, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    invoke-virtual {v9}, Lcom/ui/LapseIt/upload/UploadLoginView;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 318
    const-string v9, "userId"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v9, "userType"

    const-string v10, "facebook"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    const v10, 0x98967f

    invoke-virtual {v9, v4, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 343
    .end local v1           #finalResult:I
    .end local v2           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #resultBody:I
    :goto_1
    return-void

    .line 298
    .restart local v2       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #resultBody:I
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 333
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #resultBody:I
    :catch_1
    move-exception v0

    .line 334
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->errorHandler:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$6(Lcom/ui/LapseIt/upload/UploadLoginView;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 335
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 322
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #finalResult:I
    .restart local v2       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #resultBody:I
    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    new-instance v10, Lcom/ui/LapseIt/upload/UploadLoginView$6$2;

    invoke-direct {v10, p0}, Lcom/ui/LapseIt/upload/UploadLoginView$6$2;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView$6;)V

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 336
    .end local v1           #finalResult:I
    .end local v2           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #resultBody:I
    :catch_2
    move-exception v0

    .line 337
    .local v0, e:Lorg/apache/http/ParseException;
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->errorHandler:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$6(Lcom/ui/LapseIt/upload/UploadLoginView;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 338
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_1

    .line 339
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_3
    move-exception v0

    .line 340
    .local v0, e:Ljava/io/IOException;
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadLoginView$6;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->errorHandler:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$6(Lcom/ui/LapseIt/upload/UploadLoginView;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 341
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
