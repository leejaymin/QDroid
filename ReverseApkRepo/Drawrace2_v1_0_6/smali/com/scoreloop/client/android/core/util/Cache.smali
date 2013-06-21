.class public Lcom/scoreloop/client/android/core/util/Cache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/util/Cache$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/scoreloop/client/android/core/util/Cache",
            "<TK;TV;>.a;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/scoreloop/client/android/core/util/Cache",
            "<TK;TV;>.a;>;>;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/scoreloop/client/android/core/util/a;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/util/a;-><init>(Lcom/scoreloop/client/android/core/util/Cache;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->f:Ljava/lang/Runnable;

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->a:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->b:J

    .line 66
    new-instance v0, Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->e:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/scoreloop/client/android/core/util/Cache$1;

    iget v1, p0, Lcom/scoreloop/client/android/core/util/Cache;->a:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/scoreloop/client/android/core/util/Cache$1;-><init>(Lcom/scoreloop/client/android/core/util/Cache;I)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/scoreloop/client/android/core/util/Cache;->a:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/Cache;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/util/Cache;)I
    .locals 1
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->a:I

    return v0
.end method

.method private a(J)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 108
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 109
    iget-wide v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->b:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 110
    iput-wide p1, p0, Lcom/scoreloop/client/android/core/util/Cache;->b:J

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/Cache;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iget-wide v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/Cache;->f:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/scoreloop/client/android/core/util/Cache;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    :cond_1
    return-void

    .line 111
    :cond_2
    iget-wide v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 112
    iput-wide p1, p0, Lcom/scoreloop/client/android/core/util/Cache;->b:J

    goto :goto_0
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/util/Cache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/util/Cache$a;

    .line 135
    if-eqz v0, :cond_0

    .line 137
    iget-object v2, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v2, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/util/Cache$a;->c()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_0
    return-object v0

    .line 141
    :cond_0
    monitor-exit v1

    .line 144
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 145
    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/util/Cache$a;

    .line 147
    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/Cache$a;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/Cache;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 9

    .prologue
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 93
    new-instance v0, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 94
    iget-object v3, p0, Lcom/scoreloop/client/android/core/util/Cache;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 95
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 96
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/util/Cache$a;

    .line 97
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/util/Cache$a;->a()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/util/Cache$a;->b()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v5, v5, v1

    if-gez v5, :cond_0

    .line 98
    iget-object v5, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    monitor-enter v5

    .line 99
    :try_start_0
    iget-object v6, p0, Lcom/scoreloop/client/android/core/util/Cache;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 104
    :cond_1
    iget-wide v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->b:J

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/core/util/Cache;->a(J)V

    .line 105
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    if-eqz p2, :cond_0

    .line 124
    iget-object v6, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    monitor-enter v6

    .line 125
    :try_start_0
    iget-object v7, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    new-instance v0, Lcom/scoreloop/client/android/core/util/Cache$a;

    move-object v1, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/core/util/Cache$a;-><init>(Ljava/lang/Object;JJ)V

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/scoreloop/client/android/core/util/Cache;->a(J)V

    .line 129
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 160
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v1, p0, Lcom/scoreloop/client/android/core/util/Cache;->d:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/Cache;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 163
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 163
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
