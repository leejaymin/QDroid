.class public final Lcom/google/ads/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:J

.field private static g:J

.field private static i:J


# instance fields
.field private a:Ljava/util/LinkedList;

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/util/LinkedList;

.field private h:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Ljava/util/LinkedList;

.field private o:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 86
    sput-wide v0, Lcom/google/ads/internal/t;->f:J

    .line 89
    sput-wide v0, Lcom/google/ads/internal/t;->g:J

    .line 95
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/ads/internal/t;->i:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v0, p0, Lcom/google/ads/internal/t;->j:Z

    .line 105
    iput-boolean v0, p0, Lcom/google/ads/internal/t;->k:Z

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/t;->a:Ljava/util/LinkedList;

    .line 129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/t;->e:Ljava/util/LinkedList;

    .line 130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/t;->n:Ljava/util/LinkedList;

    .line 131
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/t;->o:Ljava/util/LinkedList;

    .line 132
    invoke-virtual {p0}, Lcom/google/ads/internal/t;->a()V

    .line 133
    return-void
.end method

.method protected static o()J
    .locals 2

    .prologue
    .line 324
    sget-wide v0, Lcom/google/ads/internal/t;->f:J

    return-wide v0
.end method

.method protected static p()J
    .locals 2

    .prologue
    .line 328
    sget-wide v0, Lcom/google/ads/internal/t;->g:J

    return-wide v0
.end method

.method protected static q()V
    .locals 4

    .prologue
    .line 332
    const-string v0, "Ad request network error"

    invoke-static {v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;)V

    .line 333
    sget-wide v0, Lcom/google/ads/internal/t;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/google/ads/internal/t;->g:J

    .line 334
    return-void
.end method

.method public static y()J
    .locals 4

    .prologue
    .line 386
    sget-wide v0, Lcom/google/ads/internal/t;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/ads/internal/t;->i:J

    .line 389
    const-wide/16 v0, 0x0

    .line 391
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/google/ads/internal/t;->i:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/t;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/internal/t;->b:J

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/internal/t;->c:J

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/internal/t;->d:J

    .line 143
    iget-object v0, p0, Lcom/google/ads/internal/t;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 144
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/internal/t;->m:J

    .line 145
    iget-object v0, p0, Lcom/google/ads/internal/t;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 146
    iget-object v0, p0, Lcom/google/ads/internal/t;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/t;->h:Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/t;->j:Z

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/t;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/ah;)V
    .locals 5
    .parameter

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/t;->n:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/ads/internal/t;->m:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/google/ads/internal/t;->o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Prior ad identifier = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;)V

    .line 342
    iput-object p1, p0, Lcom/google/ads/internal/t;->h:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/t;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 158
    iget-object v0, p0, Lcom/google/ads/internal/t;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Prior impression ticket = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;)V

    .line 377
    iput-object p1, p0, Lcom/google/ads/internal/t;->l:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/internal/t;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    iget-object v0, p0, Lcom/google/ads/internal/t;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 192
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    iget-object v0, p0, Lcom/google/ads/internal/t;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ah;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 203
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/ah;->ordinal()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 215
    const-string v0, "Ad clicked."

    invoke-static {v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/google/ads/internal/t;->a:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method protected final g()V
    .locals 2

    .prologue
    .line 223
    const-string v0, "Ad request loaded."

    invoke-static {v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/internal/t;->b:J

    .line 225
    return-void
.end method

.method protected final declared-synchronized h()V
    .locals 2

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    const-string v0, "Ad request before rendering."

    invoke-static {v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/internal/t;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final i()V
    .locals 4

    .prologue
    .line 239
    const-string v0, "Ad request started."

    invoke-static {v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/internal/t;->d:J

    .line 241
    sget-wide v0, Lcom/google/ads/internal/t;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/google/ads/internal/t;->f:J

    .line 242
    return-void
.end method

.method protected final j()J
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/ads/internal/t;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/internal/t;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 251
    const-wide/16 v0, -0x1

    .line 253
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/t;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method protected final k()Ljava/lang/String;
    .locals 7

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/ads/internal/t;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/internal/t;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/internal/t;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 268
    :cond_0
    const/4 v0, 0x0

    .line 280
    :goto_0
    return-object v0

    .line 272
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/ads/internal/t;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 274
    if-eqz v1, :cond_2

    .line 275
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/google/ads/internal/t;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/ads/internal/t;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 280
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final l()Ljava/lang/String;
    .locals 7

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/ads/internal/t;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    .line 297
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/ads/internal/t;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 299
    if-eqz v1, :cond_1

    .line 300
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/google/ads/internal/t;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/ads/internal/t;->b:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 305
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final m()J
    .locals 4

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/google/ads/internal/t;->b:J

    iget-wide v2, p0, Lcom/google/ads/internal/t;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected final declared-synchronized n()J
    .locals 4

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/ads/internal/t;->c:J

    iget-wide v2, p0, Lcom/google/ads/internal/t;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/ads/internal/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected final s()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/google/ads/internal/t;->j:Z

    return v0
.end method

.method protected final t()V
    .locals 1

    .prologue
    .line 350
    const-string v0, "Interstitial network error."

    invoke-static {v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/t;->j:Z

    .line 352
    return-void
.end method

.method protected final u()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/google/ads/internal/t;->k:Z

    return v0
.end method

.method protected final v()V
    .locals 1

    .prologue
    .line 359
    const-string v0, "Interstitial no fill."

    invoke-static {v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/t;->k:Z

    .line 361
    return-void
.end method

.method public final w()V
    .locals 3

    .prologue
    .line 367
    const-string v0, "Landing page dismissed."

    invoke-static {v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/google/ads/internal/t;->e:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method protected final x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/ads/internal/t;->l:Ljava/lang/String;

    return-object v0
.end method
