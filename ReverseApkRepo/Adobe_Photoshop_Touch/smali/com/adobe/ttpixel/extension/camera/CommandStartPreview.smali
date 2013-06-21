.class public Lcom/adobe/ttpixel/extension/camera/CommandStartPreview;
.super Lcom/adobe/ttpixel/extension/camera/CameraCommand;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adobe/ttpixel/extension/camera/CameraCommand;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/adobe/ttpixel/extension/camera/CameraTask;)I
    .locals 1

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->startPreview()Ljava/lang/Boolean;

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

    const-string v0, "startPreview"

    return-object v0
.end method
