.class public Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;
.super Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;
.source "LegoMindstormsNxtUltrasonicSensor.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->INTERNAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "A component that provides a high-level interface to an ultrasonic sensor on a Lego Mindstorms NXT robot"
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
    const-string v0, "LegoMindstormsNxtUltrasonicSensor"

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtSensor;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v0, "4"

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->SensorPort(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private configureUltrasonicSensor(Ljava/lang/String;)V
    .locals 5
    .parameter "functionName"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 43
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 44
    .local v0, data:[B
    aput-byte v3, v0, v4

    .line 45
    const/4 v1, 0x1

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    .line 46
    aput-byte v3, v0, v3

    .line 47
    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->port:I

    invoke-virtual {p0, p1, v1, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->lsWrite(Ljava/lang/String;I[BI)V

    .line 48
    return-void
.end method

.method private getUltrasonicValue(Ljava/lang/String;)I
    .locals 7
    .parameter "functionName"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 85
    new-array v1, v4, [B

    .line 86
    .local v1, data:[B
    aput-byte v4, v1, v5

    .line 87
    const/16 v4, 0x42

    aput-byte v4, v1, v6

    .line 88
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->port:I

    invoke-virtual {p0, p1, v4, v1, v6}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->lsWrite(Ljava/lang/String;I[BI)V

    .line 91
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 92
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->port:I

    invoke-virtual {p0, p1, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->lsGetStatus(Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, countAvailableBytes:I
    if-lez v0, :cond_0

    .line 95
    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->port:I

    invoke-virtual {p0, p1, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->lsRead(Ljava/lang/String;I)[B

    move-result-object v3

    .line 96
    .local v3, returnPackage:[B
    if-eqz v3, :cond_1

    .line 97
    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->getUBYTEValueFromBytes([BI)I

    move-result v4

    .line 104
    .end local v0           #countAvailableBytes:I
    .end local v3           #returnPackage:[B
    :goto_1
    return v4

    .line 91
    .restart local v0       #countAvailableBytes:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #countAvailableBytes:I
    :cond_1
    move v4, v5

    .line 104
    goto :goto_1
.end method


# virtual methods
.method public Distance()I
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v1, "Distance"

    .line 70
    .local v1, functionName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v2, :cond_0

    .line 71
    const-string v2, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 80
    :goto_0
    return v2

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    const-string v2, "Not connected to a robot."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 76
    goto :goto_0

    .line 79
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->getUltrasonicValue(Ljava/lang/String;)I

    move-result v0

    .local v0, distance:I
    move v2, v0

    .line 80
    goto :goto_0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"4\""
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->setSensorPort(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3
    .parameter "functionName"

    .prologue
    .line 37
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->port:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->setInputMode(Ljava/lang/String;III)V

    .line 38
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtUltrasonicSensor;->configureUltrasonicSensor(Ljava/lang/String;)V

    .line 39
    return-void
.end method
