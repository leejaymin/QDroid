.class public abstract LbL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Landroid/location/LocationManager;

.field protected static b:Z

.field protected static c:Z

.field protected static d:LbN;

.field protected static e:Landroid/os/Looper;

.field private static f:LbL;

.field private static k:Ljava/lang/Thread;


# instance fields
.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 22
    sput-object v0, LbL;->f:LbL;

    .line 23
    sput-object v0, LbL;->a:Landroid/location/LocationManager;

    .line 26
    sput-boolean v1, LbL;->b:Z

    .line 27
    sput-boolean v1, LbL;->c:Z

    .line 28
    sput-object v0, LbL;->d:LbN;

    .line 155
    sput-object v0, LbL;->e:Landroid/os/Looper;

    .line 156
    sput-object v0, LbL;->k:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LbL;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LbL;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LbL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LbL;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)LbL;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 181
    const-class v1, LbL;

    monitor-enter v1

    :try_start_0
    sget-object v0, LbL;->f:LbL;

    if-nez v0, :cond_1

    .line 183
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, LbL;->a:Landroid/location/LocationManager;

    .line 184
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Wrong SDK version 1.5"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 188
    :cond_0
    :try_start_1
    new-instance v0, LbO;

    invoke-direct {v0, p0}, LbO;-><init>(Landroid/content/Context;)V

    sput-object v0, LbL;->f:LbL;

    .line 191
    :cond_1
    if-eqz p1, :cond_2

    .line 192
    invoke-static {}, LbL;->s()V

    .line 193
    new-instance v0, LbM;

    sget-object v2, LbL;->f:LbL;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2, p0}, LbM;-><init>(LbL;Landroid/content/Context;)V

    .line 194
    sput-object v0, LbL;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 196
    :cond_2
    sget-object v0, LbL;->f:LbL;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method static a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    const-string v1, "position"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string v1, "iono"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string v1, "utc"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v1, "health"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string v1, "svdir"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string v1, "svsteer"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    const-string v1, "sadata"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    const-string v1, "rti"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v1, "celldb-info"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    sget-object v1, LbL;->a:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-string v3, "delete_aiding_data"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 252
    return-void
.end method

.method static b()V
    .locals 4

    .prologue
    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    const-string v1, "all"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    sget-object v1, LbL;->a:Landroid/location/LocationManager;

    const-string v2, "network"

    const-string v3, "delete_aiding_data"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 264
    return-void
.end method

.method static synthetic r()LbL;
    .locals 1

    .prologue
    .line 20
    sget-object v0, LbL;->f:LbL;

    return-object v0
.end method

.method private static s()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    sget-object v0, LbL;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    sget-object v0, LbL;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    sget-object v0, LbL;->e:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, LbL;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 206
    :cond_0
    :try_start_0
    sget-object v0, LbL;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    sput-object v1, LbL;->k:Ljava/lang/Thread;

    .line 211
    sput-object v1, LbL;->e:Landroid/os/Looper;

    .line 213
    :cond_1
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized t()Z
    .locals 4

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LbL;->q()Z

    move-result v1

    .line 269
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 271
    const/16 v2, 0xd

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, LfZ;->a(ILjava/lang/Object;)V

    .line 272
    invoke-virtual {v0}, LfZ;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return v1

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, LbL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 40
    iget-object v0, p0, LbL;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 43
    invoke-virtual {p0}, LbL;->m()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, LbL;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {p0}, LbL;->n()V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, LbL;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LbL;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, LbL;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LbL;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    :cond_4
    sget-object v0, LbL;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, LbL;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LbL;->e:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, LbL;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method

.method public abstract a(I)Z
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, LbL;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 65
    iget-object v0, p0, LbL;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 68
    invoke-virtual {p0}, LbL;->o()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, LbL;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p0}, LbL;->p()V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, LbL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LbL;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, LbL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LbL;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :cond_4
    sget-object v0, LbL;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, LbL;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LbL;->e:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, LbL;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method

.method protected final declared-synchronized c()Z
    .locals 2

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 281
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 282
    monitor-exit p0

    return v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized d()Z
    .locals 4

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LbL;->l()Z

    move-result v1

    .line 288
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 290
    const/16 v2, 0xe

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, LfZ;->a(ILjava/lang/Object;)V

    .line 291
    invoke-virtual {v0}, LfZ;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return v1

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized e()Z
    .locals 2

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 300
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 301
    monitor-exit p0

    return v0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 1

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LbL;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LbL;->l()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    sget-object v0, LbL;->f:LbL;

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, LbL;->s()V

    .line 220
    :cond_0
    sput-object v1, LbL;->d:LbN;

    .line 221
    sput-object v1, LbL;->f:LbL;

    .line 222
    return-void
.end method

.method public final declared-synchronized g()V
    .locals 2

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LbL;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, LbL;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 315
    invoke-virtual {p0}, LbL;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_0
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()V
    .locals 2

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LbL;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, LbL;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 325
    invoke-virtual {p0}, LbL;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :goto_0
    monitor-exit p0

    return-void

    .line 327
    :cond_0
    :try_start_1
    iget-object v0, p0, LbL;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 328
    invoke-virtual {p0}, LbL;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()V
    .locals 2

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LbL;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, LbL;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 337
    invoke-virtual {p0}, LbL;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_0
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()V
    .locals 2

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LbL;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, LbL;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 347
    invoke-virtual {p0}, LbL;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :goto_0
    monitor-exit p0

    return-void

    .line 349
    :cond_0
    :try_start_1
    iget-object v0, p0, LbL;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 350
    invoke-virtual {p0}, LbL;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract k()Z
.end method

.method protected abstract l()Z
.end method

.method protected abstract m()V
.end method

.method protected abstract n()V
.end method

.method protected abstract o()V
.end method

.method protected abstract p()V
.end method

.method protected abstract q()Z
.end method
