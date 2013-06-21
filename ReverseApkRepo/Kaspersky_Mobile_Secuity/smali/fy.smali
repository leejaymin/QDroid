.class public final Lfy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lfx;

.field private b:Landroid/app/AlarmManager;

.field private c:Landroid/content/Context;

.field private d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

.field private e:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfx;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lfy;->a:Lfx;

    .line 36
    iput-object p1, p0, Lfy;->c:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;-><init>(I)V

    iput-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    .line 38
    iget-object v0, p0, Lfy;->c:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lfy;->b:Landroid/app/AlarmManager;

    .line 39
    return-void
.end method

.method static synthetic a(Lfy;)Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    return-object v0
.end method

.method private final a()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 200
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 205
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    .line 207
    iget-object v2, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    invoke-virtual {v2, v0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->getEvent(I)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    move-result-object v2

    .line 208
    if-eqz v2, :cond_0

    .line 210
    invoke-static {v2}, Lfy;->a(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    invoke-virtual {v2}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->runIfMissed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {v2}, Lfy;->b(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    :cond_2
    new-instance v0, LfA;

    invoke-direct {v0, p0}, LfA;-><init>(Lfy;)V

    .line 265
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 266
    return-object v1
.end method

.method static synthetic a(Lfy;Ljava/util/Vector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lfy;->a(Ljava/util/Vector;)V

    return-void
.end method

.method private a(Ljava/util/Vector;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v1, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->getEvent(I)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    move-result-object v3

    .line 48
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Lfy;->c:Landroid/content/Context;

    const-class v1, Lcom/kms/kmsshared/alarmscheduler/KMSAlarmBroadcastReceiver;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v5, v0, [I

    move v1, v2

    .line 51
    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 53
    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 55
    :cond_2
    const-string v0, "com_kms_alarmscheduler_eventid"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lfy;->c:Landroid/content/Context;

    const/high16 v1, 0x1000

    invoke-static {v0, v2, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lfy;->b:Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_2
    if-eqz v3, :cond_3

    .line 85
    iget-object v0, p0, Lfy;->b:Landroid/app/AlarmManager;

    invoke-virtual {v3}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 93
    :cond_3
    iget-object v0, p0, Lfy;->c:Landroid/content/Context;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/io/File;

    const-string v2, "events.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->storeEvents(Ljava/io/File;)V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    const-string v4, "KMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlarmManager update was not canceled. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static a(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)Z
    .locals 5
    .parameter

    .prologue
    .line 118
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lfy;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lfy;->d()V

    return-void
.end method

.method private b(Ljava/util/Vector;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfz;

    invoke-direct {v1, p0, p1}, Lfz;-><init>(Lfy;Ljava/util/Vector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 196
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 271
    iget-object v0, p0, Lfy;->c:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 272
    const-string v2, "KMSSchedulerWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lfy;->e:Landroid/os/PowerManager$WakeLock;

    .line 275
    :try_start_0
    iget-object v0, p0, Lfy;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 282
    :goto_0
    return v0

    .line 277
    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)Z
    .locals 5
    .parameter

    .prologue
    .line 129
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 130
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lfy;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lfy;->a()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 287
    iget-object v1, p0, Lfy;->e:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 307
    :goto_0
    return v0

    .line 293
    :cond_0
    :try_start_0
    iget-object v1, p0, Lfy;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lfy;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_1
    iput-object v2, p0, Lfy;->e:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 300
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    iput-object v2, p0, Lfy;->e:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lfy;->e:Landroid/os/PowerManager$WakeLock;

    throw v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lfy;->c:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/io/File;

    const-string v2, "events.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    invoke-static {v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->restoreEvents(Ljava/io/File;)Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    move-result-object v0

    iput-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    .line 316
    iget-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    if-nez v0, :cond_0

    .line 318
    const-string v0, "KMS"

    const-string v1, "Can\'t restore events storage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;-><init>(I)V

    iput-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    .line 339
    :cond_0
    return-void
.end method

.method static synthetic d(Lfy;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lfy;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 2
    .parameter

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->setEvent(ILcom/kms/kmsshared/alarmscheduler/AlarmEvent;)V

    .line 103
    iget-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    invoke-virtual {v0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->getNextEventsIds()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0}, Lfy;->a(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 343
    .line 345
    invoke-direct {p0}, Lfy;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    monitor-enter p0

    .line 351
    :try_start_0
    invoke-direct {p0}, Lfy;->d()V

    .line 352
    iget-object v1, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    if-eqz v1, :cond_0

    .line 354
    invoke-direct {p0}, Lfy;->a()Ljava/util/Vector;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    invoke-virtual {v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->getNextEventsIds()Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0, v1}, Lfy;->a(Ljava/util/Vector;)V

    .line 357
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :goto_0
    invoke-direct {p0, v0}, Lfy;->b(Ljava/util/Vector;)V

    .line 365
    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 362
    :cond_1
    iput-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    goto :goto_0
.end method

.method public final declared-synchronized b(I)V
    .locals 2
    .parameter

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    iget-object v1, p0, Lfy;->a:Lfx;

    invoke-interface {v1, p1}, Lfx;->a(I)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->setEvent(ILcom/kms/kmsshared/alarmscheduler/AlarmEvent;)V

    .line 112
    iget-object v0, p0, Lfy;->d:Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;

    invoke-virtual {v0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEventsStorage;->getNextEventsIds()Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0}, Lfy;->a(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
