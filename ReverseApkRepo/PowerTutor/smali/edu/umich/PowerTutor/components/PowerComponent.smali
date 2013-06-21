.class public abstract Ledu/umich/PowerTutor/components/PowerComponent;
.super Ljava/lang/Thread;
.source "PowerComponent.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected beginTime:J

.field private data1:Ledu/umich/PowerTutor/service/IterationData;

.field private data2:Ledu/umich/PowerTutor/service/IterationData;

.field private iteration1:J

.field private iteration2:J

.field protected iterationInterval:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    const-string v0, "PowerComponent"

    iput-object v0, p0, Ledu/umich/PowerTutor/components/PowerComponent;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/components/PowerComponent;->setDaemon(Z)V

    .line 65
    return-void
.end method


# virtual methods
.method protected abstract calculateIteration(J)Ledu/umich/PowerTutor/service/IterationData;
.end method

.method public abstract getComponentName()Ljava/lang/String;
.end method

.method public getData(J)Ledu/umich/PowerTutor/service/IterationData;
    .locals 4
    .parameter "iteration"

    .prologue
    .line 123
    monitor-enter p0

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, ret:Ledu/umich/PowerTutor/service/IterationData;
    :try_start_0
    iget-wide v1, p0, Ledu/umich/PowerTutor/components/PowerComponent;->iteration1:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object v0, p0, Ledu/umich/PowerTutor/components/PowerComponent;->data1:Ledu/umich/PowerTutor/service/IterationData;

    .line 126
    :cond_0
    iget-wide v1, p0, Ledu/umich/PowerTutor/components/PowerComponent;->iteration2:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    iget-object v0, p0, Ledu/umich/PowerTutor/components/PowerComponent;->data2:Ledu/umich/PowerTutor/service/IterationData;

    .line 127
    :cond_1
    iget-wide v1, p0, Ledu/umich/PowerTutor/components/PowerComponent;->iteration1:J

    cmp-long v1, v1, p1

    if-gtz v1, :cond_2

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/umich/PowerTutor/components/PowerComponent;->data1:Ledu/umich/PowerTutor/service/IterationData;

    .line 129
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ledu/umich/PowerTutor/components/PowerComponent;->iteration1:J

    .line 131
    :cond_2
    iget-wide v1, p0, Ledu/umich/PowerTutor/components/PowerComponent;->iteration2:J

    cmp-long v1, v1, p1

    if-gtz v1, :cond_3

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Ledu/umich/PowerTutor/components/PowerComponent;->data2:Ledu/umich/PowerTutor/service/IterationData;

    .line 133
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ledu/umich/PowerTutor/components/PowerComponent;->iteration2:J

    .line 135
    :cond_3
    if-nez v0, :cond_4

    .line 136
    const-string v1, "PowerComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ledu/umich/PowerTutor/components/PowerComponent;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Could not find data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 137
    const-string v3, "requested iteration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_4
    monitor-exit p0

    return-object v0

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasUidInformation()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public init(JJ)V
    .locals 2
    .parameter "beginTime"
    .parameter "iterationInterval"

    .prologue
    .line 70
    iput-wide p1, p0, Ledu/umich/PowerTutor/components/PowerComponent;->beginTime:J

    .line 71
    iput-wide p3, p0, Ledu/umich/PowerTutor/components/PowerComponent;->iterationInterval:J

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/umich/PowerTutor/components/PowerComponent;->data2:Ledu/umich/PowerTutor/service/IterationData;

    iput-object v0, p0, Ledu/umich/PowerTutor/components/PowerComponent;->data1:Ledu/umich/PowerTutor/service/IterationData;

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/PowerComponent;->iteration2:J

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/PowerComponent;->iteration1:J

    .line 74
    return-void
.end method

.method protected onExit()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public run()V
    .locals 17

    .prologue
    .line 79
    const/4 v9, -0x1

    .line 78
    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 80
    const-wide/16 v5, 0x0

    .local v5, iter:J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 116
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ledu/umich/PowerTutor/components/PowerComponent;->onExit()V

    .line 117
    return-void

    .line 84
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ledu/umich/PowerTutor/components/PowerComponent;->calculateIteration(J)Ledu/umich/PowerTutor/service/IterationData;

    move-result-object v3

    .line 85
    .local v3, data:Ledu/umich/PowerTutor/service/IterationData;
    if-eqz v3, :cond_2

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v9, v0, Ledu/umich/PowerTutor/components/PowerComponent;->iteration1:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Ledu/umich/PowerTutor/components/PowerComponent;->iteration2:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    .line 88
    move-object/from16 v0, p0

    iput-wide v5, v0, Ledu/umich/PowerTutor/components/PowerComponent;->iteration1:J

    .line 89
    move-object/from16 v0, p0

    iput-object v3, v0, Ledu/umich/PowerTutor/components/PowerComponent;->data1:Ledu/umich/PowerTutor/service/IterationData;

    .line 86
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_2
    invoke-static {}, Ledu/umich/PowerTutor/components/PowerComponent;->interrupted()Z

    move-result v9

    if-nez v9, :cond_0

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 102
    .local v1, curTime:J
    move-wide v7, v5

    .line 103
    .local v7, oldIter:J
    const-wide/16 v9, 0x1

    add-long/2addr v9, v5

    .line 104
    const-wide/16 v11, 0x1

    move-object/from16 v0, p0

    iget-wide v13, v0, Ledu/umich/PowerTutor/components/PowerComponent;->beginTime:J

    sub-long v13, v1, v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Ledu/umich/PowerTutor/components/PowerComponent;->iterationInterval:J

    div-long/2addr v13, v15

    add-long/2addr v11, v13

    .line 103
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 105
    const-wide/16 v9, 0x1

    add-long/2addr v9, v7

    cmp-long v9, v9, v5

    if-eqz v9, :cond_3

    .line 106
    const-string v9, "PowerComponent"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ledu/umich/PowerTutor/components/PowerComponent;->getComponentName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] Had to skip from iteration "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 107
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 106
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v9, v0, Ledu/umich/PowerTutor/components/PowerComponent;->beginTime:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Ledu/umich/PowerTutor/components/PowerComponent;->iterationInterval:J

    mul-long/2addr v11, v5

    add-long/2addr v9, v11

    sub-long/2addr v9, v1

    invoke-static {v9, v10}, Ledu/umich/PowerTutor/components/PowerComponent;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 112
    :catch_0
    move-exception v4

    .line 113
    .local v4, e:Ljava/lang/InterruptedException;
    goto/16 :goto_1

    .line 91
    .end local v1           #curTime:J
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v7           #oldIter:J
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iput-wide v5, v0, Ledu/umich/PowerTutor/components/PowerComponent;->iteration2:J

    .line 92
    move-object/from16 v0, p0

    iput-object v3, v0, Ledu/umich/PowerTutor/components/PowerComponent;->data2:Ledu/umich/PowerTutor/service/IterationData;

    goto :goto_2

    .line 86
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9
.end method
