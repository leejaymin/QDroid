.class Ledu/umich/PowerTutor/components/Sensors$1;
.super Ledu/umich/PowerTutor/util/NotificationService$DefaultReceiver;
.source "Sensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/components/Sensors;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/components/Sensors;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/components/Sensors;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/components/Sensors$1;->this$0:Ledu/umich/PowerTutor/components/Sensors;

    .line 97
    invoke-direct {p0}, Ledu/umich/PowerTutor/util/NotificationService$DefaultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public noteStartSensor(II)V
    .locals 3
    .parameter "uid"
    .parameter "sensor"

    .prologue
    .line 99
    if-ltz p2, :cond_0

    const/16 v1, 0xa

    if-gt v1, p2, :cond_1

    .line 100
    :cond_0
    const-string v1, "Sensors"

    const-string v2, "Received sensor outside of accepted range"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Ledu/umich/PowerTutor/components/Sensors$1;->this$0:Ledu/umich/PowerTutor/components/Sensors;

    #getter for: Ledu/umich/PowerTutor/components/Sensors;->sensorState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    invoke-static {v1}, Ledu/umich/PowerTutor/components/Sensors;->access$0(Ledu/umich/PowerTutor/components/Sensors;)Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    move-result-object v2

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/components/Sensors$1;->this$0:Ledu/umich/PowerTutor/components/Sensors;

    #getter for: Ledu/umich/PowerTutor/components/Sensors;->sensorState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    invoke-static {v1}, Ledu/umich/PowerTutor/components/Sensors;->access$0(Ledu/umich/PowerTutor/components/Sensors;)Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    move-result-object v1

    invoke-virtual {v1, p2}, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->startSensor(I)V

    .line 105
    iget-object v1, p0, Ledu/umich/PowerTutor/components/Sensors$1;->this$0:Ledu/umich/PowerTutor/components/Sensors;

    #getter for: Ledu/umich/PowerTutor/components/Sensors;->uidStates:Landroid/util/SparseArray;
    invoke-static {v1}, Ledu/umich/PowerTutor/components/Sensors;->access$1(Ledu/umich/PowerTutor/components/Sensors;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    .line 106
    .local v0, uidState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    if-nez v0, :cond_2

    .line 107
    new-instance v0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    .end local v0           #uidState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    invoke-direct {v0}, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;-><init>()V

    .line 108
    .restart local v0       #uidState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    iget-object v1, p0, Ledu/umich/PowerTutor/components/Sensors$1;->this$0:Ledu/umich/PowerTutor/components/Sensors;

    #getter for: Ledu/umich/PowerTutor/components/Sensors;->uidStates:Landroid/util/SparseArray;
    invoke-static {v1}, Ledu/umich/PowerTutor/components/Sensors;->access$1(Ledu/umich/PowerTutor/components/Sensors;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    :cond_2
    invoke-virtual {v0, p2}, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->startSensor(I)V

    .line 103
    monitor-exit v2

    goto :goto_0

    .end local v0           #uidState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStopSensor(II)V
    .locals 3
    .parameter "uid"
    .parameter "sensor"

    .prologue
    .line 115
    if-ltz p2, :cond_0

    const/16 v1, 0xa

    if-gt v1, p2, :cond_1

    .line 116
    :cond_0
    const-string v1, "Sensors"

    const-string v2, "Received sensor outside of accepted range"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Ledu/umich/PowerTutor/components/Sensors$1;->this$0:Ledu/umich/PowerTutor/components/Sensors;

    #getter for: Ledu/umich/PowerTutor/components/Sensors;->sensorState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    invoke-static {v1}, Ledu/umich/PowerTutor/components/Sensors;->access$0(Ledu/umich/PowerTutor/components/Sensors;)Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    move-result-object v2

    monitor-enter v2

    .line 120
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/components/Sensors$1;->this$0:Ledu/umich/PowerTutor/components/Sensors;

    #getter for: Ledu/umich/PowerTutor/components/Sensors;->sensorState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    invoke-static {v1}, Ledu/umich/PowerTutor/components/Sensors;->access$0(Ledu/umich/PowerTutor/components/Sensors;)Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    move-result-object v1

    invoke-virtual {v1, p2}, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->stopSensor(I)V

    .line 121
    iget-object v1, p0, Ledu/umich/PowerTutor/components/Sensors$1;->this$0:Ledu/umich/PowerTutor/components/Sensors;

    #getter for: Ledu/umich/PowerTutor/components/Sensors;->uidStates:Landroid/util/SparseArray;
    invoke-static {v1}, Ledu/umich/PowerTutor/components/Sensors;->access$1(Ledu/umich/PowerTutor/components/Sensors;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    .line 122
    .local v0, uidState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    if-nez v0, :cond_2

    .line 123
    new-instance v0, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;

    .end local v0           #uidState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    invoke-direct {v0}, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;-><init>()V

    .line 124
    .restart local v0       #uidState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    iget-object v1, p0, Ledu/umich/PowerTutor/components/Sensors$1;->this$0:Ledu/umich/PowerTutor/components/Sensors;

    #getter for: Ledu/umich/PowerTutor/components/Sensors;->uidStates:Landroid/util/SparseArray;
    invoke-static {v1}, Ledu/umich/PowerTutor/components/Sensors;->access$1(Ledu/umich/PowerTutor/components/Sensors;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    :cond_2
    invoke-virtual {v0, p2}, Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;->stopSensor(I)V

    .line 119
    monitor-exit v2

    goto :goto_0

    .end local v0           #uidState:Ledu/umich/PowerTutor/components/Sensors$SensorStateKeeper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
