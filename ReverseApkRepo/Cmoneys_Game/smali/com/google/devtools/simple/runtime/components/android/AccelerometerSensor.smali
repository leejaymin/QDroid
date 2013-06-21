.class public Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;
.super Ljava/lang/Object;
.source "AccelerometerSensor.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/OnStopListener;
.implements Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;
.implements Lcom/google/devtools/simple/runtime/components/SensorComponent;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->SENSORS:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>Non-visible component that can detect shaking and measure acceleration approximately in three dimensions using SI units (m/s<sup>2</sup>).  The components are: <ul><li> <strong>xAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when the phone is tilted to the right (i.e.,      its left side is raised), and negative when the phone is tilted      to the left (i.e., its right size is raised).</li> <li> <strong>yAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when its bottom is raised, and negative when      its top is raised. </li> <li> <strong>zAccel</strong>: Equal to -9.8 (earth\'s gravity in meters per      second per second when the device is at rest parallel to the ground      with the display facing up,      0 when perpindicular to the ground, and +9.8 when facing down.       The value can also be affected by accelerating it with or against      gravity. </li></ul></p> "
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# static fields
.field private static final SENSOR_CACHE_SIZE:I = 0xa

.field private static final SHAKE_THRESHOLD:D = 8.0


# instance fields
.field private final X_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Y_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Z_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accuracy:I

.field private enabled:Z

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private xAccel:F

.field private yAccel:F

.field private zAccel:F


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 4
    .parameter "container"

    .prologue
    const/4 v3, 0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    .line 75
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    .line 76
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    .line 99
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    .line 100
    .local v0, form:Lcom/google/devtools/simple/runtime/components/android/Form;
    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForOnResume(Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;)V

    .line 101
    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForOnStop(Lcom/google/devtools/simple/runtime/components/android/OnStopListener;)V

    .line 103
    iput-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->enabled:Z

    .line 104
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 105
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 106
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->startListening()V

    .line 107
    return-void
.end method

.method private addToSensorCache(Ljava/util/Queue;F)V
    .locals 2
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, cache:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 245
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 247
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method private isShaking(Ljava/util/Queue;F)Z
    .locals 7
    .parameter
    .parameter "currentValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Float;",
            ">;F)Z"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, cache:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/Float;>;"
    const/4 v0, 0x0

    .line 257
    .local v0, average:F
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 258
    .local v2, value:F
    add-float/2addr v0, v2

    goto :goto_0

    .line 261
    .end local v2           #value:F
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 263
    sub-float v3, v0, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4020

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private startListening()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 174
    return-void
.end method

.method private stopListening()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 179
    return-void
.end method


# virtual methods
.method public AccelerationChanged(FFF)V
    .locals 4
    .parameter "xAccel"
    .parameter "yAccel"
    .parameter "zAccel"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "xAccel As Single, yAccel As Single, zAccel As Single"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 121
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->xAccel:F

    .line 122
    iput p2, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->yAccel:F

    .line 123
    iput p3, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->zAccel:F

    .line 125
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v0, p1}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 126
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v0, p2}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 127
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v0, p3}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 129
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v0, p1}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v0, p2}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v0, p3}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->Shaking()V

    .line 133
    :cond_1
    const-string v0, "AccelerationChanged"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 154
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 155
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Enabled(Z)V
    .locals 1
    .parameter "enabled"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 196
    :cond_0
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->enabled:Z

    .line 197
    if-eqz p1, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->startListening()V

    goto :goto_0

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->stopListening()V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->enabled:Z

    return v0
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public Shaking()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 142
    const-string v0, "Shaking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public XAccel()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 213
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->xAccel:F

    return v0
.end method

.method public YAccel()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 225
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->yAccel:F

    return v0
.end method

.method public ZAccel()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 237
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->zAccel:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 282
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->stopListening()V

    .line 309
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->startListening()V

    .line 291
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "sensorEvent"

    .prologue
    .line 269
    iget-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 270
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 271
    .local v0, values:[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->xAccel:F

    .line 272
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->yAccel:F

    .line 273
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->zAccel:F

    .line 274
    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->accuracy:I

    .line 275
    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->xAccel:F

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->yAccel:F

    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->zAccel:F

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->AccelerationChanged(FFF)V

    .line 277
    .end local v0           #values:[F
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/AccelerometerSensor;->stopListening()V

    .line 300
    :cond_0
    return-void
.end method
