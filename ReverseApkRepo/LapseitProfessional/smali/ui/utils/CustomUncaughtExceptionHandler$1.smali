.class Lui/utils/CustomUncaughtExceptionHandler$1;
.super Ljava/lang/Object;
.source "CustomUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/utils/CustomUncaughtExceptionHandler;->sendToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/utils/CustomUncaughtExceptionHandler;

.field private final synthetic val$device:Ljava/lang/String;

.field private final synthetic val$filename:Ljava/lang/String;

.field private final synthetic val$stacktrace:Ljava/lang/String;

.field private final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lui/utils/CustomUncaughtExceptionHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lui/utils/CustomUncaughtExceptionHandler$1;->this$0:Lui/utils/CustomUncaughtExceptionHandler;

    iput-object p2, p0, Lui/utils/CustomUncaughtExceptionHandler$1;->val$filename:Ljava/lang/String;

    iput-object p3, p0, Lui/utils/CustomUncaughtExceptionHandler$1;->val$stacktrace:Ljava/lang/String;

    iput-object p4, p0, Lui/utils/CustomUncaughtExceptionHandler$1;->val$version:Ljava/lang/String;

    iput-object p5, p0, Lui/utils/CustomUncaughtExceptionHandler$1;->val$device:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 79
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 80
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v4, p0, Lui/utils/CustomUncaughtExceptionHandler$1;->this$0:Lui/utils/CustomUncaughtExceptionHandler;

    #getter for: Lui/utils/CustomUncaughtExceptionHandler;->url:Ljava/lang/String;
    invoke-static {v4}, Lui/utils/CustomUncaughtExceptionHandler;->access$0(Lui/utils/CustomUncaughtExceptionHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v3, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "filename"

    iget-object v6, p0, Lui/utils/CustomUncaughtExceptionHandler$1;->val$filename:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "stacktrace"

    iget-object v6, p0, Lui/utils/CustomUncaughtExceptionHandler$1;->val$stacktrace:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    iget-object v6, p0, Lui/utils/CustomUncaughtExceptionHandler$1;->val$version:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device"

    iget-object v6, p0, Lui/utils/CustomUncaughtExceptionHandler$1;->val$device:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 88
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
