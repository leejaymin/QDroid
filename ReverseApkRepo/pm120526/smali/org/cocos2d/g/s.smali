.class public Lorg/cocos2d/g/s;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static c:Lorg/cocos2d/g/s;


# instance fields
.field private b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/g/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/g/s;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/cocos2d/g/s;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/cocos2d/g/s;->c:Lorg/cocos2d/g/s;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Attempted to allocate a second instance of a singleton."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const-class v0, Lorg/cocos2d/g/s;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/cocos2d/g/s;->b:Ljava/util/HashMap;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a()Lorg/cocos2d/g/s;
    .locals 2

    const-class v0, Lorg/cocos2d/g/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/cocos2d/g/s;->c:Lorg/cocos2d/g/s;

    if-nez v1, :cond_0

    new-instance v1, Lorg/cocos2d/g/s;

    invoke-direct {v1}, Lorg/cocos2d/g/s;-><init>()V

    sput-object v1, Lorg/cocos2d/g/s;->c:Lorg/cocos2d/g/s;

    :cond_0
    sget-object v1, Lorg/cocos2d/g/s;->c:Lorg/cocos2d/g/s;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()V
    .locals 4

    sget-object v0, Lorg/cocos2d/g/s;->c:Lorg/cocos2d/g/s;

    if-eqz v0, :cond_1

    sget-object v1, Lorg/cocos2d/g/s;->c:Lorg/cocos2d/g/s;

    iget-object v0, v1, Lorg/cocos2d/g/s;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lorg/cocos2d/g/s;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/opengl/i;

    if-eqz v0, :cond_0

    sget-object v3, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v3}, Lorg/cocos2d/opengl/i;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;
    .locals 3

    sget-boolean v0, Lorg/cocos2d/g/s;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TextureMgr: path must not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/s;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/opengl/i;

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/cocos2d/opengl/i;

    invoke-direct {v0}, Lorg/cocos2d/opengl/i;-><init>()V

    new-instance v1, Lorg/cocos2d/g/t;

    invoke-direct {v1, p1}, Lorg/cocos2d/g/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/i;->a(Lorg/cocos2d/opengl/r;)V

    iget-object v1, p0, Lorg/cocos2d/g/s;->b:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
