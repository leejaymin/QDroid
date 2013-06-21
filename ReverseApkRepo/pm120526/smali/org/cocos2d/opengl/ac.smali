.class final Lorg/cocos2d/opengl/ac;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Lorg/cocos2d/opengl/ab;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/opengl/ac;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lorg/cocos2d/opengl/ac;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/opengl/ac;->b:I

    iget v0, p0, Lorg/cocos2d/opengl/ac;->b:I

    const/high16 v1, 0x2

    if-lt v0, v1, :cond_0

    iput-boolean v2, p0, Lorg/cocos2d/opengl/ac;->d:Z

    :cond_0
    iput-boolean v2, p0, Lorg/cocos2d/opengl/ac;->a:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/cocos2d/opengl/ac;->c:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/cocos2d/opengl/ac;->a()V

    iget v0, p0, Lorg/cocos2d/opengl/ac;->b:I

    const/high16 v1, 0x2

    if-ge v0, v1, :cond_0

    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/opengl/ac;->d:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/ac;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lorg/cocos2d/opengl/ab;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/cocos2d/opengl/ab;->a(Lorg/cocos2d/opengl/ab;)V

    iget-object v0, p0, Lorg/cocos2d/opengl/ac;->e:Lorg/cocos2d/opengl/ab;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/opengl/ac;->e:Lorg/cocos2d/opengl/ab;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lorg/cocos2d/opengl/ab;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/cocos2d/opengl/ac;->e:Lorg/cocos2d/opengl/ab;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/opengl/ac;->e:Lorg/cocos2d/opengl/ab;

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lorg/cocos2d/opengl/ac;->e:Lorg/cocos2d/opengl/ab;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lorg/cocos2d/opengl/ac;->a()V

    iget-boolean v0, p0, Lorg/cocos2d/opengl/ac;->d:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lorg/cocos2d/opengl/ab;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/ac;->e:Lorg/cocos2d/opengl/ab;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/opengl/ac;->e:Lorg/cocos2d/opengl/ab;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method
