.class Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;
.super Ljava/lang/Object;
.source "CPU.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/CPU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CpuStateKeeper"
.end annotation


# instance fields
.field private deltaTotal:J

.field private inactiveIterations:J

.field private iteration:J

.field private lastSys:J

.field private lastTotal:J

.field private lastUpdateIteration:J

.field private lastUsr:J

.field private sumSys:J

.field private sumUsr:J

.field private uid:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .parameter "uid"

    .prologue
    const-wide/16 v0, -0x1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput p1, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->uid:I

    .line 246
    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastSys:J

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastUsr:J

    .line 247
    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->iteration:J

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastUpdateIteration:J

    .line 248
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->inactiveIterations:J

    .line 249
    return-void
.end method

.method synthetic constructor <init>(ILedu/umich/PowerTutor/components/CPU$CpuStateKeeper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;-><init>(I)V

    return-void
.end method


# virtual methods
.method public absorb(Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 290
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumUsr:J

    iget-wide v2, p1, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumUsr:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumUsr:J

    .line 291
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumSys:J

    iget-wide v2, p1, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumSys:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumSys:J

    .line 292
    return-void
.end method

.method public getSysPerc()D
    .locals 6

    .prologue
    .line 299
    const-wide/high16 v0, 0x4059

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumSys:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumUsr:J

    iget-wide v4, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumSys:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->deltaTotal:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->uid:I

    return v0
.end method

.method public getUsrPerc()D
    .locals 6

    .prologue
    .line 295
    const-wide/high16 v0, 0x4059

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumUsr:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumUsr:J

    iget-wide v4, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumSys:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->deltaTotal:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public isAlive(J)Z
    .locals 2
    .parameter "iteration"

    .prologue
    .line 303
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->iteration:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 4

    .prologue
    .line 252
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastUsr:J

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

.method public isStale(J)Z
    .locals 6
    .parameter "iteration"

    .prologue
    .line 307
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastUpdateIteration:J

    sub-long v2, p1, v2

    long-to-int v2, v2

    shl-long/2addr v0, v2

    .line 308
    iget-wide v2, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->inactiveIterations:J

    iget-wide v4, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->inactiveIterations:J

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 307
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateIteration(JJ)V
    .locals 4
    .parameter "iteration"
    .parameter "totalTime"

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    .line 259
    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumUsr:J

    .line 260
    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumSys:J

    .line 261
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastTotal:J

    sub-long v0, p3, v0

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->deltaTotal:J

    .line 262
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->deltaTotal:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->deltaTotal:J

    .line 263
    :cond_0
    iput-wide p3, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastTotal:J

    .line 264
    iput-wide p1, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->iteration:J

    .line 265
    return-void
.end method

.method public updateState(JJJJ)V
    .locals 6
    .parameter "usrTime"
    .parameter "sysTime"
    .parameter "totalTime"
    .parameter "iteration"

    .prologue
    const-wide/16 v4, 0x1

    .line 269
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastUsr:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumUsr:J

    .line 270
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastSys:J

    sub-long v0, p3, v0

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->sumSys:J

    .line 271
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastTotal:J

    sub-long v0, p5, v0

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->deltaTotal:J

    .line 272
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->deltaTotal:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v4, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->deltaTotal:J

    .line 273
    :cond_0
    iput-wide p1, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastUsr:J

    .line 274
    iput-wide p3, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastSys:J

    .line 275
    iput-wide p5, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastTotal:J

    .line 276
    iput-wide p7, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->iteration:J

    iput-wide p7, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->lastUpdateIteration:J

    .line 278
    invoke-virtual {p0}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->getUsrPerc()D

    move-result-wide v0

    invoke-virtual {p0}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->getSysPerc()D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 279
    iget-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->inactiveIterations:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->inactiveIterations:J

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->inactiveIterations:J

    goto :goto_0
.end method
