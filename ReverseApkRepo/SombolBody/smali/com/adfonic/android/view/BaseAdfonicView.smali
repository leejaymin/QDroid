.class public abstract Lcom/adfonic/android/view/BaseAdfonicView;
.super Landroid/webkit/WebView;
.source "BaseAdfonicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adfonic/android/view/BaseAdfonicView$CustomUrlOpenerTask;
    }
.end annotation


# static fields
.field public static final VERSION:Ljava/lang/String; = "1.1.5"


# instance fields
.field private adListenerManager:Lcom/adfonic/android/view/AdLifeCycleListenerManager;

.field private callback:Lcom/adfonic/android/api/ExecutorCallback;

.field private directLoading:Z

.field private query:Ljava/lang/Runnable;

.field private request:Lcom/adfonic/android/api/Request;

.field private requestExecutor:Lcom/adfonic/android/api/RequestExecutor;

.field private response:Lcom/adfonic/android/api/response/ApiResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adfonic/android/view/BaseAdfonicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/adfonic/android/view/BaseAdfonicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    new-instance v0, Lcom/adfonic/android/view/BaseAdfonicView$1;

    invoke-direct {v0, p0}, Lcom/adfonic/android/view/BaseAdfonicView$1;-><init>(Lcom/adfonic/android/view/BaseAdfonicView;)V

    iput-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->query:Ljava/lang/Runnable;

    .line 224
    new-instance v0, Lcom/adfonic/android/view/BaseAdfonicView$2;

    invoke-direct {v0, p0}, Lcom/adfonic/android/view/BaseAdfonicView$2;-><init>(Lcom/adfonic/android/view/BaseAdfonicView;)V

    iput-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->callback:Lcom/adfonic/android/api/ExecutorCallback;

    .line 58
    if-eqz p2, :cond_0

    .line 59
    new-instance v0, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;

    invoke-direct {v0}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;-><init>()V

    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->convertToRequest(Landroid/util/AttributeSet;Landroid/content/Context;)Lcom/adfonic/android/api/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->request:Lcom/adfonic/android/api/Request;

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->isNotOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adfonic/android/view/BaseAdfonicView;->setVisibility(I)V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->init()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adfonic/android/view/BaseAdfonicView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->isRequestInvalid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/adfonic/android/view/BaseAdfonicView;Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->executeCall(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->executeTelephoneCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->openAndroidMarket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->openAmazonMarket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->executeOpenUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adfonic/android/view/BaseAdfonicView;)Lcom/adfonic/android/api/Request;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->request:Lcom/adfonic/android/api/Request;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adfonic/android/view/BaseAdfonicView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->query:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adfonic/android/view/BaseAdfonicView;)Lcom/adfonic/android/view/AdLifeCycleListenerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->adListenerManager:Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adfonic/android/view/BaseAdfonicView;Lcom/adfonic/android/api/response/ApiResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->setResponse(Lcom/adfonic/android/api/response/ApiResponse;)V

    return-void
.end method

