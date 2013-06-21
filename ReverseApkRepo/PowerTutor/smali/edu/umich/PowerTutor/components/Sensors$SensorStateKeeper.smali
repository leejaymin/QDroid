.class Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
.super Ljava/lang/Object;
.source "Sensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/Sensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorStateKeeper"
.end annotation


# instance fields
.field private count:I

.field private lastTime:J

.field private nesting:[I

.field private times:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-array v0, v1, [I

    iput-object v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->nesting:[I

    .line 171
    new-array v0, v1, [J

    iput-object v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->times:[J

    .line 172
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->lastTime:J

    .line 173
    return-void
.end method


# virtual methods
.method public sensorsOn()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->count:I

    return v0
.end method

.method public setupSensorTimes([DJ)V
    .locals 11
    .parameter "sensorTimes"
    .parameter "iterationInterval"

    .prologue
    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 197
    .local v3, now:J
    iget-wide v5, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->lastTime:J

    sub-long v0, v3, v5

    .line 198
    .local v0, div:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gtz v5, :cond_0

    const-wide/16 v0, 0x1

    .line 199
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v5, 0xa

    if-lt v2, v5, :cond_1

    .line 204
    iput-wide v3, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->lastTime:J

    .line 205
    return-void

    .line 200
    :cond_1
    const-wide/high16 v7, 0x3ff0

    iget-object v5, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->times:[J

    aget-wide v9, v5, v2

    .line 201
    iget-object v5, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->nesting:[I

    aget v5, v5, v2

    if-lez v5, :cond_2

    iget-wide v5, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->lastTime:J

    sub-long v5, v3, v5

    :goto_1
    add-long/2addr v5, v9

    long-to-double v5, v5

    mul-double/2addr v5, v7

    long-to-double v7, v0

    div-double/2addr v5, v7

    .line 200
    aput-wide v5, p1, v2

    .line 202
    iget-object v5, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->times:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_2
    const-wide/16 v5, 0x0

    goto :goto_1
.end method

.method public startSensor(I)V
    .locals 7
    .parameter "sensor"

    .prologue
    .line 176
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->nesting:[I

    aget v1, v0, p1

    add-int/lit8 v2, v1, 0x1

    aput v2, v0, p1

    if-nez v1, :cond_0

    .line 177
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->times:[J

    aget-wide v1, v0, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->lastTime:J

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 178
    iget v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->count:I

    .line 180
    :cond_0
    return-void
.end method

.method public stopSensor(I)V
    .locals 7
    .parameter "sensor"

    .prologue
    .line 183
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->nesting:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->nesting:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    if-nez v1, :cond_0

    .line 186
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->times:[J

    aget-wide v1, v0, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->lastTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 187
    iget v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->count:I

    goto :goto_0
.end method
