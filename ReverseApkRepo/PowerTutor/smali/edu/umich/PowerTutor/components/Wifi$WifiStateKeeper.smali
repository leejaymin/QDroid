.class Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;
.super Ljava/lang/Object;
.source "Wifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/Wifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiStateKeeper"
.end annotation


# instance fields
.field private deltaDownlinkBytes:J

.field private deltaUplinkBytes:J

.field private highLowTransition:D

.field private inactiveTime:J

.field private lastAverageReceivePacketSize:D

.field private lastAverageTransmitPacketSize:D

.field private lastPackets:D

.field private lastReceiveBytes:J

.field private lastReceivePackets:J

.field private lastTime:J

.field private lastTransmitBytes:J

.field private lastTransmitPackets:J

.field private lastUplinkRate:D

.field private lowHighTransition:D

.field private powerState:I


# direct methods
.method public constructor <init>(DD)V
    .locals 4
    .parameter "highLowTransition"
    .parameter "lowHighTransition"

    .prologue
    const-wide v2, 0x408f400000000000L

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-wide p1, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->highLowTransition:D

    .line 289
    iput-wide p3, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lowHighTransition:D

    .line 291
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTime:J

    .line 290
    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitBytes:J

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastReceivePackets:J

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitPackets:J

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->powerState:I

    .line 293
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastUplinkRate:D

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastPackets:D

    .line 294
    iput-wide v2, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastAverageTransmitPacketSize:D

    .line 295
    iput-wide v2, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastAverageReceivePacketSize:D

    .line 296
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->inactiveTime:J

    .line 297
    return-void
.end method


# virtual methods
.method public getAverageReceivePacketSize()D
    .locals 2

    .prologue
    .line 375
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastAverageReceivePacketSize:D

    return-wide v0
.end method

.method public getAverageTransmitPacketSize()D
    .locals 2

    .prologue
    .line 371
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastAverageTransmitPacketSize:D

    return-wide v0
.end method

.method public getDownlinkBytes()J
    .locals 2

    .prologue
    .line 363
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->deltaDownlinkBytes:J

    return-wide v0
.end method

.method public getPackets()D
    .locals 2

    .prologue
    .line 355
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastPackets:D

    return-wide v0
.end method

.method public getPowerState()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->powerState:I

    return v0
.end method

.method public getReceiveBytes()J
    .locals 2

    .prologue
    .line 391
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastReceiveBytes:J

    return-wide v0
.end method

.method public getReceivePackets()J
    .locals 2

    .prologue
    .line 383
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastReceivePackets:J

    return-wide v0
.end method

.method public getTransmitBytes()J
    .locals 2

    .prologue
    .line 387
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitBytes:J

    return-wide v0
.end method

.method public getTransmitPackets()J
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitPackets:J

    return-wide v0
.end method

.method public getUplinkBytes()J
    .locals 2

    .prologue
    .line 359
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->deltaUplinkBytes:J

    return-wide v0
.end method

.method public getUplinkRate()D
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastUplinkRate:D

    return-wide v0
.end method

.method public interfaceOff()V
    .locals 2

    .prologue
    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTime:J

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->powerState:I

    .line 302
    return-void
.end method

.method public isInitialized()Z
    .locals 4

    .prologue
    .line 305
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTime:J

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
    .locals 8

    .prologue
    .line 400
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 401
    .local v0, curTime:J
    iget-wide v2, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->inactiveTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateState(JJJJ)V
    .locals 12
    .parameter "transmitPackets"
    .parameter "receivePackets"
    .parameter "transmitBytes"
    .parameter "receiveBytes"

    .prologue
    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 311
    .local v2, curTime:J
    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTime:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    .line 312
    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTime:J

    sub-long v6, v2, v6

    long-to-double v4, v6

    .line 313
    .local v4, deltaTime:D
    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitBytes:J

    sub-long v6, p5, v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4090

    div-double/2addr v6, v8

    .line 314
    const-wide v8, 0x401f400000000000L

    mul-double/2addr v6, v8

    div-double/2addr v6, v4

    .line 313
    iput-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastUplinkRate:D

    .line 315
    add-long v6, p3, p1

    .line 316
    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastReceivePackets:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitPackets:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    .line 315
    iput-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastPackets:D

    .line 317
    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitBytes:J

    sub-long v6, p5, v6

    iput-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->deltaUplinkBytes:J

    .line 318
    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastReceiveBytes:J

    sub-long v6, p7, v6

    iput-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->deltaDownlinkBytes:J

    .line 319
    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitPackets:J

    cmp-long v6, p1, v6

    if-eqz v6, :cond_0

    .line 320
    const-wide v6, 0x3feccccccccccccdL

    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastAverageTransmitPacketSize:D

    mul-double/2addr v6, v8

    .line 321
    const-wide v8, 0x3fb999999999999aL

    iget-wide v10, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitBytes:J

    sub-long v10, p5, v10

    long-to-double v10, v10

    mul-double/2addr v8, v10

    .line 322
    iget-wide v10, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitPackets:J

    sub-long v10, p1, v10

    long-to-double v10, v10

    .line 321
    div-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 320
    iput-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastAverageTransmitPacketSize:D

    .line 324
    :cond_0
    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastReceivePackets:J

    cmp-long v6, p3, v6

    if-eqz v6, :cond_1

    .line 325
    const-wide v6, 0x3feccccccccccccdL

    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastAverageReceivePacketSize:D

    mul-double/2addr v6, v8

    .line 326
    const-wide v8, 0x3fb999999999999aL

    iget-wide v10, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastReceiveBytes:J

    sub-long v10, p7, v10

    long-to-double v10, v10

    mul-double/2addr v8, v10

    .line 327
    iget-wide v10, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastReceivePackets:J

    sub-long v10, p3, v10

    long-to-double v10, v10

    .line 326
    div-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 325
    iput-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastAverageReceivePacketSize:D

    .line 330
    :cond_1
    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastReceiveBytes:J

    cmp-long v6, p7, v6

    if-nez v6, :cond_2

    .line 331
    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitBytes:J

    cmp-long v6, p5, v6

    if-eqz v6, :cond_4

    .line 332
    :cond_2
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->inactiveTime:J

    .line 337
    :goto_0
    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastPackets:D

    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->highLowTransition:D

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    .line 338
    const/4 v6, 0x0

    iput v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->powerState:I

    .line 343
    .end local v4           #deltaTime:D
    :cond_3
    :goto_1
    iput-wide v2, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTime:J

    .line 344
    iput-wide p1, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitPackets:J

    .line 345
    iput-wide p3, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastReceivePackets:J

    .line 346
    move-wide/from16 v0, p5

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTransmitBytes:J

    .line 347
    move-wide/from16 v0, p7

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastReceiveBytes:J

    .line 348
    return-void

    .line 334
    .restart local v4       #deltaTime:D
    :cond_4
    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->inactiveTime:J

    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastTime:J

    sub-long v8, v2, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->inactiveTime:J

    goto :goto_0

    .line 339
    :cond_5
    iget-wide v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lastPackets:D

    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->lowHighTransition:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    .line 340
    const/4 v6, 0x1

    iput v6, p0, Ledu/umich/PowerTutor/components/Wifi$WifiStateKeeper;->powerState:I

    goto :goto_1
.end method
