.class public Lorg/appcelerator/titanium/TiContext;
.super Ljava/lang/Object;
.source "TiContext.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiEvaluator;
.implements Lorg/mozilla/javascript/ErrorReporter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiContext$OnServiceLifecycleEvent;,
        Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiContext"

.field public static final LIFECYCLE_ON_DESTROY:I = 0x4

.field public static final LIFECYCLE_ON_PAUSE:I = 0x2

.field public static final LIFECYCLE_ON_RESUME:I = 0x1

.field public static final LIFECYCLE_ON_START:I = 0x0

.field public static final LIFECYCLE_ON_STOP:I = 0x3

.field private static final TRACE:Z


# instance fields
.field private baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

.field private currentUrl:Ljava/lang/String;

.field protected krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

.field private launchContext:Z

.field private lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mainThreadId:J

.field private serviceContext:Z

.field private serviceLifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiContext$OnServiceLifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field private tiApp:Lorg/appcelerator/titanium/TiApplication;

.field private tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

.field private weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiContext;->DBG:Z

    .line 37
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGV:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiContext;->TRACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "baseUrl"

    .prologue
    const-string v2, "/"

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/appcelerator/titanium/TiContext;->mainThreadId:J

    .line 75
    if-eqz p1, :cond_3

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiApplication;

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiApp:Lorg/appcelerator/titanium/TiApplication;

    .line 80
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 81
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>(Z)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 82
    if-nez p2, :cond_4

    .line 83
    const-string p2, "app://"

    .line 87
    :cond_0
    :goto_1
    new-instance v0, Lorg/appcelerator/titanium/util/TiUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    .line 89
    instance-of v0, p1, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v0, :cond_1

    .line 90
    check-cast p1, Lorg/appcelerator/titanium/TiActivity;

    .end local p1
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiActivity;->addTiContext(Lorg/appcelerator/titanium/TiContext;)V

    .line 93
    :cond_1
    sget-boolean v0, Lorg/appcelerator/titanium/TiContext;->DBG:Z

    if-eqz v0, :cond_2

    .line 94
    const-string v0, "TiContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseURL for context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    return-void

    .line 78
    .restart local p1
    :cond_3
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiApp:Lorg/appcelerator/titanium/TiApplication;

    goto :goto_0

    .line 84
    :cond_4
    const-string v0, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public static createTiContext(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;
    .locals 1
    .parameter "activity"
    .parameter "baseUrl"

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/appcelerator/titanium/TiContext;->createTiContext(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    return-object v0
.end method

.method public static createTiContext(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/TiContext;
    .locals 3
    .parameter "activity"
    .parameter "baseUrl"
    .parameter "loadFile"

    .prologue
    .line 319
    new-instance v2, Lorg/appcelerator/titanium/TiContext;

    invoke-direct {v2, p0, p1}, Lorg/appcelerator/titanium/TiContext;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 320
    .local v2, tic:Lorg/appcelerator/titanium/TiContext;
    invoke-static {v2, p2}, Lorg/appcelerator/titanium/kroll/KrollContext;->createContext(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lorg/appcelerator/titanium/kroll/KrollContext;

    move-result-object v0

    .line 321
    .local v0, kroll:Lorg/appcelerator/titanium/kroll/KrollContext;
    invoke-virtual {v2, v0}, Lorg/appcelerator/titanium/TiContext;->setKrollContext(Lorg/appcelerator/titanium/kroll/KrollContext;)V

    .line 322
    new-instance v1, Lorg/appcelerator/titanium/kroll/KrollBridge;

    invoke-direct {v1, v0}, Lorg/appcelerator/titanium/kroll/KrollBridge;-><init>(Lorg/appcelerator/titanium/kroll/KrollContext;)V

    .line 323
    .local v1, krollBridge:Lorg/appcelerator/titanium/kroll/KrollBridge;
    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/TiContext;->setJSContext(Lorg/appcelerator/titanium/TiEvaluator;)V

    .line 324
    return-object v2
.end method

.method public static getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;
    .locals 2

    .prologue
    .line 339
    invoke-static {}, Lorg/appcelerator/titanium/kroll/KrollContext;->getCurrentKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;

    move-result-object v0

    .line 340
    .local v0, currentCtx:Lorg/appcelerator/titanium/kroll/KrollContext;
    if-nez v0, :cond_0

    .line 341
    const/4 v1, 0x0

    .line 343
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/kroll/KrollContext;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 235
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public addOnServiceLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnServiceLifecycleEvent;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 240
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->serviceLifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public dispatchOnServiceDestroy(Landroid/app/Service;)V
    .locals 7
    .parameter "service"

    .prologue
    .line 279
    iget-object v3, p0, Lorg/appcelerator/titanium/TiContext;->serviceLifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    monitor-enter v3

    .line 280
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiContext;->serviceLifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiContext$OnServiceLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .local v1, listener:Lorg/appcelerator/titanium/TiContext$OnServiceLifecycleEvent;
    :try_start_1
    invoke-interface {v1, p1}, Lorg/appcelerator/titanium/TiContext$OnServiceLifecycleEvent;->onDestroy(Landroid/app/Service;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "TiContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching service onDestroy  event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 287
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/appcelerator/titanium/TiContext$OnServiceLifecycleEvent;
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 293
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Error"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/appcelerator/titanium/util/TiJSErrorDialog;->openErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 295
    return-void
.end method

.method public evalFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/appcelerator/titanium/TiContext;->evalFile(Ljava/lang/String;Landroid/os/Messenger;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalFile(Ljava/lang/String;Landroid/os/Messenger;I)Ljava/lang/Object;
    .locals 7
    .parameter "filename"
    .parameter "messenger"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "TiContext"

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, result:Ljava/lang/Object;
    iput-object p1, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getJSContext()Lorg/appcelerator/titanium/TiEvaluator;

    move-result-object v1

    .line 185
    .local v1, jsContext:Lorg/appcelerator/titanium/TiEvaluator;
    if-nez v1, :cond_1

    .line 186
    sget-boolean v4, Lorg/appcelerator/titanium/TiContext;->DBG:Z

    if-eqz v4, :cond_0

    .line 187
    const-string v4, "TiContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot eval file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Context has been released already."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    const/4 v4, 0x0

    .line 205
    .end local v3           #result:Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 192
    .restart local v3       #result:Ljava/lang/Object;
    :cond_1
    invoke-interface {v1, p1}, Lorg/appcelerator/titanium/TiEvaluator;->evalFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 193
    if-eqz p2, :cond_2

    .line 195
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 196
    .local v2, msg:Landroid/os/Message;
    iput p3, v2, Landroid/os/Message;->what:I

    .line 197
    invoke-virtual {p2, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 198
    sget-boolean v4, Lorg/appcelerator/titanium/TiContext;->DBG:Z

    if-eqz v4, :cond_2

    .line 199
    const-string v4, "TiContext"

    const-string v5, "Notifying caller that evalFile has completed"

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    move-object v4, v3

    .line 205
    goto :goto_0

    .line 201
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "TiContext"

    const-string v4, "Failed to notify caller that eval completed"

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public evalJS(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "src"

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getJSContext()Lorg/appcelerator/titanium/TiEvaluator;

    move-result-object v0

    .line 217
    .local v0, evaluator:Lorg/appcelerator/titanium/TiEvaluator;
    if-nez v0, :cond_0

    .line 219
    const-string v1, "TiContext"

    const-string v2, "on evalJS, evaluator is null and shouldn\'t be"

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    invoke-interface {v0, p1}, Lorg/appcelerator/titanium/TiEvaluator;->evalJS(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fireLifecycleEvent(Landroid/app/Activity;I)V
    .locals 7
    .parameter "activity"
    .parameter "which"

    .prologue
    .line 255
    iget-object v3, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 256
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .local v1, listener:Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    :try_start_1
    invoke-virtual {p0, p1, v1, p2}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "TiContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching lifecycle event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 263
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    return-void
.end method

.method protected fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;I)V
    .locals 0
    .parameter "activity"
    .parameter "listener"
    .parameter "which"

    .prologue
    .line 268
    packed-switch p3, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 269
    :pswitch_0
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onStart(Landroid/app/Activity;)V

    goto :goto_0

    .line 270
    :pswitch_1
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    .line 271
    :pswitch_2
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    .line 272
    :pswitch_3
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onStop(Landroid/app/Activity;)V

    goto :goto_0

    .line 273
    :pswitch_4
    invoke-interface {p2, p1}, Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;->onDestroy(Landroid/app/Activity;)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 125
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .local v0, activity:Landroid/app/Activity;
    move-object v1, v0

    .line 126
    goto :goto_0
.end method

.method public getAndroidContext()Landroid/content/ContextWrapper;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 386
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiApp:Lorg/appcelerator/titanium/TiApplication;

    .line 388
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/ContextWrapper;

    move-object v0, p0

    goto :goto_0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJSContext()Lorg/appcelerator/titanium/TiEvaluator;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

    return-object v0
.end method

.method public getKrollBridge()Lorg/appcelerator/titanium/kroll/KrollBridge;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

    instance-of v0, v0, Lorg/appcelerator/titanium/kroll/KrollBridge;

    if-eqz v0, :cond_0

    .line 115
    iget-object p0, p0, Lorg/appcelerator/titanium/TiContext;->tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/kroll/KrollBridge;

    move-object v0, p0

    .line 119
    :goto_0
    return-object v0

    .line 116
    .restart local p0
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

    instance-of v0, v0, Lorg/appcelerator/titanium/TiContext;

    if-eqz v0, :cond_1

    .line 117
    iget-object p0, p0, Lorg/appcelerator/titanium/TiContext;->tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getKrollBridge()Lorg/appcelerator/titanium/kroll/KrollBridge;

    move-result-object v0

    goto :goto_0

    .line 119
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    return-object v0
.end method

.method public getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

    invoke-interface {v0}, Lorg/appcelerator/titanium/TiEvaluator;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTiApp()Lorg/appcelerator/titanium/TiApplication;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiApp:Lorg/appcelerator/titanium/TiApplication;

    return-object v0
.end method

.method public getTiFileHelper()Lorg/appcelerator/titanium/util/TiFileHelper;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isLaunchContext()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiContext;->launchContext:Z

    return v0
.end method

.method public isServiceContext()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiContext;->serviceContext:Z

    return v0
.end method

.method public isUIThread()Z
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/appcelerator/titanium/TiContext;->mainThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

    instance-of v0, v0, Lorg/appcelerator/titanium/kroll/KrollBridge;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

    check-cast v0, Lorg/appcelerator/titanium/kroll/KrollBridge;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/kroll/KrollBridge;->release()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiWeakList;->clear()V

    .line 355
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->serviceLifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->serviceLifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiWeakList;->clear()V

    .line 358
    :cond_2
    return-void
.end method

.method public removeOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 245
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->lifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method public removeOnServiceLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnServiceLifecycleEvent;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 250
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->serviceLifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public resolveUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "scheme"
    .parameter "path"

    .prologue
    .line 159
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v1, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p2, p1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "scheme"
    .parameter "path"
    .parameter "relativeTo"

    .prologue
    .line 164
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    invoke-virtual {v0, p0, p3, p2, p1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;
    .locals 7
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Runtime Error"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/appcelerator/titanium/util/TiJSErrorDialog;->openErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 131
    instance-of v1, p1, Lorg/appcelerator/titanium/TiActivity;

    if-eqz v1, :cond_0

    .line 132
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/TiActivity;

    move-object v1, v0

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiActivity;->addTiContext(Lorg/appcelerator/titanium/TiContext;)V

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/TiContext;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 135
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "baseUrl"

    .prologue
    .line 393
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iput-object p1, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->baseUrl:Lorg/appcelerator/titanium/util/TiUrl;

    const-string v1, "app://"

    iput-object v1, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    .line 397
    :cond_0
    return-void
.end method

.method public setJSContext(Lorg/appcelerator/titanium/TiEvaluator;)V
    .locals 3
    .parameter "evaluator"

    .prologue
    .line 107
    sget-boolean v0, Lorg/appcelerator/titanium/TiContext;->DBG:Z

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "TiContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting JS Context on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/TiContext;->tiEvaluator:Lorg/appcelerator/titanium/TiEvaluator;

    .line 111
    return-void
.end method

.method public setKrollContext(Lorg/appcelerator/titanium/kroll/KrollContext;)V
    .locals 0
    .parameter "krollContext"

    .prologue
    .line 334
    iput-object p1, p0, Lorg/appcelerator/titanium/TiContext;->krollContext:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 335
    return-void
.end method

.method public setLaunchContext(Z)V
    .locals 0
    .parameter "launchContext"

    .prologue
    .line 380
    iput-boolean p1, p0, Lorg/appcelerator/titanium/TiContext;->launchContext:Z

    .line 381
    return-void
.end method

.method public setServiceContext(Z)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 367
    iput-boolean v1, p0, Lorg/appcelerator/titanium/TiContext;->serviceContext:Z

    .line 368
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiContext;->serviceLifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>(Z)V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiContext;->serviceLifecycleListeners:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 371
    :cond_0
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Warning"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/appcelerator/titanium/util/TiJSErrorDialog;->openErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 310
    return-void
.end method
