.class public Lorg/cocos2d/e/b;
.super Lorg/cocos2d/g/i;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lorg/cocos2d/i/a;
.implements Lorg/cocos2d/i/d;


# static fields
.field static final synthetic q:Z


# instance fields
.field protected k:Z

.field protected l:Z

.field protected m:I

.field protected final n:Landroid/hardware/SensorManager;

.field protected final o:Landroid/hardware/Sensor;

.field protected p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/e/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/e/b;->q:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    iput v4, p0, Lorg/cocos2d/e/b;->m:I

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    invoke-static {}, Lorg/cocos2d/g/c;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/cocos2d/e/b;->n:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lorg/cocos2d/e/b;->n:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/e/b;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/e/b;->o:Landroid/hardware/Sensor;

    :goto_0
    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p0, v2}, Lorg/cocos2d/e/b;->b(Z)V

    invoke-static {v3, v3}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/e/b;->d(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/e/b;->a(Lorg/cocos2d/l/g;)V

    invoke-virtual {p0, v2}, Lorg/cocos2d/e/b;->b(Z)V

    iput-boolean v2, p0, Lorg/cocos2d/e/b;->k:Z

    iput-boolean v2, p0, Lorg/cocos2d/e/b;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/e/b;->o:Landroid/hardware/Sensor;

    goto :goto_0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/e/b;->o:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/e/b;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2d/e/b;->o:Landroid/hardware/Sensor;

    iget v2, p0, Lorg/cocos2d/e/b;->m:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Layer"

    const-string v1, "Could not register accelerometer sensor listener!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d()Lorg/cocos2d/e/b;
    .locals 1

    new-instance v0, Lorg/cocos2d/e/b;

    invoke-direct {v0}, Lorg/cocos2d/e/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/e/b;->k:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/cocos2d/e/b;->k:Z

    invoke-virtual {p0}, Lorg/cocos2d/e/b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/cocos2d/e/b;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/cocos2d/c/d;->b()Lorg/cocos2d/c/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/c/d;->c(Lorg/cocos2d/i/d;)V

    goto :goto_0
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 2

    sget-boolean v0, Lorg/cocos2d/e/b;->q:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Layer# ccKeyDown override me"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-boolean v0, Lorg/cocos2d/e/b;->q:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Layer#ccTouchBegan override me"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public a_()V
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/e/b;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/e/b;->e()V

    :cond_0
    invoke-super {p0}, Lorg/cocos2d/g/i;->a_()V

    iget-boolean v0, p0, Lorg/cocos2d/e/b;->l:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/cocos2d/e/b;->a()V

    :cond_1
    iget-boolean v0, p0, Lorg/cocos2d/e/b;->p:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/cocos2d/c/a;->a()Lorg/cocos2d/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/c/a;->a(Lorg/cocos2d/i/a;)V

    :cond_2
    return-void
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .locals 2

    sget-boolean v0, Lorg/cocos2d/e/b;->q:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Layer# ccKeyUp override me"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/cocos2d/e/b;->l:Z

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lorg/cocos2d/e/b;->l:Z

    invoke-virtual {p0}, Lorg/cocos2d/e/b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/cocos2d/e/b;->a()V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e()V
    .locals 1

    invoke-static {}, Lorg/cocos2d/c/d;->b()Lorg/cocos2d/c/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/c/d;->a(Lorg/cocos2d/i/d;)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-boolean v0, p0, Lorg/cocos2d/e/b;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/cocos2d/c/d;->b()Lorg/cocos2d/c/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/c/d;->c(Lorg/cocos2d/i/d;)V

    :cond_0
    iget-boolean v0, p0, Lorg/cocos2d/e/b;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/e/b;->o:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/e/b;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2d/e/b;->o:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2d/e/b;->m:I

    :cond_2
    iget-boolean v0, p0, Lorg/cocos2d/e/b;->p:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/cocos2d/c/a;->a()Lorg/cocos2d/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/c/a;->b(Lorg/cocos2d/i/a;)V

    :cond_3
    invoke-super {p0}, Lorg/cocos2d/g/i;->g()V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/e/b;->a(FF)V

    :cond_0
    return-void
.end method
