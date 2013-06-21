.class public Lcom/sphericbox/syb/camera/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sphericbox/syb/camera/j;


# instance fields
.field private ab:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    return-void
.end method

.method public a(Lcom/sphericbox/syb/camera/e;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    new-instance v1, Lcom/sphericbox/syb/camera/d;

    invoke-direct {v1, p0, p1}, Lcom/sphericbox/syb/camera/d;-><init>(Lcom/sphericbox/syb/camera/b;Lcom/sphericbox/syb/camera/e;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 56
    return-void
.end method

.method public b(Lcom/sphericbox/syb/camera/e;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v2, "TAG"

    .line 59
    const-string v0, "TAG"

    const-string v0, "capture"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 63
    :cond_0
    const-string v0, "TAG"

    const-string v0, "device not null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "TAG"

    const-string v0, "ready to capture"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    new-instance v1, Lcom/sphericbox/syb/camera/c;

    invoke-direct {v1, p0, p1}, Lcom/sphericbox/syb/camera/c;-><init>(Lcom/sphericbox/syb/camera/b;Lcom/sphericbox/syb/camera/e;)V

    invoke-virtual {v0, v3, v3, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 74
    const-string v0, "TAG"

    const-string v0, "captured!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 38
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 39
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iput-object v1, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    .line 43
    return-void

    .line 41
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    throw v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 28
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    .line 29
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x3

    return v0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 122
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 83
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "GenuineCamera"

    const-string v2, "Was not able to set preview display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 98
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/camera/b;->ab:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 106
    return-void
.end method
