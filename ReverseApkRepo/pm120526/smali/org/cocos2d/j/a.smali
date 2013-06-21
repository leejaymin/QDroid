.class public Lorg/cocos2d/j/a;
.super Ljava/lang/Object;


# static fields
.field static k:Lorg/cocos2d/j/a;


# instance fields
.field a:Lorg/cocos2d/m/a/h;

.field b:Lorg/cocos2d/m/a/h;

.field c:Lorg/cocos2d/m/a/h;

.field d:Landroid/media/SoundPool;

.field e:I

.field f:Ljava/lang/Float;

.field g:Ljava/lang/Float;

.field h:Ljava/lang/Float;

.field i:Ljava/lang/Float;

.field j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/j/a;->k:Lorg/cocos2d/j/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cocos2d/m/a/h;

    invoke-direct {v0}, Lorg/cocos2d/m/a/h;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/j/a;->a:Lorg/cocos2d/m/a/h;

    new-instance v0, Lorg/cocos2d/m/a/h;

    invoke-direct {v0}, Lorg/cocos2d/m/a/h;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/j/a;->b:Lorg/cocos2d/m/a/h;

    new-instance v0, Lorg/cocos2d/m/a/h;

    invoke-direct {v0}, Lorg/cocos2d/m/a/h;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/j/a;->c:Lorg/cocos2d/m/a/h;

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/cocos2d/j/a;->d:Landroid/media/SoundPool;

    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/j/a;->e:I

    iput-object v3, p0, Lorg/cocos2d/j/a;->f:Ljava/lang/Float;

    iput-object v3, p0, Lorg/cocos2d/j/a;->g:Ljava/lang/Float;

    iput-object v3, p0, Lorg/cocos2d/j/a;->h:Ljava/lang/Float;

    iput-object v3, p0, Lorg/cocos2d/j/a;->i:Ljava/lang/Float;

    iput-boolean v4, p0, Lorg/cocos2d/j/a;->j:Z

    return-void
.end method

.method public static a()Lorg/cocos2d/j/a;
    .locals 2

    const-class v0, Lorg/cocos2d/j/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/cocos2d/j/a;->k:Lorg/cocos2d/j/a;

    if-nez v1, :cond_0

    new-instance v1, Lorg/cocos2d/j/a;

    invoke-direct {v1}, Lorg/cocos2d/j/a;-><init>()V

    sput-object v1, Lorg/cocos2d/j/a;->k:Lorg/cocos2d/j/a;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/cocos2d/j/a;->k:Lorg/cocos2d/j/a;

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 8

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    const v7, 0x7f050006

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v1, p0, Lorg/cocos2d/j/a;->a:Lorg/cocos2d/m/a/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/j/a;->a:Lorg/cocos2d/m/a/h;

    const v3, 0x7f050006

    invoke-virtual {v0, v3}, Lorg/cocos2d/m/a/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/j/a;->d:Landroid/media/SoundPool;

    const v3, 0x7f050006

    const/4 v5, 0x0

    invoke-virtual {v0, p1, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lorg/cocos2d/j/a;->a:Lorg/cocos2d/m/a/h;

    const v5, 0x7f050006

    invoke-virtual {v3, v5, v0}, Lorg/cocos2d/m/a/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v3, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/cocos2d/j/a;->d:Landroid/media/SoundPool;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iget-object v1, p0, Lorg/cocos2d/j/a;->h:Ljava/lang/Float;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/j/a;->d:Landroid/media/SoundPool;

    iget-object v2, p0, Lorg/cocos2d/j/a;->h:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/j/a;->h:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    :cond_1
    iget-object v1, p0, Lorg/cocos2d/j/a;->b:Lorg/cocos2d/m/a/h;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lorg/cocos2d/m/a/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 3

    iget v0, p0, Lorg/cocos2d/j/a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/j/a;->b()V

    :cond_0
    iget-object v1, p0, Lorg/cocos2d/j/a;->c:Lorg/cocos2d/m/a/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/j/a;->c:Lorg/cocos2d/m/a/h;

    invoke-virtual {v0, p2}, Lorg/cocos2d/m/a/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/cocos2d/j/a;->c:Lorg/cocos2d/m/a/h;

    invoke-virtual {v2, p2, v0}, Lorg/cocos2d/m/a/h;->a(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput p2, p0, Lorg/cocos2d/j/a;->e:I

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v1, p0, Lorg/cocos2d/j/a;->i:Ljava/lang/Float;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/cocos2d/j/a;->i:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lorg/cocos2d/j/a;->i:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    iget v0, p0, Lorg/cocos2d/j/a;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/j/a;->c:Lorg/cocos2d/m/a/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/j/a;->c:Lorg/cocos2d/m/a/h;

    iget v2, p0, Lorg/cocos2d/j/a;->e:I

    invoke-virtual {v1, v2}, Lorg/cocos2d/m/a/h;->a(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaPlayer;

    if-nez p0, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    monitor-exit v0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/j/a;->c:Lorg/cocos2d/m/a/h;

    invoke-virtual {v0}, Lorg/cocos2d/m/a/h;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/j/a;->c:Lorg/cocos2d/m/a/h;

    invoke-virtual {v0}, Lorg/cocos2d/m/a/h;->a()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/m/a/i;

    invoke-virtual {v0}, Lorg/cocos2d/m/a/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0
.end method
