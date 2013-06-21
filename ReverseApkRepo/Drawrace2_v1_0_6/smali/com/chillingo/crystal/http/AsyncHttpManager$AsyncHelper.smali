.class Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/http/AsyncHttpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private _data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

.field _responseUrl:Ljava/lang/String;

.field private _statusCode:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

.field final synthetic this$0:Lcom/chillingo/crystal/http/AsyncHttpManager;


# direct methods
.method private constructor <init>(Lcom/chillingo/crystal/http/AsyncHttpManager;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->this$0:Lcom/chillingo/crystal/http/AsyncHttpManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chillingo/crystal/http/AsyncHttpManager;Lcom/chillingo/crystal/http/AsyncHttpManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;-><init>(Lcom/chillingo/crystal/http/AsyncHttpManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->doInBackground([Lcom/chillingo/crystal/serverdata/AbstractServerData;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/chillingo/crystal/serverdata/AbstractServerData;)[B
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    iput-object v3, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_responseUrl:Ljava/lang/String;

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v9, :cond_0

    const-string v1, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncHttp - Starting request for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v4}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x4e20

    invoke-static {v4, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v1, 0x9c40

    invoke-static {v4, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper$1;

    invoke-direct {v2, p0}, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper$1;-><init>(Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;)V

    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v1, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    move-object v1, v2

    check-cast v1, Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v6, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v1, v7, v6, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v1, v4, v5}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v1, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    new-instance v1, Lcom/chillingo/crystal/http/AsyncHttpManager$EncodingRedirectHandler;

    invoke-direct {v1, v3}, Lcom/chillingo/crystal/http/AsyncHttpManager$EncodingRedirectHandler;-><init>(Lcom/chillingo/crystal/http/AsyncHttpManager$1;)V

    invoke-virtual {v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v2}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v2}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->shouldPost()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v6, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v6}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->getPostData()[B

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_0
    const-string v1, "content-type"

    iget-object v4, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v4}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->currentPostType()Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/PrivateSession;->addHeadersToUrlRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V

    new-instance v4, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    const-string v1, "http.cookie-store"

    iget-object v6, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->this$0:Lcom/chillingo/crystal/http/AsyncHttpManager;

    iget-object v6, v6, Lcom/chillingo/crystal/http/AsyncHttpManager;->_cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v4, v1, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-virtual {v5, v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v2

    if-ne v2, v9, :cond_1

    const-string v2, "Crystal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AsyncHttp - Request finished for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v7}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with HTTP status "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->fromHttpStatus(I)Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_statusCode:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    const-string v1, "http.request"

    invoke-interface {v4, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v2, "http.target_host"

    invoke-interface {v4, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpHost;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v1

    sget-object v4, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->NullPost:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v1, v4, :cond_c

    iget-object v1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v9, :cond_2

    const-string v1, "Crystal"

    const-string v2, "AsyncHttp - Redirected on a null post"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNullPostRedirect:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    iput-object v1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_statusCode:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    move-object v1, v3

    :cond_3
    :goto_1
    move-object v3, v1

    :goto_2
    return-object v3

    :cond_4
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    :goto_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v3

    if-ne v3, v9, :cond_5

    const-string v3, "Crystal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncHttp - Request URL \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v5}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" failed to convert to URI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    sget-object v2, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorBadRequest:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    iput-object v2, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_statusCode:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v9, :cond_6

    const-string v2, "Crystal"

    const-string v4, "AsyncHttp - ClientProtocolException while attempting to execute the HTTP request"

    invoke-static {v2, v4, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    sget-object v1, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorUnreachable:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    iput-object v1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_statusCode:Lcom/chillingo/crystal/http/ServerDataHttpStatus;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    :goto_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v3

    if-ne v3, v9, :cond_7

    const-string v3, "Crystal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncHttp - Failed to create URL \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v5}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" for request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    sget-object v2, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorBadRequest:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    iput-object v2, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_statusCode:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    goto/16 :goto_1

    :catch_3
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v9, :cond_8

    const-string v2, "Crystal"

    const-string v4, "AsyncHttp - IOException while attempting to execute HTTP request"

    invoke-static {v2, v4, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    sget-object v1, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorUnreachable:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    iput-object v1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_statusCode:Lcom/chillingo/crystal/http/ServerDataHttpStatus;
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_2

    :catch_4
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    :goto_5
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v3

    if-ne v3, v9, :cond_9

    const-string v3, "Crystal"

    const-string v4, "AsyncHttp - Error while extracting data from response"

    invoke-static {v3, v4, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    sget-object v2, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorServerError:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    iput-object v2, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_statusCode:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    goto/16 :goto_1

    :catch_5
    move-exception v1

    :try_start_5
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v9, :cond_a

    const-string v2, "Crystal"

    const-string v4, "AsyncHttp - Exception while attempting to execute HTTP request"

    invoke-static {v2, v4, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    sget-object v1, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorUnreachable:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    iput-object v1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_statusCode:Lcom/chillingo/crystal/http/ServerDataHttpStatus;
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    :goto_6
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v3

    if-ne v3, v9, :cond_b

    const-string v3, "Crystal"

    const-string v4, "AsyncHttp - Exception while extracting data from response"

    invoke-static {v3, v4, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    sget-object v2, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorServerError:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    iput-object v2, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_statusCode:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    goto/16 :goto_1

    :cond_c
    :try_start_6
    iget-object v1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_statusCode:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    sget-object v4, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNone:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    if-ne v1, v4, :cond_e

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v9, :cond_d

    const-string v1, "Crystal"

    const-string v4, "AsyncHttp - Request completed successfully."

    invoke-static {v1, v4}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v1

    :try_start_7
    iget-object v3, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v3}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v3

    sget-object v4, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->UIDescription:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v3}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v3, v2}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setRedirectUrl(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto/16 :goto_1

    :catch_7
    move-exception v2

    goto/16 :goto_3

    :catch_8
    move-exception v2

    goto :goto_6

    :catch_9
    move-exception v2

    goto :goto_5

    :catch_a
    move-exception v2

    goto/16 :goto_4

    :cond_e
    move-object v1, v3

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "Crystal"

    const-string v1, "AsyncHttp Back on ui thread"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setNetworkOpInProgress(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    iget-object v1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_statusCode:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    iget-object v2, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_responseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->fetchCompleted(Lcom/chillingo/crystal/http/ServerDataHttpStatus;[BLjava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "AsyncHttpManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON Data returned for original url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v2}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with redirect url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v2}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->redirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v0, "AsyncHttpManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data body is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->_data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v2, v3}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->JsonRepresentation(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->this$0:Lcom/chillingo/crystal/http/AsyncHttpManager;

    #calls: Lcom/chillingo/crystal/http/AsyncHttpManager;->helperFinished(Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;)V
    invoke-static {v0, p0}, Lcom/chillingo/crystal/http/AsyncHttpManager;->access$300(Lcom/chillingo/crystal/http/AsyncHttpManager;Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;)V

    return-void
.end method
