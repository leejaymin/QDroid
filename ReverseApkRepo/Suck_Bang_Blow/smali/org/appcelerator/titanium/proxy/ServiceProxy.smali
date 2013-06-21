.class public Lorg/appcelerator/titanium/proxy/ServiceProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "ServiceProxy.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiServiceProxy"


# instance fields
.field private forBoundServices:Z

.field private intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

.field private service:Landroid/app/Service;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private serviceInstanceId:I

.field private serviceIntentId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/app/Service;Landroid/content/Intent;I)V
    .locals 1
    .parameter "context"
    .parameter "service"
    .parameter "intent"
    .parameter "serviceInstanceId"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 47
    iput-object p2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    .line 48
    invoke-virtual {p0, p3}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->setIntent(Landroid/content/Intent;)V

    .line 49
    iput p4, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceInstanceId:I

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 2
    .parameter "context"
    .parameter "intentProxy"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 58
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->setIntent(Lorg/appcelerator/titanium/proxy/IntentProxy;)V

    .line 59
    invoke-static {}, Lorg/appcelerator/titanium/TiBaseService;->nextServiceBindingIntentId()I

    move-result v0

    iput v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceIntentId:I

    .line 60
    const-string v0, "$__TITANIUM_SERVICE_INTENT_ID__$"

    iget v1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceIntentId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->forBoundServices:Z

    .line 62
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    return v0
.end method

.method static synthetic access$102(Lorg/appcelerator/titanium/proxy/ServiceProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceInstanceId:I

    return p1
.end method

.method private bindAndInvokeService()V
    .locals 4

    .prologue
    .line 120
    new-instance v0, Lorg/appcelerator/titanium/proxy/ServiceProxy$1;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy$1;-><init>(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    .line 141
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/TiApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 142
    return-void
.end method

.method private unbindService()V
    .locals 7

    .prologue
    const-string v6, "TiServiceProxy"

    .line 146
    sget-boolean v2, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    if-eqz v2, :cond_0

    .line 147
    const-string v2, "TiServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop via unbindService for service proxy with intent id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    const-string v4, "$__TITANIUM_SERVICE_INTENT_ID__$"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    .line 150
    .local v1, tiContext:Lorg/appcelerator/titanium/TiContext;
    if-nez v1, :cond_1

    .line 151
    const-string v2, "TiServiceProxy"

    const-string v2, "Cannot unbind service.  TiContext is null."

    invoke-static {v6, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 155
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_2

    .line 156
    const-string v2, "TiServiceProxy"

    const-string v2, "Cannot unbind service.  tiContext.getTiApp() returned null"

    invoke-static {v6, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    instance-of v2, v2, Lorg/appcelerator/titanium/TiBaseService;

    if-eqz v2, :cond_3

    .line 161
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    check-cast v2, Lorg/appcelerator/titanium/TiBaseService;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getServiceIntentId()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiBaseService;->unregisterBoundTiContext(I)V

    .line 164
    :cond_3
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 165
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceConnection:Landroid/content/ServiceConnection;

    goto :goto_0
.end method


# virtual methods
.method public getIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    return-object v0
.end method

.method public getServiceInstanceId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceInstanceId:I

    return v0
.end method

.method protected getServiceIntentId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceIntentId:I

    return v0
.end method

.method protected invokeBoundService(Landroid/app/Service;)V
    .locals 5
    .parameter "boundService"

    .prologue
    const-string v4, "TiServiceProxy"

    .line 171
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    .line 172
    instance-of v2, p1, Lorg/appcelerator/titanium/TiBaseService;

    if-nez v2, :cond_0

    .line 173
    const-string v2, "TiServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a Ti Service.  Cannot start directly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/TiBaseService;

    move-object v1, v0

    .line 177
    .local v1, tiService:Lorg/appcelerator/titanium/TiBaseService;
    sget-boolean v2, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "TiServiceProxy"

    const-string v2, "Calling tiService.start for this proxy instance"

    invoke-static {v4, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiBaseService;->start(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 83
    new-instance v0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->context:Lorg/appcelerator/titanium/TiContext;

    invoke-direct {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->setIntent(Lorg/appcelerator/titanium/proxy/IntentProxy;)V

    .line 84
    return-void
.end method

.method public setIntent(Lorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 0
    .parameter "intentProxy"

    .prologue
    .line 88
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 89
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->forBoundServices:Z

    if-nez v0, :cond_0

    .line 95
    const-string v0, "TiServiceProxy"

    const-string v1, "Only services created via Ti.Android.createService can be started via the start() command. Ignoring start() request."

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->bindAndInvokeService()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const-string v1, "TiServiceProxy"

    .line 104
    sget-boolean v0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "TiServiceProxy"

    const-string v0, "stop"

    invoke-static {v1, v0}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->forBoundServices:Z

    if-nez v0, :cond_2

    .line 108
    sget-boolean v0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->DBG:Z

    if-eqz v0, :cond_1

    .line 109
    const-string v0, "TiServiceProxy"

    const-string v0, "stop via stopService"

    invoke-static {v1, v0}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;->service:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_2
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->unbindService()V

    goto :goto_0
.end method
