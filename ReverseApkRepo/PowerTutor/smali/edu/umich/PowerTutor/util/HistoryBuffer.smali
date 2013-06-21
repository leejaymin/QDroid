.class public Ledu/umich/PowerTutor/util/HistoryBuffer;
.super Ljava/lang/Object;
.source "HistoryBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;,
        Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    }
.end annotation


# instance fields
.field private maxSize:I

.field private uidData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Ledu/umich/PowerTutor/util/HistoryBuffer;->maxSize:I

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/util/HistoryBuffer;->uidData:Landroid/util/SparseArray;

    .line 59
    return-void
.end method


# virtual methods
.method public declared-synchronized add(IJI)V
    .locals 6
    .parameter "uid"
    .parameter "iteration"
    .parameter "power"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ledu/umich/PowerTutor/util/HistoryBuffer;->uidData:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;

    .line 64
    .local v0, data:Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;

    .end local v0           #data:Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    invoke-direct {v0}, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;-><init>()V

    .line 66
    .restart local v0       #data:Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    iget-object v3, p0, Ledu/umich/PowerTutor/util/HistoryBuffer;->uidData:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    :cond_0
    iget-object v3, v0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;->count:Ledu/umich/PowerTutor/util/Counter;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ledu/umich/PowerTutor/util/Counter;->add(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-nez p4, :cond_2

    .line 87
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_2
    :try_start_1
    iget-object v3, v0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;->sum:Ledu/umich/PowerTutor/util/Counter;

    int-to-long v4, p4

    invoke-virtual {v3, v4, v5}, Ledu/umich/PowerTutor/util/Counter;->add(J)V

    .line 73
    iget v3, p0, Ledu/umich/PowerTutor/util/HistoryBuffer;->maxSize:I

    if-eqz v3, :cond_1

    .line 77
    iget-object v2, v0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;->queue:Ljava/util/LinkedList;

    .line 79
    .local v2, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;>;"
    iget v3, p0, Ledu/umich/PowerTutor/util/HistoryBuffer;->maxSize:I

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 80
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;

    .line 81
    .local v1, datum:Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 85
    :goto_1
    invoke-virtual {v1, p2, p3, p4}, Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;->init(JI)V

    .line 86
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    .end local v0           #data:Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    .end local v1           #datum:Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;
    .end local v2           #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 83
    .restart local v0       #data:Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    .restart local v2       #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;>;"
    :cond_3
    :try_start_2
    new-instance v1, Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;

    invoke-direct {v1}, Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v1       #datum:Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;
    goto :goto_1
.end method

.method public declared-synchronized get(IJI)[I
    .locals 11
    .parameter "uid"
    .parameter "timestamp"
    .parameter "number"

    .prologue
    const-wide/16 v9, 0x1

    .line 94
    monitor-enter p0

    const/4 v2, 0x0

    .line 95
    .local v2, ind:I
    if-gez p4, :cond_0

    const/4 p4, 0x0

    .line 96
    :cond_0
    :try_start_0
    iget v7, p0, Ledu/umich/PowerTutor/util/HistoryBuffer;->maxSize:I

    if-le p4, v7, :cond_1

    iget p4, p0, Ledu/umich/PowerTutor/util/HistoryBuffer;->maxSize:I

    .line 97
    :cond_1
    new-array v6, p4, [I

    .line 98
    .local v6, ret:[I
    iget-object v7, p0, Ledu/umich/PowerTutor/util/HistoryBuffer;->uidData:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;

    .line 99
    .local v0, data:Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    if-nez v0, :cond_3

    const/4 v5, 0x0

    .line 100
    .local v5, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;>;"
    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 123
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v6

    .line 99
    .end local v5           #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;>;"
    :cond_3
    :try_start_1
    iget-object v5, v0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;->queue:Ljava/util/LinkedList;

    goto :goto_0

    .line 103
    .restart local v5       #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;>;"
    :cond_4
    const-wide/16 v7, -0x1

    cmp-long v7, p2, v7

    if-nez v7, :cond_5

    .line 104
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;

    iget-wide p2, v7, Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;->iteration:J

    .line 106
    :cond_5
    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 107
    .local v4, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    .line 106
    if-eqz v7, :cond_2

    .line 108
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, datum:Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;
    move v3, v2

    .line 109
    .end local v2           #ind:I
    .local v3, ind:I
    :goto_3
    :try_start_2
    iget-wide v7, v1, Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;->iteration:J

    cmp-long v7, v7, p2

    if-gez v7, :cond_6

    if-lt v3, p4, :cond_7

    .line 113
    :cond_6
    if-ne v3, p4, :cond_8

    move v2, v3

    .line 114
    .end local v3           #ind:I
    .restart local v2       #ind:I
    goto :goto_1

    .line 110
    .end local v2           #ind:I
    .restart local v3       #ind:I
    :cond_7
    add-int/lit8 v2, v3, 0x1

    .line 111
    .end local v3           #ind:I
    .restart local v2       #ind:I
    sub-long/2addr p2, v9

    move v3, v2

    .end local v2           #ind:I
    .restart local v3       #ind:I
    goto :goto_3

    .line 116
    :cond_8
    iget-wide v7, v1, Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;->iteration:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmp-long v7, v7, p2

    if-nez v7, :cond_9

    .line 117
    add-int/lit8 v2, v3, 0x1

    .end local v3           #ind:I
    .restart local v2       #ind:I
    :try_start_3
    iget v7, v1, Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;->power:I

    aput v7, v6, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    sub-long/2addr p2, v9

    goto :goto_2

    .line 94
    .end local v0           #data:Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    .end local v1           #datum:Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;
    .end local v4           #iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;>;"
    .end local v5           #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;>;"
    .end local v6           #ret:[I
    :catchall_0
    move-exception v7

    :goto_4
    monitor-exit p0

    throw v7

    .end local v2           #ind:I
    .restart local v0       #data:Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    .restart local v1       #datum:Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;
    .restart local v3       #ind:I
    .restart local v4       #iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;>;"
    .restart local v5       #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ledu/umich/PowerTutor/util/HistoryBuffer$HistoryDatum;>;"
    .restart local v6       #ret:[I
    :catchall_1
    move-exception v7

    move v2, v3

    .end local v3           #ind:I
    .restart local v2       #ind:I
    goto :goto_4

    .end local v2           #ind:I
    .restart local v3       #ind:I
    :cond_9
    move v2, v3

    .end local v3           #ind:I
    .restart local v2       #ind:I
    goto :goto_2
.end method

.method public declared-synchronized getCount(II)J
    .locals 3
    .parameter "uid"
    .parameter "windowType"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/util/HistoryBuffer;->uidData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v0, data:Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    monitor-exit p0

    return-wide v1

    :cond_0
    :try_start_1
    iget-object v1, v0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;->count:Ledu/umich/PowerTutor/util/Counter;

    invoke-virtual {v1, p2}, Ledu/umich/PowerTutor/util/Counter;->get(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    goto :goto_0

    .line 132
    .end local v0           #data:Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTotal(II)J
    .locals 3
    .parameter "uid"
    .parameter "windowType"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/util/HistoryBuffer;->uidData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .local v0, data:Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    monitor-exit p0

    return-wide v1

    :cond_0
    :try_start_1
    iget-object v1, v0, Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;->sum:Ledu/umich/PowerTutor/util/Counter;

    invoke-virtual {v1, p2}, Ledu/umich/PowerTutor/util/Counter;->get(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    goto :goto_0

    .line 127
    .end local v0           #data:Ledu/umich/PowerTutor/util/HistoryBuffer$UidData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
