.class public Lcom/stickycoding/rokon/device/Accelerometer;
.super Ljava/lang/Object;
.source "Accelerometer.java"


# static fields
.field private static lastShake:J

.field private static lastUpdate:J

.field private static lastX:F

.field private static lastY:F

.field private static lastZ:F

.field public static minShakeInterval:J

.field private static onAccelerometerChange:Lcom/stickycoding/rokon/device/OnAccelerometerChange;

.field private static sensor:Landroid/hardware/Sensor;

.field private static sensorEventListener:Landroid/hardware/SensorEventListener;

.field private static sensorManager:Landroid/hardware/SensorManager;

.field public static shakeThreshold:F

.field private static x:F

.field private static y:F

.field private static z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 28
    sput-wide v0, Lcom/stickycoding/rokon/device/Accelerometer;->lastUpdate:J

    .line 29
    sput-wide v0, Lcom/stickycoding/rokon/device/Accelerometer;->lastShake:J

    .line 35
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/stickycoding/rokon/device/Accelerometer;->minShakeInterval:J

    .line 41
    const v0, 0x453b8000

    sput v0, Lcom/stickycoding/rokon/device/Accelerometer;->shakeThreshold:F

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/stickycoding/rokon/device/Accelerometer;->x:F

    return v0
.end method

.method static synthetic access$1(F)V
    .locals 0
    .parameter

    .prologue
    .line 30
    sput p0, Lcom/stickycoding/rokon/device/Accelerometer;->lastX:F

    return-void
.end method

.method static synthetic access$10()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Lcom/stickycoding/rokon/device/Accelerometer;->lastUpdate:J

    return-wide v0
.end method

.method static synthetic access$11()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/stickycoding/rokon/device/Accelerometer;->lastX:F

    return v0
.end method

.method static synthetic access$12()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/stickycoding/rokon/device/Accelerometer;->lastY:F

    return v0
.end method

.method static synthetic access$13()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/stickycoding/rokon/device/Accelerometer;->lastZ:F

    return v0
.end method

.method static synthetic access$14()J
    .locals 2

    .prologue
    .line 29
    sget-wide v0, Lcom/stickycoding/rokon/device/Accelerometer;->lastShake:J

    return-wide v0
.end method

.method static synthetic access$15(J)V
    .locals 0
    .parameter

    .prologue
    .line 29
    sput-wide p0, Lcom/stickycoding/rokon/device/Accelerometer;->lastShake:J

    return-void
.end method

.method static synthetic access$16(J)V
    .locals 0
    .parameter

    .prologue
    .line 28
    sput-wide p0, Lcom/stickycoding/rokon/device/Accelerometer;->lastUpdate:J

    return-void
.end method

.method static synthetic access$2()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/stickycoding/rokon/device/Accelerometer;->y:F

    return v0
.end method

.method static synthetic access$3(F)V
    .locals 0
    .parameter

    .prologue
    .line 30
    sput p0, Lcom/stickycoding/rokon/device/Accelerometer;->lastY:F

    return-void
.end method

.method static synthetic access$4()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/stickycoding/rokon/device/Accelerometer;->z:F

    return v0
.end method

.method static synthetic access$5(F)V
    .locals 0
    .parameter

    .prologue
    .line 30
    sput p0, Lcom/stickycoding/rokon/device/Accelerometer;->lastZ:F

    return-void
.end method

.method static synthetic access$6(F)V
    .locals 0
    .parameter

    .prologue
    .line 30
    sput p0, Lcom/stickycoding/rokon/device/Accelerometer;->x:F

    return-void
.end method

.method static synthetic access$7(F)V
    .locals 0
    .parameter

    .prologue
    .line 30
    sput p0, Lcom/stickycoding/rokon/device/Accelerometer;->y:F

    return-void
.end method

.method static synthetic access$8(F)V
    .locals 0
    .parameter

    .prologue
    .line 30
    sput p0, Lcom/stickycoding/rokon/device/Accelerometer;->z:F

    return-void
.end method

.method static synthetic access$9()Lcom/stickycoding/rokon/device/OnAccelerometerChange;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/stickycoding/rokon/device/Accelerometer;->onAccelerometerChange:Lcom/stickycoding/rokon/device/OnAccelerometerChange;

    return-object v0
.end method

.method public static getLastX()F
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/stickycoding/rokon/device/Accelerometer;->lastX:F

    return v0
.end method

.method public static getLastY()F
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/stickycoding/rokon/device/Accelerometer;->lastY:F

    return v0
.end method

.method public static getLastZ()F
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/stickycoding/rokon/device/Accelerometer;->lastZ:F

    return v0
.end method

.method public static getX()F
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/stickycoding/rokon/device/Accelerometer;->x:F

    return v0
.end method

.method public static getY()F
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/stickycoding/rokon/device/Accelerometer;->y:F

    return v0
.end method

.method public static getZ()F
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/stickycoding/rokon/device/Accelerometer;->z:F

    return v0
.end method

.method private static prepareAccelerometer()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 118
    sget-object v1, Lcom/stickycoding/rokon/device/Accelerometer;->sensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    move v1, v4

    .line 150
    :goto_0
    return v1

    .line 119
    :cond_0
    invoke-static {}, Lcom/stickycoding/rokon/Rokon;->getActivity()Lcom/stickycoding/rokon/RokonActivity;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Lcom/stickycoding/rokon/RokonActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/stickycoding/rokon/device/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    .line 120
    sget-object v1, Lcom/stickycoding/rokon/device/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 122
    const-string v1, "DEVICE HAS NO ACCELEROMETER"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;)V

    move v1, v3

    .line 123
    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    check-cast v0, Landroid/hardware/Sensor;

    sput-object v0, Lcom/stickycoding/rokon/device/Accelerometer;->sensor:Landroid/hardware/Sensor;

    .line 126
    new-instance v1, Lcom/stickycoding/rokon/device/Accelerometer$1;

    invoke-direct {v1}, Lcom/stickycoding/rokon/device/Accelerometer$1;-><init>()V

    sput-object v1, Lcom/stickycoding/rokon/device/Accelerometer;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 149
    sget-object v1, Lcom/stickycoding/rokon/device/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/stickycoding/rokon/device/Accelerometer;->sensorEventListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/stickycoding/rokon/device/Accelerometer;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move v1, v4

    .line 150
    goto :goto_0
.end method

.method public static startListening(Lcom/stickycoding/rokon/device/OnAccelerometerChange;)Z
    .locals 1
    .parameter "onAccelerometerChange"

    .prologue
    .line 161
    sput-object p0, Lcom/stickycoding/rokon/device/Accelerometer;->onAccelerometerChange:Lcom/stickycoding/rokon/device/OnAccelerometerChange;

    .line 162
    invoke-static {}, Lcom/stickycoding/rokon/device/Accelerometer;->prepareAccelerometer()Z

    move-result v0

    return v0
.end method

.method public static stopListening()V
    .locals 2

    .prologue
    .line 170
    :try_start_0
    sget-object v0, Lcom/stickycoding/rokon/device/Accelerometer;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/stickycoding/rokon/device/Accelerometer;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getLastShakeTime()J
    .locals 2

    .prologue
    .line 114
    sget-wide v0, Lcom/stickycoding/rokon/device/Accelerometer;->lastShake:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 105
    sget-wide v0, Lcom/stickycoding/rokon/device/Accelerometer;->lastUpdate:J

    return-wide v0
.end method
