.class public Lorg/cocos2d/a/e;
.super Ljava/lang/Object;


# static fields
.field static final synthetic j:Z

.field private static l:Lorg/cocos2d/a/e;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/util/ArrayList;

.field c:Ljava/util/ArrayList;

.field d:Lorg/cocos2d/m/a/e;

.field e:Ljava/util/concurrent/ConcurrentHashMap;

.field f:Lorg/cocos2d/a/g;

.field g:Lorg/cocos2d/a/f;

.field h:Z

.field i:Ljava/lang/String;

.field private k:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/a/e;->j:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/a/e;->l:Lorg/cocos2d/a/e;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/a/e;->k:F

    const-string v0, "update"

    iput-object v0, p0, Lorg/cocos2d/a/e;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/a/e;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/a/e;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lorg/cocos2d/m/a/e;

    invoke-direct {v0}, Lorg/cocos2d/m/a/e;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/a/e;->g:Lorg/cocos2d/a/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/a/e;->h:Z

    return-void
.end method

.method public static a()Lorg/cocos2d/a/e;
    .locals 2

    sget-object v0, Lorg/cocos2d/a/e;->l:Lorg/cocos2d/a/e;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2d/a/e;->l:Lorg/cocos2d/a/e;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lorg/cocos2d/a/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/cocos2d/a/e;->l:Lorg/cocos2d/a/e;

    if-nez v1, :cond_1

    new-instance v1, Lorg/cocos2d/a/e;

    invoke-direct {v1}, Lorg/cocos2d/a/e;-><init>()V

    sput-object v1, Lorg/cocos2d/a/e;->l:Lorg/cocos2d/a/e;

    :cond_1
    sget-object v1, Lorg/cocos2d/a/e;->l:Lorg/cocos2d/a/e;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/Object;IZ)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v2, Lorg/cocos2d/a/g;

    invoke-direct {v2, v7}, Lorg/cocos2d/a/g;-><init>(B)V

    iput-object p2, v2, Lorg/cocos2d/a/g;->c:Ljava/lang/Object;

    iput p3, v2, Lorg/cocos2d/a/g;->d:I

    iput-boolean p4, v2, Lorg/cocos2d/a/g;->e:Z

    instance-of v1, p2, Lorg/cocos2d/a/i;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/cocos2d/a/i;

    move-object v1, v0

    iput-object v1, v2, Lorg/cocos2d/a/g;->b:Lorg/cocos2d/a/i;

    :goto_0
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lorg/cocos2d/a/f;

    invoke-direct {v1, v7}, Lorg/cocos2d/a/f;-><init>(B)V

    iput-object p2, v1, Lorg/cocos2d/a/f;->b:Ljava/lang/Object;

    iput-object p1, v1, Lorg/cocos2d/a/f;->c:Ljava/util/ArrayList;

    iput-object v2, v1, Lorg/cocos2d/a/f;->d:Lorg/cocos2d/a/g;

    iget-object v2, p0, Lorg/cocos2d/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p0, Lorg/cocos2d/a/e;->i:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v2, Lorg/cocos2d/a/g;->a:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v7

    :goto_2
    if-lt v4, v3, :cond_3

    move v1, v7

    :goto_3
    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1

    :cond_3
    :try_start_3
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/a/g;

    iget v1, v1, Lorg/cocos2d/a/g;->d:I

    if-ge p3, v1, :cond_4

    invoke-virtual {p1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v8

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/Object;Z)V
    .locals 8

    const/4 v7, 0x0

    new-instance v2, Lorg/cocos2d/a/g;

    invoke-direct {v2, v7}, Lorg/cocos2d/a/g;-><init>(B)V

    iput-object p2, v2, Lorg/cocos2d/a/g;->c:Ljava/lang/Object;

    iput-boolean p3, v2, Lorg/cocos2d/a/g;->e:Z

    instance-of v1, p2, Lorg/cocos2d/a/i;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/cocos2d/a/i;

    move-object v1, v0

    iput-object v1, v2, Lorg/cocos2d/a/g;->b:Lorg/cocos2d/a/i;

    :goto_0
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lorg/cocos2d/a/f;

    invoke-direct {v1, v7}, Lorg/cocos2d/a/f;-><init>(B)V

    iput-object p2, v1, Lorg/cocos2d/a/f;->b:Ljava/lang/Object;

    iput-object p1, v1, Lorg/cocos2d/a/f;->c:Ljava/util/ArrayList;

    iput-object v2, v1, Lorg/cocos2d/a/f;->d:Lorg/cocos2d/a/g;

    iget-object v2, p0, Lorg/cocos2d/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p0, Lorg/cocos2d/a/e;->i:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v2, Lorg/cocos2d/a/g;->a:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
