.class public Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;
.super Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;
.source "LegoMindstormsNxtSoundSensor.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->INTERNAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "A component that provides a high-level interface to a sound sensor on a Lego Mindstorms NXT robot"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 30
    const-string v0, "LegoMindstormsNxtSoundSensor"

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v0, "2"

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;->SensorPort(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"2\""
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;->setSensorPort(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public SoundLevel()I
    .locals 6
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 60
    const-string v0, "SoundLevel"

    .line 61
    .local v0, functionName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v4, :cond_0

    .line 62
    const-string v4, "The Bluetooth property has not been set."

    invoke-virtual {p0, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 80
    :goto_0
    return v4

    .line 65
    :cond_0
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 66
    const-string v4, "Not connected to a robot."

    invoke-virtual {p0, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 67
    goto :goto_0

    .line 70
    :cond_1
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;->port:I

    invoke-virtual {p0, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v2

    .line 71
    .local v2, returnPackage:[B
    if-eqz v2, :cond_2

    .line 72
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;->getBooleanValueFromBytes([BI)Z

    move-result v3

    .line 73
    .local v3, valid:Z
    if-eqz v3, :cond_2

    .line 74
    const/16 v4, 0xa

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;->getUWORDValueFromBytes([BI)I

    move-result v1

    .local v1, normalizedValue:I
    move v4, v1

    .line 75
    goto :goto_0

    .end local v1           #normalizedValue:I
    .end local v3           #valid:Z
    :cond_2
    move v4, v5

    .line 80
    goto :goto_0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3
    .parameter "functionName"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;->port:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSoundSensor;->setInputMode(Ljava/lang/String;III)V

    .line 39
    return-void
.end method
