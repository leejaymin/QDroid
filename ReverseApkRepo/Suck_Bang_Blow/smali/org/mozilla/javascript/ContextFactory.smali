.class public Lorg/mozilla/javascript/ContextFactory;
.super Ljava/lang/Object;
.source "ContextFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/ContextFactory$GlobalSetter;,
        Lorg/mozilla/javascript/ContextFactory$Listener;
    }
.end annotation


# static fields
.field private static global:Lorg/mozilla/javascript/ContextFactory;

.field private static volatile hasCustomGlobal:Z


# instance fields
.field private applicationClassLoader:Ljava/lang/ClassLoader;

.field private disabledListening:Z

.field private volatile listeners:Ljava/lang/Object;

.field private final listenersLock:Ljava/lang/Object;

.field private volatile sealed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lorg/mozilla/javascript/ContextFactory;

    invoke-direct {v0}, Lorg/mozilla/javascript/ContextFactory;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ContextFactory;->global:Lorg/mozilla/javascript/ContextFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->listenersLock:Ljava/lang/Object;

    .line 215
    return-void
.end method

.method static synthetic access$000()Lorg/mozilla/javascript/ContextFactory;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lorg/mozilla/javascript/ContextFactory;->global:Lorg/mozilla/javascript/ContextFactory;

    return-object v0
.end method

