.class Lcom/sphericbox/syb/camera/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic ag:Lcom/sphericbox/syb/camera/e;

.field final synthetic ah:Lcom/sphericbox/syb/camera/b;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/camera/b;Lcom/sphericbox/syb/camera/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sphericbox/syb/camera/c;->ah:Lcom/sphericbox/syb/camera/b;

    iput-object p2, p0, Lcom/sphericbox/syb/camera/c;->ag:Lcom/sphericbox/syb/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    const-string v0, "TAG"

    const-string v1, "picture taken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sphericbox/syb/camera/c;->ag:Lcom/sphericbox/syb/camera/e;

    invoke-interface {v0, p1}, Lcom/sphericbox/syb/camera/e;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
