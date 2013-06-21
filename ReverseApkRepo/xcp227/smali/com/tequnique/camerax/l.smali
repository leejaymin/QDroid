.class final Lcom/tequnique/camerax/l;
.super Landroid/view/OrientationEventListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/CameraProActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/tequnique/camerax/l;->a:Lcom/tequnique/camerax/CameraProActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/l;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->ay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/l;->a:Lcom/tequnique/camerax/CameraProActivity;

    iget-object v1, p0, Lcom/tequnique/camerax/l;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->r(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tequnique/camerax/bv;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->d(Lcom/tequnique/camerax/CameraProActivity;I)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tequnique/camerax/l;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->s(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/bf;->invalidate()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/l;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v0, p1}, Lcom/tequnique/camerax/CameraProActivity;->d(Lcom/tequnique/camerax/CameraProActivity;I)V

    goto :goto_0
.end method