.method static synthetic access$002(Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/ContextFactory;
    .locals 0
    .parameter "x0"

    .prologue
    .line 142
    sput-object p0, Lorg/mozilla/javascript/ContextFactory;->global:Lorg/mozilla/javascript/ContextFactory;

    return-object p0
.end method

.method public static getGlobal()Lorg/mozilla/javascript/ContextFactory;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lorg/mozilla/javascript/ContextFactory;->global:Lorg/mozilla/javascript/ContextFactory;

    return-object v0
.end method

.method public static declared-synchronized getGlobalSetter()Lorg/mozilla/javascript/ContextFactory$GlobalSetter;
    .locals 2

    .prologue
    .line 221
    const-class v0, Lorg/mozilla/javascript/ContextFactory;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lorg/mozilla/javascript/ContextFactory;->hasCustomGlobal:Z

    if-eqz v1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 224
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lorg/mozilla/javascript/ContextFactory;->hasCustomGlobal:Z

    .line 233
    new-instance v1, Lorg/mozilla/javascript/ContextFactory$1GlobalSetterImpl;

    invoke-direct {v1}, Lorg/mozilla/javascript/ContextFactory$1GlobalSetterImpl;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1
.end method

.method public static hasExplicitGlobal()Z
    .locals 1

    .prologue
    .line 193
    sget-boolean v0, Lorg/mozilla/javascript/ContextFactory;->hasCustomGlobal:Z

    return v0
.end method

.method public static declared-synchronized initGlobal(Lorg/mozilla/javascript/ContextFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    .line 205
    const-class v0, Lorg/mozilla/javascript/ContextFactory;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 206
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 208
    :cond_0
    :try_start_1
    sget-boolean v1, Lorg/mozilla/javascript/ContextFactory;->hasCustomGlobal:Z

    if-eqz v1, :cond_1

    .line 209
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 211
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lorg/mozilla/javascript/ContextFactory;->hasCustomGlobal:Z

    .line 212
    sput-object p0, Lorg/mozilla/javascript/ContextFactory;->global:Lorg/mozilla/javascript/ContextFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    monitor-exit v0

    return-void
.end method

.method private isDom3Present()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 320
    const-string v2, "org.w3c.dom.Node"

    invoke-static {v2}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 321
    .local v1, nodeClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    move v2, v6

    .line 328
    :goto_0
    return v2

    .line 325
    :cond_0
    :try_start_0
    const-string v2, "getUserData"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v7

    .line 326
    goto :goto_0

    .line 327
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/NoSuchMethodException;
    move v2, v6

    .line 328
    goto :goto_0
.end method


# virtual methods
.method public final addListener(Lorg/mozilla/javascript/ContextFactory$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 462
    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    .line 463
    iget-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    iget-boolean v1, p0, Lorg/mozilla/javascript/ContextFactory;->disabledListening:Z

    if-eqz v1, :cond_0

    .line 465
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 467
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/mozilla/javascript/Kit;->addListener(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    .line 468
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    return-void
.end method

.method public final call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;
    .locals 1
    .parameter "action"

    .prologue
    .line 535
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final checkNotSealed()V
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lorg/mozilla/javascript/ContextFactory;->sealed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 518
    :cond_0
    return-void
.end method

.method protected createClassLoader(Ljava/lang/ClassLoader;)Lorg/mozilla/javascript/GeneratedClassLoader;
    .locals 1
    .parameter "parent"

    .prologue
    .line 376
    new-instance v0, Lorg/mozilla/javascript/ContextFactory$1;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/ContextFactory$1;-><init>(Lorg/mozilla/javascript/ContextFactory;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/GeneratedClassLoader;

    return-object p0
.end method

.method final disableContextListening()V
    .locals 2

    .prologue
    .line 488
    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    .line 489
    iget-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/mozilla/javascript/ContextFactory;->disabledListening:Z

    .line 491
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    .line 492
    monitor-exit v0

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "callable"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 426
    invoke-interface {p1, p2, p3, p4, p5}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final enter()Lorg/mozilla/javascript/Context;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ContextFactory;->enterContext(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Context;

    move-result-object v0

    return-object v0
.end method

.method public enterContext()Lorg/mozilla/javascript/Context;
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ContextFactory;->enterContext(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Context;

    move-result-object v0

    return-object v0
.end method

.method public final enterContext(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Context;
    .locals 1
    .parameter "cx"

    .prologue
    .line 616
    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->enter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/Context;

    move-result-object v0

    return-object v0
.end method

.method public final exit()V
    .locals 0

    .prologue
    .line 596
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 597
    return-void
.end method

.method public final getApplicationClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->applicationClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method protected getE4xImplementationFactory()Lorg/mozilla/javascript/xml/XMLLib$Factory;
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lorg/mozilla/javascript/ContextFactory;->isDom3Present()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "org.mozilla.javascript.xmlimpl.XMLLibImpl"

    invoke-static {v0}, Lorg/mozilla/javascript/xml/XMLLib$Factory;->create(Ljava/lang/String;)Lorg/mozilla/javascript/xml/XMLLib$Factory;

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    .line 356
    :cond_0
    const-string v0, "org.apache.xmlbeans.XmlCursor"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    const-string v0, "org.mozilla.javascript.xml.impl.xmlbeans.XMLLibImpl"

    invoke-static {v0}, Lorg/mozilla/javascript/xml/XMLLib$Factory;->create(Ljava/lang/String;)Lorg/mozilla/javascript/xml/XMLLib$Factory;

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasFeature(Lorg/mozilla/javascript/Context;I)Z
    .locals 5
    .parameter "cx"
    .parameter "featureIndex"

    .prologue
    const/16 v4, 0x78

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    packed-switch p2, :pswitch_data_0

    .line 316
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :pswitch_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    .line 272
    .local v0, version:I
    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    move v1, v3

    .line 313
    .end local v0           #version:I
    :goto_0
    return v1

    .restart local v0       #version:I
    :cond_1
    move v1, v2

    .line 272
    goto :goto_0

    .end local v0           #version:I
    :pswitch_1
    move v1, v2

    .line 277
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 280
    goto :goto_0

    .line 283
    :pswitch_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    .line 284
    .restart local v0       #version:I
    if-ne v0, v4, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #version:I
    :pswitch_4
    move v1, v3

    .line 287
    goto :goto_0

    .line 290
    :pswitch_5
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    .line 291
    .restart local v0       #version:I
    if-eqz v0, :cond_3

    const/16 v1, 0xa0

    if-lt v0, v1, :cond_4

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0           #version:I
    :pswitch_6
    move v1, v2

    .line 295
    goto :goto_0

    :pswitch_7
    move v1, v2

    .line 298
    goto :goto_0

    :pswitch_8
    move v1, v2

    .line 301
    goto :goto_0

    :pswitch_9
    move v1, v2

    .line 304
    goto :goto_0

    :pswitch_a
    move v1, v2

    .line 307
    goto :goto_0

    :pswitch_b
    move v1, v2

    .line 310
    goto :goto_0

    :pswitch_c
    move v1, v2

    .line 313
    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public final initApplicationClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2
    .parameter "loader"

    .prologue
    .line 401
    if-nez p1, :cond_0

    .line 402
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "loader is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/Kit;->testIfCanLoadRhinoClasses(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Loader can not resolve Rhino classes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->applicationClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_2

    .line 408
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "applicationClassLoader can only be set once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    .line 412
    iput-object p1, p0, Lorg/mozilla/javascript/ContextFactory;->applicationClassLoader:Ljava/lang/ClassLoader;

    .line 413
    return-void
.end method

.method public final isSealed()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lorg/mozilla/javascript/ContextFactory;->sealed:Z

    return v0
.end method

.method protected makeContext()Lorg/mozilla/javascript/Context;
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lorg/mozilla/javascript/Context;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/Context;-><init>(Lorg/mozilla/javascript/ContextFactory;)V

    return-object v0
.end method

.method protected observeInstructionCount(Lorg/mozilla/javascript/Context;I)V
    .locals 0
    .parameter "cx"
    .parameter "instructionCount"

    .prologue
    .line 436
    return-void
.end method

.method protected onContextCreated(Lorg/mozilla/javascript/Context;)V
    .locals 3
    .parameter "cx"

    .prologue
    .line 440
    iget-object v2, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    .line 441
    .local v2, listeners:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 442
    .local v0, i:I
    :goto_0
    invoke-static {v2, v0}, Lorg/mozilla/javascript/Kit;->getListener(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ContextFactory$Listener;

    .line 443
    .local v1, l:Lorg/mozilla/javascript/ContextFactory$Listener;
    if-nez v1, :cond_0

    .line 447
    return-void

    .line 445
    :cond_0
    invoke-interface {v1, p1}, Lorg/mozilla/javascript/ContextFactory$Listener;->contextCreated(Lorg/mozilla/javascript/Context;)V

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onContextReleased(Lorg/mozilla/javascript/Context;)V
    .locals 3
    .parameter "cx"

    .prologue
    .line 451
    iget-object v2, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    .line 452
    .local v2, listeners:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 453
    .local v0, i:I
    :goto_0
    invoke-static {v2, v0}, Lorg/mozilla/javascript/Kit;->getListener(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ContextFactory$Listener;

    .line 454
    .local v1, l:Lorg/mozilla/javascript/ContextFactory$Listener;
    if-nez v1, :cond_0

    .line 458
    return-void

    .line 456
    :cond_0
    invoke-interface {v1, p1}, Lorg/mozilla/javascript/ContextFactory$Listener;->contextReleased(Lorg/mozilla/javascript/Context;)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final removeListener(Lorg/mozilla/javascript/ContextFactory$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 473
    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    .line 474
    iget-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_0
    iget-boolean v1, p0, Lorg/mozilla/javascript/ContextFactory;->disabledListening:Z

    if-eqz v1, :cond_0

    .line 476
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 478
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/mozilla/javascript/Kit;->removeListener(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    .line 479
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    return-void
.end method

.method public final seal()V
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ContextFactory;->sealed:Z

    .line 513
    return-void
.end method
