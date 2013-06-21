.class final Lcom/tequnique/camerax/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/o;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tequnique/camerax/o;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0, p2}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;I)V

    iget-object v0, p0, Lcom/tequnique/camerax/o;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->s(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/bf;->invalidate()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tequnique/camerax/o;->a:Lcom/tequnique/camerax/CameraProActivity;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->b(Lcom/tequnique/camerax/CameraProActivity;F)V

    iget-object v0, p0, Lcom/tequnique/camerax/o;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->s(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/bf;->invalidate()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
