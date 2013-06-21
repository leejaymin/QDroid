.class public Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;
.super Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;
.source "LegoMindstormsNxtLightSensor.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->INTERNAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "A component that provides a high-level interface to a light sensor on a Lego Mindstorms NXT robot"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private generateLight:Z


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 32
    const-string v0, "LegoMindstormsNxtLightSensor"

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v0, "3"

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->SensorPort(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->GenerateLight(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public GenerateLight(Z)V
    .locals 1
    .parameter "generateLight"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->generateLight:Z

    .line 77
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "GenerateLight"

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->initializeSensor(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public GenerateLight()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->generateLight:Z

    return v0
.end method

.method public LightLevel()I
    .locals 6
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 89
    const-string v0, "LightLevel"

    .line 90
    .local v0, functionName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v4, :cond_0

    .line 91
    const-string v4, "The Bluetooth property has not been set."

    invoke-virtual {p0, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 109
    :goto_0
    return v4

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    const-string v4, "Not connected to a robot."

    invoke-virtual {p0, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 96
    goto :goto_0

    .line 99
    :cond_1
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->port:I

    invoke-virtual {p0, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v2

    .line 100
    .local v2, returnPackage:[B
    if-eqz v2, :cond_2

    .line 101
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->getBooleanValueFromBytes([BI)Z

    move-result v3

    .line 102
    .local v3, valid:Z
    if-eqz v3, :cond_2

    .line 103
    const/16 v4, 0xa

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->getUWORDValueFromBytes([BI)I

    move-result v1

    .local v1, normalizedValue:I
    move v4, v1

    .line 104
    goto :goto_0

    .end local v1           #normalizedValue:I
    .end local v3           #valid:Z
    :cond_2
    move v4, v5

    .line 109
    goto :goto_0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"3\""
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->setSensorPort(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3
    .parameter "functionName"

    .prologue
    .line 40
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->port:I

    iget-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->generateLight:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    :goto_0
    const/16 v2, 0x80

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtLightSensor;->setInputMode(Ljava/lang/String;III)V

    .line 43
    return-void

    .line 40
    :cond_0
    const/4 v1, 0x6

    goto :goto_0
.end method
