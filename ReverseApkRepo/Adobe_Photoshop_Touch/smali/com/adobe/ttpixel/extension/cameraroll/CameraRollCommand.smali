.class public abstract Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;
.super Ljava/lang/Object;


# instance fields
.field private iActivity:Landroid/app/Activity;

.field private iBitmap:Landroid/graphics/Bitmap;

.field private iDispatchStatusEventCode:Ljava/lang/String;

.field private iExtensionContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;

.field private iId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iExtensionContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;

    iput-object p2, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iId:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iDispatchStatusEventCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iExtensionContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iId:Ljava/lang/String;

    check-cast p1, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;

    iget-object v1, p1, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method abstract execute()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDispatchStatusEventCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iDispatchStatusEventCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iDispatchStatusEventCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract getDispatchStatusEventLevel()Ljava/lang/String;
.end method

.method getExtensionContext()Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iExtensionContext:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDispatchStatusEventCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iDispatchStatusEventCode:Ljava/lang/String;

    return-void
.end method

.method shouldOutputBeRetained()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CameraRollCommand:id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollCommand;->iId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
