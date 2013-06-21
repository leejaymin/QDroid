.class public Lskiba/util/Simply;
.super Ljava/lang/Object;
.source "Simply.java"


# static fields
.field private static final WAITSLEEP_OBJECT:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lskiba/util/Simply;->WAITSLEEP_OBJECT:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final close(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 139
    if-eqz p0, :cond_0

    .line 141
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final close(Ljava/net/Socket;)V
    .locals 1
    .parameter "socket"

    .prologue
    .line 130
    if-eqz p0, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final elapsedUptimeMillis(J)I
    .locals 2
    .parameter "start"

    .prologue
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static final join(Ljava/lang/Thread;)Z
    .locals 2
    .parameter "thread"

    .prologue
    const/4 v1, 0x1

    .line 104
    if-nez p0, :cond_0

    .line 112
    :goto_0
    return v1

    .line 108
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final notify(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 48
    if-eqz p0, :cond_0

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 49
    monitor-exit p0

    .line 53
    :cond_0
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final notifyAll(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 55
    if-eqz p0, :cond_0

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 56
    monitor-exit p0

    .line 60
    :cond_0
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final setThreadPriority(I)V
    .locals 1
    .parameter "priority"

    .prologue
    .line 34
    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final setThreadPriority(II)V
    .locals 1
    .parameter "tid"
    .parameter "priority"

    .prologue
    .line 41
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final sleep(I)Z
    .locals 3
    .parameter "milliseconds"

    .prologue
    .line 118
    int-to-long v1, p0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const/4 v1, 0x1

    .line 122
    :goto_0
    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final wait(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    .line 75
    if-nez p0, :cond_0

    .line 85
    :goto_0
    return v1

    .line 79
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 79
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 85
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final wait(Ljava/lang/Object;J)Z
    .locals 2
    .parameter "object"
    .parameter "timeout"

    .prologue
    const/4 v1, 0x1

    .line 89
    if-nez p0, :cond_0

    .line 99
    :goto_0
    return v1

    .line 93
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 93
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 99
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final waitNoLock(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    .line 63
    if-nez p0, :cond_0

    .line 71
    :goto_0
    return v1

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final waitSleep(I)Z
    .locals 3
    .parameter "milliseconds"

    .prologue
    .line 126
    sget-object v0, Lskiba/util/Simply;->WAITSLEEP_OBJECT:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lskiba/util/Simply;->wait(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method
