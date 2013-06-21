.class public Lti/modules/titanium/network/TiHTTPClient;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;,
        Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;,
        Lti/modules/titanium/network/TiHTTPClient$ProgressEntity;,
        Lti/modules/titanium/network/TiHTTPClient$ProgressListener;,
        Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;,
        Lti/modules/titanium/network/TiHTTPClient$RedirectHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DEFAULT_MAX_BUFFER_SIZE:I = 0x80000

.field private static final IS_BINARY_THRESHOLD:I = 0x1e

.field private static final LCAT:Ljava/lang/String; = "TiHttpClient"

.field private static final ON_DATA_STREAM:Ljava/lang/String; = "ondatastream"

.field private static final ON_ERROR:Ljava/lang/String; = "onerror"

.field private static final ON_LOAD:Ljava/lang/String; = "onload"

.field private static final ON_READY_STATE_CHANGE:Ljava/lang/String; = "onreadystatechange"

.field private static final ON_SEND_STREAM:Ljava/lang/String; = "onsendstream"

.field private static final PROPERTY_MAX_BUFFER_SIZE:Ljava/lang/String; = "ti.android.httpclient.maxbuffersize"

.field private static final PROTOCOL_DEFAULT_PORT:I = -0x1

.field public static final READY_STATE_DONE:I = 0x4

.field public static final READY_STATE_HEADERS_RECEIVED:I = 0x2

.field public static final READY_STATE_LOADING:I = 0x3

.field public static final READY_STATE_OPENED:I = 0x1

.field public static final READY_STATE_UNSENT:I

.field private static client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private aborted:Z

.field private autoEncodeUrl:Z

.field private charset:Ljava/lang/String;

.field clientThread:Ljava/lang/Thread;

.field private connected:Z

.field private contentType:Ljava/lang/String;

.field private credentials:Lorg/apache/http/auth/Credentials;

.field private data:Ljava/lang/String;

.field private handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

.field protected headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Lorg/apache/http/HttpHost;

.field private maxBufferSize:J

.field private method:Ljava/lang/String;

.field private needMultipart:Z

.field private nvPairs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private parts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/entity/mime/content/ContentBody;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Lorg/appcelerator/kroll/KrollProxy;

.field private readyState:I

.field private request:Lorg/apache/http/HttpRequest;

.field private response:Lorg/apache/http/HttpResponse;

.field private responseData:Lorg/appcelerator/titanium/TiBlob;

.field private responseOut:Ljava/io/OutputStream;

.field private responseText:Ljava/lang/String;

.field private responseXml:Lti/modules/titanium/xml/DocumentProxy;

.field private status:I

.field private statusText:Ljava/lang/String;

.field private timeout:I

