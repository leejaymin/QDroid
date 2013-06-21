.class public Lorg/appcelerator/kroll/KrollProxy;
.super Ljava/lang/Object;
.source "KrollProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lorg/appcelerator/titanium/bridge/OnEventListenerChange;
.implements Lorg/appcelerator/kroll/KrollConvertable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/KrollProxy$ThisMethod;
    }
.end annotation


# static fields
.field public static final BINDING_SUFFIX:Ljava/lang/String; = "BindingGen"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field protected static final MSG_LAST_ID:I = 0x3e7

.field protected static final MSG_LISTENER_ADDED:I = 0x65

.field protected static final MSG_LISTENER_REMOVED:I = 0x66

.field protected static final MSG_MODEL_PROPERTIES_CHANGED:I = 0x67

.field protected static final MSG_MODEL_PROPERTY_CHANGE:I = 0x64

.field public static final PROXY_ID_PREFIX:Ljava/lang/String; = "proxy$"

.field private static final TAG:Ljava/lang/String; = "KrollProxy"

.field public static final UNDEFINED:Ljava/lang/Object;

.field protected static proxyBindings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;",
            "Lorg/appcelerator/kroll/KrollProxyBinding;",
            ">;"
        }
    .end annotation
.end field

.field protected static proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected binding:Lorg/appcelerator/kroll/KrollProxyBinding;

.field protected context:Lorg/appcelerator/titanium/TiContext;

.field protected createdInModule:Lorg/appcelerator/kroll/KrollModule;

.field protected creatingContext:Lorg/appcelerator/titanium/TiContext;

.field protected creationDict:Lorg/appcelerator/kroll/KrollDict;

.field protected currentInvocation:Lorg/appcelerator/kroll/KrollInvocation;

.field protected eventManager:Lorg/appcelerator/kroll/KrollEventManager;

.field protected krollObject:Lorg/appcelerator/kroll/KrollObject;

.field protected modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

.field protected properties:Lorg/appcelerator/kroll/KrollDict;

.field protected proxyId:Ljava/lang/String;

.field protected uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/kroll/KrollProxy;->DBG:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollProxy;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollProxy;->proxyBindings:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lorg/appcelerator/kroll/KrollProxy$1;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollProxy$1;-><init>()V

    sput-object v0, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Z)V
    .locals 4
    .parameter "context"
    .parameter "autoBind"

    .prologue
    const-string v3, "KrollProxy"

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    iput-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    .line 419
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->creationDict:Lorg/appcelerator/kroll/KrollDict;

    .line 76
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy;->context:Lorg/appcelerator/titanium/TiContext;

    .line 77
    new-instance v1, Lorg/appcelerator/kroll/KrollEventManager;

    invoke-direct {v1, p0}, Lorg/appcelerator/kroll/KrollEventManager;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->eventManager:Lorg/appcelerator/kroll/KrollEventManager;

    .line 78
    sget-boolean v1, Lorg/appcelerator/kroll/KrollProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "KrollProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxy$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/appcelerator/kroll/KrollProxy;->proxyCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->proxyId:Ljava/lang/String;

    .line 83
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->uiHandler:Landroid/os/Handler;

    .line 84
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->isServiceContext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    sget-boolean v1, Lorg/appcelerator/kroll/KrollProxy;->DBG:Z

    if-eqz v1, :cond_2

    .line 88
    const-string v1, "KrollProxy"

    const-string v1, "Proxy created in context with no activity and no service.  Activity finished?  Context is effectively dead."

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method public static getBinding(Ljava/lang/Class;)Lorg/appcelerator/kroll/KrollProxyBinding;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;)",
            "Lorg/appcelerator/kroll/KrollProxyBinding;"
        }
    .end annotation

    .prologue
    .local p0, proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollProxy;>;"
    const-string v6, "KrollProxy"

    .line 97
    sget-object v4, Lorg/appcelerator/kroll/KrollProxy;->proxyBindings:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BindingGen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, bindingClassName:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101
    .local v0, bindingClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollProxyBinding;

    .line 102
    .local v2, bindingInstance:Lorg/appcelerator/kroll/KrollProxyBinding;
    sget-object v4, Lorg/appcelerator/kroll/KrollProxy;->proxyBindings:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v4, v2

    .line 112
    .end local v0           #bindingClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #bindingClassName:Ljava/lang/String;
    .end local v2           #bindingInstance:Lorg/appcelerator/kroll/KrollProxyBinding;
    .end local p0           #proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollProxy;>;"
    :goto_0
    return-object v4

    .line 104
    .restart local v1       #bindingClassName:Ljava/lang/String;
    .restart local p0       #proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollProxy;>;"
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 105
    .local v3, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "KrollProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find binding class for proxy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v1           #bindingClassName:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    sget-object v4, Lorg/appcelerator/kroll/KrollProxy;->proxyBindings:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollProxy;>;"
    check-cast p0, Lorg/appcelerator/kroll/KrollProxyBinding;

    move-object v4, p0

    goto :goto_0

    .line 106
    .restart local v1       #bindingClassName:Ljava/lang/String;
    .restart local p0       #proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/appcelerator/kroll/KrollProxy;>;"
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 107
    .local v3, e:Ljava/lang/IllegalAccessException;
    const-string v4, "KrollProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t access constructor for binding class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 108
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 109
    .local v3, e:Ljava/lang/InstantiationException;
    const-string v4, "KrollProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t insantiate binding class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public addEventListener(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 4
    .parameter "invocation"
    .parameter "eventName"
    .parameter "listener"

    .prologue
    .line 557
    const/4 v0, -0x1

    .line 558
    .local v0, listenerId:I
    sget-boolean v1, Lorg/appcelerator/kroll/KrollProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 559
    const-string v1, "KrollProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding listener for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->eventManager:Lorg/appcelerator/kroll/KrollEventManager;

    invoke-virtual {v1, p2, p3}, Lorg/appcelerator/kroll/KrollEventManager;->addEventListener(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    .line 563
    return v0
.end method

.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;)V
    .locals 1
    .parameter "bridge"

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getBinding()Lorg/appcelerator/kroll/KrollProxyBinding;

    move-result-object v0

    .line 136
    .local v0, binding:Lorg/appcelerator/kroll/KrollProxyBinding;
    invoke-virtual {v0, p1, p0}, Lorg/appcelerator/kroll/KrollProxyBinding;->bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 137
    return-void
