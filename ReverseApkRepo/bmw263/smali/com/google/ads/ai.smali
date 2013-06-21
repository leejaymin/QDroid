.class public final Lcom/google/ads/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/ads/internal/u;

.field private final b:Lcom/google/ads/af;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/ads/ah;

.field private final f:Lcom/google/ads/ab;

.field private g:Lcom/google/ads/a/b;

.field private h:Z

.field private i:Z

.field private j:Landroid/view/View;

.field private final k:Landroid/os/Handler;

.field private final l:Ljava/lang/String;

.field private final m:Lcom/google/ads/d;

.field private final n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/google/ads/ab;Lcom/google/ads/internal/u;Lcom/google/ads/af;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Z)V

    .line 103
    iput-object p1, p0, Lcom/google/ads/ai;->f:Lcom/google/ads/ab;

    .line 104
    iput-object p2, p0, Lcom/google/ads/ai;->a:Lcom/google/ads/internal/u;

    .line 105
    iput-object p3, p0, Lcom/google/ads/ai;->b:Lcom/google/ads/af;

    .line 106
    iput-object p4, p0, Lcom/google/ads/ai;->l:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/google/ads/ai;->m:Lcom/google/ads/d;

    .line 108
    iput-object p6, p0, Lcom/google/ads/ai;->n:Ljava/util/HashMap;

    .line 109
    iput-boolean v1, p0, Lcom/google/ads/ai;->c:Z

    .line 110
    iput-boolean v1, p0, Lcom/google/ads/ai;->d:Z

    .line 111
    iput-object v2, p0, Lcom/google/ads/ai;->e:Lcom/google/ads/ah;

    .line 112
    iput-object v2, p0, Lcom/google/ads/ai;->g:Lcom/google/ads/a/b;

    .line 113
    iput-boolean v1, p0, Lcom/google/ads/ai;->h:Z

    .line 114
    iput-boolean v1, p0, Lcom/google/ads/ai;->i:Z

    .line 115
    iput-object v2, p0, Lcom/google/ads/ai;->j:Landroid/view/View;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/ads/ai;->k:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/google/ads/ai;)Lcom/google/ads/a/b;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/ads/ai;->g:Lcom/google/ads/a/b;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/ai;->h:Z

    const-string v1, "destroy() called but startLoadAdTask has not been called."

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(ZLjava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/google/ads/ai;->k:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/aj;

    invoke-direct {v1, p0}, Lcom/google/ads/aj;-><init>(Lcom/google/ads/ai;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/app/Activity;)V
    .locals 7
    .parameter

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/ai;->h:Z

    const-string v1, "startLoadAdTask has already been called."

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->b(ZLjava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/ai;->h:Z

    .line 143
    iget-object v6, p0, Lcom/google/ads/ai;->k:Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/ak;

    iget-object v3, p0, Lcom/google/ads/ai;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/ai;->m:Lcom/google/ads/d;

    iget-object v5, p0, Lcom/google/ads/ai;->n:Ljava/util/HashMap;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/ak;-><init>(Lcom/google/ads/ai;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/google/ads/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ads/ai;->g:Lcom/google/ads/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/google/ads/ah;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/ai;->d:Z

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/ai;->c:Z

    .line 263
    iput-object p1, p0, Lcom/google/ads/ai;->e:Lcom/google/ads/ah;

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/ai;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 2

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/ai;->c:Z

    const-string v1, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(ZLjava/lang/String;)V

    .line 197
    iget-boolean v0, p0, Lcom/google/ads/ai;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lcom/google/ads/ah;
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ai;->e:Lcom/google/ads/ah;

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lcom/google/ads/ah;->d:Lcom/google/ads/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/ai;->e:Lcom/google/ads/ah;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Landroid/view/View;
    .locals 2

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/ai;->c:Z

    const-string v1, "getAdView() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->a(ZLjava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/google/ads/ai;->j:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/ai;->g:Lcom/google/ads/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/ai;->g:Lcom/google/ads/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "\"adapter was not created.\""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized g()V
    .locals 1

    .prologue
    .line 288
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/ai;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized h()Z
    .locals 1

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/ai;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