.field private uri:Landroid/net/Uri;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 9
    .parameter "proxy"

    .prologue
    const/4 v8, 0x0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v4, -0x1

    iput v4, p0, Lti/modules/titanium/network/TiHTTPClient;->timeout:I

    .line 142
    const/4 v4, 0x1

    iput-boolean v4, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    .line 663
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->headers:Ljava/util/HashMap;

    .line 421
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 423
    sget-object v4, Lti/modules/titanium/network/TiHTTPClient;->httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v4, :cond_0

    .line 424
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v4, Lti/modules/titanium/network/TiHTTPClient;->httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 426
    :cond_0
    iput v8, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    .line 427
    const-string v4, ""

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 428
    const/4 v4, 0x0

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    .line 429
    iput-boolean v8, p0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    .line 430
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    .line 431
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    .line 432
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v4

    const-string v5, "ti.android.httpclient.maxbuffersize"

    const/high16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J

    .line 435
    sget-object v4, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v4, :cond_1

    .line 436
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 437
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 439
    invoke-virtual {p0}, Lti/modules/titanium/network/TiHTTPClient;->validatesSecureCertificate()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 440
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    .line 444
    .local v3, sslFactory:Lorg/apache/http/conn/scheme/SocketFactory;
    :goto_0
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 446
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 447
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/16 v4, 0xc8

    invoke-static {v1, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 448
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v4, 0x14

    invoke-direct {v0, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 449
    .local v0, connPerRoute:Lorg/apache/http/conn/params/ConnPerRouteBean;
    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 451
    invoke-static {v1, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 452
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 454
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v5, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v4, v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v4, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 456
    .end local v0           #connPerRoute:Lorg/apache/http/conn/params/ConnPerRouteBean;
    .end local v1           #params:Lorg/apache/http/params/HttpParams;
    .end local v2           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v3           #sslFactory:Lorg/apache/http/conn/scheme/SocketFactory;
    :cond_1
    return-void

    .line 442
    .restart local v2       #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_2
    new-instance v3, Lti/modules/titanium/network/NonValidatingSSLSocketFactory;

    invoke-direct {v3}, Lti/modules/titanium/network/NonValidatingSSLSocketFactory;-><init>()V

    .restart local v3       #sslFactory:Lorg/apache/http/conn/scheme/SocketFactory;
    goto :goto_0
.end method

.method static synthetic access$002(Lti/modules/titanium/network/TiHTTPClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    return p1
.end method

.method static synthetic access$1002(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;

    return-object p1
.end method

.method static synthetic access$1100(Lti/modules/titanium/network/TiHTTPClient;)Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    return-object v0
.end method

.method static synthetic access$1102(Lti/modules/titanium/network/TiHTTPClient;Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;)Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    return-object p1
.end method

.method static synthetic access$1200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/auth/Credentials;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    return-object v0
.end method

.method static synthetic access$1202(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/auth/Credentials;)Lorg/apache/http/auth/Credentials;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    return-object p1
.end method

.method static synthetic access$1300(Lti/modules/titanium/network/TiHTTPClient;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method static synthetic access$1500(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method static synthetic access$1600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lti/modules/titanium/network/TiHTTPClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    return v0
.end method

.method static synthetic access$2000(Lti/modules/titanium/network/TiHTTPClient;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lti/modules/titanium/network/TiHTTPClient;->handleURLEncodedData(Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V

    return-void
.end method

.method static synthetic access$2100(Lti/modules/titanium/network/TiHTTPClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->timeout:I

    return v0
.end method

.method static synthetic access$2200(Lti/modules/titanium/network/TiHTTPClient;)Lorg/apache/http/HttpHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->host:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lti/modules/titanium/network/TiHTTPClient;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/TiBlob;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    return-object p1
.end method

.method static synthetic access$600(Lti/modules/titanium/network/TiHTTPClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->aborted:Z

    return v0
.end method

.method static synthetic access$700(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    return-object v0
.end method

.method static synthetic access$800(Lti/modules/titanium/network/TiHTTPClient;)Ljava/io/OutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$802(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseOut:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$900(Lti/modules/titanium/network/TiHTTPClient;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lti/modules/titanium/network/TiHTTPClient;->maxBufferSize:J

    return-wide v0
.end method

.method private static getCleanUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"

    .prologue
    const/16 v7, 0x40

    .line 697
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 699
    .local v0, base:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 700
    .local v1, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "&="

    invoke-static {v5, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 701
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/:@"

    invoke-static {v5, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, encodedAuthority:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 703
    .local v3, firstAt:I
    if-ltz v3, :cond_0

    .line 704
    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 705
    .local v4, lastAt:I
    if-le v4, v3, :cond_0

    .line 711
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/:"

    invoke-static {v6, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    .end local v4           #lastAt:I
    :cond_0
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 715
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-static {v5, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 716
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    return-object v5
.end method

.method private handleURLEncodedData(Lorg/apache/http/client/entity/UrlEncodedFormEntity;)V
    .locals 7
    .parameter "form"

    .prologue
    .line 1026
    const/4 v1, 0x0

    .line 1027
    .local v1, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1030
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .local v2, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    move-object v1, v2

    .line 1041
    .end local v2           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .restart local v1       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_0
    if-eqz v1, :cond_0

    .line 1042
    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    const-string v6, "Content-Type"

    invoke-interface {v5, v6}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 1043
    .local v4, header:Lorg/apache/http/Header;
    if-nez v4, :cond_2

    .line 1044
    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v5}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 1048
    :goto_1
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 1049
    .local v0, e:Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1051
    .end local v0           #e:Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v4           #header:Lorg/apache/http/Header;
    :cond_0
    return-void

    .line 1032
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1035
    .local v3, ex:Ljava/lang/Exception;
    const-string v5, "TiHttpClient"

    const-string v6, "Exception, implement recovery: "

    invoke-static {v5, v6, v3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1038
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_1
    move-object v1, p1

    goto :goto_0

    .line 1046
    .restart local v4       #header:Lorg/apache/http/Header;
    :cond_2
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public abort()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "TiHttpClient"

    .line 614
    iget v1, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    if-lez v1, :cond_3

    iget v1, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    .line 615
    sget-object v1, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_3

    .line 616
    sget-boolean v1, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    if-eqz v1, :cond_0

    .line 617
    const-string v1, "TiHttpClient"

    const-string v1, "Calling shutdown on clientConnectionManager"

    invoke-static {v4, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/network/TiHTTPClient;->aborted:Z

    .line 620
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    if-eqz v1, :cond_2

    .line 621
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    iput-object v3, v1, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->client:Ljava/lang/ref/WeakReference;

    .line 622
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    iget-object v1, v1, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 624
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    iget-object v1, v1, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    iget-object v1, v1, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 627
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    iget-object v1, v1, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    iput-object v3, v1, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    .line 635
    :cond_2
    :goto_0
    sget-object v1, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_3

    .line 636
    sget-object v1, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 637
    sput-object v3, Lti/modules/titanium/network/TiHTTPClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 641
    :cond_3
    return-void

    .line 628
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 629
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v1, "TiHttpClient"

    const-string v2, "Force closing HTTP content input stream"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    iput-object v3, v1, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->handler:Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;

    iput-object v3, v2, Lti/modules/titanium/network/TiHTTPClient$LocalResponseHandler;->is:Ljava/io/InputStream;

    throw v1
.end method

.method public addPostData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 797
    if-nez p2, :cond_0

    .line 798
    const-string p2, ""

    .line 801
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    if-eqz v1, :cond_1

    .line 807
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    new-instance v2, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, p2, v3, v4}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 811
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 812
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->nvPairs:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addStringData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 793
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->data:Ljava/lang/String;

    .line 794
    return-void
.end method

.method public addTitaniumFileAsPostData(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 12
    .parameter "name"
    .parameter "value"

    .prologue
    const-string v11, "TiHttpClient"

    .line 818
    :try_start_0
    instance-of v8, p2, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v8, :cond_0

    .line 819
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/titanium/io/TiBaseFile;

    move-object v1, v0

    .line 820
    .local v1, baseFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    new-instance v3, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 821
    .local v3, body:Lorg/apache/http/entity/mime/content/FileBody;
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    .line 844
    .end local v1           #baseFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v3           #body:Lorg/apache/http/entity/mime/content/FileBody;
    :goto_0
    return v8

    .line 823
    :cond_0
    instance-of v8, p2, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v8, :cond_1

    .line 824
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    move-object v2, v0

    .line 825
    .local v2, blob:Lorg/appcelerator/titanium/TiBlob;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 826
    .local v6, mimeType:Ljava/lang/String;
    const-string v8, "tixhr"

    const-string v9, ".txt"

    invoke-static {v6, v9}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getFileExtensionFromMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 827
    .local v7, tmpFile:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 828
    .local v5, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 829
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 831
    new-instance v3, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v3, v7, v6}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 832
    .restart local v3       #body:Lorg/apache/http/entity/mime/content/FileBody;
    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->parts:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getLength()I

    move-result v8

    goto :goto_0

    .line 835
    .end local v2           #blob:Lorg/appcelerator/titanium/TiBlob;
    .end local v3           #body:Lorg/apache/http/entity/mime/content/FileBody;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #tmpFile:Ljava/io/File;
    :cond_1
    if-eqz p2, :cond_2

    .line 836
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 838
    :cond_2
    const-string v8, "TiHttpClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 841
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 842
    .local v4, e:Ljava/io/IOException;
    const-string v8, "TiHttpClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error adding post data ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public fireCallback(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 477
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 478
    .local v0, eventProperties:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "source"

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lti/modules/titanium/network/TiHTTPClient;->fireCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    return-void
.end method

.method public fireCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "args"

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lti/modules/titanium/network/TiHTTPClient;->getCallback(Ljava/lang/String;)Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-result-object v0

    .line 486
    .local v0, cb:Lorg/appcelerator/titanium/kroll/KrollCallback;
    if-eqz v0, :cond_0

    .line 488
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/kroll/KrollCallback;->setThisProxy(Lorg/appcelerator/kroll/KrollProxy;)V

    .line 489
    invoke-virtual {v0, p2}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync([Ljava/lang/Object;)V

    .line 491
    :cond_0
    return-void
.end method

.method public getAllResponseHeaders()Ljava/lang/String;
    .locals 8

    .prologue
    .line 644
    const-string v4, ""

    .line 645
    .local v4, result:Ljava/lang/String;
    iget v6, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;

    if-eqz v6, :cond_1

    .line 647
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x400

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 649
    .local v5, sb:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 650
    .local v1, headers:[Lorg/apache/http/Header;
    array-length v3, v1

    .line 651
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 652
    aget-object v0, v1, v2

    .line 653
    .local v0, h:Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 655
    .end local v0           #h:Lorg/apache/http/Header;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 660
    .end local v1           #headers:[Lorg/apache/http/Header;
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-object v4
.end method

.method protected getAutoEncodeUrl()Z
    .locals 1

    .prologue
    .line 1076
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    return v0
.end method

.method public getCallback(Ljava/lang/String;)Lorg/appcelerator/titanium/kroll/KrollCallback;
    .locals 2
    .parameter "name"

    .prologue
    .line 467
    iget-object v1, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v1, p1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 468
    .local v0, value:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v1, :cond_0

    .line 470
    check-cast v0, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .end local v0           #value:Ljava/lang/Object;
    move-object v1, v0

    .line 472
    :goto_0
    return-object v1

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getReadyState()I
    .locals 1

    .prologue
    .line 459
    monitor-enter p0

    .line 460
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 461
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    return v0

    .line 461
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getResponseData()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "header"

    .prologue
    .line 677
    const-string v1, ""

    .line 679
    .local v1, result:Ljava/lang/String;
    iget v2, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 680
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v2, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 681
    .local v0, h:Lorg/apache/http/Header;
    if-eqz v0, :cond_1

    .line 682
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 692
    :cond_0
    :goto_0
    return-object v1

    .line 684
    :cond_1
    sget-boolean v2, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    if-eqz v2, :cond_0

    .line 685
    const-string v2, "TiHttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No value for respose header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    .end local v0           #h:Lorg/apache/http/Header;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getResponseHeader can only be called when readyState > 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResponseText()Ljava/lang/String;
    .locals 9

    .prologue
    .line 526
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 528
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v2

    .line 529
    .local v2, data:[B
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 531
    const/4 v1, 0x0

    .line 532
    .local v1, binaryCount:I
    array-length v5, v2

    .line 534
    .local v5, len:I
    if-lez v5, :cond_3

    .line 535
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 536
    aget-byte v0, v2, v4

    .line 537
    .local v0, b:B
    const/16 v6, 0x20

    if-lt v0, v6, :cond_0

    const/16 v6, 0x7f

    if-le v0, v6, :cond_1

    .line 538
    :cond_0
    const/16 v6, 0xa

    if-eq v0, v6, :cond_1

    const/16 v6, 0xd

    if-eq v0, v6, :cond_1

    const/16 v6, 0x9

    if-eq v0, v6, :cond_1

    const/16 v6, 0x8

    if-eq v0, v6, :cond_1

    .line 539
    add-int/lit8 v1, v1, 0x1

    .line 535
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 544
    .end local v0           #b:B
    :cond_2
    mul-int/lit8 v6, v1, 0x64

    div-int/2addr v6, v5

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_3

    .line 545
    const/4 v6, 0x0

    .line 559
    .end local v1           #binaryCount:I
    .end local v2           #data:[B
    .end local v4           #i:I
    .end local v5           #len:I
    :goto_1
    return-object v6

    .line 549
    .restart local v1       #binaryCount:I
    .restart local v2       #data:[B
    .restart local v5       #len:I
    :cond_3
    const-string v6, "ISO-8859-1"

    iput-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    .line 553
    .end local v1           #binaryCount:I
    .end local v5           #len:I
    :cond_4
    :try_start_0
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v2           #data:[B
    :cond_5
    :goto_2
    iget-object v6, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    goto :goto_1

    .line 554
    .restart local v2       #data:[B
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 555
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "TiHttpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to convert to String using charset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getResponseXML()Lti/modules/titanium/xml/DocumentProxy;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 570
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->contentType:Ljava/lang/String;

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->isBinaryMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 590
    :goto_0
    return-object v2

    .line 574
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;

    if-nez v2, :cond_4

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseData:Lorg/appcelerator/titanium/TiBlob;

    if-nez v2, :cond_1

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 576
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseText()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move-object v2, v3

    .line 578
    goto :goto_0

    .line 580
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 581
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient;->charset:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lti/modules/titanium/xml/XMLModule;->parse(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v1           #text:Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;

    goto :goto_0

    .line 583
    .restart local v1       #text:Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-static {v2, v1}, Lti/modules/titanium/xml/XMLModule;->parse(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->responseXml:Lti/modules/titanium/xml/DocumentProxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 585
    .end local v1           #text:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 586
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TiHttpClient"

    const-string v3, "Error parsing XML"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->status:I

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->statusText:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1062
    iget-boolean v0, p0, Lti/modules/titanium/network/TiHTTPClient;->connected:Z

    return v0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "method"
    .parameter "url"

    .prologue
    const-string v7, "TiHttpClient"

    .line 721
    sget-boolean v4, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    if-eqz v4, :cond_0

    .line 722
    const-string v4, "TiHttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open request method="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    iget-boolean v4, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    if-eqz v4, :cond_3

    .line 726
    invoke-static {p2}, Lti/modules/titanium/network/TiHTTPClient;->getCleanUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    .line 737
    :goto_0
    iget-boolean v4, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    if-eqz v4, :cond_4

    const-string v4, ".*\\?.*\\%\\d\\d.*$"

    invoke-virtual {p2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 738
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    .line 743
    :goto_1
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    .line 744
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, hostString:Ljava/lang/String;
    const/4 v3, -0x1

    .line 759
    .local v3, port:I
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 762
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 763
    .local v2, javaUrl:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 764
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 773
    .end local v2           #javaUrl:Ljava/net/URL;
    :goto_2
    sget-boolean v4, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    if-eqz v4, :cond_1

    .line 774
    const-string v4, "TiHttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instantiating host with hostString=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', port=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', scheme=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_1
    new-instance v4, Lorg/apache/http/HttpHost;

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v3, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->host:Lorg/apache/http/HttpHost;

    .line 778
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 779
    new-instance v4, Lorg/apache/http/auth/UsernamePasswordCredentials;

    iget-object v5, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->credentials:Lorg/apache/http/auth/Credentials;

    .line 781
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V

    .line 782
    const-string v5, "User-Agent"

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v6, "userAgent"

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lti/modules/titanium/network/TiHTTPClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v4, "twitter.com"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 786
    const-string v4, "X-Requested-With"

    const-string v5, "XMLHttpRequest"

    invoke-virtual {p0, v4, v5}, Lti/modules/titanium/network/TiHTTPClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :goto_3
    return-void

    .line 728
    .end local v1           #hostString:Ljava/lang/String;
    .end local v3           #port:I
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 740
    :cond_4
    iput-object p2, p0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    goto/16 :goto_1

    .line 765
    .restart local v1       #hostString:Ljava/lang/String;
    .restart local v3       #port:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 766
    .local v0, e:Ljava/net/MalformedURLException;
    const-string v4, "TiHttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error attempting to derive Java url from uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 770
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_5
    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPort()I

    move-result v3

    goto/16 :goto_2

    .line 788
    :cond_6
    const-string v4, "TiHttpClient"

    const-string v4, "Twitter: not sending X-Requested-With header"

    invoke-static {v7, v4}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public send(Ljava/lang/Object;)V
    .locals 19
    .parameter "userData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    .prologue
    .line 851
    const-wide/16 v12, 0x0

    .line 852
    .local v12, totalLength:D
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    .line 854
    if-eqz p1, :cond_b

    .line 856
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/appcelerator/kroll/KrollDict;

    move v15, v0

    if-eqz v15, :cond_d

    .line 857
    move-object/from16 v0, p1

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    move-object v4, v0

    .line 858
    .local v4, data:Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    move-object v15, v0

    const-string v16, "POST"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    move-object v15, v0

    const-string v16, "PUT"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    :cond_0
    const/4 v15, 0x1

    move v8, v15

    .line 859
    .local v8, isPostOrPut:Z
    :goto_0
    if-nez v8, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    move-object v15, v0

    const-string v16, "GET"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    move v7, v15

    .line 862
    .local v7, isGet:Z
    :goto_1
    invoke-virtual {v4}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 863
    .local v9, key:Ljava/lang/String;
    invoke-virtual {v4, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 864
    .local v14, value:Ljava/lang/Object;
    instance-of v15, v14, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v15, :cond_2

    instance-of v15, v14, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v15, :cond_1

    .line 865
    :cond_2
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lti/modules/titanium/network/TiHTTPClient;->needMultipart:Z

    .line 870
    .end local v9           #key:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/Object;
    :cond_3
    const/4 v10, 0x0

    .line 871
    .local v10, queryStringAltered:Z
    invoke-virtual {v4}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 872
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual {v4, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 874
    .restart local v14       #value:Ljava/lang/Object;
    if-eqz v8, :cond_9

    .line 875
    instance-of v15, v14, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v15, :cond_5

    instance-of v15, v14, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v15, :cond_8

    .line 876
    :cond_5
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->addTitaniumFileAsPostData(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v15

    int-to-double v15, v15

    add-double/2addr v12, v15

    goto :goto_2

    .line 858
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #isGet:Z
    .end local v8           #isPostOrPut:Z
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #queryStringAltered:Z
    .end local v14           #value:Ljava/lang/Object;
    :cond_6
    const/4 v15, 0x0

    move v8, v15

    goto :goto_0

    .line 859
    .restart local v8       #isPostOrPut:Z
    :cond_7
    const/4 v15, 0x0

    move v7, v15

    goto :goto_1

    .line 878
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #isGet:Z
    .restart local v9       #key:Ljava/lang/String;
    .restart local v10       #queryStringAltered:Z
    .restart local v14       #value:Ljava/lang/Object;
    :cond_8
    invoke-static {v14}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 879
    .local v11, str:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->addPostData(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    int-to-double v15, v15

    add-double/2addr v12, v15

    .line 881
    goto :goto_2

    .line 882
    .end local v11           #str:Ljava/lang/String;
    :cond_9
    if-eqz v7, :cond_4

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v15

    invoke-static {v14}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    .line 885
    const/4 v10, 0x1

    goto :goto_2

    .line 888
    .end local v9           #key:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/Object;
    :cond_a
    if-eqz v10, :cond_b

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->uri:Landroid/net/Uri;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    .line 896
    .end local v4           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #isGet:Z
    .end local v8           #isPostOrPut:Z
    .end local v10           #queryStringAltered:Z
    :cond_b
    :goto_3
    sget-boolean v15, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    if-eqz v15, :cond_c

    .line 897
    const-string v15, "TiHttpClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Instantiating http request with method=\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' and this url:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v15, "TiHttpClient"

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_c
    new-instance v15, Lorg/apache/http/impl/DefaultHttpRequestFactory;

    invoke-direct {v15}, Lorg/apache/http/impl/DefaultHttpRequestFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->method:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->headers:Ljava/util/HashMap;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local p1
    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 902
    .local v5, header:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->request:Lorg/apache/http/HttpRequest;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->headers:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v15

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 892
    .end local v5           #header:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local p1
    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lti/modules/titanium/network/TiHTTPClient;->addStringData(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 905
    .end local p1
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_e
    new-instance v15, Ljava/lang/Thread;

    new-instance v16, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide v2, v12

    invoke-direct {v0, v1, v2, v3}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;-><init>(Lti/modules/titanium/network/TiHTTPClient;D)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "TiHttpClient-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lti/modules/titanium/network/TiHTTPClient;->httpClientThreadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Thread;->setPriority(I)V

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient;->clientThread:Ljava/lang/Thread;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    .line 908
    sget-boolean v15, Lti/modules/titanium/network/TiHTTPClient;->DBG:Z

    if-eqz v15, :cond_f

    .line 909
    const-string v15, "TiHttpClient"

    const-string v16, "Leaving send()"

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_f
    return-void
.end method

.method public sendError(Ljava/lang/String;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 517
    const-string v1, "TiHttpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 519
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v1, "source"

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v1, "onerror"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->fireCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    return-void
.end method

.method protected setAutoEncodeUrl(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1071
    iput-boolean p1, p0, Lti/modules/titanium/network/TiHTTPClient;->autoEncodeUrl:Z

    .line 1072
    return-void
.end method

.method public setReadyState(I)V
    .locals 3
    .parameter "readyState"

    .prologue
    .line 506
    const-string v0, "TiHttpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting ready state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    .line 509
    const-string v0, "onreadystatechange"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/TiHTTPClient;->fireCallback(Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 512
    const-string v0, "onload"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/TiHTTPClient;->fireCallback(Ljava/lang/String;)V

    .line 514
    :cond_0
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "header"
    .parameter "value"

    .prologue
    .line 669
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient;->readyState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 670
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    return-void

    .line 672
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRequestHeader can only be called before invoking send."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setResponseText(Ljava/lang/String;)V
    .locals 0
    .parameter "responseText"

    .prologue
    .line 594
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->responseText:Ljava/lang/String;

    .line 595
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 602
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->status:I

    .line 603
    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 0
    .parameter "statusText"

    .prologue
    .line 610
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient;->statusText:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .parameter "millis"

    .prologue
    .line 1066
    iput p1, p0, Lti/modules/titanium/network/TiHTTPClient;->timeout:I

    .line 1067
    return-void
.end method

.method public validatesSecureCertificate()Z
    .locals 3

    .prologue
    const-string v2, "validatesSecureCertificate"

    .line 494
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "validatesSecureCertificate"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v1, "validatesSecureCertificate"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 502
    :goto_0
    return v0

    .line 497
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    const/4 v0, 0x1

    goto :goto_0

    .line 502
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
