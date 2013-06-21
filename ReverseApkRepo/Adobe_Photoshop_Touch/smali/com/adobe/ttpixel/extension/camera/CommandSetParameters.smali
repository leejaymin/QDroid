.class public Lcom/adobe/ttpixel/extension/camera/CommandSetParameters;
.super Lcom/adobe/ttpixel/extension/camera/CameraCommand;


# instance fields
.field protected iParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/adobe/ttpixel/extension/camera/CameraCommand;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/camera/CommandSetParameters;->iParameters:Landroid/hardware/Camera$Parameters;

    return-void
.end method


# virtual methods
.method public execute(Lcom/adobe/ttpixel/extension/camera/CameraTask;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/ttpixel/extension/camera/CameraException;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CommandSetParameters;->iParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->setParameters(Landroid/hardware/Camera$Parameters;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x7d0

    goto :goto_0
.end method

.method public getCommandType()Ljava/lang/String;
    .locals 1

    const-string v0, "setParameters"

    return-object v0
.end method
