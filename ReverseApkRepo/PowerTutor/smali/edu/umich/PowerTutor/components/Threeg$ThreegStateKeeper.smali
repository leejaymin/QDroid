.class Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;
.super Ljava/lang/Object;
.source "Threeg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/Threeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreegStateKeeper"
.end annotation


# instance fields
.field private deltaDownlinkBytes:J

.field private deltaPackets:J

.field private deltaUplinkBytes:J

.field private inactiveTime:J

.field private lastReceiveBytes:J

.field private lastReceivePackets:J

.field private lastTime:J

.field private lastTransmitBytes:J

.field private lastTransmitPackets:J

.field private powerState:I

.field private stateTime:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-wide v1, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTime:J

    iput-wide v1, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastReceiveBytes:J

    iput-wide v1, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTransmitBytes:J

    .line 277
    iput-wide v1, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->deltaDownlinkBytes:J

    iput-wide v1, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->deltaUplinkBytes:J

    .line 278
    iput v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->powerState:I

    .line 279
    iput v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->stateTime:I

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->inactiveTime:J

    .line 281
    return-void
.end method


# virtual methods
.method public getDownlinkBytes()J
    .locals 2

    .prologue
    .line 368
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->deltaDownlinkBytes:J

    return-wide v0
.end method

.method public getPackets()J
    .locals 2

    .prologue
    .line 360
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->deltaPackets:J

    return-wide v0
.end method

.method public getPowerState()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->powerState:I

    return v0
.end method

.method public getUplinkBytes()J
    .locals 2

    .prologue
    .line 364
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->deltaUplinkBytes:J

    return-wide v0
.end method

.method public interfaceOff()V
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTime:J

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->powerState:I

    .line 286
    return-void
.end method

.method public isInitialized()Z
    .locals 4

    .prologue
    .line 289
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStale()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 377
    iget v3, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->powerState:I

    if-eqz v3, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v2

    .line 378
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 379
    .local v0, curTime:J
    iget-wide v3, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x2710

    iget-wide v7, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->inactiveTime:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateState(JJJJIIII)V
    .locals 12
    .parameter "transmitPackets"
    .parameter "receivePackets"
    .parameter "transmitBytes"
    .parameter "receiveBytes"
    .parameter "dchFachDelay"
    .parameter "fachIdleDelay"
    .parameter "uplinkQueueSize"
    .parameter "downlinkQueueSize"

    .prologue
    .line 296
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 297
    .local v2, curTime:J
    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTime:J

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    .line 298
    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTime:J

    sub-long v8, v2, v8

    long-to-double v4, v8

    .line 299
    .local v4, deltaTime:D
    add-long v8, p1, p3

    .line 300
    iget-wide v10, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTransmitPackets:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastReceivePackets:J

    sub-long/2addr v8, v10

    .line 299
    iput-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->deltaPackets:J

    .line 301
    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTransmitBytes:J

    sub-long v8, p5, v8

    iput-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->deltaUplinkBytes:J

    .line 302
    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastReceiveBytes:J

    sub-long v8, p7, v8

    iput-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->deltaDownlinkBytes:J

    .line 303
    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->deltaUplinkBytes:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->deltaDownlinkBytes:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    const/4 v6, 0x1

    .line 304
    .local v6, inactive:Z
    :goto_0
    if-eqz v6, :cond_2

    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->inactiveTime:J

    add-long/2addr v8, v2

    iget-wide v10, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTime:J

    sub-long/2addr v8, v10

    :goto_1
    iput-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->inactiveTime:J

    .line 307
    const/4 v7, 0x1

    .line 312
    .local v7, timeMult:I
    const/4 v7, 0x1

    .line 315
    iget v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->powerState:I

    packed-switch v8, :pswitch_data_0

    .line 337
    if-eqz v6, :cond_5

    .line 338
    iget v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->stateTime:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->stateTime:I

    .line 339
    iget v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->stateTime:I

    mul-int v9, p9, v7

    if-lt v8, v9, :cond_0

    .line 340
    const/4 v8, 0x0

    iput v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->stateTime:I

    .line 341
    const/4 v8, 0x1

    iput v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->powerState:I

    .line 348
    .end local v4           #deltaTime:D
    .end local v6           #inactive:Z
    .end local v7           #timeMult:I
    :cond_0
    :goto_2
    iput-wide v2, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTime:J

    .line 349
    iput-wide p1, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTransmitPackets:J

    .line 350
    iput-wide p3, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastReceivePackets:J

    .line 351
    move-wide/from16 v0, p5

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastTransmitBytes:J

    .line 352
    move-wide/from16 v0, p7

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->lastReceiveBytes:J

    .line 353
    return-void

    .line 303
    .restart local v4       #deltaTime:D
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 304
    .restart local v6       #inactive:Z
    :cond_2
    const-wide/16 v8, 0x0

    goto :goto_1

    .line 317
    .restart local v7       #timeMult:I
    :pswitch_0
    if-nez v6, :cond_0

    .line 318
    const/4 v8, 0x1

    iput v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->powerState:I

    goto :goto_2

    .line 322
    :pswitch_1
    if-eqz v6, :cond_3

    .line 323
    iget v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->stateTime:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->stateTime:I

    .line 324
    iget v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->stateTime:I

    mul-int v9, p10, v7

    if-lt v8, v9, :cond_0

    .line 325
    const/4 v8, 0x0

    iput v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->stateTime:I

    .line 326
    const/4 v8, 0x0

    iput v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->powerState:I

    goto :goto_2

    .line 329
    :cond_3
    const/4 v8, 0x0

    iput v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->stateTime:I

    .line 330
    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->deltaUplinkBytes:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    .line 331
    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->deltaDownlinkBytes:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 332
    :cond_4
    const/4 v8, 0x2

    iput v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->powerState:I

    goto :goto_2

    .line 344
    :cond_5
    const/4 v8, 0x0

    iput v8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegStateKeeper;->stateTime:I

    goto :goto_2

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
