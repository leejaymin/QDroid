.class public Lcom/adobe/ttpixel/extension/camera/CommandTakePictureInternal;
.super Lcom/adobe/ttpixel/extension/camera/CameraCommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/camera/CameraCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/adobe/ttpixel/extension/camera/CameraTask;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/adobe/ttpixel/extension/camera/CameraException;
        }
    .end annotation

    const/16 v0, -0x7d0

    iget-object v1, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getCommandType()Ljava/lang/String;
    .locals 1

    const-string v0, "takePictureInternal"

    return-object v0
.end method

.method public shouldDispatchFinishEvent()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
