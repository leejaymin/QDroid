.class public abstract Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;
.super Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;
.source "LegoMindstormsNxtSensor.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# static fields
.field static final SENSOR_MODE_ANGLESTEPMODE:I = 0xe0

.field static final SENSOR_MODE_BOOLEANMODE:I = 0x20

.field static final SENSOR_MODE_CELSIUSMODE:I = 0xa0

.field static final SENSOR_MODE_FAHRENHEITMODE:I = 0xc0

.field static final SENSOR_MODE_MODEMASK:I = 0xe0

.field static final SENSOR_MODE_PCTFULLSCALEMODE:I = 0x80

.field static final SENSOR_MODE_PERIODCOUNTERMODE:I = 0x60

.field static final SENSOR_MODE_RAWMODE:I = 0x0

.field static final SENSOR_MODE_SLOPEMASK:I = 0x1f

.field static final SENSOR_MODE_TRANSITIONCNTMODE:I = 0x40

.field static final SENSOR_TYPE_ANGLE:I = 0x4

.field static final SENSOR_TYPE_CUSTOM:I = 0x9

.field static final SENSOR_TYPE_LIGHT_ACTIVE:I = 0x5

.field static final SENSOR_TYPE_LIGHT_INACTIVE:I = 0x6

.field static final SENSOR_TYPE_LOWSPEED:I = 0xa

.field static final SENSOR_TYPE_LOWSPEED_9V:I = 0xb

.field static final SENSOR_TYPE_NO_SENSOR:I = 0x0

.field static final SENSOR_TYPE_REFLECTION:I = 0x3

.field static final SENSOR_TYPE_SOUND_DB:I = 0x7

.field static final SENSOR_TYPE_SOUND_DBA:I = 0x8

.field static final SENSOR_TYPE_SWITCH:I = 0x1

.field static final SENSOR_TYPE_TEMPERATURE:I = 0x2


# instance fields
.field protected port:I

.field private sensorPortLetter:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "logTag"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public SensorPort()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;->sensorPortLetter:Ljava/lang/String;

    return-object v0
.end method

.method public abstract SensorPort(Ljava/lang/String;)V
.end method

.method public afterConnect(Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;)V
    .locals 1
    .parameter "bluetoothConnection"

    .prologue
    .line 83
    const-string v0, "Connect"

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;->initializeSensor(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected abstract initializeSensor(Ljava/lang/String;)V
.end method

.method protected final setSensorPort(Ljava/lang/String;)V
    .locals 5
    .parameter "sensorPortLetter"

    .prologue
    .line 64
    const-string v1, "SensorPort"

    .line 67
    .local v1, functionName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 74
    .local v2, port:I
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;->sensorPortLetter:Ljava/lang/String;

    .line 75
    iput v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;->port:I

    .line 76
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;->initializeSensor(Ljava/lang/String;)V

    .line 79
    .end local v2           #port:I
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The NXT does not have a sensor port labeled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
