.class public Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, p1, [Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    iput-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    .line 28
    return-void
.end method

.method private static a(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)Ljava/util/Date;
    .locals 2
    .parameter

    .prologue
    .line 167
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 169
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->isPeriodic()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    .line 173
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->updateNextTime()V

    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 194
    return-void
.end method

.method public static restoreEvents(Ljava/io/File;)Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 115
    .line 118
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 131
    :goto_0
    if-nez v2, :cond_0

    move-object v0, v1

    .line 162
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 124
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    .line 129
    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v1

    goto :goto_0

    .line 138
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    .line 144
    :goto_2
    if-nez v2, :cond_1

    move-object v0, v1

    .line 146
    goto :goto_1

    .line 140
    :catch_2
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    goto :goto_2

    .line 151
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 152
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 154
    :catch_3
    move-exception v1

    .line 156
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 154
    :catch_4
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 189
    return-void
.end method


# virtual methods
.method public declared-synchronized getEvent(I)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
    .locals 1
    .parameter

    .prologue
    .line 37
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextEventsIds()Ljava/util/Vector;
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    .line 54
    monitor-enter p0

    :try_start_0
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    array-length v0, v0

    new-array v10, v0, [J

    move v6, v5

    move-wide v0, v7

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    array-length v2, v2

    if-ge v6, v2, :cond_3

    .line 59
    iget-object v2, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    aget-object v2, v2, v6

    .line 60
    if-eqz v2, :cond_0

    .line 62
    invoke-static {v2}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->a(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)Ljava/util/Date;

    move-result-object v2

    .line 65
    if-nez v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    const/4 v3, 0x0

    aput-object v3, v2, v6

    .line 57
    :cond_0
    :goto_1
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long/2addr v2, v11

    .line 71
    aput-wide v2, v10, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    cmp-long v11, v0, v7

    if-eqz v11, :cond_2

    cmp-long v11, v2, v0

    if-gez v11, :cond_0

    :cond_2
    move-wide v0, v2

    .line 74
    goto :goto_1

    .line 77
    :cond_3
    cmp-long v2, v0, v7

    if-nez v2, :cond_4

    move-object v0, v4

    .line 89
    :goto_2
    monitor-exit p0

    return-object v0

    .line 81
    :cond_4
    :try_start_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v3, v5

    .line 82
    :goto_3
    array-length v4, v10

    if-ge v3, v4, :cond_6

    .line 84
    aget-wide v4, v10, v3

    cmp-long v4, v4, v0

    if-nez v4, :cond_5

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v2

    .line 89
    goto :goto_2

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEvent(ILcom/kms/kmsshared/alarmscheduler/AlarmEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->mEvents:[Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    aput-object p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized storeEvents(Ljava/io/File;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    monitor-enter p0

    .line 98
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 100
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 105
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :catch_1
    move-exception v0

    .line 109
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
