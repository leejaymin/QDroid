.class public Lcom/adobe/ttpixel/extension/cameraroll/FnCancelPendingRequests;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;->getController()Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->clearCommandQueue()V

    const/4 v0, 0x0

    return-object v0
.end method
