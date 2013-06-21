.class public Lorg/appcelerator/titanium/kroll/KrollContext;
.super Ljava/lang/Object;
.source "KrollContext.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final APP_SCHEME:Ljava/lang/String; = "app://"

.field public static final CONTEXT_KEY:Ljava/lang/String; = "krollContext"

.field private static DBG:Z = false

.field private static final FILE_WITH_ASSET:Ljava/lang/String; = "file:///android_asset/Resources/"

.field private static final LCAT:Ljava/lang/String; = "KrollContext"

.field private static final MSG_EVAL_FILE:I = 0x3e9

.field private static final MSG_EVAL_STRING:I = 0x3e8

.field private static final STRING_SOURCE:Ljava/lang/String; = "<anonymous>"

.field private static instanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private initialized:Ljava/util/concurrent/CountDownLatch;

.field private jsScope:Lorg/mozilla/javascript/ScriptableObject;

.field private messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

.field private thread:Lorg/appcelerator/titanium/kroll/KrollHandlerThread;

.field private tiContext:Lorg/appcelerator/titanium/TiContext;

.field private useOptimization:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->DEBUG:Z

    sput-boolean v0, Lorg/appcelerator/titanium/kroll/KrollContext;->DBG:Z

    return-void
.end method

.method protected constructor <init>(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)V
    .locals 7
    .parameter "tiContext"
    .parameter "label"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->tiContext:Lorg/appcelerator/titanium/TiContext;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v1, threadName:Ljava/lang/StringBuilder;
    const-string v2, "kroll$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/appcelerator/titanium/kroll/KrollContext;->getInstanceCounter()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    if-eqz p2, :cond_0

    .line 68
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_0
    new-instance v2, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getThreadStackSize()I

    move-result v4

    invoke-direct {v2, v3, v5, v4, p0}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;-><init>(Ljava/lang/String;IILorg/appcelerator/titanium/kroll/KrollContext;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->thread:Lorg/appcelerator/titanium/kroll/KrollHandlerThread;

    .line 75
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->initialized:Ljava/util/concurrent/CountDownLatch;

    .line 79
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 80
    .local v0, app:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "production"

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->forceCompileJS()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v6

    :goto_0
    iput-boolean v2, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->useOptimization:Z

    .line 83
    iget-object v2, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->thread:Lorg/appcelerator/titanium/kroll/KrollHandlerThread;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->start()V

    .line 84
    invoke-direct {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->requireInitialized()V

    .line 85
    return-void

    :cond_2
    move v2, v5

    .line 80
    goto :goto_0
.end method

.method public static final createContext(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lorg/appcelerator/titanium/kroll/KrollContext;
    .locals 1
    .parameter "tiContext"
    .parameter "loadFile"

    .prologue
    .line 362
    new-instance v0, Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/titanium/kroll/KrollContext;-><init>(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCurrentKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;
    .locals 2

    .prologue
    .line 336
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 337
    .local v0, ctx:Lorg/mozilla/javascript/Context;
    if-nez v0, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 340
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/kroll/KrollContext;->getKrollContext(Lorg/mozilla/javascript/Context;)Lorg/appcelerator/titanium/kroll/KrollContext;

    move-result-object v1

    goto :goto_0
.end method

.method protected static getInstanceCounter()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lorg/appcelerator/titanium/kroll/KrollContext;->instanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/kroll/KrollContext;->instanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 357
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/kroll/KrollContext;->instanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static getKrollContext(Lorg/mozilla/javascript/Context;)Lorg/appcelerator/titanium/kroll/KrollContext;
    .locals 1
    .parameter "context"

    .prologue
    .line 331
    const-string v0, "krollContext"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->getThreadLocal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/kroll/KrollContext;

    return-object p0
.end method

.method private requireInitialized()V
    .locals 1

    .prologue
    .line 346
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->initialized:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public enter()Lorg/mozilla/javascript/Context;
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->useOptimization:Z

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/kroll/KrollContext;->enter(Z)Lorg/mozilla/javascript/Context;

    move-result-object v0

    return-object v0
.end method

.method public enter(Z)Lorg/mozilla/javascript/Context;
    .locals 2
    .parameter "useOptimization"

    .prologue
    .line 313
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 315
    .local v0, ctx:Lorg/mozilla/javascript/Context;
    if-nez p1, :cond_0

    .line 316
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    .line 319
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    .line 320
    const-string v1, "krollContext"

    invoke-virtual {v0, v1, p0}, Lorg/mozilla/javascript/Context;->putThreadLocal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    return-object v0
.end method

.method public eval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "src"

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->isOurThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/kroll/KrollContext;->handleEval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 261
    :goto_0
    return-object v2

    .line 258
    :cond_0
    new-instance v1, Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-direct {v1}, Lorg/appcelerator/titanium/util/AsyncResult;-><init>()V

    .line 259
    .local v1, result:Lorg/appcelerator/titanium/util/AsyncResult;
    iget-object v2, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiMessageQueue;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "src"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-virtual {v2, v0, v3, v1}, Lorg/appcelerator/titanium/TiMessageQueue;->sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/titanium/TiMessageQueue;Lorg/appcelerator/titanium/util/AsyncResult;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public evalFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "filename"

    .prologue
    .line 156
    sget-boolean v2, Lorg/appcelerator/titanium/kroll/KrollContext;->DBG:Z

    if-eqz v2, :cond_0

    .line 157
    const-string v2, "KrollContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evalFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->isOurThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/kroll/KrollContext;->handleEvalFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 167
    :goto_0
    return-object v2

    .line 164
    :cond_1
    new-instance v1, Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-direct {v1}, Lorg/appcelerator/titanium/util/AsyncResult;-><init>()V

    .line 165
    .local v1, result:Lorg/appcelerator/titanium/util/AsyncResult;
    iget-object v2, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiMessageQueue;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-virtual {v2, v0, v3, v1}, Lorg/appcelerator/titanium/TiMessageQueue;->sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/titanium/TiMessageQueue;Lorg/appcelerator/titanium/util/AsyncResult;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public evaluateScript(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .parameter "filename"

    .prologue
    const/4 v3, 0x0

    const-string v1, "KrollContext"

    .line 203
    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    aput-object p1, v8, v3

    .line 204
    .local v8, parts:[Ljava/lang/String;
    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-static {v1, v8, v3}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v9

    .line 205
    .local v9, tbf:Lorg/appcelerator/titanium/io/TiBaseFile;
    const/4 v6, 0x0

    .line 207
    .local v6, br:Ljava/io/BufferedReader;
    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/kroll/KrollContext;->enter(Z)Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 209
    .local v0, context:Lorg/mozilla/javascript/Context;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0xfa0

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v6           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_1
    const-string v1, "KrollContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running evaluated script: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->jsScope:Lorg/mozilla/javascript/ScriptableObject;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/Context;->evaluateReader(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .line 216
    if-eqz v2, :cond_0

    .line 218
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 224
    :cond_0
    :goto_0
    return-object v1

    .line 212
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v2, v6

    .line 213
    .end local v6           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .local v7, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v1, "KrollContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException reading file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    invoke-static {v7}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 216
    if-eqz v2, :cond_1

    .line 218
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 224
    :cond_1
    :goto_2
    sget-object v1, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    goto :goto_0

    .line 216
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v7           #e:Ljava/io/IOException;
    .restart local v6       #br:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v1

    move-object v2, v6

    .end local v6           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :goto_3
    if-eqz v2, :cond_2

    .line 218
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 221
    :cond_2
    :goto_4
    throw v1

    .line 219
    :catch_1
    move-exception v3

    goto :goto_0

    .restart local v7       #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    goto :goto_2

    .end local v7           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto :goto_4

    .line 216
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 212
    :catch_4
    move-exception v1

    move-object v7, v1

    goto :goto_1
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 326
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 327
    return-void
.end method

.method public getMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    return-object v0
.end method

.method public getResourcesInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 293
    .local v1, is:Ljava/io/InputStream;
    iget-object v2, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->tiContext:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 294
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiFileHelper2;->getResourcesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 298
    :cond_0
    return-object v1
.end method

.method public getScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->requireInitialized()V

    .line 151
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->jsScope:Lorg/mozilla/javascript/ScriptableObject;

    return-object v0
.end method

.method public getTiContext()Lorg/appcelerator/titanium/TiContext;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->tiContext:Lorg/appcelerator/titanium/TiContext;

    return-object v0
.end method

.method public handleEval(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    const-string v1, "Error evaluating source: "

    const-string v1, "KrollContext"

    .line 266
    invoke-direct {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->requireInitialized()V

    .line 268
    const/4 v7, 0x0

    .line 269
    .local v7, result:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/kroll/KrollContext;->enter(Z)Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 271
    .local v0, ctx:Lorg/mozilla/javascript/Context;
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->jsScope:Lorg/mozilla/javascript/ScriptableObject;

    const-string v3, "<anonymous>"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/mozilla/javascript/EcmaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 282
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    .line 285
    .end local v7           #result:Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 272
    .restart local v7       #result:Ljava/lang/Object;
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 273
    .local v6, e:Lorg/mozilla/javascript/EcmaError;
    :try_start_1
    const-string v1, "KrollContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ECMA Error evaluating source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lorg/mozilla/javascript/EcmaError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    invoke-virtual {v6}, Lorg/mozilla/javascript/EcmaError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/mozilla/javascript/EcmaError;->sourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/mozilla/javascript/EcmaError;->lineNumber()I

    move-result v3

    invoke-virtual {v6}, Lorg/mozilla/javascript/EcmaError;->lineSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lorg/mozilla/javascript/EcmaError;->columnNumber()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    goto :goto_0

    .line 275
    .end local v6           #e:Lorg/mozilla/javascript/EcmaError;
    :catch_1
    move-exception v1

    move-object v6, v1

    .line 276
    .local v6, e:Lorg/mozilla/javascript/EvaluatorException;
    :try_start_2
    const-string v1, "KrollContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error evaluating source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lorg/mozilla/javascript/EvaluatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    invoke-virtual {v6}, Lorg/mozilla/javascript/EvaluatorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/mozilla/javascript/EvaluatorException;->sourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/mozilla/javascript/EvaluatorException;->lineNumber()I

    move-result v3

    invoke-virtual {v6}, Lorg/mozilla/javascript/EvaluatorException;->lineSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lorg/mozilla/javascript/EvaluatorException;->columnNumber()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    goto :goto_0

    .line 278
    .end local v6           #e:Lorg/mozilla/javascript/EvaluatorException;
    :catch_2
    move-exception v1

    move-object v6, v1

    .line 279
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "KrollContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error evaluating source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    invoke-static {v6}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    throw v1
.end method

.method public handleEvalFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "filename"

    .prologue
    const-string v4, "KrollContext"

    .line 229
    invoke-direct {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->requireInitialized()V

    .line 230
    const/4 v1, 0x0

    .line 233
    .local v1, result:Ljava/lang/Object;
    :try_start_0
    iget-boolean v2, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->useOptimization:Z

    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/kroll/KrollContext;->runCompiledScript(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 249
    .end local v1           #result:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 236
    .restart local v1       #result:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/kroll/KrollContext;->evaluateScript(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mozilla/javascript/EcmaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 239
    .local v0, e:Lorg/mozilla/javascript/EcmaError;
    const-string v2, "KrollContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ECMA Error evaluating source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mozilla/javascript/EcmaError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    invoke-virtual {v0}, Lorg/mozilla/javascript/EcmaError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mozilla/javascript/EcmaError;->sourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/mozilla/javascript/EcmaError;->lineNumber()I

    move-result v4

    invoke-virtual {v0}, Lorg/mozilla/javascript/EcmaError;->lineSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/mozilla/javascript/EcmaError;->columnNumber()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    goto :goto_0

    .line 241
    .end local v0           #e:Lorg/mozilla/javascript/EcmaError;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 242
    .local v0, e:Lorg/mozilla/javascript/EvaluatorException;
    const-string v2, "KrollContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error evaluating source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mozilla/javascript/EvaluatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    invoke-virtual {v0}, Lorg/mozilla/javascript/EvaluatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mozilla/javascript/EvaluatorException;->sourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/mozilla/javascript/EvaluatorException;->lineNumber()I

    move-result v4

    invoke-virtual {v0}, Lorg/mozilla/javascript/EvaluatorException;->lineSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/mozilla/javascript/EvaluatorException;->columnNumber()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    goto :goto_0

    .line 244
    .end local v0           #e:Lorg/mozilla/javascript/EvaluatorException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 245
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "KrollContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 111
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 126
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 114
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 115
    .local v1, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "src"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, src:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/kroll/KrollContext;->handleEval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v5

    .line 117
    goto :goto_0

    .line 120
    .end local v1           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    .end local v2           #src:Ljava/lang/String;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 121
    .restart local v1       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "filename"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, filename:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/kroll/KrollContext;->handleEvalFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v3, v5

    .line 123
    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initContext()V
    .locals 4

    .prologue
    const-string v3, "KrollContext"

    .line 89
    sget-boolean v1, Lorg/appcelerator/titanium/kroll/KrollContext;->DBG:Z

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "KrollContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    .line 93
    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiMessageQueue;->setCallback(Landroid/os/Handler$Callback;)V

    .line 94
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 96
    .local v0, ctx:Lorg/mozilla/javascript/Context;
    :try_start_0
    sget-boolean v1, Lorg/appcelerator/titanium/kroll/KrollContext;->DBG:Z

    if-eqz v1, :cond_1

    .line 97
    const-string v1, "KrollContext"

    const-string v2, "Context entered, preparing scope"

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->initStandardObjects()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->jsScope:Lorg/mozilla/javascript/ScriptableObject;

    .line 100
    sget-boolean v1, Lorg/appcelerator/titanium/kroll/KrollContext;->DBG:Z

    if-eqz v1, :cond_2

    .line 101
    const-string v1, "KrollContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized scope: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->jsScope:Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->initialized:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    throw v1
.end method

.method protected isOurThread()Z
    .locals 4

    .prologue
    .line 137
    sget-boolean v0, Lorg/appcelerator/titanium/kroll/KrollContext;->DBG:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "KrollContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThreadId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->thread:Lorg/appcelerator/titanium/kroll/KrollHandlerThread;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentThreadId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->thread:Lorg/appcelerator/titanium/kroll/KrollHandlerThread;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 131
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->messageQueue:Lorg/appcelerator/titanium/TiMessageQueue;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/TiMessageQueue;->post(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V
    .locals 2
    .parameter "name"
    .parameter "object"

    .prologue
    .line 303
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->jsScope:Lorg/mozilla/javascript/ScriptableObject;

    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->jsScope:Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v0, p1, v1, p2}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->thread:Lorg/appcelerator/titanium/kroll/KrollHandlerThread;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->thread:Lorg/appcelerator/titanium/kroll/KrollHandlerThread;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/kroll/KrollHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 375
    :cond_0
    return-void
.end method

.method protected runCompiledScript(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter "filename"

    .prologue
    const/4 v4, 0x1

    const-string v5, "file:///android_asset/Resources/"

    const-string v3, "app://"

    const-string v2, "KrollContext"

    .line 172
    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const-string v2, "app://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    const-string v2, "app://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    .line 179
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lorg/appcelerator/titanium/kroll/KrollContext;->enter(Z)Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 191
    .local v0, context:Lorg/mozilla/javascript/Context;
    :try_start_0
    const-string v2, "KrollContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running pre-compiled script: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lorg/appcelerator/titanium/TiScriptRunner;->getInstance()Lorg/appcelerator/titanium/TiScriptRunner;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/kroll/KrollContext;->jsScope:Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v2, v0, v3, p1}, Lorg/appcelerator/titanium/TiScriptRunner;->runScript(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 196
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    .line 198
    .end local v0           #context:Lorg/mozilla/javascript/Context;
    :goto_1
    return-object v2

    .line 181
    :cond_1
    const-string v2, "file:///android_asset/Resources/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    const-string v2, "file:///android_asset/Resources/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/kroll/KrollContext;->evaluateScript(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 193
    .restart local v0       #context:Lorg/mozilla/javascript/Context;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 194
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v2, "KrollContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find pre-compiled class for script: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    .line 198
    sget-object v2, Lorg/mozilla/javascript/ScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    goto :goto_1

    .line 196
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    throw v2
.end method
