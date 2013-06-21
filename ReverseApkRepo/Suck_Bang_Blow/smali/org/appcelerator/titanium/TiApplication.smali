.class public abstract Lorg/appcelerator/titanium/TiApplication;
.super Landroid/app/Application;
.source "TiApplication.java"


# static fields
.field public static final APPLICATION_PREFERENCES_NAME:Ljava/lang/String; = "titanium"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DEFAULT_THREAD_STACK_SIZE:I = 0x4000

.field public static final DEPLOY_TYPE_DEVELOPMENT:Ljava/lang/String; = "development"

.field public static final DEPLOY_TYPE_PRODUCTION:Ljava/lang/String; = "production"

.field public static final DEPLOY_TYPE_TEST:Ljava/lang/String; = "test"

.field private static final LCAT:Ljava/lang/String; = "TiApplication"

.field private static final PROPERTY_COMPILE_JS:Ljava/lang/String; = "ti.android.compilejs"

.field private static final PROPERTY_DEPLOY_TYPE:Ljava/lang/String; = "ti.deploytype"

.field private static final PROPERTY_THREAD_STACK_SIZE:Ljava/lang/String; = "ti.android.threadstacksize"

.field private static final STATS_WAIT:J = 0x493e0L

.field protected static _instance:Lorg/appcelerator/titanium/TiApplication;

.field private static lastAnalyticsTriggered:J


# instance fields
.field protected analyticsIntent:Landroid/content/Intent;

.field protected analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

.field private appEventProxies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

.field private appProperties:Lorg/appcelerator/titanium/TiProperties;

.field private baseUrl:Ljava/lang/String;

.field private buildHash:Ljava/lang/String;

.field private buildTimestamp:Ljava/lang/String;

.field private buildVersion:Ljava/lang/String;

.field private currentActivity:Landroid/app/Activity;

.field private density:Ljava/lang/String;

.field private methodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field protected modules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/kroll/KrollModule;",
            ">;"
        }
    .end annotation
.end field

.field private needsEnrollEvent:Z

.field private needsStartEvent:Z

.field private proxyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private rootActivity:Lorg/appcelerator/titanium/TiRootActivity;

.field private startUrl:Ljava/lang/String;

.field protected stylesheet:Lorg/appcelerator/titanium/TiStylesheet;

.field private systemProperties:Lorg/appcelerator/titanium/TiProperties;

.field private windowHandler:Lorg/appcelerator/titanium/view/ITiWindowHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiApplication;->DBG:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/TiApplication;->_instance:Lorg/appcelerator/titanium/TiApplication;

    .line 83
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/appcelerator/titanium/TiApplication;->lastAnalyticsTriggered:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-string v2, "TiApplication"

    const-string v1, ""

    .line 87
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/ArrayList;

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Ljava/util/ArrayList;

    .line 88
    const-string v0, "TiApplication"

    const-string v0, "checkpoint, app created."

    invoke-static {v2, v0}, Lorg/appcelerator/titanium/util/Log;->checkpoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sput-object p0, Lorg/appcelerator/titanium/TiApplication;->_instance:Lorg/appcelerator/titanium/TiApplication;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent:Z

    .line 93
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->loadBuildProperties()V

    .line 94
    const-string v0, "TiApplication"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Titanium "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/TiApplication;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/appcelerator/titanium/TiApplication;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/appcelerator/titanium/TiApplication;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    return-object v0
.end method

.method private collectAnalytics()Z
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->isAnalyticsEnabled()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lorg/appcelerator/titanium/TiApplication;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lorg/appcelerator/titanium/TiApplication;->_instance:Lorg/appcelerator/titanium/TiApplication;

    return-object v0
.end method

.method private getStartFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "defaultStartFile"

    .prologue
    .line 317
    return-object p1
.end method


# virtual methods
.method public addAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "appEventProxy"

    .prologue
    .line 365
    const-string v0, "TiApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP PROXY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_0
    return-void
.end method

