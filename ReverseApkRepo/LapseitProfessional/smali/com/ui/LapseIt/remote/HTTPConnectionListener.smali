.class Lcom/ui/LapseIt/remote/HTTPConnectionListener;
.super Ljava/lang/Thread;
.source "HTTPConnectionListener.java"


# static fields
.field private static httpService:Lorg/apache/http/protocol/HttpService;

.field private static listener:Lcom/ui/LapseIt/remote/HTTPConnectionListener;

.field private static serverSocket:Ljava/net/ServerSocket;


# instance fields
.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private final serverConnection:Lorg/apache/http/impl/DefaultHttpServerConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 21
    new-instance v0, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    iput-object v0, p0, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->serverConnection:Lorg/apache/http/impl/DefaultHttpServerConnection;

    .line 26
    return-void
.end method

.method public static startListening(Ljava/net/ServerSocket;Lorg/apache/http/protocol/HttpService;)Lcom/ui/LapseIt/remote/HTTPConnectionListener;
    .locals 3
    .parameter "server"
    .parameter "service"

    .prologue
    .line 29
    sput-object p1, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->httpService:Lorg/apache/http/protocol/HttpService;

    .line 30
    sput-object p0, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->serverSocket:Ljava/net/ServerSocket;

    .line 32
    sget-object v0, Lcom/ui/LapseIt/remote/RemoteView;->feedback:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Listening at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lui/utils/NetworkUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    new-instance v0, Lcom/ui/LapseIt/remote/HTTPConnectionListener;

    invoke-direct {v0}, Lcom/ui/LapseIt/remote/HTTPConnectionListener;-><init>()V

    sput-object v0, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->listener:Lcom/ui/LapseIt/remote/HTTPConnectionListener;

    .line 35
    sget-object v0, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->listener:Lcom/ui/LapseIt/remote/HTTPConnectionListener;

    invoke-virtual {v0}, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->start()V

    .line 37
    sget-object v0, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->listener:Lcom/ui/LapseIt/remote/HTTPConnectionListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 42
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 43
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/ui/LapseIt/remote/RemoteView;->getRemoteView()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 78
    :cond_0
    return-void

    .line 45
    :cond_1
    :try_start_0
    sget-object v2, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 47
    .local v0, clientSocket:Ljava/net/Socket;
    invoke-static {}, Lcom/ui/LapseIt/remote/RemoteView;->getRemoteView()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/ui/LapseIt/remote/HTTPConnectionListener$1;

    invoke-direct {v3, p0, v0}, Lcom/ui/LapseIt/remote/HTTPConnectionListener$1;-><init>(Lcom/ui/LapseIt/remote/HTTPConnectionListener;Ljava/net/Socket;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 54
    iget-object v2, p0, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->serverConnection:Lorg/apache/http/impl/DefaultHttpServerConnection;

    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 56
    sget-object v2, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->httpService:Lorg/apache/http/protocol/HttpService;

    iget-object v3, p0, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->serverConnection:Lorg/apache/http/impl/DefaultHttpServerConnection;

    iget-object v4, p0, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V

    .line 58
    const-string v2, "trace"

    const-string v3, "Shutdown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v2, p0, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->serverConnection:Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-virtual {v2}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 60
    .end local v0           #clientSocket:Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Lcom/ui/LapseIt/remote/RemoteView;->getRemoteView()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/ui/LapseIt/remote/HTTPConnectionListener$2;

    invoke-direct {v3, p0}, Lcom/ui/LapseIt/remote/HTTPConnectionListener$2;-><init>(Lcom/ui/LapseIt/remote/HTTPConnectionListener;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 69
    .local v1, e:Lorg/apache/http/HttpException;
    invoke-static {}, Lcom/ui/LapseIt/remote/RemoteView;->getRemoteView()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/ui/LapseIt/remote/HTTPConnectionListener$3;

    invoke-direct {v3, p0}, Lcom/ui/LapseIt/remote/HTTPConnectionListener$3;-><init>(Lcom/ui/LapseIt/remote/HTTPConnectionListener;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {v1}, Lorg/apache/http/HttpException;->printStackTrace()V

    goto :goto_0
.end method