.end method


# virtual methods
.method public final a(F)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget v1, p0, Lorg/cocos2d/a/e;->k:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_e

    iget v1, p0, Lorg/cocos2d/a/e;->k:F

    mul-float/2addr v1, p1

    move v3, v1

    :goto_0
    iput-boolean v10, p0, Lorg/cocos2d/a/e;->h:Z

    iget-object v2, p0, Lorg/cocos2d/a/e;->a:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v10

    move v5, v1

    :goto_1
    if-lt v4, v5, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cocos2d/a/e;->f:Lorg/cocos2d/a/g;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/cocos2d/a/e;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lorg/cocos2d/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v10

    move v5, v1

    :goto_2
    if-lt v4, v5, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cocos2d/a/e;->f:Lorg/cocos2d/a/g;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, p0, Lorg/cocos2d/a/e;->c:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_2
    iget-object v1, p0, Lorg/cocos2d/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v10

    move v5, v1

    :goto_3
    if-lt v4, v5, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cocos2d/a/e;->f:Lorg/cocos2d/a/g;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v1}, Lorg/cocos2d/m/a/e;->a()Lorg/cocos2d/m/a/g;

    move-result-object v1

    move-object v4, v1

    :goto_4
    if-nez v4, :cond_6

    iput-object v11, p0, Lorg/cocos2d/a/e;->g:Lorg/cocos2d/a/f;

    return-void

    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/cocos2d/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/a/g;

    iput-object v1, p0, Lorg/cocos2d/a/e;->f:Lorg/cocos2d/a/g;

    iget-boolean v6, v1, Lorg/cocos2d/a/g;->e:Z

    if-nez v6, :cond_d

    iget-object v6, v1, Lorg/cocos2d/a/g;->b:Lorg/cocos2d/a/i;

    if-eqz v6, :cond_1

    iget-object v1, v1, Lorg/cocos2d/a/g;->b:Lorg/cocos2d/a/i;

    invoke-interface {v1, v3}, Lorg/cocos2d/a/i;->a(F)V

    :goto_5
    iget-boolean v1, p0, Lorg/cocos2d/a/e;->h:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/cocos2d/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v4, -0x1

    add-int/lit8 v4, v5, -0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/cocos2d/a/e;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    move v4, v1

    goto :goto_1

    :cond_1
    :try_start_4
    iget-object v6, v1, Lorg/cocos2d/a/g;->a:Ljava/lang/reflect/Method;

    iget-object v1, v1, Lorg/cocos2d/a/g;->c:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    :try_start_6
    iget-object v1, p0, Lorg/cocos2d/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/a/g;

    iput-object v1, p0, Lorg/cocos2d/a/e;->f:Lorg/cocos2d/a/g;

    iget-boolean v6, v1, Lorg/cocos2d/a/g;->e:Z

    if-nez v6, :cond_c

    iget-object v6, v1, Lorg/cocos2d/a/g;->b:Lorg/cocos2d/a/i;

    if-eqz v6, :cond_3

    iget-object v1, v1, Lorg/cocos2d/a/g;->b:Lorg/cocos2d/a/i;

    invoke-interface {v1, v3}, Lorg/cocos2d/a/i;->a(F)V

    :goto_7
    iget-boolean v1, p0, Lorg/cocos2d/a/e;->h:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/cocos2d/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v4, -0x1

    add-int/lit8 v4, v5, -0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/cocos2d/a/e;->h:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    move v4, v1

    goto/16 :goto_2

    :cond_3
    :try_start_7
    iget-object v6, v1, Lorg/cocos2d/a/g;->a:Ljava/lang/reflect/Method;

    iget-object v1, v1, Lorg/cocos2d/a/g;->c:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    :catch_1
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_4
    :try_start_9
    iget-object v1, p0, Lorg/cocos2d/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/a/g;

    iput-object v1, p0, Lorg/cocos2d/a/e;->f:Lorg/cocos2d/a/g;

    iget-boolean v6, v1, Lorg/cocos2d/a/g;->e:Z

    if-nez v6, :cond_b

    iget-object v6, v1, Lorg/cocos2d/a/g;->b:Lorg/cocos2d/a/i;

    if-eqz v6, :cond_5

    iget-object v1, v1, Lorg/cocos2d/a/g;->b:Lorg/cocos2d/a/i;

    invoke-interface {v1, v3}, Lorg/cocos2d/a/i;->a(F)V

    :goto_9
    iget-boolean v1, p0, Lorg/cocos2d/a/e;->h:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/cocos2d/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v4, -0x1

    add-int/lit8 v4, v5, -0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/cocos2d/a/e;->h:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_a
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    move v4, v1

    goto/16 :goto_3

    :cond_5
    :try_start_a
    iget-object v6, v1, Lorg/cocos2d/a/g;->a:Ljava/lang/reflect/Method;

    iget-object v1, v1, Lorg/cocos2d/a/g;->c:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_9

    :catch_2
    move-exception v1

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_6
    invoke-virtual {v4}, Lorg/cocos2d/m/a/g;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/cocos2d/a/f;

    move-object v2, v0

    iput-object v2, p0, Lorg/cocos2d/a/e;->g:Lorg/cocos2d/a/f;

    iput-boolean v10, p0, Lorg/cocos2d/a/e;->h:Z

    iget-object v1, p0, Lorg/cocos2d/a/e;->g:Lorg/cocos2d/a/f;

    iget-boolean v1, v1, Lorg/cocos2d/a/f;->h:Z

    if-nez v1, :cond_7

    iget-object v1, v2, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iput v10, v2, Lorg/cocos2d/a/f;->e:I

    :goto_b
    iget v1, v2, Lorg/cocos2d/a/f;->e:I

    iget-object v5, v2, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_9

    :cond_7
    iget-boolean v1, p0, Lorg/cocos2d/a/e;->h:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/cocos2d/a/e;->g:Lorg/cocos2d/a/f;

    iget-object v1, v1, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    iget-object v2, v2, Lorg/cocos2d/a/f;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/cocos2d/m/a/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v1, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v1, v4}, Lorg/cocos2d/m/a/e;->a(Lorg/cocos2d/m/a/g;)Lorg/cocos2d/m/a/g;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_4

    :cond_9
    iget-object v1, v2, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    iget v5, v2, Lorg/cocos2d/a/f;->e:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/a/h;

    iput-object v1, v2, Lorg/cocos2d/a/f;->f:Lorg/cocos2d/a/h;

    iput-boolean v10, v2, Lorg/cocos2d/a/f;->g:Z

    iget-object v1, v2, Lorg/cocos2d/a/f;->f:Lorg/cocos2d/a/h;

    invoke-virtual {v1, v3}, Lorg/cocos2d/a/h;->a(F)V

    iget-boolean v1, v2, Lorg/cocos2d/a/f;->g:Z

    if-eqz v1, :cond_a

    iput-object v11, v2, Lorg/cocos2d/a/f;->f:Lorg/cocos2d/a/h;

    :cond_a
    iput-object v11, v2, Lorg/cocos2d/a/f;->f:Lorg/cocos2d/a/h;

    iget v1, v2, Lorg/cocos2d/a/f;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lorg/cocos2d/a/f;->e:I

    goto :goto_b

    :cond_b
    move v1, v4

    move v4, v5

    goto/16 :goto_a

    :cond_c
    move v1, v4

    move v4, v5

    goto/16 :goto_8

    :cond_d
    move v1, v4

    move v4, v5

    goto/16 :goto_6

    :cond_e
    move v3, p1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/f;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/cocos2d/a/f;->c:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/a/e;->f:Lorg/cocos2d/a/g;

    iget-object v3, v0, Lorg/cocos2d/a/f;->d:Lorg/cocos2d/a/g;

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/a/e;->h:Z

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/cocos2d/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, v0, Lorg/cocos2d/a/f;->c:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/cocos2d/a/f;->d:Lorg/cocos2d/a/g;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/Object;IZ)V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/f;

    sget-boolean v1, Lorg/cocos2d/a/e;->j:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CCScheduler: You can\'t re-schedule an \'update\' selector\'. Unschedule it first"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/cocos2d/a/e;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p3}, Lorg/cocos2d/a/e;->a(Ljava/util/ArrayList;Ljava/lang/Object;Z)V

    :goto_0
    return-void

    :cond_1
    if-gez p2, :cond_2

    iget-object v0, p0, Lorg/cocos2d/a/e;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/cocos2d/a/e;->a(Ljava/util/ArrayList;Ljava/lang/Object;IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/a/e;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/cocos2d/a/e;->a(Ljava/util/ArrayList;Ljava/lang/Object;IZ)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lorg/cocos2d/a/e;->j:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Target MUST not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    sget-boolean v0, Lorg/cocos2d/a/e;->j:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Selector MUST not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p2}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/a/h;

    invoke-virtual {v1}, Lorg/cocos2d/a/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/cocos2d/a/f;->f:Lorg/cocos2d/a/h;

    if-ne v1, v3, :cond_4

    iget-boolean v1, v0, Lorg/cocos2d/a/f;->g:Z

    if-nez v1, :cond_4

    iput-boolean v4, v0, Lorg/cocos2d/a/f;->g:Z

    :cond_4
    iget-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v1, v0, Lorg/cocos2d/a/f;->e:I

    if-lt v1, v2, :cond_5

    iget v1, v0, Lorg/cocos2d/a/f;->e:I

    sub-int/2addr v1, v4

    iput v1, v0, Lorg/cocos2d/a/f;->e:I

    :cond_5
    iget-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/a/e;->g:Lorg/cocos2d/a/f;

    if-ne v1, v0, :cond_6

    iput-boolean v4, p0, Lorg/cocos2d/a/e;->h:Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    iget-object v0, v0, Lorg/cocos2d/a/f;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lorg/cocos2d/m/a/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;FZ)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/a/e;->j:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument selector must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/cocos2d/a/e;->j:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument target must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p2}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/f;

    if-nez v0, :cond_4

    new-instance v0, Lorg/cocos2d/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/cocos2d/a/f;-><init>(B)V

    iput-object p2, v0, Lorg/cocos2d/a/f;->b:Ljava/lang/Object;

    iget-object v1, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v1, p2, v0}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean p4, v0, Lorg/cocos2d/a/f;->h:Z

    :cond_2
    iget-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    :cond_3
    new-instance v1, Lorg/cocos2d/a/h;

    invoke-direct {v1, p2, p1, p3}, Lorg/cocos2d/a/h;-><init>(Ljava/lang/Object;Ljava/lang/String;F)V

    iget-object v0, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    sget-boolean v1, Lorg/cocos2d/a/e;->j:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lorg/cocos2d/a/f;->h:Z

    if-eq v1, p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CCScheduler. Trying to schedule a selector with a pause value different than the target"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lorg/cocos2d/a/i;)V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/f;

    sget-boolean v1, Lorg/cocos2d/a/e;->j:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CCScheduler: You can\'t re-schedule an \'update\' selector\'. Unschedule it first"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/a/e;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/cocos2d/a/e;->a(Ljava/util/ArrayList;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final a(Lorg/cocos2d/a/i;Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lorg/cocos2d/a/e;->j:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Target MUST not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    sget-boolean v0, Lorg/cocos2d/a/e;->j:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Selector MUST not be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p2}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/a/h;

    invoke-virtual {v1}, Lorg/cocos2d/a/h;->b()Lorg/cocos2d/a/i;

    move-result-object v3

    if-ne p1, v3, :cond_7

    iget-object v3, v0, Lorg/cocos2d/a/f;->f:Lorg/cocos2d/a/h;

    if-ne v1, v3, :cond_4

    iget-boolean v1, v0, Lorg/cocos2d/a/f;->g:Z

    if-nez v1, :cond_4

    iput-boolean v4, v0, Lorg/cocos2d/a/f;->g:Z

    :cond_4
    iget-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v1, v0, Lorg/cocos2d/a/f;->e:I

    if-lt v1, v2, :cond_5

    iget v1, v0, Lorg/cocos2d/a/f;->e:I

    sub-int/2addr v1, v4

    iput v1, v0, Lorg/cocos2d/a/f;->e:I

    :cond_5
    iget-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/a/e;->g:Lorg/cocos2d/a/f;

    if-ne v1, v0, :cond_6

    iput-boolean v4, p0, Lorg/cocos2d/a/e;->h:Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    iget-object v0, v0, Lorg/cocos2d/a/f;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lorg/cocos2d/m/a/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public final a(Lorg/cocos2d/a/i;Ljava/lang/Object;FZ)V
    .locals 2

    sget-boolean v0, Lorg/cocos2d/a/e;->j:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument callback must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/cocos2d/a/e;->j:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument target must be non-nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p2}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/f;

    if-nez v0, :cond_4

    new-instance v0, Lorg/cocos2d/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/cocos2d/a/f;-><init>(B)V

    iput-object p2, v0, Lorg/cocos2d/a/f;->b:Ljava/lang/Object;

    iget-object v1, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v1, p2, v0}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean p4, v0, Lorg/cocos2d/a/f;->h:Z

    :cond_2
    iget-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    :cond_3
    new-instance v1, Lorg/cocos2d/a/h;

    invoke-direct {v1, p2, p1, p3}, Lorg/cocos2d/a/h;-><init>(Ljava/lang/Object;Lorg/cocos2d/a/i;F)V

    iget-object v0, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    sget-boolean v1, Lorg/cocos2d/a/e;->j:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lorg/cocos2d/a/f;->h:Z

    if-eq v1, p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CCScheduler. Trying to schedule a selector with a pause value different than the target"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p1}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/f;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lorg/cocos2d/a/f;->g:Z

    if-nez v1, :cond_1

    iput-boolean v2, v0, Lorg/cocos2d/a/f;->g:Z

    :cond_1
    iget-object v1, v0, Lorg/cocos2d/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/cocos2d/a/e;->g:Lorg/cocos2d/a/f;

    if-ne v1, v0, :cond_3

    iput-boolean v2, p0, Lorg/cocos2d/a/e;->h:Z

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lorg/cocos2d/a/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    iget-object v0, v0, Lorg/cocos2d/a/f;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lorg/cocos2d/m/a/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lorg/cocos2d/a/e;->j:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "target must be non nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p1}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/f;

    if-eqz v0, :cond_1

    iput-boolean v1, v0, Lorg/cocos2d/a/f;->h:Z

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/a/f;

    if-eqz p0, :cond_3

    sget-boolean v0, Lorg/cocos2d/a/e;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/a/f;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "resumeTarget: unknown error"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/cocos2d/a/f;->a(Z)V

    :cond_3
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lorg/cocos2d/a/e;->j:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "target must be non nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p1}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/f;

    if-eqz v0, :cond_1

    iput-boolean v1, v0, Lorg/cocos2d/a/f;->h:Z

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/a/e;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/a/f;

    if-eqz p0, :cond_3

    sget-boolean v0, Lorg/cocos2d/a/e;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/a/f;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "pauseTarget: unknown error"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/cocos2d/a/f;->a(Z)V

    :cond_3
    return-void
.end method

.method public finalize()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0}, Lorg/cocos2d/m/a/e;->a()Lorg/cocos2d/m/a/g;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/a/e;->l:Lorg/cocos2d/a/e;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_0
    invoke-virtual {v1}, Lorg/cocos2d/m/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/f;

    iget-object v0, v0, Lorg/cocos2d/a/f;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/cocos2d/a/e;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/cocos2d/a/e;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, v1}, Lorg/cocos2d/m/a/e;->a(Lorg/cocos2d/m/a/g;)Lorg/cocos2d/m/a/g;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/g;

    iget-object v0, v0, Lorg/cocos2d/a/g;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/cocos2d/a/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/g;

    iget-object v0, v0, Lorg/cocos2d/a/g;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/cocos2d/a/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/g;

    iget-object v0, v0, Lorg/cocos2d/a/g;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/cocos2d/a/e;->a(Ljava/lang/Object;)V

    goto :goto_3
.end method