.method public bindModules(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "bridge"
    .parameter "parent"

    .prologue
    .line 98
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->getKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/kroll/KrollContext;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/TiApplication;->bootModules(Lorg/appcelerator/titanium/TiContext;)V

    .line 100
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollModule;

    .line 101
    .local v1, module:Lorg/appcelerator/kroll/KrollModule;
    invoke-virtual {v1, p2}, Lorg/appcelerator/kroll/KrollModule;->bindToParent(Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 104
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #module:Lorg/appcelerator/kroll/KrollModule;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollModule;

    .line 105
    .restart local v1       #module:Lorg/appcelerator/kroll/KrollModule;
    invoke-virtual {v1, p1}, Lorg/appcelerator/kroll/KrollModule;->bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;)V

    goto :goto_1

    .line 107
    .end local v1           #module:Lorg/appcelerator/kroll/KrollModule;
    :cond_1
    return-void
.end method

.method protected abstract bootModules(Lorg/appcelerator/titanium/TiContext;)V
.end method

.method public fireAppEvent(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 5
    .parameter "invocation"
    .parameter "eventName"
    .parameter "data"

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, handled:Z
    iget-object v4, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollProxy;

    .line 381
    .local v0, appEventProxy:Lorg/appcelerator/kroll/KrollProxy;
    invoke-virtual {v0, p2, p3}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v3

    .line 382
    .local v3, proxyHandled:Z
    if-nez v1, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    move v1, v4

    .line 383
    :goto_1
    goto :goto_0

    .line 382
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_1

    .line 384
    .end local v0           #appEventProxy:Lorg/appcelerator/kroll/KrollProxy;
    .end local v3           #proxyHandled:Z
    :cond_2
    return v1
.end method

.method public forceCompileJS()Z
    .locals 3

    .prologue
    .line 539
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.android.compilejs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    return-object v0
.end method

.method public getAppProperties()Lorg/appcelerator/titanium/TiProperties;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getDeployType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 519
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.deploytype"

    const-string v2, "development"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilteredBindings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "moduleName"

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModuleByClass(Ljava/lang/Class;)Lorg/appcelerator/kroll/KrollModule;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/appcelerator/kroll/KrollModule;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, moduleClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollModule;

    .line 133
    .local v1, module:Lorg/appcelerator/kroll/KrollModule;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 138
    .end local v1           #module:Lorg/appcelerator/kroll/KrollModule;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getModuleById(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;
    .locals 3
    .parameter "id"

    .prologue
    .line 121
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollModule;

    .line 122
    .local v1, module:Lorg/appcelerator/kroll/KrollModule;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollModule;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 127
    .end local v1           #module:Lorg/appcelerator/kroll/KrollModule;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Lorg/appcelerator/titanium/TiRootActivity;

    return-object v0
.end method

.method public getStartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->startUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .parameter "basename"
    .parameter
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/appcelerator/kroll/KrollDict;"
        }
    .end annotation

    .prologue
    .line 410
    .local p2, classes:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->stylesheet:Lorg/appcelerator/titanium/TiStylesheet;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->stylesheet:Lorg/appcelerator/titanium/TiStylesheet;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->density:Ljava/lang/String;

    invoke-virtual {v0, p3, p2, v1, p1}, Lorg/appcelerator/titanium/TiStylesheet;->getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    goto :goto_0
.end method

.method public getSystemProperties()Lorg/appcelerator/titanium/TiProperties;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->systemProperties:Lorg/appcelerator/titanium/TiProperties;

    return-object v0
.end method

.method public getThreadStackSize()I
    .locals 3

    .prologue
    .line 535
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.android.threadstacksize"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTiBuildHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    return-object v0
.end method

.method public getTiBuildTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTiBuildVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowHandler()Lorg/appcelerator/titanium/view/ITiWindowHandler;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->windowHandler:Lorg/appcelerator/titanium/view/ITiWindowHandler;

    return-object v0
.end method

.method protected loadBuildProperties()V
    .locals 4

    .prologue
    const-string v2, "build.version"

    const-string v2, "build.timestamp"

    const-string v2, "build.githash"

    const-string v3, "N/A"

    .line 155
    const-string v2, "1.0"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    .line 156
    const-string v2, "N/A"

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    .line 157
    const-string v2, "N/A"

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "org/appcelerator/titanium/build.properties"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 159
    .local v1, versionStream:Ljava/io/InputStream;
    if-eqz v1, :cond_2

    .line 160
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 162
    .local v0, properties:Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 163
    const-string v2, "build.version"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const-string v2, "build.version"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildVersion:Ljava/lang/String;

    .line 166
    :cond_0
    const-string v2, "build.timestamp"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    const-string v2, "build.timestamp"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildTimestamp:Ljava/lang/String;

    .line 169
    :cond_1
    const-string v2, "build.githash"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    const-string v2, "build.githash"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->buildHash:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0           #properties:Ljava/util/Properties;
    :cond_2
    :goto_0
    return-void

    .line 172
    .restart local v0       #properties:Ljava/util/Properties;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public declared-synchronized methodFor(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 10
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, source:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lorg/appcelerator/titanium/TiApplication;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 323
    .local v0, classMethods:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-nez v0, :cond_1

    .line 324
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 325
    .local v7, methods:[Ljava/lang/reflect/Method;
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #classMethods:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    array-length v9, v7

    invoke-direct {v0, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 326
    .restart local v0       #classMethods:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    iget-object v9, p0, Lorg/appcelerator/titanium/TiApplication;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v2, hierarchy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 332
    .local v3, i:I
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    .local v8, superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v8, :cond_0

    .line 336
    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_0

    .line 339
    :cond_0
    new-instance v1, Lorg/appcelerator/titanium/TiApplication$2;

    invoke-direct {v1, p0, v2}, Lorg/appcelerator/titanium/TiApplication$2;-><init>(Lorg/appcelerator/titanium/TiApplication;Ljava/util/HashMap;)V

    .line 348
    .local v1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 349
    .local v6, methodList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 350
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 352
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    .line 355
    .local v5, method:Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 322
    .end local v0           #classMethods:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v1           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/reflect/Method;>;"
    .end local v2           #hierarchy:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Integer;>;"
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #method:Ljava/lang/reflect/Method;
    .end local v6           #methodList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v7           #methods:[Ljava/lang/reflect/Method;
    .end local v8           #superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 359
    .restart local v0       #classMethods:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v9
.end method

.method public declared-synchronized needsEnrollEvent()Z
    .locals 1

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized needsStartEvent()Z
    .locals 1

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 179
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 181
    invoke-static {}, Lorg/appcelerator/titanium/TiScriptRunner;->getInstance()Lorg/appcelerator/titanium/TiScriptRunner;

    move-result-object v3

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/TiScriptRunner;->setAppPackageName(Ljava/lang/String;)V

    .line 182
    sget-boolean v3, Lorg/appcelerator/titanium/TiApplication;->DBG:Z

    if-eqz v3, :cond_0

    .line 183
    const-string v3, "TiApplication"

    const-string v4, "Application onCreate"

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 187
    .local v1, defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v3, Lorg/appcelerator/titanium/TiApplication$1;

    invoke-direct {v3, p0, v1}, Lorg/appcelerator/titanium/TiApplication$1;-><init>(Lorg/appcelerator/titanium/TiApplication;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 197
    const-string v3, "file:///android_asset/Resources/"

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->baseUrl:Ljava/lang/String;

    .line 199
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->baseUrl:Ljava/lang/String;

    const-string v4, "app.js"

    invoke-direct {p0, v4}, Lorg/appcelerator/titanium/TiApplication;->getStartFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v2, fullPath:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->baseUrl:Ljava/lang/String;

    .line 202
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->methodMap:Ljava/util/HashMap;

    .line 203
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->proxyMap:Ljava/util/HashMap;

    .line 205
    new-instance v3, Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "titanium"

    invoke-direct {v3, v4, v5, v7}, Lorg/appcelerator/titanium/TiProperties;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->appProperties:Lorg/appcelerator/titanium/TiProperties;

    .line 206
    new-instance v3, Lorg/appcelerator/titanium/TiProperties;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "system"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Lorg/appcelerator/titanium/TiProperties;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->systemProperties:Lorg/appcelerator/titanium/TiProperties;

    .line 211
    new-instance v0, Ljava/io/File;

    new-instance v3, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Lorg/appcelerator/titanium/util/TiFileHelper;->getDataDirectory(Z)Ljava/io/File;

    move-result-object v3

    const-string v4, "remote-image-cache"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 215
    :cond_1
    new-instance v3, Lorg/appcelerator/titanium/util/TiResponseCache;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/appcelerator/titanium/util/TiResponseCache;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 216
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 437
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 438
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 442
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 443
    return-void
.end method

.method public declared-synchronized postAnalyticsEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const-string v3, "TiApplication"

    .line 459
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->collectAnalytics()Z

    move-result v3

    if-nez v3, :cond_1

    .line 460
    sget-boolean v3, Lorg/appcelerator/titanium/TiApplication;->DBG:Z

    if-eqz v3, :cond_0

    .line 461
    const-string v3, "TiApplication"

    const-string v4, "Analytics are disabled, ignoring postAnalyticsEvent"

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 466
    :cond_1
    :try_start_1
    sget-boolean v3, Lorg/appcelerator/titanium/TiApplication;->DBG:Z

    if-eqz v3, :cond_2

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "Analytics Event: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n aguid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventAppGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n isJSON="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->mustExpandPayload()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n payload="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v3, "TiApplication"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ti.enroll"

    if-ne v3, v4, :cond_3

    .line 481
    iget-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent:Z

    if-eqz v3, :cond_0

    .line 482
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-virtual {v3, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->addEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 483
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent:Z

    .line 484
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->sendAnalytics()V

    .line 485
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->markEnrolled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 459
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 487
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ti.start"

    if-ne v3, v4, :cond_4

    .line 488
    iget-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent:Z

    if-eqz v3, :cond_0

    .line 489
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-virtual {v3, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->addEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 490
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent:Z

    .line 491
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->sendAnalytics()V

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lorg/appcelerator/titanium/TiApplication;->lastAnalyticsTriggered:J

    goto/16 :goto_0

    .line 495
    :cond_4
    invoke-virtual {p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ti.end"

    if-ne v3, v4, :cond_5

    .line 496
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent:Z

    .line 497
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-virtual {v3, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->addEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 498
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->sendAnalytics()V

    goto/16 :goto_0

    .line 500
    :cond_5
    iget-object v3, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-virtual {v3, p1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->addEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 502
    .local v0, now:J
    sget-wide v3, Lorg/appcelerator/titanium/TiApplication;->lastAnalyticsTriggered:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0x493e0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 503
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->sendAnalytics()V

    .line 504
    sput-wide v0, Lorg/appcelerator/titanium/TiApplication;->lastAnalyticsTriggered:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public postAppInfo()V
    .locals 0

    .prologue
    .line 219
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->initialize()V

    .line 220
    return-void
.end method

.method public postOnCreate()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public registerProxy(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 417
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollProxy;->getProxyId()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, proxyId:Ljava/lang/String;
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->proxyMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication;->proxyMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_0
    return-void
.end method

.method public releaseModules()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->modules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    return-void
.end method

.method public removeAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "appEventProxy"

    .prologue
    .line 373
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->appEventProxies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method public requireModule(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/kroll/KrollModuleInfo;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    .line 113
    invoke-virtual {p2}, Lorg/appcelerator/kroll/KrollModuleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiApplication;->getModuleById(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;

    move-result-object v0

    return-object v0
.end method

.method public sendAnalytics()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/TiApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 512
    const-string v0, "TiApplication"

    const-string v1, "Analytics service not found."

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V
    .locals 1
    .parameter "callingActivity"
    .parameter "newValue"

    .prologue
    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 295
    :cond_0
    iput-object p2, p0, Lorg/appcelerator/titanium/TiApplication;->currentActivity:Landroid/app/Activity;

    .line 297
    :cond_1
    monitor-exit p0

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRootActivity(Lorg/appcelerator/titanium/TiRootActivity;)V
    .locals 7
    .parameter "rootActivity"

    .prologue
    const/4 v4, 0x0

    const-string v6, "unknown"

    const-string v5, "ti.deploytype"

    .line 231
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->systemProperties:Lorg/appcelerator/titanium/TiProperties;

    const-string v3, "ti.android.debug"

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    .line 234
    iput-object p1, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Lorg/appcelerator/titanium/TiRootActivity;

    .line 235
    iput-object p1, p0, Lorg/appcelerator/titanium/TiApplication;->windowHandler:Lorg/appcelerator/titanium/view/ITiWindowHandler;

    .line 238
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 239
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiRootActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 240
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v2, :sswitch_data_0

    .line 256
    :goto_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;->collectAnalytics()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/appcelerator/titanium/analytics/TiAnalyticsService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsIntent:Landroid/content/Intent;

    .line 258
    new-instance v2, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-direct {v2, p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    .line 259
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->analyticsModel:Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/analytics/TiAnalyticsModel;->needsEnrollEvent()Z

    move-result v2

    iput-boolean v2, p0, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent:Z

    .line 261
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->systemProperties:Lorg/appcelerator/titanium/TiProperties;

    const-string v3, "ti.deploytype"

    const-string v3, "unknown"

    invoke-virtual {v2, v5, v6}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, deployType:Ljava/lang/String;
    invoke-static {p0, v0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->createAppEnrollEvent(Lorg/appcelerator/titanium/TiApplication;Ljava/lang/String;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/TiApplication;->postAnalyticsEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 266
    .end local v0           #deployType:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->systemProperties:Lorg/appcelerator/titanium/TiProperties;

    const-string v3, "ti.deploytype"

    const-string v3, "unknown"

    invoke-virtual {v2, v5, v6}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .restart local v0       #deployType:Ljava/lang/String;
    invoke-static {p0, v0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->createAppStartEvent(Lorg/appcelerator/titanium/TiApplication;Ljava/lang/String;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/TiApplication;->postAnalyticsEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 277
    .end local v0           #deployType:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 243
    :sswitch_0
    const-string v2, "high"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->density:Ljava/lang/String;

    goto :goto_0

    .line 247
    :sswitch_1
    const-string v2, "medium"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->density:Ljava/lang/String;

    goto :goto_0

    .line 251
    :sswitch_2
    const-string v2, "low"

    iput-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->density:Ljava/lang/String;

    goto :goto_0

    .line 273
    :cond_2
    iput-boolean v4, p0, Lorg/appcelerator/titanium/TiApplication;->needsEnrollEvent:Z

    .line 274
    iput-boolean v4, p0, Lorg/appcelerator/titanium/TiApplication;->needsStartEvent:Z

    .line 275
    const-string v2, "TiApplication"

    const-string v3, "Analytics have been disabled"

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method public setWindowHandler(Lorg/appcelerator/titanium/view/ITiWindowHandler;)V
    .locals 1
    .parameter "windowHandler"

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    iget-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->rootActivity:Lorg/appcelerator/titanium/TiRootActivity;

    iput-object v0, p0, Lorg/appcelerator/titanium/TiApplication;->windowHandler:Lorg/appcelerator/titanium/view/ITiWindowHandler;

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/TiApplication;->windowHandler:Lorg/appcelerator/titanium/view/ITiWindowHandler;

    goto :goto_0
.end method

.method public unregisterProxy(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 3
    .parameter "proxyId"

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 426
    .local v0, proxy:Lorg/appcelerator/kroll/KrollProxy;
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication;->proxyMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 427
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/appcelerator/kroll/KrollProxy;>;"
    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #proxy:Lorg/appcelerator/kroll/KrollProxy;
    check-cast v0, Lorg/appcelerator/kroll/KrollProxy;

    .line 431
    .restart local v0       #proxy:Lorg/appcelerator/kroll/KrollProxy;
    :cond_0
    return-object v0
.end method
