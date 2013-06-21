.class Lcom/stickycoding/rokon/device/Accelerometer$1;
.super Ljava/lang/Object;
.source "Accelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stickycoding/rokon/device/Accelerometer;->prepareAccelerometer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 129
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "sensorEvent"

    .prologue
    .line 132
    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$0()F

    move-result v1

    invoke-static {v1}, Lcom/stickycoding/rokon/device/Accelerometer;->access$1(F)V

    .line 133
    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$2()F

    move-result v1

    invoke-static {v1}, Lcom/stickycoding/rokon/device/Accelerometer;->access$3(F)V

    .line 134
    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$4()F

    move-result v1

    invoke-static {v1}, Lcom/stickycoding/rokon/device/Accelerometer;->access$5(F)V

    .line 135
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/stickycoding/rokon/device/Accelerometer;->access$6(F)V

    .line 136
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/stickycoding/rokon/device/Accelerometer;->access$7(F)V

    .line 137
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Lcom/stickycoding/rokon/device/Accelerometer;->access$8(F)V

    .line 138
    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$9()Lcom/stickycoding/rokon/device/OnAccelerometerChange;

    move-result-object v1

    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$0()F

    move-result v2

    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$2()F

    move-result v3

    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$4()F

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/stickycoding/rokon/device/OnAccelerometerChange;->onAccelerometerChange(FFF)V

    .line 139
    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$10()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 140
    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$0()F

    move-result v1

    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$2()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$4()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$11()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$12()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$13()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {}, Lcom/stickycoding/rokon/Time;->getLoopTicks()J

    move-result-wide v2

    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$10()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x461c4000

    mul-float v0, v1, v2

    .line 141
    .local v0, speed:F
    sget v1, Lcom/stickycoding/rokon/device/Accelerometer;->shakeThreshold:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/stickycoding/rokon/Time;->getLoopTicks()J

    move-result-wide v1

    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$14()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/stickycoding/rokon/device/Accelerometer;->minShakeInterval:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 142
    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->access$9()Lcom/stickycoding/rokon/device/OnAccelerometerChange;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/stickycoding/rokon/device/OnAccelerometerChange;->onShake(F)V

    .line 143
    invoke-static {}, Lcom/stickycoding/rokon/Time;->getLoopTicks()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/stickycoding/rokon/device/Accelerometer;->access$15(J)V

    .line 146
    .end local v0           #speed:F
    :cond_0
    invoke-static {}, Lcom/stickycoding/rokon/Time;->getLoopTicks()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/stickycoding/rokon/device/Accelerometer;->access$16(J)V

    .line 147
    return-void
.end method
