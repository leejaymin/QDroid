.class public Lcom/spritefish/camera/RotationManager;
.super Ljava/lang/Object;
.source "RotationManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spritefish/camera/RotationManager$Rotation;
    }
.end annotation


# instance fields
.field private callback:Lcom/spritefish/camera/RotationCallback;

.field private context:Landroid/content/Context;

.field private rotation:Lcom/spritefish/camera/RotationManager$Rotation;

.field private sm:Landroid/hardware/SensorManager;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    iput-object v0, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    .line 94
    iput-object p1, p0, Lcom/spritefish/camera/RotationManager;->context:Landroid/content/Context;

    .line 96
    :try_start_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/spritefish/camera/RotationManager;->sm:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/spritefish/camera/RotationManager;->sm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/spritefish/camera/RotationManager;->sm:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 101
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getRotation(I)Lcom/spritefish/camera/RotationManager$Rotation;
    .locals 5
    .parameter "cameraId"

    .prologue
    .line 111
    iget-object v3, p0, Lcom/spritefish/camera/RotationManager;->context:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 112
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 114
    .local v1, orientation:I
    iget-object v2, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    .line 115
    .local v2, result:Lcom/spritefish/camera/RotationManager$Rotation;
    packed-switch v1, :pswitch_data_0

    .line 128
    :goto_0
    return-object v2

    .line 117
    :pswitch_0
    iget-object v3, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-virtual {v3}, Lcom/spritefish/camera/RotationManager$Rotation;->left()Lcom/spritefish/camera/RotationManager$Rotation;

    move-result-object v2

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v2, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v3, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-virtual {v3}, Lcom/spritefish/camera/RotationManager$Rotation;->right()Lcom/spritefish/camera/RotationManager$Rotation;

    move-result-object v2

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v3, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-virtual {v3}, Lcom/spritefish/camera/RotationManager$Rotation;->right()Lcom/spritefish/camera/RotationManager$Rotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spritefish/camera/RotationManager$Rotation;->right()Lcom/spritefish/camera/RotationManager$Rotation;

    move-result-object v2

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 107
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/high16 v5, 0x4110

    const/high16 v4, -0x3ef0

    .line 133
    iget-object v2, p0, Lcom/spritefish/camera/RotationManager;->sm:Landroid/hardware/SensorManager;

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    .line 135
    .local v0, old:Lcom/spritefish/camera/RotationManager$Rotation;
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    if-eq v0, v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/spritefish/camera/RotationManager;->callback:Lcom/spritefish/camera/RotationCallback;

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/spritefish/camera/RotationManager;->callback:Lcom/spritefish/camera/RotationCallback;

    iget-object v3, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    invoke-interface {v1, v3}, Lcom/spritefish/camera/RotationCallback;->rotationChanged(Lcom/spritefish/camera/RotationManager$Rotation;)V

    .line 133
    :cond_1
    monitor-exit v2

    .line 171
    return-void

    .line 137
    :pswitch_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    iput v1, p0, Lcom/spritefish/camera/RotationManager;->x:F

    .line 138
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    iput v1, p0, Lcom/spritefish/camera/RotationManager;->y:F

    .line 139
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v1, v1, v3

    iput v1, p0, Lcom/spritefish/camera/RotationManager;->z:F

    .line 140
    iget v1, p0, Lcom/spritefish/camera/RotationManager;->z:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    .line 142
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    iput-object v1, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 133
    .end local v0           #old:Lcom/spritefish/camera/RotationManager$Rotation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 143
    .restart local v0       #old:Lcom/spritefish/camera/RotationManager$Rotation;
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/spritefish/camera/RotationManager;->z:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    .line 145
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    iput-object v1, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 146
    :cond_3
    iget v1, p0, Lcom/spritefish/camera/RotationManager;->x:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_4

    .line 148
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_270:Lcom/spritefish/camera/RotationManager$Rotation;

    iput-object v1, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 149
    :cond_4
    iget v1, p0, Lcom/spritefish/camera/RotationManager;->x:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    .line 151
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_90:Lcom/spritefish/camera/RotationManager$Rotation;

    iput-object v1, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 152
    :cond_5
    iget v1, p0, Lcom/spritefish/camera/RotationManager;->y:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_6

    .line 154
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_0:Lcom/spritefish/camera/RotationManager$Rotation;

    iput-object v1, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    goto :goto_0

    .line 155
    :cond_6
    iget v1, p0, Lcom/spritefish/camera/RotationManager;->y:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 157
    sget-object v1, Lcom/spritefish/camera/RotationManager$Rotation;->R_180:Lcom/spritefish/camera/RotationManager$Rotation;

    iput-object v1, p0, Lcom/spritefish/camera/RotationManager;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCallback(Lcom/spritefish/camera/RotationCallback;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/spritefish/camera/RotationManager;->callback:Lcom/spritefish/camera/RotationCallback;

    .line 92
    return-void
.end method
