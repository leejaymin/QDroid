.class public Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;
.super Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;
.source "LegoMindstormsNxtTouchSensor.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->INTERNAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "A component that provides a high-level interface to a touch sensor on a Lego Mindstorms NXT robot"
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
    const-string v0, "LegoMindstormsNxtTouchSensor"

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;->SensorPort(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public Pressed()Z
    .locals 6
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 59
    const-string v0, "Pressed"

    .line 60
    .local v0, functionName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v4, :cond_0

    .line 61
    const-string v4, "The Bluetooth property has not been set."

    invoke-virtual {p0, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 79
    :goto_0
    return v4

    .line 64
    :cond_0
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    const-string v4, "Not connected to a robot."

    invoke-virtual {p0, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;->port:I

    invoke-virtual {p0, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v1

    .line 70
    .local v1, returnPackage:[B
    if-eqz v1, :cond_3

    .line 71
    const/4 v4, 0x4

    invoke-virtual {p0, v1, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;->getBooleanValueFromBytes([BI)Z

    move-result v3

    .line 72
    .local v3, valid:Z
    if-eqz v3, :cond_3

    .line 73
    const/16 v4, 0xc

    invoke-virtual {p0, v1, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;->getSWORDValueFromBytes([BI)I

    move-result v2

    .line 74
    .local v2, scaledValue:I
    if-eqz v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_0

    .end local v2           #scaledValue:I
    .end local v3           #valid:Z
    :cond_3
    move v4, v5

    .line 79
    goto :goto_0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"1\""
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;->setSensorPort(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3
    .parameter "functionName"

    .prologue
    .line 37
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;->port:I

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtTouchSensor;->setInputMode(Ljava/lang/String;III)V

    .line 38
    return-void
.end method
