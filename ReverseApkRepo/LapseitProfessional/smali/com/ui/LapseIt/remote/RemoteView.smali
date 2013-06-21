.class public Lcom/ui/LapseIt/remote/RemoteView;
.super Landroid/app/Activity;
.source "RemoteView.java"


# static fields
.field static feedback:Landroid/widget/TextView;

.field static isListening:Z

.field static listener:Lcom/ui/LapseIt/remote/HTTPConnectionListener;

.field static remoteView:Landroid/app/Activity;

.field public static serverPort:I

.field private static serverSocket:Ljava/net/ServerSocket;

.field private static service:Lorg/apache/http/protocol/HttpService;


# instance fields
.field directory:Ljava/lang/String;

.field private extras:Landroid/os/Bundle;

.field mId:J

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x13ba

    sput v0, Lcom/ui/LapseIt/remote/RemoteView;->serverPort:I

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private buildNetworkErrorDialog()V
    .locals 4

    .prologue
    .line 138
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Connection error"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 140
    const-string v2, "You need to be connected in a network to use this feature"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 141
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 142
    const-string v2, "Ok"

    new-instance v3, Lcom/ui/LapseIt/remote/RemoteView$1;

    invoke-direct {v3, p0}, Lcom/ui/LapseIt/remote/RemoteView$1;-><init>(Lcom/ui/LapseIt/remote/RemoteView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static connect()V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/ui/LapseIt/remote/RemoteView;->serverSocket:Ljava/net/ServerSocket;

    sget-object v1, Lcom/ui/LapseIt/remote/RemoteView;->service:Lorg/apache/http/protocol/HttpService;

    invoke-static {v0, v1}, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->startListening(Ljava/net/ServerSocket;Lorg/apache/http/protocol/HttpService;)Lcom/ui/LapseIt/remote/HTTPConnectionListener;

    move-result-object v0

    sput-object v0, Lcom/ui/LapseIt/remote/RemoteView;->listener:Lcom/ui/LapseIt/remote/HTTPConnectionListener;

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ui/LapseIt/remote/RemoteView;->isListening:Z

    .line 98
    return-void
.end method

.method static disconnect()V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/ui/LapseIt/remote/RemoteView;->listener:Lcom/ui/LapseIt/remote/HTTPConnectionListener;

    invoke-virtual {v0}, Lcom/ui/LapseIt/remote/HTTPConnectionListener;->interrupt()V

    .line 102
    sget-object v0, Lcom/ui/LapseIt/remote/RemoteView;->feedback:Landroid/widget/TextView;

    const-string v1, "Disconnected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ui/LapseIt/remote/RemoteView;->isListening:Z

    .line 104
    return-void
.end method

.method static getRemoteView()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/ui/LapseIt/remote/RemoteView;->remoteView:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sput-object p0, Lcom/ui/LapseIt/remote/RemoteView;->remoteView:Landroid/app/Activity;

    .line 59
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/remote/RemoteView;->setContentView(I)V

    .line 61
    const v1, 0x7f0b0060

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/remote/RemoteView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/ui/LapseIt/remote/RemoteView;->feedback:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0}, Lcom/ui/LapseIt/remote/RemoteView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/LapseIt/remote/RemoteView;->extras:Landroid/os/Bundle;

    .line 65
    iget-object v1, p0, Lcom/ui/LapseIt/remote/RemoteView;->extras:Landroid/os/Bundle;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ui/LapseIt/remote/RemoteView;->mId:J

    .line 66
    iget-object v1, p0, Lcom/ui/LapseIt/remote/RemoteView;->extras:Landroid/os/Bundle;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/LapseIt/remote/RemoteView;->title:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/ui/LapseIt/remote/RemoteView;->extras:Landroid/os/Bundle;

    const-string v2, "directory"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/LapseIt/remote/RemoteView;->directory:Ljava/lang/String;

    .line 69
    invoke-static {}, Lui/utils/NetworkUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    :try_start_0
    sget v1, Lcom/ui/LapseIt/remote/RemoteView;->serverPort:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ui/LapseIt/remote/RemoteView;->setupHttpService(II)Lorg/apache/http/protocol/HttpService;

    move-result-object v1

    sput-object v1, Lcom/ui/LapseIt/remote/RemoteView;->service:Lorg/apache/http/protocol/HttpService;

    .line 72
    invoke-static {}, Lcom/ui/LapseIt/remote/RemoteView;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 76
    .local v0, e:Lorg/apache/http/HttpException;
    invoke-virtual {v0}, Lorg/apache/http/HttpException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0           #e:Lorg/apache/http/HttpException;
    :cond_0
    invoke-direct {p0}, Lcom/ui/LapseIt/remote/RemoteView;->buildNetworkErrorDialog()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 93
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    return-void
.end method

.method public setupHttpService(II)Lorg/apache/http/protocol/HttpService;
    .locals 10
    .parameter "serverPort"
    .parameter "maxConnections"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 107
    new-instance v6, Ljava/net/ServerSocket;

    invoke-direct {v6, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    sput-object v6, Lcom/ui/LapseIt/remote/RemoteView;->serverSocket:Ljava/net/ServerSocket;

    .line 108
    sget-object v6, Lcom/ui/LapseIt/remote/RemoteView;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v6, v9}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 110
    new-instance v3, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 111
    .local v3, processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    new-instance v6, Lorg/apache/http/protocol/ResponseDate;

    invoke-direct {v6}, Lorg/apache/http/protocol/ResponseDate;-><init>()V

    invoke-virtual {v3, v6}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 112
    new-instance v6, Lorg/apache/http/protocol/ResponseServer;

    invoke-direct {v6}, Lorg/apache/http/protocol/ResponseServer;-><init>()V

    invoke-virtual {v3, v6}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 113
    new-instance v6, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v6}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v3, v6}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 114
    new-instance v6, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v6}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v3, v6}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 116
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 117
    const-string v7, "http.socket.timeout"

    const/16 v8, 0x1388

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 118
    const-string v7, "http.socket.buffer-size"

    const/16 v8, 0x2000

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 119
    const-string v7, "http.connection.stalecheck"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 120
    const-string v7, "http.tcp.nodelay"

    invoke-interface {v6, v7, v9}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 121
    const-string v7, "http.origin-server"

    const-string v8, "Lapse It Remote"

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 123
    .local v2, params:Lorg/apache/http/params/HttpParams;
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    .line 124
    .local v0, connStrategy:Lorg/apache/http/impl/DefaultConnectionReuseStrategy;
    new-instance v4, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v4}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    .line 126
    .local v4, responseFactory:Lorg/apache/http/impl/DefaultHttpResponseFactory;
    new-instance v1, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v1}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    .line 128
    .local v1, handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    const-string v6, "*"

    invoke-static {p0}, Lcom/ui/LapseIt/remote/DirectoryRequestHandler;->getInstance(Landroid/content/Context;)Lcom/ui/LapseIt/remote/DirectoryRequestHandler;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 130
    new-instance v5, Lorg/apache/http/protocol/HttpService;

    invoke-direct {v5, v3, v0, v4}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    .line 131
    .local v5, service:Lorg/apache/http/protocol/HttpService;
    invoke-virtual {v5, v2}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 132
    invoke-virtual {v5, v1}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    .line 134
    return-object v5
.end method
