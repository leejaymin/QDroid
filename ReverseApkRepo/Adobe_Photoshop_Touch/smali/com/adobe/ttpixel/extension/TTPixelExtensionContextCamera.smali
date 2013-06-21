.class public Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;
.super Lcom/adobe/fre/FREContext;


# static fields
.field private static final AS_CLASSNAME_NUMBER:Ljava/lang/String; = "Number"

.field private static final AS_CLASSNAME_RECTANGLE:Ljava/lang/String; = "flash.geom.Rectangle"

.field private static final AS_CLASSNAME_STRING:Ljava/lang/String; = "String"

.field private static final AS_CLASSNAME_TTCAMERACAPABILITIES:Ljava/lang/String; = "com.adobe.ttpixel.extension.TTCameraCapabilities"

.field private static final AS_CLASSNAME_TTCAMERAFPSRANGE:Ljava/lang/String; = "com.adobe.ttpixel.extension.TTCameraFpsRange"

.field private static final AS_CLASSNAME_TTCAMERAPARAMETERS:Ljava/lang/String; = "com.adobe.ttpixel.extension.TTCameraParameters"

.field private static final AS_SELECTOR_DEVICEID:Ljava/lang/String; = "deviceId"

.field private static final AS_SELECTOR_EVUNITS:Ljava/lang/String; = "evUnits"

.field private static final AS_SELECTOR_FLASHMODE:Ljava/lang/String; = "flashMode"

.field private static final AS_SELECTOR_FOCUSMODE:Ljava/lang/String; = "focusMode"

.field private static final AS_SELECTOR_FPSMAX:Ljava/lang/String; = "fpsMax"

.field private static final AS_SELECTOR_FPSMIN:Ljava/lang/String; = "fpsMin"

.field private static final AS_SELECTOR_FPSRANGE:Ljava/lang/String; = "fpsRange"

.field private static final AS_SELECTOR_HEIGHT:Ljava/lang/String; = "height"

.field private static final AS_SELECTOR_PICTURESIZE:Ljava/lang/String; = "pictureSize"

.field private static final AS_SELECTOR_PREVIEWSIZE:Ljava/lang/String; = "previewSize"

.field private static final AS_SELECTOR_WIDTH:Ljava/lang/String; = "width"

.field private static final AS_SELECTOR_ZOOMRATIO:Ljava/lang/String; = "zoomRatio"

.field private static final STATUS_EVENT_LEVEL_COMMAND:Ljava/lang/String; = "command"

.field private static final STATUS_EVENT_LEVEL_STATE:Ljava/lang/String; = "state"


