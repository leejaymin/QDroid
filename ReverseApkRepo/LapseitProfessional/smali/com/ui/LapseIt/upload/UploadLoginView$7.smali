.class Lcom/ui/LapseIt/upload/UploadLoginView$7;
.super Ljava/lang/Object;
.source "UploadLoginView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/upload/UploadLoginView;->loginHandler(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadLoginView;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iput-object p2, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->val$dialog:Landroid/app/ProgressDialog;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/upload/UploadLoginView$7;)Lcom/ui/LapseIt/upload/UploadLoginView;
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 362
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 363
    .local v2, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const-string v10, "http.protocol.version"

    sget-object v11, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v9, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 365
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v9, "http://www.lapseit.com/upload/login.php"

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 367
    .local v3, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .local v5, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "username"

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->val$username:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "password"

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->val$password:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v9, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 373
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 375
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 377
    .local v6, resEntity:Lorg/apache/http/HttpEntity;
    const/4 v8, 0x0

    .line 378
    .local v8, resultBody:I
    if-eqz v6, :cond_0

    .line 380
    :try_start_1
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v8

    .line 385
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 386
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 389
    :cond_1
    move v1, v8

    .line 390
    .local v1, finalResult:I
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Login result is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-gtz v1, :cond_2

    .line 393
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    new-instance v10, Lcom/ui/LapseIt/upload/UploadLoginView$7$2;

    invoke-direct {v10, p0}, Lcom/ui/LapseIt/upload/UploadLoginView$7$2;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView$7;)V

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 436
    :goto_1
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    new-instance v10, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v10, p0, v11}, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView$7;Landroid/app/ProgressDialog;)V

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 445
    .end local v1           #finalResult:I
    .end local v2           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #resultBody:I
    :goto_2
    return-void

    .line 381
    .restart local v2       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #resultBody:I
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 426
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #resultBody:I
    :catch_1
    move-exception v0

    .line 427
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->errorHandler:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$6(Lcom/ui/LapseIt/upload/UploadLoginView;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 428
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 436
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    new-instance v10, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v10, p0, v11}, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView$7;Landroid/app/ProgressDialog;)V

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 414
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #finalResult:I
    .restart local v2       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #resultBody:I
    :cond_2
    :try_start_5
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->saveLoginCheck:Landroid/widget/CheckBox;
    invoke-static {v9}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$7(Lcom/ui/LapseIt/upload/UploadLoginView;)Landroid/widget/CheckBox;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 415
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    sget-object v10, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_USERNAME:Ljava/lang/String;

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->val$username:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    sget-object v10, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_PASSWORD:Ljava/lang/String;

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->val$password:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_3
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    const-class v10, Lcom/ui/LapseIt/upload/UploadView;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    .local v4, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    invoke-virtual {v9}, Lcom/ui/LapseIt/upload/UploadLoginView;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 421
    const-string v9, "userId"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    const-string v9, "userType"

    const-string v10, "normal"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    const v10, 0x98967f

    invoke-virtual {v9, v4, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 429
    .end local v1           #finalResult:I
    .end local v2           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #resultBody:I
    :catch_2
    move-exception v0

    .line 430
    .local v0, e:Lorg/apache/http/ParseException;
    :try_start_6
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->errorHandler:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$6(Lcom/ui/LapseIt/upload/UploadLoginView;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 431
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 436
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    new-instance v10, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v10, p0, v11}, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView$7;Landroid/app/ProgressDialog;)V

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 432
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_3
    move-exception v0

    .line 433
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    #getter for: Lcom/ui/LapseIt/upload/UploadLoginView;->errorHandler:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->access$6(Lcom/ui/LapseIt/upload/UploadLoginView;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 434
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 436
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    new-instance v10, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v10, p0, v11}, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView$7;Landroid/app/ProgressDialog;)V

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 435
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 436
    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    new-instance v11, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;

    iget-object v12, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v11, p0, v12}, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView$7;Landroid/app/ProgressDialog;)V

    invoke-virtual {v10, v11}, Lcom/ui/LapseIt/upload/UploadLoginView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 444
    throw v9
.end method
