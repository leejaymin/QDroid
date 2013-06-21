.class public Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;
.super Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;
.source "LegoMindstormsNxtDrive.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->INTERNAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "A component that provides a high-level interface to a Lego Mindstorms NXT robot, with functions that can move and turn the robot"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# static fields
.field private static final MODE_BRAKE:I = 0x2

.field private static final MODE_MOTORON:I = 0x1

.field private static final MODE_REGULATED:I = 0x4

.field private static final MOTOR_RUN_STATE_IDLE:I = 0x0

.field private static final MOTOR_RUN_STATE_RAMPDOWN:I = 0x40

.field private static final MOTOR_RUN_STATE_RAMPUP:I = 0x10

.field private static final MOTOR_RUN_STATE_RUNNING:I = 0x20

.field private static final REGULATION_MODE_IDLE:I = 0x0

.field private static final REGULATION_MODE_MOTOR_SPEED:I = 0x1

.field private static final REGULATION_MODE_MOTOR_SYNC:I = 0x2


# instance fields
.field private driveMotorPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private driveMotors:Ljava/lang/String;

.field private stopBeforeDisconnect:Z

.field private wheelDiameter:D


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 55
    const-string v0, "LegoMindstormsNxtDrive"

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v0, "BC"

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->DriveMotors(Ljava/lang/String;)V

    .line 58
    const v0, 0x408a3d71

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->WheelDiameter(F)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->StopBeforeDisconnect(Z)V

    .line 60
    return-void
.end method

.method private move(Ljava/lang/String;IJ)V
    .locals 11
    .parameter "functionName"
    .parameter "power"
    .parameter "tachoLimit"

    .prologue
    const/4 v4, 0x1

    .line 175
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v0, :cond_1

    .line 176
    const-string v0, "The Bluetooth property has not been set."

    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    const-string v0, "Not connected to a robot."

    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 185
    .local v2, port:I
    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v4

    move-wide v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_1
.end method

.method private turnIndefinitely(Ljava/lang/String;III)V
    .locals 10
    .parameter "functionName"
    .parameter "power"
    .parameter "forwardMotorIndex"
    .parameter "reverseMotorIndex"

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x20

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 210
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v0, :cond_0

    .line 211
    const-string v0, "The Bluetooth property has not been set."

    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    const-string v0, "Not connected to a robot."

    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v9}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    .line 223
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    neg-int v3, p2

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v9}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0
.end method


# virtual methods
.method public DriveMotors()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->driveMotors:Ljava/lang/String;

    return-object v0
.end method

.method public DriveMotors(Ljava/lang/String;)V
    .locals 6
    .parameter "motorPortLetters"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"BC\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->driveMotors:Ljava/lang/String;

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->driveMotorPorts:Ljava/util/List;

    .line 91
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 94
    .local v0, ch:C
    :try_start_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->convertMotorPortLetterToNumber(C)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 96
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DriveMotors"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The NXT does not have an motor port labeled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 100
    .end local v0           #ch:C
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    return-void
.end method

.method public MoveBackward(ID)V
    .locals 8
    .parameter "power"
    .parameter "distance"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Move the robot backward the given distance, with the specified percentage of maximum power."
    .end annotation

    .prologue
    .line 167
    const-wide v2, 0x4076800000000000L

    mul-double/2addr v2, p2

    iget-wide v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->wheelDiameter:D

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-long v0, v2

    .line 171
    .local v0, tachoLimit:J
    const-string v2, "MoveBackward"

    neg-int v3, p1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->move(Ljava/lang/String;IJ)V

    .line 172
    return-void
.end method

.method public MoveBackwardIndefinitely(I)V
    .locals 4
    .parameter "power"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Move the robot backward indefinitely, with the specified percentage of maximum power."
    .end annotation

    .prologue
    .line 151
    const-string v0, "MoveBackwardIndefinitely"

    neg-int v1, p1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->move(Ljava/lang/String;IJ)V

    .line 152
    return-void
.end method

.method public MoveForward(ID)V
    .locals 8
    .parameter "power"
    .parameter "distance"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Move the robot forward the given distance, with the specified percentage of maximum power."
    .end annotation

    .prologue
    .line 157
    const-wide v2, 0x4076800000000000L

    mul-double/2addr v2, p2

    iget-wide v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->wheelDiameter:D

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-long v0, v2

    .line 161
    .local v0, tachoLimit:J
    const-string v2, "MoveForward"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->move(Ljava/lang/String;IJ)V

    .line 162
    return-void
.end method

.method public MoveForwardIndefinitely(I)V
    .locals 3
    .parameter "power"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Move the robot forward indefinitely, with the specified percentage of maximum power."
    .end annotation

    .prologue
    .line 145
    const-string v0, "MoveForwardIndefinitely"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->move(Ljava/lang/String;IJ)V

    .line 146
    return-void
.end method

.method public Stop()V
    .locals 11
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Stop the drive motors of the robot."
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 234
    const-string v1, "Stop"

    .line 235
    .local v1, functionName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v0, :cond_1

    .line 236
    const-string v0, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    const-string v0, "Not connected to a robot."

    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 245
    .local v2, port:I
    const/4 v4, 0x2

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v9}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_1
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 0
    .parameter "stopBeforeDisconnect"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->stopBeforeDisconnect:Z

    .line 140
    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->stopBeforeDisconnect:Z

    return v0
.end method

.method public TurnClockwiseIndefinitely(I)V
    .locals 4
    .parameter "power"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Turn the robot clockwise indefinitely, with the specified percentage of maximum power."
    .end annotation

    .prologue
    .line 193
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 194
    .local v0, numDriveMotors:I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 195
    const-string v1, "TurnClockwiseIndefinitely"

    const/4 v2, 0x1

    sub-int v2, v0, v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->turnIndefinitely(Ljava/lang/String;III)V

    .line 197
    :cond_0
    return-void
.end method

.method public TurnCounterClockwiseIndefinitely(I)V
    .locals 4
    .parameter "power"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Turn the robot counterclockwise indefinitely, with the specified percentage of maximum power."
    .end annotation

    .prologue
    .line 202
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 203
    .local v0, numDriveMotors:I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 204
    const-string v1, "TurnCounterClockwiseIndefinitely"

    const/4 v2, 0x0

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->turnIndefinitely(Ljava/lang/String;III)V

    .line 206
    :cond_0
    return-void
.end method

.method public WheelDiameter()F
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->wheelDiameter:D

    double-to-float v0, v0

    return v0
.end method

.method public WheelDiameter(F)V
    .locals 2
    .parameter "wheelDiameter"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 119
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->wheelDiameter:D

    .line 120
    return-void
.end method

.method public beforeDisconnect(Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;)V
    .locals 11
    .parameter "bluetoothConnection"

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->stopBeforeDisconnect:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 66
    .local v2, port:I
    const-string v1, "Disconnect"

    const/4 v4, 0x2

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v9}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0

    .line 70
    .end local v2           #port:I
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