# instance fields
.field private iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public fnCancel(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->cancel(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fnGetCapabilities(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v4, :cond_a

    const/16 v0, 0x8

    :try_start_0
    new-array v5, v0, [Lcom/adobe/fre/FREObject;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    const-string v0, "flash.geom.Rectangle"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    invoke-static {v0, v3, v7}, Lcom/adobe/fre/FREArray;->newArray(Ljava/lang/String;IZ)Lcom/adobe/fre/FREArray;

    move-result-object v7

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/adobe/fre/FREObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v10}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    aput-object v0, v8, v9

    const-string v0, "flash.geom.Rectangle"

    invoke-static {v0, v8}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9, v0}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aput-object v7, v5, v0

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    const-string v0, "flash.geom.Rectangle"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    invoke-static {v0, v3, v7}, Lcom/adobe/fre/FREArray;->newArray(Ljava/lang/String;IZ)Lcom/adobe/fre/FREArray;

    move-result-object v7

    move v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/adobe/fre/FREObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v10}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    aput-object v0, v8, v9

    const-string v0, "flash.geom.Rectangle"

    invoke-static {v0, v8}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9, v0}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    aput-object v7, v5, v0

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v0, "String"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    invoke-static {v0, v3, v7}, Lcom/adobe/fre/FREArray;->newArray(Ljava/lang/String;IZ)Lcom/adobe/fre/FREArray;

    move-result-object v7

    move v3, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    int-to-long v8, v3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v7, v8, v9, v0}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    aput-object v7, v5, v0

    :goto_3
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    const-string v0, "String"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    invoke-static {v0, v3, v7}, Lcom/adobe/fre/FREArray;->newArray(Ljava/lang/String;IZ)Lcom/adobe/fre/FREArray;

    move-result-object v7

    move v3, v2

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    int-to-long v8, v3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v7, v8, v9, v0}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_3
    const/4 v0, 0x2

    const/4 v3, 0x0

    aput-object v3, v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_5
    return-object v0

    :cond_4
    const/4 v0, 0x3

    :try_start_1
    aput-object v7, v5, v0

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v6

    const-string v0, "Number"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    invoke-static {v0, v3, v7}, Lcom/adobe/fre/FREArray;->newArray(Ljava/lang/String;IZ)Lcom/adobe/fre/FREArray;

    move-result-object v7

    move v3, v2

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    int-to-long v8, v3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v7, v8, v9, v0}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_5
    const/4 v0, 0x4

    aput-object v7, v5, v0

    :goto_7
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    if-nez v0, :cond_6

    if-eqz v3, :cond_8

    :cond_6
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v6

    const/4 v7, 0x5

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-double v8, v0

    invoke-static {v8, v9}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v0

    aput-object v0, v5, v7

    const/4 v0, 0x6

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v3

    aput-object v3, v5, v0

    :goto_8
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    const-string v0, "com.adobe.ttpixel.extension.TTCameraFpsRange"

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    invoke-static {v0, v4, v6}, Lcom/adobe/fre/FREArray;->newArray(Ljava/lang/String;IZ)Lcom/adobe/fre/FREArray;

    move-result-object v4

    :goto_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/adobe/fre/FREObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v0, v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-static {v8}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v0, v0, v8

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    aput-object v0, v6, v7

    const-string v0, "com.adobe.ttpixel.extension.TTCameraFpsRange"

    invoke-static {v0, v6}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7, v0}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_7
    const/4 v0, 0x4

    const/4 v3, 0x0

    aput-object v3, v5, v0

    goto :goto_7

    :cond_8
    const/4 v0, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    aput-object v3, v5, v0

    const/4 v0, 0x6

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    aput-object v3, v5, v0

    goto :goto_8

    :cond_9
    const/4 v0, 0x7

    aput-object v4, v5, v0

    const-string v0, "com.adobe.ttpixel.extension.TTCameraCapabilities"

    invoke-static {v0, v5}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_5

    :cond_a
    move-object v0, v1

    goto/16 :goto_5
.end method

