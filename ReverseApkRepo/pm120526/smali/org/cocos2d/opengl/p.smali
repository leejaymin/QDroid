.class final Lorg/cocos2d/opengl/p;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/q;


# instance fields
.field final synthetic a:Lorg/cocos2d/opengl/n;


# direct methods
.method constructor <init>(Lorg/cocos2d/opengl/n;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/opengl/p;->a:Lorg/cocos2d/opengl/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    iget-object v0, p0, Lorg/cocos2d/opengl/p;->a:Lorg/cocos2d/opengl/n;

    invoke-static {v0}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/n;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/opengl/p;->a:Lorg/cocos2d/opengl/n;

    invoke-static {v0}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/n;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/cocos2d/opengl/p;->a:Lorg/cocos2d/opengl/n;

    invoke-static {v0}, Lorg/cocos2d/opengl/n;->b(Lorg/cocos2d/opengl/n;)V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/opengl/s;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/opengl/r;

    invoke-interface {v0, v1}, Lorg/cocos2d/opengl/r;->a(Lorg/cocos2d/opengl/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
