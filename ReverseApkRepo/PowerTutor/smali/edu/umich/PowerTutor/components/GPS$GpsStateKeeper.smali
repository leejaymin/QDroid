.class Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
.super Ljava/lang/Object;
.source "GPS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/GPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsStateKeeper"
.end annotation


# instance fields
.field private curState:I

.field private hookMask:I

.field private lastTime:J

.field private offTime:J

.field private sleepTime:J

.field private stateTimes:[D


# direct methods
.method public constructor <init>(IJ)V
    .locals 6
    .parameter "hookMask"
    .parameter "sleepTime"

    .prologue
    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;-><init>(IJJ)V

    .line 349
    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 2
    .parameter "hookMask"
    .parameter "sleepTime"
    .parameter "lastTime"

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput p1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->hookMask:I

    .line 353
    iput-wide p2, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->sleepTime:J

    .line 355
    iput-wide p4, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->lastTime:J

    .line 356
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->stateTimes:[D

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    .line 358
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->offTime:J

    .line 359
    return-void
.end method

.method private updateTimesLocked()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const-wide v10, 0x408f400000000000L

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 394
    .local v0, curTime:J
    iget v2, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->hookMask:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->offTime:J

    cmp-long v2, v2, v12

    if-eqz v2, :cond_0

    .line 395
    iget-wide v2, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->offTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 396
    iget-object v2, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->stateTimes:[D

    iget v3, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    aget-wide v4, v2, v3

    iget-wide v6, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->offTime:J

    iget-wide v8, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->lastTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    div-double/2addr v6, v10

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 397
    const/4 v2, 0x0

    iput v2, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    .line 398
    iput-wide v12, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->offTime:J

    .line 402
    :cond_0
    iget-object v2, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->stateTimes:[D

    iget v3, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    aget-wide v4, v2, v3

    iget-wide v6, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->lastTime:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v6, v10

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 403
    iput-wide v0, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->lastTime:J

    .line 404
    return-void
.end method


# virtual methods
.method public getCurrentStateLocked()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    return v0
.end method

.method public getStateTimesLocked()[D
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 363
    invoke-direct {p0}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->updateTimesLocked()V

    .line 366
    const-wide/16 v1, 0x0

    .line 367
    .local v1, total:D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v6, :cond_1

    .line 370
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    const-wide/high16 v1, 0x3ff0

    .line 371
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v6, :cond_2

    .line 375
    iget-object v3, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->stateTimes:[D

    return-object v3

    .line 368
    :cond_1
    iget-object v3, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->stateTimes:[D

    aget-wide v3, v3, v0

    add-double/2addr v1, v3

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_2
    iget-object v3, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->stateTimes:[D

    aget-wide v4, v3, v0

    div-double/2addr v4, v1

    aput-wide v4, v3, v0

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public resetTimesLocked()V
    .locals 4

    .prologue
    .line 379
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 382
    return-void

    .line 380
    :cond_0
    iget-object v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->stateTimes:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateEvent(II)V
    .locals 5
    .parameter "event"
    .parameter "source"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    iget v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->hookMask:I

    and-int/2addr v1, p2

    if-nez v1, :cond_0

    .line 414
    monitor-exit p0

    .line 448
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-direct {p0}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->updateTimesLocked()V

    .line 418
    iget v0, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    .line 419
    .local v0, oldState:I
    packed-switch p1, :pswitch_data_0

    .line 437
    const-string v1, "GPS"

    const-string v2, "Unknown GPS event captured"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    :goto_1
    iget v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    if-eq v1, v0, :cond_2

    .line 440
    if-ne v0, v4, :cond_3

    iget v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    if-ne v1, v3, :cond_3

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->sleepTime:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->offTime:J

    .line 411
    :cond_2
    :goto_2
    monitor-exit p0

    goto :goto_0

    .end local v0           #oldState:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 421
    .restart local v0       #oldState:I
    :pswitch_0
    const/4 v1, 0x2

    :try_start_1
    iput v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    goto :goto_1

    .line 424
    :pswitch_1
    iget v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    if-ne v1, v4, :cond_1

    .line 425
    const/4 v1, 0x1

    iput v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    goto :goto_1

    .line 429
    :pswitch_2
    iget v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    if-nez v1, :cond_1

    .line 430
    const/4 v1, 0x1

    iput v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    goto :goto_1

    .line 434
    :pswitch_3
    const/4 v1, 0x0

    iput v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->curState:I

    goto :goto_1

    .line 444
    :cond_3
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->offTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
