.class public Ledu/umich/PowerTutor/components/Sensors;
.super Ledu/umich/PowerTutor/components/PowerComponent;
.source "Sensors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/components/Sensors$SensorData;,
        Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    }
.end annotation


# static fields
.field public static final MAX_SENSORS:I = 0xa


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private sensorHook:Ledu/umich/PowerTutor/PowerNotifications;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

.field private uidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0}, Ledu/umich/PowerTutor/components/PowerComponent;-><init>()V

    .line 43
    const-string v0, "Sensors"

    iput-object v0, p0, Ledu/umich/PowerTutor/components/Sensors;->TAG:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Ledu/umich/PowerTutor/components/Sensors;->context:Landroid/content/Context;

    .line 87
    new-instance v0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    invoke-direct {v0}, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/components/Sensors;->sensorState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/components/Sensors;->uidStates:Landroid/util/SparseArray;

    .line 90
    invoke-static {}, Ledu/umich/PowerTutor/util/NotificationService;->available()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "Sensors"

    const-string v1, "Sensor component created although no notification service available to receive sensor usage information"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v0, "sensor"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Ledu/umich/PowerTutor/components/Sensors;->sensorManager:Landroid/hardware/SensorManager;

    .line 97
    new-instance v0, Ledu/umich/PowerTutor/components/Sensors$1;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/components/Sensors$1;-><init>(Ledu/umich/PowerTutor/components/Sensors;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/components/Sensors;->sensorHook:Ledu/umich/PowerTutor/PowerNotifications;

    .line 130
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Sensors;->sensorHook:Ledu/umich/PowerTutor/PowerNotifications;

    invoke-static {v0}, Ledu/umich/PowerTutor/util/NotificationService;->addHook(Ledu/umich/PowerTutor/PowerNotifications;)V

    goto :goto_0
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/components/Sensors;)Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Sensors;->sensorState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    return-object v0
.end method

.method static synthetic access$1(Ledu/umich/PowerTutor/components/Sensors;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Sensors;->uidStates:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public calculateIteration(J)Ledu/umich/PowerTutor/service/IterationData;
    .locals 11
    .parameter "iteration"

    .prologue
    .line 141
    invoke-static {}, Ledu/umich/PowerTutor/service/IterationData;->obtain()Ledu/umich/PowerTutor/service/IterationData;

    move-result-object v2

    .line 142
    .local v2, result:Ledu/umich/PowerTutor/service/IterationData;
    iget-object v7, p0, Ledu/umich/PowerTutor/components/Sensors;->sensorState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    monitor-enter v7

    .line 143
    :try_start_0
    invoke-static {}, Ledu/umich/PowerTutor/components/Sensors$SensorData;->obtain()Ledu/umich/PowerTutor/components/Sensors$SensorData;

    move-result-object v0

    .line 144
    .local v0, globalData:Ledu/umich/PowerTutor/components/Sensors$SensorData;
    iget-object v6, p0, Ledu/umich/PowerTutor/components/Sensors;->sensorState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    iget-object v8, v0, Ledu/umich/PowerTutor/components/Sensors$SensorData;->onTime:[D

    iget-wide v9, p0, Ledu/umich/PowerTutor/components/Sensors;->iterationInterval:J

    invoke-virtual {v6, v8, v9, v10}, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->setupSensorTimes([DJ)V

    .line 145
    invoke-virtual {v2, v0}, Ledu/umich/PowerTutor/service/IterationData;->setPowerData(Ledu/umich/PowerTutor/service/PowerData;)V

    .line 147
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Ledu/umich/PowerTutor/components/Sensors;->uidStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 142
    monitor-exit v7

    .line 160
    return-object v2

    .line 148
    :cond_0
    iget-object v6, p0, Ledu/umich/PowerTutor/components/Sensors;->uidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 149
    .local v3, uid:I
    iget-object v6, p0, Ledu/umich/PowerTutor/components/Sensors;->uidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    .line 150
    .local v5, uidState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    invoke-static {}, Ledu/umich/PowerTutor/components/Sensors$SensorData;->obtain()Ledu/umich/PowerTutor/components/Sensors$SensorData;

    move-result-object v4

    .line 151
    .local v4, uidData:Ledu/umich/PowerTutor/components/Sensors$SensorData;
    iget-object v6, v4, Ledu/umich/PowerTutor/components/Sensors$SensorData;->onTime:[D

    iget-wide v8, p0, Ledu/umich/PowerTutor/components/Sensors;->iterationInterval:J

    invoke-virtual {v5, v6, v8, v9}, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->setupSensorTimes([DJ)V

    .line 152
    invoke-virtual {v2, v3, v4}, Ledu/umich/PowerTutor/service/IterationData;->addUidPowerData(ILedu/umich/PowerTutor/service/PowerData;)V

    .line 154
    invoke-virtual {v5}, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->sensorsOn()I

    move-result v6

    if-nez v6, :cond_1

    .line 155
    iget-object v6, p0, Ledu/umich/PowerTutor/components/Sensors;->uidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 156
    add-int/lit8 v1, v1, -0x1

    .line 147
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v0           #globalData:Ledu/umich/PowerTutor/components/Sensors$SensorData;
    .end local v1           #i:I
    .end local v3           #uid:I
    .end local v4           #uidData:Ledu/umich/PowerTutor/components/Sensors$SensorData;
    .end local v5           #uidState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "Sensors"

    return-object v0
.end method

.method public hasUidInformation()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Ledu/umich/PowerTutor/components/PowerComponent;->onExit()V

    .line 136
    iget-object v0, p0, Ledu/umich/PowerTutor/components/Sensors;->sensorHook:Ledu/umich/PowerTutor/PowerNotifications;

    invoke-static {v0}, Ledu/umich/PowerTutor/util/NotificationService;->removeHook(Ledu/umich/PowerTutor/PowerNotifications;)V

    .line 137
    return-void
.end method
