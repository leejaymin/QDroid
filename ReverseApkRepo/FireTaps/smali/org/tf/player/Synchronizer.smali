.class public Lorg/tf/player/Synchronizer;
.super Ljava/lang/Object;
.source "Synchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/player/Synchronizer$Handle;
    }
.end annotation


# instance fields
.field private m_handles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tf/player/Synchronizer$Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tf/player/Synchronizer;->m_handles:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tf/player/Synchronizer;->m_lock:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lorg/tf/player/Synchronizer;Lorg/tf/player/Synchronizer$Handle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/tf/player/Synchronizer;->unregister(Lorg/tf/player/Synchronizer$Handle;)V

    return-void
.end method

.method static synthetic access$1(Lorg/tf/player/Synchronizer;Lorg/tf/player/Synchronizer$Handle;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/tf/player/Synchronizer;->synchronize(Lorg/tf/player/Synchronizer$Handle;)Z

    move-result v0

    return v0
.end method

.method private isAllSynchronized()Z
    .locals 3

    .prologue
    .line 86
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Lorg/tf/player/Synchronizer;->m_handles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, e:I
    :goto_0
    if-ne v1, v0, :cond_0

    .line 91
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 87
    :cond_0
    iget-object v2, p0, Lorg/tf/player/Synchronizer;->m_handles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tf/player/Synchronizer$Handle;

    #getter for: Lorg/tf/player/Synchronizer$Handle;->synchronizing:Z
    invoke-static {v2}, Lorg/tf/player/Synchronizer$Handle;->access$2(Lorg/tf/player/Synchronizer$Handle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    const/4 v2, 0x0

    goto :goto_1

    .line 86
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private synchronize(Lorg/tf/player/Synchronizer$Handle;)Z
    .locals 3
    .parameter "handle"

    .prologue
    .line 72
    const/4 v0, 0x1

    .line 73
    .local v0, ok:Z
    iget-object v1, p0, Lorg/tf/player/Synchronizer;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    const/4 v2, 0x1

    :try_start_0
    #setter for: Lorg/tf/player/Synchronizer$Handle;->synchronizing:Z
    invoke-static {p1, v2}, Lorg/tf/player/Synchronizer$Handle;->access$1(Lorg/tf/player/Synchronizer$Handle;Z)V

    .line 75
    invoke-direct {p0}, Lorg/tf/player/Synchronizer;->isAllSynchronized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lorg/tf/player/Synchronizer;->m_lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 80
    :goto_0
    const/4 v2, 0x0

    #setter for: Lorg/tf/player/Synchronizer$Handle;->synchronizing:Z
    invoke-static {p1, v2}, Lorg/tf/player/Synchronizer$Handle;->access$1(Lorg/tf/player/Synchronizer$Handle;Z)V

    .line 73
    monitor-exit v1

    .line 82
    return v0

    .line 78
    :cond_0
    iget-object v2, p0, Lorg/tf/player/Synchronizer;->m_lock:Ljava/lang/Object;

    invoke-static {v2}, Lskiba/util/Simply;->waitNoLock(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private unregister(Lorg/tf/player/Synchronizer$Handle;)V
    .locals 2
    .parameter "handle"

    .prologue
    .line 63
    iget-object v0, p0, Lorg/tf/player/Synchronizer;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lorg/tf/player/Synchronizer;->m_handles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    invoke-direct {p0}, Lorg/tf/player/Synchronizer;->isAllSynchronized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lorg/tf/player/Synchronizer;->m_lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 63
    :cond_0
    monitor-exit v0

    .line 69
    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public register()Lorg/tf/player/Synchronizer$Handle;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lorg/tf/player/Synchronizer$Handle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/tf/player/Synchronizer$Handle;-><init>(Lorg/tf/player/Synchronizer;Lorg/tf/player/Synchronizer$Handle;)V

    .line 32
    .local v0, handle:Lorg/tf/player/Synchronizer$Handle;
    iget-object v1, p0, Lorg/tf/player/Synchronizer;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v2, p0, Lorg/tf/player/Synchronizer;->m_handles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    monitor-exit v1

    .line 35
    return-object v0

    .line 32
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
