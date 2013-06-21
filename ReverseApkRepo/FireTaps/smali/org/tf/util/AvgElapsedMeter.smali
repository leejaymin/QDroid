.class public Lorg/tf/util/AvgElapsedMeter;
.super Ljava/lang/Object;
.source "AvgElapsedMeter.java"


# instance fields
.field private m_measure:I

.field private m_measureCount:I

.field private m_startTime:J

.field private m_totalTime:J

.field private m_what:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "what"
    .parameter "measureCount"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/tf/util/AvgElapsedMeter;->m_what:Ljava/lang/String;

    .line 28
    iput p2, p0, Lorg/tf/util/AvgElapsedMeter;->m_measureCount:I

    .line 29
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/tf/util/AvgElapsedMeter;->m_startTime:J

    .line 33
    return-void
.end method

.method public end()V
    .locals 4

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/tf/util/AvgElapsedMeter;->m_totalTime:J

    iget-wide v2, p0, Lorg/tf/util/AvgElapsedMeter;->m_startTime:J

    invoke-static {v2, v3}, Lskiba/util/Simply;->elapsedUptimeMillis(J)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tf/util/AvgElapsedMeter;->m_totalTime:J

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/tf/util/AvgElapsedMeter;->m_startTime:J

    .line 38
    iget v0, p0, Lorg/tf/util/AvgElapsedMeter;->m_measure:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tf/util/AvgElapsedMeter;->m_measure:I

    .line 39
    iget v0, p0, Lorg/tf/util/AvgElapsedMeter;->m_measure:I

    iget v1, p0, Lorg/tf/util/AvgElapsedMeter;->m_measureCount:I

    if-ne v0, v1, :cond_0

    .line 40
    const-string v0, "TOF"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/tf/util/AvgElapsedMeter;->m_what:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/tf/util/AvgElapsedMeter;->m_totalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    iget-wide v2, p0, Lorg/tf/util/AvgElapsedMeter;->m_totalTime:J

    long-to-float v2, v2

    iget v3, p0, Lorg/tf/util/AvgElapsedMeter;->m_measureCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " average"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/util/AvgElapsedMeter;->m_measure:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tf/util/AvgElapsedMeter;->m_totalTime:J

    .line 46
    :cond_0
    return-void
.end method
