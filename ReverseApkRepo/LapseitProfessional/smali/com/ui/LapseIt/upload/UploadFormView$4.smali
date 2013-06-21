.class Lcom/ui/LapseIt/upload/UploadFormView$4;
.super Ljava/lang/Object;
.source "UploadFormView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/upload/UploadFormView;->subscribeUserHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadFormView;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;

.field private final synthetic val$email:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadFormView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    iput-object p2, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->val$email:Ljava/lang/String;

    iput-object p5, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->val$dialog:Landroid/app/ProgressDialog;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/upload/UploadFormView$4;)Lcom/ui/LapseIt/upload/UploadFormView;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 138
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 139
    .local v2, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.protocol.version"

    sget-object v10, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v8, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 141
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v8, "http://www.lapseit.com/upload/sendSubscription.php"

    invoke-direct {v3, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 143
    .local v3, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .local v4, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "username"

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->val$username:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "password"

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->val$password:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "email"

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->val$email:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "model"

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "mode"

    const-string v10, "normal"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v8, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 152
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 154
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 156
    .local v5, resEntity:Lorg/apache/http/HttpEntity;
    const/4 v7, 0x0

    .line 157
    .local v7, resultBody:I
    if-eqz v5, :cond_0

    .line 159
    :try_start_1
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v7

    .line 164
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 165
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 168
    :cond_1
    move v1, v7

    .line 169
    .local v1, finalResult:I
    const-string v8, "trace"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Sign result is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v8, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    new-instance v9, Lcom/ui/LapseIt/upload/UploadFormView$4$2;

    invoke-direct {v9, p0, v1}, Lcom/ui/LapseIt/upload/UploadFormView$4$2;-><init>(Lcom/ui/LapseIt/upload/UploadFormView$4;I)V

    invoke-virtual {v8, v9}, Lcom/ui/LapseIt/upload/UploadFormView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 234
    iget-object v8, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    new-instance v9, Lcom/ui/LapseIt/upload/UploadFormView$4$1;

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v9, p0, v10}, Lcom/ui/LapseIt/upload/UploadFormView$4$1;-><init>(Lcom/ui/LapseIt/upload/UploadFormView$4;Landroid/app/ProgressDialog;)V

    invoke-virtual {v8, v9}, Lcom/ui/LapseIt/upload/UploadFormView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    .end local v1           #finalResult:I
    .end local v2           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #resultBody:I
    :goto_1
    return-void

    .line 160
    .restart local v2       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v3       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v5       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #resultBody:I
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 224
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #resultBody:I
    :catch_1
    move-exception v0

    .line 225
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    iget-object v8, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->errorHandler:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/ui/LapseIt/upload/UploadFormView;->access$8(Lcom/ui/LapseIt/upload/UploadFormView;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ui/LapseIt/upload/UploadFormView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    iget-object v8, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    new-instance v9, Lcom/ui/LapseIt/upload/UploadFormView$4$1;

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v9, p0, v10}, Lcom/ui/LapseIt/upload/UploadFormView$4$1;-><init>(Lcom/ui/LapseIt/upload/UploadFormView$4;Landroid/app/ProgressDialog;)V

    invoke-virtual {v8, v9}, Lcom/ui/LapseIt/upload/UploadFormView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 227
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 228
    .local v0, e:Lorg/apache/http/ParseException;
    :try_start_5
    iget-object v8, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->errorHandler:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/ui/LapseIt/upload/UploadFormView;->access$8(Lcom/ui/LapseIt/upload/UploadFormView;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ui/LapseIt/upload/UploadFormView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 229
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 234
    iget-object v8, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    new-instance v9, Lcom/ui/LapseIt/upload/UploadFormView$4$1;

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v9, p0, v10}, Lcom/ui/LapseIt/upload/UploadFormView$4$1;-><init>(Lcom/ui/LapseIt/upload/UploadFormView$4;Landroid/app/ProgressDialog;)V

    invoke-virtual {v8, v9}, Lcom/ui/LapseIt/upload/UploadFormView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 230
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_3
    move-exception v0

    .line 231
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    iget-object v8, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    #getter for: Lcom/ui/LapseIt/upload/UploadFormView;->errorHandler:Ljava/lang/Runnable;
    invoke-static {v9}, Lcom/ui/LapseIt/upload/UploadFormView;->access$8(Lcom/ui/LapseIt/upload/UploadFormView;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ui/LapseIt/upload/UploadFormView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 234
    iget-object v8, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    new-instance v9, Lcom/ui/LapseIt/upload/UploadFormView$4$1;

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v9, p0, v10}, Lcom/ui/LapseIt/upload/UploadFormView$4$1;-><init>(Lcom/ui/LapseIt/upload/UploadFormView$4;Landroid/app/ProgressDialog;)V

    invoke-virtual {v8, v9}, Lcom/ui/LapseIt/upload/UploadFormView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 233
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 234
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->this$0:Lcom/ui/LapseIt/upload/UploadFormView;

    new-instance v10, Lcom/ui/LapseIt/upload/UploadFormView$4$1;

    iget-object v11, p0, Lcom/ui/LapseIt/upload/UploadFormView$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v10, p0, v11}, Lcom/ui/LapseIt/upload/UploadFormView$4$1;-><init>(Lcom/ui/LapseIt/upload/UploadFormView$4;Landroid/app/ProgressDialog;)V

    invoke-virtual {v9, v10}, Lcom/ui/LapseIt/upload/UploadFormView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    throw v8
.end method
