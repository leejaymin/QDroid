.class public final Lorg/cocos2d/m/a/e;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/cocos2d/m/c/c;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cocos2d/m/a/f;

    invoke-direct {v0, p0}, Lorg/cocos2d/m/a/f;-><init>(Lorg/cocos2d/m/a/e;)V

    iput-object v0, p0, Lorg/cocos2d/m/a/e;->a:Lorg/cocos2d/m/c/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/m/a/e;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/m/a/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/m/a/g;

    iget-object v0, v0, Lorg/cocos2d/m/a/g;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Lorg/cocos2d/m/a/g;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/m/a/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lorg/cocos2d/m/a/g;)Lorg/cocos2d/m/a/g;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lorg/cocos2d/m/a/g;->c:Lorg/cocos2d/m/a/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/m/a/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v0, p0, Lorg/cocos2d/m/a/e;->a:Lorg/cocos2d/m/c/c;

    invoke-virtual {v0}, Lorg/cocos2d/m/c/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/m/a/g;

    iput-object p1, v0, Lorg/cocos2d/m/a/g;->a:Ljava/lang/Object;

    iput-object p2, v0, Lorg/cocos2d/m/a/g;->b:Ljava/lang/Object;

    iget-object v1, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v2, :cond_0

    iget-object v1, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    const/4 v3, 0x1

    sub-int v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/m/a/g;

    iput-object v0, v1, Lorg/cocos2d/m/a/g;->c:Lorg/cocos2d/m/a/g;

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/m/a/e;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/m/a/g;

    iput-object p2, v0, Lorg/cocos2d/m/a/g;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/m/a/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/cocos2d/m/a/e;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v4, v1, v7

    iget-object v1, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/m/a/g;

    iget-object v5, v1, Lorg/cocos2d/m/a/g;->b:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    iget-object v1, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/m/a/g;

    iget-object v6, v1, Lorg/cocos2d/m/a/g;->a:Ljava/lang/Object;

    iget-object v1, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/m/a/g;

    iget-object v2, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2d/m/a/g;

    iget-object v2, v2, Lorg/cocos2d/m/a/g;->b:Ljava/lang/Object;

    iput-object v2, v1, Lorg/cocos2d/m/a/g;->b:Ljava/lang/Object;

    iget-object v1, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/m/a/g;

    iput-object v6, v1, Lorg/cocos2d/m/a/g;->a:Ljava/lang/Object;

    iget-object v1, p0, Lorg/cocos2d/m/a/e;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v4, :cond_2

    iget-object v0, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    sub-int v1, v4, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/m/a/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/cocos2d/m/a/g;->c:Lorg/cocos2d/m/a/g;

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/m/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/m/a/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/cocos2d/m/a/g;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/cocos2d/m/a/g;->b:Ljava/lang/Object;

    iget-object v1, p0, Lorg/cocos2d/m/a/e;->a:Lorg/cocos2d/m/c/c;

    invoke-virtual {v1, v0}, Lorg/cocos2d/m/c/c;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
