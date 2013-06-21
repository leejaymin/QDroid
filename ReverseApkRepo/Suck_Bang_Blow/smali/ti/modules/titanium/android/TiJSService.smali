.class public Lti/modules/titanium/android/TiJSService;
.super Lorg/appcelerator/titanium/TiBaseService;
.source "TiJSService.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiJSService"


# instance fields
.field protected url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/android/TiJSService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseService;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private finalizeUrl(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 34
    iget-object v0, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    .line 41
    :cond_0
    return-void

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service url required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createProxy(Landroid/content/Intent;)Lorg/appcelerator/titanium/proxy/ServiceProxy;
    .locals 7
    .parameter "intent"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lti/modules/titanium/android/TiJSService;->finalizeUrl(Landroid/content/Intent;)V

    .line 87
    iget-object v4, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 88
    .local v2, lastSlash:I
    iget-object v4, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, baseUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :cond_0
    invoke-virtual {p0, p1, v0}, Lti/modules/titanium/android/TiJSService;->createTiContext(Landroid/content/Intent;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    .line 93
    .local v1, context:Lorg/appcelerator/titanium/TiContext;
    new-instance v3, Lorg/appcelerator/titanium/proxy/ServiceProxy;

    iget-object v4, p0, Lti/modules/titanium/android/TiJSService;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-direct {v3, v1, p0, p1, v4}, Lorg/appcelerator/titanium/proxy/ServiceProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Landroid/app/Service;Landroid/content/Intent;I)V

    .line 94
    .local v3, proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;
    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiBindingHelper;->bindCurrentService(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    .line 95
    return-object v3
.end method

.method protected executeServiceCode(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 8
    .parameter "proxy"

    .prologue
    const-string v7, "TiJSService"

    const-string v6, "Eval JS Service:"

    .line 54
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    .line 55
    .local v2, ftiContext:Lorg/appcelerator/titanium/TiContext;
    iget-object v3, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    .line 56
    .local v3, fullUrl:Ljava/lang/String;
    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiContext;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    :cond_0
    sget-boolean v4, Lti/modules/titanium/android/TiJSService;->DBG:Z

    if-eqz v4, :cond_1

    .line 60
    iget-object v4, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    if-eq v4, v3, :cond_2

    .line 61
    const-string v4, "TiJSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Eval JS Service:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    :goto_0
    move-object v1, v3

    .line 67
    .local v1, ffullUrl:Ljava/lang/String;
    move-object v0, p1

    .line 68
    .local v0, fProxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lti/modules/titanium/android/TiJSService$1;

    invoke-direct {v5, p0, v0, v2, v1}, Lti/modules/titanium/android/TiJSService$1;-><init>(Lti/modules/titanium/android/TiJSService;Lorg/appcelerator/titanium/proxy/ServiceProxy;Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 81
    return-void

    .line 63
    .end local v0           #fProxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;
    .end local v1           #ffullUrl:Ljava/lang/String;
    :cond_2
    const-string v4, "TiJSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Eval JS Service:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/TiBaseService;->onStart(Landroid/content/Intent;I)V

    .line 47
    invoke-direct {p0, p1}, Lti/modules/titanium/android/TiJSService;->finalizeUrl(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0, p1}, Lti/modules/titanium/android/TiJSService;->createProxy(Landroid/content/Intent;)Lorg/appcelerator/titanium/proxy/ServiceProxy;

    move-result-object v0

    .line 49
    .local v0, proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;
    invoke-virtual {p0, v0}, Lti/modules/titanium/android/TiJSService;->start(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    .line 50
    return-void
.end method

.method public registerBoundTiContext(ILorg/appcelerator/titanium/TiContext;)I
    .locals 5
    .parameter "serviceIntentId"
    .parameter "tiContext"

    .prologue
    .line 108
    iget-object v2, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 110
    .local v1, lastSlash:I
    iget-object v2, p0, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, baseUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :cond_0
    invoke-virtual {p2, v0}, Lorg/appcelerator/titanium/TiContext;->setBaseUrl(Ljava/lang/String;)V

    .line 116
    .end local v0           #baseUrl:Ljava/lang/String;
    .end local v1           #lastSlash:I
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/TiBaseService;->registerBoundTiContext(ILorg/appcelerator/titanium/TiContext;)I

    move-result v2

    return v2
.end method

.method public start(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 101
    const-string v0, "start"

    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 102
    invoke-virtual {p0, p1}, Lti/modules/titanium/android/TiJSService;->executeServiceCode(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    .line 103
    return-void
.end method
