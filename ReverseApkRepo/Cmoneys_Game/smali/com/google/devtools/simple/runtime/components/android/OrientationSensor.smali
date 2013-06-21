.class public Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;
.super Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;
.source "OrientationSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->SENSORS:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>Non-visible component providing information about the device\'s physical orientation in three dimensions: <ul> <li> <strong>Roll</strong>: 0 degrees when the device is level, increases to      90 degrees as the device is tilted up on its left side, and      decreases to &minus;90 degrees when the device is tilted up on its right side.      </li> <li> <strong>Pitch</strong>: 0 degrees when the device is level, up to      90 degrees as the device is tilted so its top is pointing down,      up to 180 degrees as it gets turned over.  Similarly, as the device      is tilted so its bottom points down, pitch decreases to &minus;90      degrees, then further decreases to &minus;180 degrees as it gets turned all the way      over.</li> <li> <strong>Yaw</strong>: 0 degrees when the top of the device is      pointing north, 90 degrees when it is pointing east, 180 degrees      when it is pointing south, 270 degrees when it is pointing west,      etc.</li></ul>     These measurements assume that the device itself is not moving.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private orientationSensor:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/OrientationSensorComponent;-><init>()V

    .line 61
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 63
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->orientationSensor:Landroid/hardware/Sensor;

    .line 64
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->orientationSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 65
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 102
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 109
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "sensorEvent"

    .prologue
    .line 89
    iget-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 90
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 91
    .local v0, values:[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->yaw:F

    .line 92
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->pitch:F

    .line 93
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->roll:F

    .line 94
    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->accuracy:I

    .line 95
    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->yaw:F

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->pitch:F

    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->roll:F

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/OrientationSensor;->OrientationChanged(FFF)V

    .line 97
    .end local v0           #values:[F
    :cond_0
    return-void
.end method
