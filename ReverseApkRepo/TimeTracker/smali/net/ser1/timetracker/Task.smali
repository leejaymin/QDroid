.class public Lnet/ser1/timetracker/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lnet/ser1/timetracker/Task;",
        ">;"
    }
.end annotation


# instance fields
.field private collapsed:J

.field private endTime:J

.field private id:I

.field private startTime:J

.field private taskName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "id"

    .prologue
    const-wide/16 v0, -0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide v0, p0, Lnet/ser1/timetracker/Task;->startTime:J

    .line 14
    iput-wide v0, p0, Lnet/ser1/timetracker/Task;->endTime:J

    .line 23
    iput-object p1, p0, Lnet/ser1/timetracker/Task;->taskName:Ljava/lang/String;

    .line 24
    iput p2, p0, Lnet/ser1/timetracker/Task;->id:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/ser1/timetracker/Task;->collapsed:J

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/ser1/timetracker/Task;

    invoke-virtual {p0, p1}, Lnet/ser1/timetracker/Task;->compareTo(Lnet/ser1/timetracker/Task;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/ser1/timetracker/Task;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 91
    iget-object v0, p0, Lnet/ser1/timetracker/Task;->taskName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Lnet/ser1/timetracker/Task;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->getId()I

    move-result v0

    iget v1, p0, Lnet/ser1/timetracker/Task;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCollapsed()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lnet/ser1/timetracker/Task;->collapsed:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lnet/ser1/timetracker/Task;->endTime:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lnet/ser1/timetracker/Task;->id:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lnet/ser1/timetracker/Task;->startTime:J

    return-wide v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/ser1/timetracker/Task;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .local v0, sum:J
    iget-wide v2, p0, Lnet/ser1/timetracker/Task;->startTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lnet/ser1/timetracker/Task;->endTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/ser1/timetracker/Task;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 45
    :cond_0
    iget-wide v2, p0, Lnet/ser1/timetracker/Task;->collapsed:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public isRunning()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 95
    iget-wide v0, p0, Lnet/ser1/timetracker/Task;->startTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lnet/ser1/timetracker/Task;->endTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCollapsed(J)V
    .locals 0
    .parameter "collapsed"

    .prologue
    .line 49
    iput-wide p1, p0, Lnet/ser1/timetracker/Task;->collapsed:J

    .line 50
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 83
    iput-wide p1, p0, Lnet/ser1/timetracker/Task;->endTime:J

    .line 84
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 75
    iput-wide p1, p0, Lnet/ser1/timetracker/Task;->startTime:J

    .line 76
    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 0
    .parameter "taskName"

    .prologue
    .line 37
    iput-object p1, p0, Lnet/ser1/timetracker/Task;->taskName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 57
    iget-wide v0, p0, Lnet/ser1/timetracker/Task;->endTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lnet/ser1/timetracker/Task;->startTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 58
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/ser1/timetracker/Task;->startTime:J

    .line 59
    iput-wide v2, p0, Lnet/ser1/timetracker/Task;->endTime:J

    .line 61
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 64
    iget-wide v0, p0, Lnet/ser1/timetracker/Task;->endTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/ser1/timetracker/Task;->endTime:J

    .line 66
    iget-wide v0, p0, Lnet/ser1/timetracker/Task;->collapsed:J

    iget-wide v2, p0, Lnet/ser1/timetracker/Task;->endTime:J

    iget-wide v4, p0, Lnet/ser1/timetracker/Task;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/ser1/timetracker/Task;->collapsed:J

    .line 68
    :cond_0
    return-void
.end method
