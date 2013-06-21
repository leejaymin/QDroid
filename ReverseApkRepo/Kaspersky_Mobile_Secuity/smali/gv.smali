.class public final Lgv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfD;
.implements Ljava/lang/Runnable;


# static fields
.field private static i:Ljava/util/Vector;


# instance fields
.field private a:Ljava/util/Set;

.field private b:Landroid/content/Context;

.field private c:Lgy;

.field private d:Ljava/util/Vector;

.field private e:Lgu;

.field private f:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private g:LfE;

.field private h:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 370
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lgv;->i:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgv;->a:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lgv;->d:Ljava/util/Vector;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lgv;->e:Lgu;

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lgv;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lgv;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 59
    iput-object p1, p0, Lgv;->b:Landroid/content/Context;

    .line 60
    new-instance v0, Lgy;

    iget-object v1, p0, Lgv;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lgy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgv;->c:Lgy;

    .line 61
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 62
    iget-boolean v1, v0, Lgf;->b:Z

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lgv;->c:Lgy;

    iget-object v2, p0, Lgv;->a:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lgy;->b(Ljava/util/Set;)I

    .line 65
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lgw;

    invoke-direct {v2, p0, v0}, Lgw;-><init>(Lgv;Lgf;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 80
    :cond_0
    return-void
.end method

.method static synthetic a(Lgv;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lgv;->h:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private a(Lgf;)V
    .locals 4
    .parameter

    .prologue
    .line 84
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->getPhones()Ljava/util/Set;

    move-result-object v0

    .line 86
    iget-boolean v1, p1, Lgf;->c:Z

    if-eqz v1, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v2

    iget-object v3, p0, Lgv;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lgr;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 91
    iget-object v2, p0, Lgv;->c:Lgy;

    invoke-virtual {v2, v0}, Lgy;->f(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 92
    iget-object v2, p0, Lgv;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 93
    iget-object v0, p0, Lgv;->c:Lgy;

    iget-object v2, p0, Lgv;->a:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lgy;->a(Ljava/util/Set;)I

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public static a(Lgu;)V
    .locals 1
    .parameter

    .prologue
    .line 374
    sget-object v0, Lgv;->i:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 375
    return-void
.end method

.method static synthetic a(Lgv;Lgf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lgv;->a(Lgf;)V

    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 182
    iget-object v0, p0, Lgv;->c:Lgy;

    invoke-virtual {v0}, Lgy;->c()V

    .line 183
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 184
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lgv;->a:Ljava/util/Set;

    .line 185
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/privacyprotection/PPItemsStorage;->syncContacts()V

    .line 186
    iget-boolean v1, v0, Lgf;->c:Z

    if-eqz v1, :cond_3

    .line 188
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 192
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/privacyprotection/PPItemsStorage;->getContactsIds()Ljava/util/Vector;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/privacyprotection/PPItemsStorage;->getPhones()Ljava/util/Set;

    move-result-object v1

    .line 194
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v4

    iget-object v5, p0, Lgv;->b:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lgr;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 200
    :cond_0
    iget-object v1, p0, Lgv;->c:Lgy;

    invoke-virtual {v1, v2}, Lgy;->e(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lgv;->a:Ljava/util/Set;

    .line 201
    iget-object v1, p0, Lgv;->a:Ljava/util/Set;

    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kms/privacyprotection/PPItemsStorage;->getPhones()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    :goto_1
    iget-object v1, p0, Lgv;->c:Lgy;

    iget-object v2, p0, Lgv;->a:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lgy;->a(Ljava/util/Set;)I

    .line 212
    iget-object v1, p0, Lgv;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 214
    iget-boolean v1, v0, Lgf;->e:Z

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lgv;->c:Lgy;

    iget-object v2, p0, Lgv;->a:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lgy;->d(Ljava/util/Set;)I

    .line 221
    :cond_1
    iget-boolean v0, v0, Lgf;->d:Z

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lgv;->c:Lgy;

    iget-object v1, p0, Lgv;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lgy;->c(Ljava/util/Set;)I

    .line 227
    :cond_2
    return-void

    .line 205
    :cond_3
    iget-object v1, p0, Lgv;->a:Ljava/util/Set;

    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v2

    iget-object v3, p0, Lgv;->b:Landroid/content/Context;

    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kms/privacyprotection/PPItemsStorage;->getContactsIds()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgr;->a(Landroid/content/Context;Ljava/util/Vector;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 206
    iget-object v1, p0, Lgv;->a:Ljava/util/Set;

    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kms/privacyprotection/PPItemsStorage;->getPhones()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public static b(Lgu;)V
    .locals 1
    .parameter

    .prologue
    .line 379
    sget-object v0, Lgv;->i:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lgv;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 279
    invoke-static {p1}, Lfp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    if-eqz v2, :cond_1

    .line 282
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lfp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 231
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 232
    iget-boolean v1, v0, Lgf;->c:Z

    if-eqz v1, :cond_0

    .line 234
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 237
    iget-object v2, p0, Lgv;->c:Lgy;

    invoke-virtual {v2, v1}, Lgy;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lgv;->d:Ljava/util/Vector;

    .line 238
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v2

    iget-object v3, p0, Lgv;->d:Ljava/util/Vector;

    invoke-virtual {v2, v3, v1}, Lcom/kms/privacyprotection/PPItemsStorage;->updateContacts(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 239
    :cond_0
    iget-object v1, p0, Lgv;->d:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 246
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lgv;->d:Ljava/util/Vector;

    .line 247
    :cond_1
    iget-boolean v1, v0, Lgf;->e:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lgf;->f:Z

    if-eqz v1, :cond_3

    .line 249
    :cond_2
    iget-object v1, p0, Lgv;->c:Lgy;

    invoke-virtual {v1}, Lgy;->b()I

    move-result v1

    .line 252
    if-lez v1, :cond_3

    .line 254
    iget-object v2, p0, Lgv;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lfp;->a(Landroid/content/Context;I)V

    .line 257
    :cond_3
    iget-boolean v1, v0, Lgf;->d:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lgf;->g:Z

    if-eqz v0, :cond_5

    .line 259
    :cond_4
    iget-object v0, p0, Lgv;->c:Lgy;

    invoke-virtual {v0}, Lgy;->a()I

    move-result v0

    .line 262
    if-lez v0, :cond_5

    .line 264
    iget-object v1, p0, Lgv;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lfp;->b(Landroid/content/Context;I)V

    .line 267
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public final a(LfE;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lgv;->g:LfE;

    .line 44
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lgv;->a(ZLgu;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public final a(ZLgu;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lgv;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lgx;

    invoke-direct {v1, p0, p1, p2, p3}, Lgx;-><init>(Lgv;ZLgu;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgf;->a:Z

    .line 104
    invoke-virtual {v0}, Lgf;->a()V

    .line 106
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    return-void
.end method

.method public final declared-synchronized a(LfK;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 293
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lgv;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 367
    :goto_0
    monitor-exit p0

    return v1

    .line 297
    :cond_0
    const/16 v1, 0x12

    :try_start_1
    invoke-static {v1}, Lgj;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 298
    goto :goto_0

    .line 300
    :cond_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, Lgf;

    .line 306
    iget-boolean v3, v1, Lgf;->a:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v1, Lgf;->b:Z

    if-eqz v3, :cond_2

    move v1, v2

    .line 307
    goto :goto_0

    .line 308
    :cond_2
    iget-boolean v3, v1, Lgf;->a:Z

    if-nez v3, :cond_3

    iget-boolean v3, v1, Lgf;->b:Z

    if-nez v3, :cond_3

    move v1, v2

    .line 309
    goto :goto_0

    .line 311
    :cond_3
    iget-object v3, p1, LfK;->c:Ljava/lang/String;

    invoke-direct {p0, v3}, Lgv;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 313
    instance-of v3, p1, LfN;

    if-eqz v3, :cond_7

    .line 315
    check-cast p1, LfN;

    .line 316
    iget-boolean v3, v1, Lgf;->f:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lgf;->e:Z

    if-nez v3, :cond_4

    move v1, v2

    .line 318
    goto :goto_0

    .line 320
    :cond_4
    iget v2, p1, LfN;->d:I

    if-ne v2, v10, :cond_6

    .line 322
    iget-object v1, p0, Lgv;->g:LfE;

    iget-object v2, p1, LfN;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, LfE;->a(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lgv;->c:Lgy;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p1, LfN;->c:Ljava/lang/String;

    iget v5, p1, LfN;->f:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lgy;->a(JLjava/lang/String;I)I

    .line 324
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LfN;->a(Z)V

    :cond_5
    :goto_1
    move v1, v8

    .line 365
    goto :goto_0

    .line 326
    :cond_6
    iget v2, p1, LfN;->d:I

    if-nez v2, :cond_5

    .line 328
    iget-boolean v1, v1, Lgf;->f:Z

    if-eqz v1, :cond_5

    .line 330
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, LfN;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 335
    :cond_7
    :try_start_2
    instance-of v3, p1, LfL;

    if-eqz v3, :cond_5

    .line 338
    move-object v0, p1

    check-cast v0, LfL;

    move-object v7, v0

    .line 339
    iget-boolean v3, v1, Lgf;->g:Z

    if-nez v3, :cond_8

    iget-boolean v1, v1, Lgf;->d:Z

    if-nez v1, :cond_8

    move v1, v2

    .line 341
    goto/16 :goto_0

    .line 343
    :cond_8
    iget v1, v7, LfL;->d:I

    if-ne v1, v8, :cond_9

    .line 345
    iget-object v1, p0, Lgv;->c:Lgy;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p1, LfK;->c:Ljava/lang/String;

    iget-object v5, v7, LfL;->e:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lgy;->a(JLjava/lang/String;Ljava/lang/String;I)I

    .line 346
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LfK;->a(Z)V

    .line 348
    :cond_9
    iget v1, v7, LfL;->d:I

    if-ne v1, v9, :cond_a

    .line 350
    iget-object v1, p0, Lgv;->c:Lgy;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p1, LfK;->c:Ljava/lang/String;

    iget-object v5, v7, LfL;->e:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lgy;->a(JLjava/lang/String;Ljava/lang/String;I)I

    .line 351
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LfK;->a(Z)V

    .line 353
    :cond_a
    iget v1, v7, LfL;->d:I

    if-nez v1, :cond_5

    .line 355
    iget-object v1, p0, Lgv;->g:LfE;

    iget-object v2, v7, LfL;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, LfE;->b(Ljava/lang/String;)V

    .line 356
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v10, :cond_5

    .line 359
    iget-object v1, p0, Lgv;->c:Lgy;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p1, LfK;->c:Ljava/lang/String;

    iget-object v5, v7, LfL;->e:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lgy;->a(JLjava/lang/String;Ljava/lang/String;I)I

    .line 360
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LfK;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_b
    move v1, v2

    .line 367
    goto/16 :goto_0
.end method

.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lgv;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 122
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 125
    iget-object v1, p0, Lgv;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgx;

    .line 126
    if-nez v1, :cond_1

    .line 128
    iput-boolean v3, v0, Lgf;->a:Z

    .line 129
    invoke-virtual {v0}, Lgf;->a()V

    .line 130
    sget-object v1, Lgv;->i:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgu;

    .line 132
    iget-boolean v3, v0, Lgf;->b:Z

    invoke-interface {v1, v3}, Lgu;->a(Z)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lgv;->b:Landroid/content/Context;

    invoke-static {v0}, Leu;->a(Landroid/content/Context;)Z

    .line 135
    iget-object v0, p0, Lgv;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    :goto_1
    return-void

    .line 139
    :cond_1
    iput-boolean v2, v0, Lgf;->a:Z

    .line 140
    invoke-virtual {v0}, Lgf;->a()V

    .line 141
    iget-object v4, v1, Lgx;->b:Lgu;

    iput-object v4, p0, Lgv;->e:Lgu;

    .line 143
    iget-boolean v4, v0, Lgf;->a:Z

    if-eqz v4, :cond_7

    .line 145
    iget-boolean v4, v0, Lgf;->b:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v1, Lgx;->a:Z

    if-nez v4, :cond_3

    :cond_2
    iget-boolean v4, v0, Lgf;->b:Z

    if-nez v4, :cond_5

    iget-boolean v4, v1, Lgx;->a:Z

    if-nez v4, :cond_5

    .line 147
    :cond_3
    iget-object v1, p0, Lgv;->e:Lgu;

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p0, Lgv;->e:Lgu;

    iget-boolean v0, v0, Lgf;->b:Z

    invoke-interface {v1, v0}, Lgu;->a(Z)V

    .line 149
    :cond_4
    iget-object v0, p0, Lgv;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 154
    :cond_5
    iget-boolean v4, v0, Lgf;->b:Z

    if-nez v4, :cond_8

    .line 156
    invoke-static {}, Lgn;->a()Lgn;

    move-result-object v4

    iget-object v5, p0, Lgv;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lgn;->a(Landroid/content/Context;)V

    .line 157
    invoke-direct {p0}, Lgv;->b()V

    .line 158
    iget-object v4, v1, Lgx;->c:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 160
    iget-object v1, v1, Lgx;->c:Ljava/lang/String;

    iget-object v4, p0, Lgv;->b:Landroid/content/Context;

    const v5, 0x7f0801db

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lfp;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    :cond_6
    :goto_2
    iget-boolean v1, v0, Lgf;->b:Z

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lgf;->b:Z

    .line 169
    invoke-virtual {v0}, Lgf;->a()V

    .line 171
    iget-object v1, p0, Lgv;->e:Lgu;

    if-eqz v1, :cond_7

    .line 172
    iget-object v1, p0, Lgv;->e:Lgu;

    iget-boolean v2, v0, Lgf;->b:Z

    invoke-interface {v1, v2}, Lgu;->a(Z)V

    .line 174
    :cond_7
    iput-boolean v3, v0, Lgf;->a:Z

    .line 175
    invoke-virtual {v0}, Lgf;->a()V

    .line 176
    iget-object v0, p0, Lgv;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 177
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 165
    :cond_8
    invoke-direct {p0}, Lgv;->c()V

    .line 166
    invoke-static {}, Lgn;->a()Lgn;

    move-result-object v1

    iget-object v4, p0, Lgv;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lgn;->b(Landroid/content/Context;)V

    goto :goto_2

    :cond_9
    move v1, v3

    .line 168
    goto :goto_3
.end method
