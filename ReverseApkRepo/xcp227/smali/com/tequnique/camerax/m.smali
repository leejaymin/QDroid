.class final Lcom/tequnique/camerax/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/m;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/m;)Lcom/tequnique/camerax/CameraProActivity;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/m;->a:Lcom/tequnique/camerax/CameraProActivity;

    return-object v0
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/tequnique/camerax/m;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->t(Lcom/tequnique/camerax/CameraProActivity;)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/tequnique/camerax/m;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v2, v0}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;F)V

    iget-object v0, p0, Lcom/tequnique/camerax/m;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->u(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/bw;->a(F)F

    move-result v0

    iget-object v1, p0, Lcom/tequnique/camerax/m;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->o(Lcom/tequnique/camerax/CameraProActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tequnique/camerax/n;

    invoke-direct {v2, p0, v0}, Lcom/tequnique/camerax/n;-><init>(Lcom/tequnique/camerax/m;F)V

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