.end method

.method public call(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "scope"
    .parameter "name"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 204
    sget-object v9, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    .line 206
    .local v9, value:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 209
    :goto_0
    sget-object v1, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    if-eq v9, v1, :cond_0

    instance-of v1, v9, Lorg/appcelerator/kroll/KrollMethod;

    if-eqz v1, :cond_0

    .line 210
    move-object v0, v9

    check-cast v0, Lorg/appcelerator/kroll/KrollMethod;

    move-object v5, v0

    .line 211
    .local v5, method:Lorg/appcelerator/kroll/KrollMethod;
    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v3

    move-object v2, p1

    move-object v4, p2

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lorg/appcelerator/kroll/KrollInvocation;->createMethodInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollMethod;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v7

    .line 214
    .local v7, inv:Lorg/appcelerator/kroll/KrollInvocation;
    invoke-virtual {v5, v7, p3}, Lorg/appcelerator/kroll/KrollMethod;->invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 215
    .local v8, result:Ljava/lang/Object;
    invoke-virtual {v7}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 216
    return-object v8

    .line 218
    .end local v5           #method:Lorg/appcelerator/kroll/KrollMethod;
    .end local v7           #inv:Lorg/appcelerator/kroll/KrollInvocation;
    .end local v8           #result:Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" of proxy \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getAPIName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" wasn\'t found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .parameter "code"
    .parameter "message"

    .prologue
    .line 647
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 648
    .local v0, error:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    return-object v0
.end method

.method public createEventInvocation(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollInvocation;
    .locals 7
    .parameter "eventName"

    .prologue
    const/4 v2, 0x0

    .line 606
    sget-boolean v0, Lorg/appcelerator/kroll/KrollProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 607
    const-string v0, "KrollProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating event invocation, context: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", js context: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiContext;->getJSContext()Lorg/appcelerator/titanium/TiEvaluator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getJSContext()Lorg/appcelerator/titanium/TiEvaluator;

    move-result-object v1

    invoke-interface {v1}, Lorg/appcelerator/titanium/TiEvaluator;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getAPIName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lorg/appcelerator/kroll/KrollInvocation;->createMethodInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollMethod;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v6

    .line 614
    .local v6, inv:Lorg/appcelerator/kroll/KrollInvocation;
    return-object v6
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 4
    .parameter "eventName"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 574
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v1, :cond_0

    .line 575
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 577
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "eventName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 580
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 4
    .parameter "eventName"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 584
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v1, :cond_0

    .line 585
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 587
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "eventName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 590
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public extend(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 9
    .parameter "options"

    .prologue
    .line 314
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v5, propertyChanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 316
    .local v2, name:Ljava/lang/String;
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v7, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 317
    .local v3, oldValue:Ljava/lang/Object;
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 318
    .local v6, value:Ljava/lang/Object;
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v7, v2, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-virtual {p0, v3, v6}, Lorg/appcelerator/kroll/KrollProxy;->shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 321
    new-instance v4, Lorg/appcelerator/kroll/KrollPropertyChange;

    invoke-direct {v4, v2, v3, v6}, Lorg/appcelerator/kroll/KrollPropertyChange;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    .local v4, pch:Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #oldValue:Ljava/lang/Object;
    .end local v4           #pch:Lorg/appcelerator/kroll/KrollPropertyChange;
    .end local v6           #value:Ljava/lang/Object;
    :cond_1
    iget-object v7, p0, Lorg/appcelerator/kroll/KrollProxy;->context:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 327
    invoke-virtual {p0, v5}, Lorg/appcelerator/kroll/KrollProxy;->firePropertiesChanged(Ljava/util/List;)V

    .line 332
    :goto_1
    return-void

    .line 329
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x67

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 330
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .parameter "eventName"
    .end parameter
    .parameter "data"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 595
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->eventManager:Lorg/appcelerator/kroll/KrollEventManager;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/kroll/KrollEventManager;->dispatchEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v0

    return v0
.end method

.method protected firePropertiesChanged(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollPropertyChange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, changes:Ljava/util/List;,"Ljava/util/List<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-interface {v0, p1, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 339
    :cond_0
    return-void
.end method

.method protected firePropertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 277
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->context:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-interface {v1, p1, p2, p3, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    invoke-direct {v0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollPropertyChange;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 283
    .local v0, pch:Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public fireSingleEvent(Ljava/lang/String;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;Z)V
    .locals 6
    .parameter "eventName"
    .parameter "listener"
    .parameter "data"
    .parameter "asyncCallback"

    .prologue
    .line 620
    if-eqz p2, :cond_1

    .line 621
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollProxy;->currentInvocation:Lorg/appcelerator/kroll/KrollInvocation;

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->createEventInvocation(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v4

    move-object v2, v4

    .line 623
    .local v2, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    :goto_0
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/kroll/KrollMethod;

    move-object v3, v0

    .line 624
    .local v3, method:Lorg/appcelerator/kroll/KrollMethod;
    if-nez p3, :cond_0

    .line 625
    new-instance p3, Lorg/appcelerator/kroll/KrollDict;

    .end local p3
    invoke-direct {p3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 628
    .restart local p3
    :cond_0
    :try_start_0
    instance-of v4, v3, Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v4, :cond_3

    if-nez p4, :cond_3

    .line 629
    check-cast v3, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .end local v3           #method:Lorg/appcelerator/kroll/KrollMethod;
    invoke-virtual {v3, p3}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callSync(Lorg/appcelerator/kroll/KrollDict;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_1
    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 638
    .end local v2           #invocation:Lorg/appcelerator/kroll/KrollInvocation;
    :cond_1
    return-void

    .line 621
    :cond_2
    iget-object v4, p0, Lorg/appcelerator/kroll/KrollProxy;->currentInvocation:Lorg/appcelerator/kroll/KrollInvocation;

    move-object v2, v4

    goto :goto_0

    .line 631
    .restart local v2       #invocation:Lorg/appcelerator/kroll/KrollInvocation;
    .restart local v3       #method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v3, v2, v4}, Lorg/appcelerator/kroll/KrollMethod;->invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 633
    .end local v3           #method:Lorg/appcelerator/kroll/KrollMethod;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 634
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "KrollProxy"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public fireSyncEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 2
    .parameter "eventName"
    .parameter "data"

    .prologue
    .line 600
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->eventManager:Lorg/appcelerator/kroll/KrollEventManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/appcelerator/kroll/KrollEventManager;->dispatchEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z

    move-result v0

    return v0
.end method

.method public get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "scope"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p2}, Lorg/appcelerator/kroll/KrollProxy;->hasBinding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    invoke-virtual {p0, p2}, Lorg/appcelerator/kroll/KrollProxy;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 167
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Lorg/appcelerator/kroll/KrollProperty;

    if-eqz v3, :cond_0

    .line 168
    move-object v0, v2

    check-cast v0, Lorg/appcelerator/kroll/KrollProperty;

    move-object v1, v0

    .line 169
    .local v1, property:Lorg/appcelerator/kroll/KrollProperty;
    invoke-interface {v1, p2}, Lorg/appcelerator/kroll/KrollProperty;->supportsGet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    invoke-virtual {p0, p1, p2, v1}, Lorg/appcelerator/kroll/KrollProxy;->getDynamicProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;)Ljava/lang/Object;

    move-result-object v3

    .line 180
    .end local v1           #property:Lorg/appcelerator/kroll/KrollProperty;
    .end local v2           #value:Ljava/lang/Object;
    :goto_0
    return-object v3

    .restart local v2       #value:Ljava/lang/Object;
    :cond_0
    move-object v3, v2

    .line 173
    goto :goto_0

    .line 177
    .end local v2           #value:Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v3, p2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    iget-object v3, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v3, p2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 180
    :cond_2
    sget-object v3, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getBinding()Lorg/appcelerator/kroll/KrollProxyBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollProxyBinding;->getAPIName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getBinding()Lorg/appcelerator/kroll/KrollProxyBinding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollProxyBinding;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBinding()Lorg/appcelerator/kroll/KrollProxyBinding;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->binding:Lorg/appcelerator/kroll/KrollProxyBinding;

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/KrollProxy;->getBinding(Ljava/lang/Class;)Lorg/appcelerator/kroll/KrollProxyBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->binding:Lorg/appcelerator/kroll/KrollProxyBinding;

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->binding:Lorg/appcelerator/kroll/KrollProxyBinding;

    return-object v0
.end method

.method public getBoundMethod(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;
    .locals 0
    .parameter "name"

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/kroll/KrollMethod;

    return-object p0
.end method

.method public getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;
    .locals 2
    .parameter "name"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethod(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v0

    .line 395
    .local v0, delegate:Lorg/appcelerator/kroll/KrollMethod;
    if-eqz v0, :cond_0

    .line 396
    new-instance v1, Lorg/appcelerator/kroll/KrollProxy$ThisMethod;

    invoke-direct {v1, p0, p1, v0}, Lorg/appcelerator/kroll/KrollProxy$ThisMethod;-><init>(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;Lorg/appcelerator/kroll/KrollMethod;)V

    .line 398
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBoundProperty(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollProperty;
    .locals 0
    .parameter "name"

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/kroll/KrollProperty;

    return-object p0
.end method

.method public getCreatedInModule()Lorg/appcelerator/kroll/KrollModule;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->createdInModule:Lorg/appcelerator/kroll/KrollModule;

    return-object v0
.end method

.method public getCreationDict()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creationDict:Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getCurrentInvocation()Lorg/appcelerator/kroll/KrollInvocation;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->currentInvocation:Lorg/appcelerator/kroll/KrollInvocation;

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, typeHint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDynamicProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;)Ljava/lang/Object;
    .locals 8
    .parameter "scope"
    .parameter "name"
    .parameter "dynprop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-interface {p3, p2}, Lorg/appcelerator/kroll/KrollProperty;->supportsGet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lorg/appcelerator/kroll/KrollInvocation;->createPropertyGetInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v6

    .line 228
    .local v6, inv:Lorg/appcelerator/kroll/KrollInvocation;
    invoke-interface {p3, v6, p2}, Lorg/appcelerator/kroll/KrollProperty;->get(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 229
    .local v7, result:Ljava/lang/Object;
    invoke-virtual {v6}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 230
    return-object v7

    .line 232
    .end local v6           #inv:Lorg/appcelerator/kroll/KrollInvocation;
    .end local v7           #result:Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamic property \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" of proxy \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getAPIName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" doesn\'t have read support"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJavascriptValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 672
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v0

    return-object v0
.end method

.method public getKrollBridge()Lorg/appcelerator/titanium/kroll/KrollBridge;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->context:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getJSContext()Lorg/appcelerator/titanium/TiEvaluator;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/kroll/KrollBridge;

    return-object p0
.end method

.method public getKrollObject()Lorg/appcelerator/kroll/KrollObject;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lorg/appcelerator/kroll/KrollObject;

    invoke-direct {v0, p0}, Lorg/appcelerator/kroll/KrollObject;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    return-object v0
.end method

.method public getNativeValue()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 677
    return-object p0
.end method

.method public getProperties()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 267
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProxyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->proxyId:Ljava/lang/String;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getBinding()Lorg/appcelerator/kroll/KrollProxyBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollProxyBinding;->getShortAPIName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTiContext()Lorg/appcelerator/titanium/TiContext;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->context:Lorg/appcelerator/titanium/TiContext;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 3
    .parameter "createdInModule"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 413
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy;->createdInModule:Lorg/appcelerator/kroll/KrollModule;

    .line 414
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    aget-object v0, p2, v2

    instance-of v0, v0, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v0, :cond_0

    .line 415
    aget-object v0, p2, v2

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 417
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "dict"

    .prologue
    .line 427
    if-eqz p1, :cond_1

    .line 428
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 429
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 431
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollDict;

    iput-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->creationDict:Lorg/appcelerator/kroll/KrollDict;

    .line 432
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v2, :cond_1

    .line 433
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    iget-object v3, p0, Lorg/appcelerator/kroll/KrollProxy;->creationDict:Lorg/appcelerator/kroll/KrollDict;

    invoke-interface {v2, v3}, Lorg/appcelerator/kroll/KrollProxyListener;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 436
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const-string v5, "eventName"

    .line 451
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 477
    const/4 v1, 0x0

    .end local p0
    :goto_0
    return v1

    .line 453
    .restart local p0
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    .line 454
    .local v0, pch:Lorg/appcelerator/kroll/KrollPropertyChange;
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-virtual {v0, p0, v1}, Lorg/appcelerator/kroll/KrollPropertyChange;->fireEvent(Lorg/appcelerator/kroll/KrollProxy;Lorg/appcelerator/kroll/KrollProxyListener;)V

    move v1, v4

    .line 455
    goto :goto_0

    .line 458
    .end local v0           #pch:Lorg/appcelerator/kroll/KrollPropertyChange;
    :pswitch_1
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "eventName"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/appcelerator/kroll/KrollProxy;

    invoke-interface {v1, v2, v3, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    :cond_0
    move v1, v4

    .line 463
    goto :goto_0

    .line 466
    .restart local p0
    :pswitch_2
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "eventName"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/appcelerator/kroll/KrollProxy;

    invoke-interface {v1, v2, v3, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    :cond_1
    move v1, v4

    .line 470
    goto :goto_0

    .line 473
    .restart local p0
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/appcelerator/kroll/KrollProxy;->firePropertiesChanged(Ljava/util/List;)V

    move v1, v4

    .line 474
    goto :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public has(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z
    .locals 1
    .parameter "scope"
    .parameter "name"

    .prologue
    .line 159
    invoke-virtual {p0, p2}, Lorg/appcelerator/kroll/KrollProxy;->hasBinding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, p2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasBinding(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getBinding()Lorg/appcelerator/kroll/KrollProxyBinding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollProxyBinding;->hasBinding(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasBoundMethod(Ljava/lang/String;)Z
    .locals 1
    .parameter "methodName"

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->hasBinding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/mozilla/javascript/Function;

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBoundProperty(Ljava/lang/String;)Z
    .locals 2
    .parameter "propertyName"

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->hasBinding(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 353
    .local v0, property:Ljava/lang/Object;
    instance-of v1, v0, Lorg/appcelerator/kroll/KrollProperty;

    if-eqz v1, :cond_0

    .line 354
    const/4 v1, 0x1

    .line 357
    .end local v0           #property:Ljava/lang/Object;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasListeners(Ljava/lang/String;)Z
    .locals 1
    .parameter "eventName"

    .prologue
    .line 642
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->eventManager:Lorg/appcelerator/kroll/KrollEventManager;

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollEventManager;->hasAnyEventListener(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 262
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeEventListener(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "invocation"
    .parameter "eventName"
    .parameter "listener"

    .prologue
    .line 569
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->eventManager:Lorg/appcelerator/kroll/KrollEventManager;

    invoke-virtual {v0, p2, p3}, Lorg/appcelerator/kroll/KrollEventManager;->removeEventListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    return-void
.end method

.method public sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "what"
    .parameter "asyncArg"

    .prologue
    .line 519
    new-instance v0, Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-direct {v0, p2}, Lorg/appcelerator/titanium/util/AsyncResult;-><init>(Ljava/lang/Object;)V

    .line 520
    .local v0, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/appcelerator/kroll/KrollProxy;->sendBlockingUiMessage(Landroid/os/Message;Lorg/appcelerator/titanium/util/AsyncResult;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public sendBlockingUiMessage(ILjava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .parameter "what"
    .parameter "asyncArg"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 526
    new-instance v0, Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-direct {v0, p2}, Lorg/appcelerator/titanium/util/AsyncResult;-><init>(Ljava/lang/Object;)V

    .line 527
    .local v0, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/appcelerator/kroll/KrollProxy;->sendBlockingUiMessage(Landroid/os/Message;Lorg/appcelerator/titanium/util/AsyncResult;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public sendBlockingUiMessage(Landroid/os/Message;Lorg/appcelerator/titanium/util/AsyncResult;)Ljava/lang/Object;
    .locals 2
    .parameter "msg"
    .parameter "result"

    .prologue
    .line 533
    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v0

    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMainMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lorg/appcelerator/titanium/TiMessageQueue;->sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/titanium/TiMessageQueue;Lorg/appcelerator/titanium/util/AsyncResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "scope"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0, p2}, Lorg/appcelerator/kroll/KrollProxy;->hasBinding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-virtual {p0, p2}, Lorg/appcelerator/kroll/KrollProxy;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    .local v1, currentValue:Ljava/lang/Object;
    instance-of v3, v1, Lorg/appcelerator/kroll/KrollProperty;

    if-eqz v3, :cond_0

    .line 189
    move-object v0, v1

    check-cast v0, Lorg/appcelerator/kroll/KrollProperty;

    move-object v2, v0

    .line 190
    .local v2, property:Lorg/appcelerator/kroll/KrollProperty;
    invoke-interface {v2, p2}, Lorg/appcelerator/kroll/KrollProperty;->supportsSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {p0, p1, p2, v2, p3}, Lorg/appcelerator/kroll/KrollProxy;->setDynamicProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Ljava/lang/Object;)V

    .line 199
    .end local v1           #currentValue:Ljava/lang/Object;
    .end local v2           #property:Lorg/appcelerator/kroll/KrollProperty;
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, p2, p3, v3}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method protected setDynamicProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Ljava/lang/Object;)V
    .locals 7
    .parameter "scope"
    .parameter "name"
    .parameter "dynprop"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-interface {p3, p2}, Lorg/appcelerator/kroll/KrollProperty;->supportsSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lorg/appcelerator/kroll/KrollInvocation;->createPropertySetInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v6

    .line 244
    .local v6, inv:Lorg/appcelerator/kroll/KrollInvocation;
    invoke-interface {p3, v6, p2, p4}, Lorg/appcelerator/kroll/KrollProperty;->set(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    invoke-virtual {v6}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 251
    return-void

    .line 247
    .end local v6           #inv:Lorg/appcelerator/kroll/KrollInvocation;
    :cond_0
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamic property \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" of proxy \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getAPIName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" doesn\'t have write support"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V
    .locals 1
    .parameter "modelListener"

    .prologue
    .line 483
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 484
    .restart local p0
    :cond_1
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    .line 485
    if-eqz p1, :cond_0

    .line 486
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollDict;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/kroll/KrollDict;

    invoke-interface {p1, p0}, Lorg/appcelerator/kroll/KrollProxyListener;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 273
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "fireChange"

    .prologue
    .line 302
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    .local v0, current:Ljava/lang/Object;
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v1, p1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    if-eqz p3, :cond_0

    invoke-virtual {p0, v0, p2}, Lorg/appcelerator/kroll/KrollProxy;->shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {p0, p1, v0, p2}, Lorg/appcelerator/kroll/KrollProxy;->firePropertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    :cond_0
    return-void
.end method

.method protected shouldFireChange(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 290
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 291
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    if-nez p2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 294
    :cond_3
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchContext(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/TiContext;
    .locals 2
    .parameter "tiContext"

    .prologue
    .line 492
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->context:Lorg/appcelerator/titanium/TiContext;

    .line 493
    .local v0, oldContext:Lorg/appcelerator/titanium/TiContext;
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxy;->context:Lorg/appcelerator/titanium/TiContext;

    .line 494
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->creatingContext:Lorg/appcelerator/titanium/TiContext;

    if-nez v1, :cond_0

    .line 500
    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creatingContext:Lorg/appcelerator/titanium/TiContext;

    .line 502
    :cond_0
    return-object v0
.end method

.method public switchToCreatingContext()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creatingContext:Lorg/appcelerator/titanium/TiContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->context:Lorg/appcelerator/titanium/TiContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creatingContext:Lorg/appcelerator/titanium/TiContext;

    iget-object v1, p0, Lorg/appcelerator/kroll/KrollProxy;->context:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxy;->creatingContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {p0, v0}, Lorg/appcelerator/kroll/KrollProxy;->switchContext(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/titanium/TiContext;

    .line 510
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Ti."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getAPIName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
