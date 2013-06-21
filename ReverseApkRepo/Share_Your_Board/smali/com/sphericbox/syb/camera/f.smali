.class Lcom/sphericbox/syb/camera/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/sphericbox/syb/camera/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/camera/CaptureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sphericbox/syb/camera/f;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sphericbox/syb/camera/f;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->a(Lcom/sphericbox/syb/camera/CaptureActivity;)Lcom/sphericbox/syb/camera/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sphericbox/syb/camera/f;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->a(Lcom/sphericbox/syb/camera/CaptureActivity;)Lcom/sphericbox/syb/camera/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/sphericbox/syb/camera/j;->startPreview()V

    .line 87
    iget-object v0, p0, Lcom/sphericbox/syb/camera/f;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sphericbox/syb/camera/CaptureActivity;->a(Lcom/sphericbox/syb/camera/CaptureActivity;Z)Z

    .line 89
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sphericbox/syb/camera/f;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->a(Lcom/sphericbox/syb/camera/CaptureActivity;)Lcom/sphericbox/syb/camera/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sphericbox/syb/camera/f;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->a(Lcom/sphericbox/syb/camera/CaptureActivity;)Lcom/sphericbox/syb/camera/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sphericbox/syb/camera/j;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 95
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sphericbox/syb/camera/f;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sphericbox/syb/camera/CaptureActivity;->a(Lcom/sphericbox/syb/camera/CaptureActivity;Z)Z

    .line 99
    iget-object v0, p0, Lcom/sphericbox/syb/camera/f;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->a(Lcom/sphericbox/syb/camera/CaptureActivity;)Lcom/sphericbox/syb/camera/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sphericbox/syb/camera/f;->a:Lcom/sphericbox/syb/camera/CaptureActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/camera/CaptureActivity;->a(Lcom/sphericbox/syb/camera/CaptureActivity;)Lcom/sphericbox/syb/camera/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/sphericbox/syb/camera/j;->stopPreview()V

    .line 102
    :cond_0
    return-void
.end method
