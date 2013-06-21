.class public final Lorg/cocos2d/opengl/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/cocos2d/opengl/n;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private c:Ljava/util/Map;

.field private volatile d:J

.field private volatile e:Z

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cocos2d/opengl/n;

    invoke-direct {v0}, Lorg/cocos2d/opengl/n;-><init>()V

    sput-object v0, Lorg/cocos2d/opengl/n;->a:Lorg/cocos2d/opengl/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/opengl/n;->f:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/opengl/n;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/n;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lorg/cocos2d/opengl/n;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/n;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static a()Lorg/cocos2d/opengl/n;
    .locals 1

    sget-object v0, Lorg/cocos2d/opengl/n;->a:Lorg/cocos2d/opengl/n;

    return-object v0
.end method

.method static synthetic b(Lorg/cocos2d/opengl/n;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/opengl/n;->e:Z

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lorg/cocos2d/opengl/n;->d:J

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/n;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/cocos2d/opengl/n;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/opengl/q;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Lorg/cocos2d/opengl/q;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public final a(Lorg/cocos2d/opengl/q;)V
    .locals 4

    iget-boolean v0, p0, Lorg/cocos2d/opengl/n;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/cocos2d/opengl/n;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v0}, Lorg/cocos2d/opengl/q;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/opengl/n;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lorg/cocos2d/opengl/s;Lorg/cocos2d/opengl/r;Z)V
    .locals 1

    if-eqz p3, :cond_0

    new-instance v0, Lorg/cocos2d/opengl/o;

    invoke-direct {v0, p0, p2, p1}, Lorg/cocos2d/opengl/o;-><init>(Lorg/cocos2d/opengl/n;Lorg/cocos2d/opengl/r;Lorg/cocos2d/opengl/s;)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/q;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/opengl/n;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/cocos2d/opengl/n;->f:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lorg/cocos2d/opengl/n;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/n;->e:Z

    iget-object v0, p0, Lorg/cocos2d/opengl/n;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lorg/cocos2d/opengl/p;

    invoke-direct {v1, p0}, Lorg/cocos2d/opengl/p;-><init>(Lorg/cocos2d/opengl/n;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