.method static synthetic access$600(Lcom/adfonic/android/view/BaseAdfonicView;Lcom/adfonic/android/api/response/ApiResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->loadResponse(Lcom/adfonic/android/api/response/ApiResponse;)V

    return-void
.end method

.method static synthetic access$700(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->startAdClickThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->playAudio(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->playVideo(Ljava/lang/String;)V

    return-void
.end method

.method private executeCall(Landroid/os/Handler;)V
    .locals 4
    .parameter "handler"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->requestExecutor:Lcom/adfonic/android/api/RequestExecutor;

    if-nez v0, :cond_0

    .line 270
    const-string v0, "Api executor is null"

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->isRequestInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const-string v0, "Request is not valid, please be sure to provide the right advert slotId"

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->requestExecutor:Lcom/adfonic/android/api/RequestExecutor;

    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adfonic/android/view/BaseAdfonicView;->request:Lcom/adfonic/android/api/Request;

    iget-object v3, p0, Lcom/adfonic/android/view/BaseAdfonicView;->callback:Lcom/adfonic/android/api/ExecutorCallback;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/adfonic/android/api/RequestExecutor;->execute(Landroid/content/Context;Lcom/adfonic/android/api/Request;Lcom/adfonic/android/api/ExecutorCallback;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private executeOpenUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 355
    new-instance v0, Lcom/adfonic/android/view/BaseAdfonicView$CustomUrlOpenerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adfonic/android/view/BaseAdfonicView$CustomUrlOpenerTask;-><init>(Lcom/adfonic/android/view/BaseAdfonicView;Lcom/adfonic/android/view/BaseAdfonicView$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/adfonic/android/view/BaseAdfonicView$CustomUrlOpenerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 356
    return-void
.end method

.method private executeTelephoneCall(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 370
    new-instance v0, Lcom/adfonic/android/view/BaseAdfonicView$5;

    invoke-direct {v0, p0}, Lcom/adfonic/android/view/BaseAdfonicView$5;-><init>(Lcom/adfonic/android/view/BaseAdfonicView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/adfonic/android/view/BaseAdfonicView$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 376
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    invoke-direct {v0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;-><init>()V

    iput-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->adListenerManager:Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    .line 308
    new-instance v0, Lcom/adfonic/android/api/RequestExecutor;

    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adfonic/android/api/RequestExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->requestExecutor:Lcom/adfonic/android/api/RequestExecutor;

    .line 309
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->requestExecutor:Lcom/adfonic/android/api/RequestExecutor;

    invoke-virtual {v0}, Lcom/adfonic/android/api/RequestExecutor;->start()V

    .line 310
    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->setBackgroundToTransparent()V

    .line 311
    invoke-direct {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->setWebViewClient()V

    .line 312
    return-void
.end method

.method private isNotOnline()Z
    .locals 4

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 290
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 291
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRequestInvalid()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 281
    iget-object v2, p0, Lcom/adfonic/android/view/BaseAdfonicView;->request:Lcom/adfonic/android/api/Request;

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/adfonic/android/view/BaseAdfonicView;->request:Lcom/adfonic/android/api/Request;

    invoke-virtual {v2}, Lcom/adfonic/android/api/Request;->getSlotId()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, slotId:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadResponse(Lcom/adfonic/android/api/response/ApiResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/view/BaseAdfonicView;->setVisibility(I)V

    .line 260
    invoke-virtual {p1}, Lcom/adfonic/android/api/response/ApiResponse;->getAdContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/view/BaseAdfonicView;->loadAdContent(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->adListenerManager:Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->onPresentScreen(Landroid/content/Context;)V

    .line 262
    return-void
.end method

.method private openAmazonMarket(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 388
    new-instance v0, Lcom/adfonic/android/view/BaseAdfonicView$7;

    invoke-direct {v0, p0}, Lcom/adfonic/android/view/BaseAdfonicView$7;-><init>(Lcom/adfonic/android/view/BaseAdfonicView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/adfonic/android/view/BaseAdfonicView$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 398
    return-void
.end method

.method private openAndroidMarket(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 379
    new-instance v0, Lcom/adfonic/android/view/BaseAdfonicView$6;

    invoke-direct {v0, p0}, Lcom/adfonic/android/view/BaseAdfonicView$6;-><init>(Lcom/adfonic/android/view/BaseAdfonicView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/adfonic/android/view/BaseAdfonicView$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 385
    return-void
.end method

.method private playAudio(Ljava/lang/String;)V
    .locals 2
    .parameter "mediaUrl"

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 412
    .local v0, c:Landroid/content/Context;
    invoke-static {p1, v0}, Lcom/adfonic/android/AdfonicActivity;->getPlayAudioIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 413
    return-void
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 2
    .parameter "mediaUrl"

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 407
    .local v0, c:Landroid/content/Context;
    invoke-static {p1, v0}, Lcom/adfonic/android/AdfonicActivity;->getPlayVideoIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method private setResponse(Lcom/adfonic/android/api/response/ApiResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    .line 266
    return-void
.end method

.method private setWebViewClient()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/adfonic/android/view/BaseAdfonicView$3;

    invoke-direct {v0, p0}, Lcom/adfonic/android/view/BaseAdfonicView$3;-><init>(Lcom/adfonic/android/view/BaseAdfonicView;)V

    invoke-virtual {p0, v0}, Lcom/adfonic/android/view/BaseAdfonicView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 322
    return-void
.end method

.method private startAdClickThread(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 325
    new-instance v0, Lcom/adfonic/android/view/BaseAdfonicView$4;

    invoke-direct {v0, p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView$4;-><init>(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/adfonic/android/view/BaseAdfonicView;->post(Ljava/lang/Runnable;)Z

    .line 352
    return-void
.end method

.method private startInterstitial(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 402
    .local v0, c:Landroid/content/Context;
    invoke-static {p1, v0}, Lcom/adfonic/android/AdfonicActivity;->getStartInterstitialIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 403
    return-void
.end method

.method private tryToSetBackgroundTransparentFromApiLevel11On()V
    .locals 6

    .prologue
    .line 295
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 297
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 298
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract expand()V
.end method

.method public getRequest()Lcom/adfonic/android/api/Request;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->request:Lcom/adfonic/android/api/Request;

    return-object v0
.end method

.method protected isAmazonMarketResponse()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    invoke-virtual {v0}, Lcom/adfonic/android/api/response/ApiResponse;->isAmazonDestinationType()Z

    move-result v0

    goto :goto_0
.end method

.method protected isAndroidMarketResponse()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    invoke-virtual {v0}, Lcom/adfonic/android/api/response/ApiResponse;->isAndroidDestinationType()Z

    move-result v0

    goto :goto_0
.end method

.method protected isAudioResponse()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    invoke-virtual {v0}, Lcom/adfonic/android/api/response/ApiResponse;->isAudioResponse()Z

    move-result v0

    goto :goto_0
.end method

.method protected isCallResponse()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    invoke-virtual {v0}, Lcom/adfonic/android/api/response/ApiResponse;->isCallResponse()Z

    move-result v0

    goto :goto_0
.end method

.method protected isInterstitial()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    invoke-virtual {v0}, Lcom/adfonic/android/api/response/ApiResponse;->isInterstitial()Z

    move-result v0

    goto :goto_0
.end method

.method protected isVideoResponse()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    invoke-virtual {v0}, Lcom/adfonic/android/api/response/ApiResponse;->isVideoResponse()Z

    move-result v0

    goto :goto_0
.end method

.method public loadAd(Lcom/adfonic/android/api/Request;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string v0, "Can\'t load a null request!"

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->directLoading:Z

    .line 91
    invoke-virtual {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->setRequest(Lcom/adfonic/android/api/Request;)V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/adfonic/android/view/BaseAdfonicView;->executeCall(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected abstract loadAdContent(Ljava/lang/String;)V
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 134
    invoke-direct {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->isNotOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-boolean v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->directLoading:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->query:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/adfonic/android/view/BaseAdfonicView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->adListenerManager:Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->onAdClick(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 146
    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView;->query:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->requestExecutor:Lcom/adfonic/android/api/RequestExecutor;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->requestExecutor:Lcom/adfonic/android/api/RequestExecutor;

    invoke-virtual {v0}, Lcom/adfonic/android/api/RequestExecutor;->shutdown()V

    .line 150
    :cond_0
    iput-object v2, p0, Lcom/adfonic/android/view/BaseAdfonicView;->requestExecutor:Lcom/adfonic/android/api/RequestExecutor;

    .line 151
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->adListenerManager:Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->onDismissScreen(Landroid/content/Context;)V

    .line 152
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->adListenerManager:Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    invoke-virtual {v0, v2}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->setAdListener(Lcom/adfonic/android/AdListener;)V

    .line 153
    return-void
.end method

.method protected abstract open(Ljava/lang/String;)V
.end method

.method public setAdListener(Lcom/adfonic/android/AdListener;)V
    .locals 1
    .parameter "adListener"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView;->adListenerManager:Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->setAdListener(Lcom/adfonic/android/AdListener;)V

    .line 117
    invoke-virtual {p0, p0}, Lcom/adfonic/android/view/BaseAdfonicView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method protected setBackgroundToTransparent()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/view/BaseAdfonicView;->setBackgroundColor(I)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/view/BaseAdfonicView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-direct {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->tryToSetBackgroundTransparentFromApiLevel11On()V

    .line 129
    return-void
.end method

.method public setRequest(Lcom/adfonic/android/api/Request;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/adfonic/android/view/BaseAdfonicView;->request:Lcom/adfonic/android/api/Request;

    .line 101
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/adfonic/android/view/BaseAdfonicView;->isInterstitial()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const-string v1, "Response received is not an interstitial ad, please verify the settings!"

    invoke-static {v1}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/adfonic/android/view/BaseAdfonicView;->response:Lcom/adfonic/android/api/response/ApiResponse;

    invoke-virtual {v1}, Lcom/adfonic/android/api/response/ApiResponse;->getAdContent()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, content:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/adfonic/android/view/BaseAdfonicView;->startInterstitial(Ljava/lang/String;)V

    goto :goto_0
.end method