.method public fnGetFinishCode(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    const/16 v0, -0x270f

    :try_start_0
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getFinishCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public fnGetNextPreviewFrame(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREBitmapData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getNextPreviewFrame(IILjava/nio/ByteBuffer;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/adobe/fre/FREBitmapData;->invalidateRect(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v0, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    const/4 v3, 0x0

    :try_start_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    move-object v0, v3

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :catch_5
    move-exception v3

    goto :goto_3

    :cond_4
    move-object v0, v1

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    goto :goto_0
.end method

.method public fnGetParameters(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->prepareActionScriptParameters(Landroid/hardware/Camera$Parameters;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fnGetPictureData(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREBitmapData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getPictureData(IILjava/nio/ByteBuffer;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/adobe/fre/FREBitmapData;->invalidateRect(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v0, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    const/4 v3, 0x0

    :try_start_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    move-object v0, v3

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    :catch_5
    move-exception v3

    goto :goto_3

    :cond_4
    move-object v0, v1

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    goto :goto_0
.end method

.method public fnOpen(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getCameraTaskStatus()I

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, "deviceId"

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    new-instance v3, Lcom/adobe/ttpixel/extension/camera/CameraTask;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/adobe/ttpixel/extension/camera/CameraTask;-><init>(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;III)V

    iput-object v3, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2
.end method

.method public fnSetParameters(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->prepareParameters(Lcom/adobe/fre/FREObject;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    new-instance v3, Lcom/adobe/ttpixel/extension/camera/CommandSetParameters;

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/adobe/ttpixel/extension/camera/CommandSetParameters;-><init>(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->scheduleCommand(Lcom/adobe/ttpixel/extension/camera/CameraCommand;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public fnStartPreview(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/CommandStartPreview;

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/ttpixel/extension/camera/CommandStartPreview;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->scheduleCommand(Lcom/adobe/ttpixel/extension/camera/CameraCommand;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public fnStopPreview(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/CommandStopPreview;

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/ttpixel/extension/camera/CommandStopPreview;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->scheduleCommand(Lcom/adobe/ttpixel/extension/camera/CameraCommand;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public fnTakePicture(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/CommandTakePicture;

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/ttpixel/extension/camera/CommandTakePicture;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->scheduleCommand(Lcom/adobe/ttpixel/extension/camera/CameraCommand;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "open"

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/FnStart;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/camera/FnStart;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startPreview"

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/FnStartPreview;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/camera/FnStartPreview;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stopPreview"

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/FnStopPreview;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/camera/FnStopPreview;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cancel"

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/FnCancel;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/camera/FnCancel;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getCapabilities"

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/FnGetCapabilities;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/camera/FnGetCapabilities;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getParameters"

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/FnGetParameters;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/camera/FnGetParameters;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setParameters"

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/FnSetParameters;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/camera/FnSetParameters;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getNextPreviewFrame"

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/FnGetNextPreviewFrame;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/camera/FnGetNextPreviewFrame;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "takePicture"

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/FnTakePicture;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/camera/FnTakePicture;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getPictureData"

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/FnGetPictureData;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/camera/FnGetPictureData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getFinishCode"

    new-instance v2, Lcom/adobe/ttpixel/extension/camera/FnGetFinishCode;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/camera/FnGetFinishCode;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onCommandExecuted(Lcom/adobe/ttpixel/extension/camera/CameraCommand;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/camera/CameraCommand;->shouldDispatchFinishEvent()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/camera/CameraCommand;->getCommandType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/camera/CameraCommand;->getCommandId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "command"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSetInitialParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    return-void
.end method

.method public onTaskStatusChange(I)V
    .locals 2

    invoke-static {p1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->translateCameraState(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected prepareActionScriptParameters(Landroid/hardware/Camera$Parameters;)Lcom/adobe/fre/FREObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x7

    new-array v1, v0, [Lcom/adobe/fre/FREObject;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v1, v4

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    new-array v2, v8, [Lcom/adobe/fre/FREObject;

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    aput-object v3, v2, v6

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    aput-object v0, v2, v7

    const-string v0, "flash.geom.Rectangle"

    invoke-static {v0, v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    new-array v2, v8, [Lcom/adobe/fre/FREObject;

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    aput-object v3, v2, v6

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    aput-object v0, v2, v7

    const-string v0, "flash.geom.Rectangle"

    invoke-static {v0, v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    if-nez v0, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_2
    new-array v0, v6, [I

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    new-array v2, v6, [Lcom/adobe/fre/FREObject;

    aget v3, v0, v4

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    aput-object v3, v2, v4

    aget v0, v0, v5

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x6

    const-string v3, "com.adobe.ttpixel.extension.TTCameraFpsRange"

    invoke-static {v3, v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "com.adobe.ttpixel.extension.TTCameraParameters"

    invoke-static {v0, v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x64

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_2
.end method

.method protected prepareParameters(Lcom/adobe/fre/FREObject;)Landroid/hardware/Camera$Parameters;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->iCameraTask:Lcom/adobe/ttpixel/extension/camera/CameraTask;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "flashMode"

    invoke-virtual {p1, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_0
    const-string v1, "focusMode"

    invoke-virtual {p1, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const-string v1, "previewSize"

    invoke-virtual {p1, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "width"

    invoke-virtual {v1, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    const-string v3, "height"

    invoke-virtual {v1, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    :cond_1
    const-string v1, "pictureSize"

    invoke-virtual {p1, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "width"

    invoke-virtual {v1, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    const-string v3, "height"

    invoke-virtual {v1, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "zoomRatio"

    invoke-virtual {p1, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    int-to-float v4, v1

    mul-float/2addr v4, v3

    int-to-float v5, v2

    mul-float/2addr v3, v5

    sub-int v5, v1, v2

    int-to-float v5, v5

    sub-float v6, v4, v3

    div-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v4

    int-to-float v7, v1

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    sub-float v3, v4, v3

    div-float v3, v6, v3

    float-to-double v4, v5

    const-string v6, "evUnits"

    invoke-virtual {p1, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, v3

    add-double v3, v4, v6

    double-to-int v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    :cond_5
    const-string v1, "fpsRange"

    invoke-virtual {p1, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const-string v3, "fpsMin"

    invoke-virtual {v1, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    aput v3, v2, v8

    const-string v3, "fpsMax"

    invoke-virtual {v1, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, v2, v9

    aget v1, v2, v8

    aget v2, v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    return-object v0
.end method
