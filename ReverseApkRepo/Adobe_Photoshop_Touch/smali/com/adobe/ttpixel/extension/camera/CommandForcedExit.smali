.class public Lcom/adobe/ttpixel/extension/camera/CommandForcedExit;
.super Lcom/adobe/ttpixel/extension/camera/CameraCommand;


# instance fields
.field protected mException:Lcom/adobe/ttpixel/extension/camera/CameraException;


# direct methods
.method public constructor <init>(Lcom/adobe/ttpixel/extension/camera/CameraException;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/camera/CameraCommand;-><init>()V

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/camera/CommandForcedExit;->mException:Lcom/adobe/ttpixel/extension/camera/CameraException;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/adobe/ttpixel/extension/camera/CameraException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adobe/ttpixel/extension/camera/CameraCommand;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/adobe/ttpixel/extension/camera/CommandForcedExit;->mException:Lcom/adobe/ttpixel/extension/camera/CameraException;

    return-void
.end method


# virtual methods
.method public execute(Lcom/adobe/ttpixel/extension/camera/CameraTask;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/adobe/ttpixel/extension/camera/CameraException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getCommandType()Ljava/lang/String;
    .locals 1

    const-string v0, "forcedExit"

    return-object v0
.end method

.method public getException()Lcom/adobe/ttpixel/extension/camera/CameraException;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CommandForcedExit;->mException:Lcom/adobe/ttpixel/extension/camera/CameraException;

    return-object v0
.end method

.method public postExecute(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CommandForcedExit;->mException:Lcom/adobe/ttpixel/extension/camera/CameraException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CommandForcedExit;->mException:Lcom/adobe/ttpixel/extension/camera/CameraException;

    throw v0

    :cond_0
    return-void
.end method

.method public shouldDispatchFinishEvent()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
