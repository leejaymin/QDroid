.class public Ledu/umich/PowerTutor/util/Recycler;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private avail:I

.field private list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    .local p0, this:Ledu/umich/PowerTutor/util/Recycler;,"Ledu/umich/PowerTutor/util/Recycler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/util/Recycler;->list:Ljava/util/Vector;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Ledu/umich/PowerTutor/util/Recycler;->avail:I

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized obtain()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Ledu/umich/PowerTutor/util/Recycler;,"Ledu/umich/PowerTutor/util/Recycler<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/umich/PowerTutor/util/Recycler;->avail:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ledu/umich/PowerTutor/util/Recycler;->list:Ljava/util/Vector;

    iget v1, p0, Ledu/umich/PowerTutor/util/Recycler;->avail:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ledu/umich/PowerTutor/util/Recycler;->avail:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Ledu/umich/PowerTutor/util/Recycler;,"Ledu/umich/PowerTutor/util/Recycler<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ledu/umich/PowerTutor/util/Recycler;->avail:I

    iget-object v1, p0, Ledu/umich/PowerTutor/util/Recycler;->list:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Ledu/umich/PowerTutor/util/Recycler;->list:Ljava/util/Vector;

    iget v1, p0, Ledu/umich/PowerTutor/util/Recycler;->avail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ledu/umich/PowerTutor/util/Recycler;->avail:I

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p0, Ledu/umich/PowerTutor/util/Recycler;->list:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
