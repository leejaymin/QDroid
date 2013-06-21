.class public Lcom/ui/LapseIt/capture/CaptureParams;
.super Ljava/lang/Object;
.source "CaptureParams.java"


# static fields
.field private static INSTANCE:Lcom/ui/LapseIt/capture/CaptureParams;

.field private static parameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureParams;

    invoke-direct {v0}, Lcom/ui/LapseIt/capture/CaptureParams;-><init>()V

    sput-object v0, Lcom/ui/LapseIt/capture/CaptureParams;->INSTANCE:Lcom/ui/LapseIt/capture/CaptureParams;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamera(I)Landroid/hardware/Camera;
    .locals 7
    .parameter "whichCamera"

    .prologue
    .line 482
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 483
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    .line 494
    :goto_0
    return-object v2

    .line 486
    :cond_0
    :try_start_0
    const-class v2, Landroid/hardware/Camera;

    const-string v3, "open"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 487
    .local v1, openMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 488
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    .end local v1           #openMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "trace"

    const-string v3, "Error when trying to invoke Camera.open(int), reverting to open()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 494
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    goto :goto_0
.end method

.method public static getInstance()Lcom/ui/LapseIt/capture/CaptureParams;
    .locals 5

    .prologue
    .line 23
    sget-object v3, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    if-eqz v3, :cond_0

    .line 24
    sget-object v3, Lcom/ui/LapseIt/capture/CaptureParams;->INSTANCE:Lcom/ui/LapseIt/capture/CaptureParams;

    .line 46
    .local v2, tempCam:Landroid/hardware/Camera;
    :goto_0
    return-object v3

    .line 26
    .end local v2           #tempCam:Landroid/hardware/Camera;
    :cond_0
    const/4 v2, 0x0

    .line 28
    .restart local v2       #tempCam:Landroid/hardware/Camera;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureParams;->getCamera(I)Landroid/hardware/Camera;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    sput-object v3, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    .line 31
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 32
    const/4 v2, 0x0

    .line 34
    sget-object v3, Lcom/ui/LapseIt/capture/CaptureParams;->INSTANCE:Lcom/ui/LapseIt/capture/CaptureParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 38
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    const/4 v2, 0x0

    .line 44
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    const-string v3, "trace"

    const-string v4, "Error capturing params"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v3, 0x0

    goto :goto_0

    .line 41
    :catch_1
    move-exception v1

    .line 42
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance(Landroid/hardware/Camera$Parameters;)Lcom/ui/LapseIt/capture/CaptureParams;
    .locals 1
    .parameter "params"

    .prologue
    .line 53
    sput-object p0, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    .line 54
    sget-object v0, Lcom/ui/LapseIt/capture/CaptureParams;->INSTANCE:Lcom/ui/LapseIt/capture/CaptureParams;

    return-object v0
.end method

.method public static getNumberOfCameras()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 498
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v2, v4, :cond_0

    move v2, v3

    .line 513
    .local v1, getNumberOfCamerasMethod:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 502
    .end local v1           #getNumberOfCamerasMethod:Ljava/lang/reflect/Method;
    :cond_0
    :try_start_0
    const-class v2, Landroid/hardware/Camera;

    const-string v4, "getNumberOfCameras"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 503
    .restart local v1       #getNumberOfCamerasMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 504
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 508
    const-string v2, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No Such Method: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    move v2, v3

    .line 513
    goto :goto_0

    .line 509
    :catch_1
    move-exception v0

    .line 510
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 511
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setZoom(Landroid/hardware/Camera$Parameters;I)Landroid/hardware/Camera$Parameters;
    .locals 7
    .parameter "staticParam"
    .parameter "value"

    .prologue
    .line 347
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "setZoom"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 348
    .local v1, setZoomMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 349
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 359
    .end local v1           #setZoomMethod:Ljava/lang/reflect/Method;
    .end local p0
    :goto_0
    return-object p0

    .line 352
    .restart local p0
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 354
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 p0, 0x0

    goto :goto_0

    .line 355
    :catch_1
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 357
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getMaxZoom()I
    .locals 5

    .prologue
    .line 313
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "getMaxZoom"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 314
    .local v1, getMaxZoomMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 315
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 324
    .end local v1           #getMaxZoomMethod:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 319
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 320
    :catch_1
    move-exception v0

    .line 321
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSupportedAntibanding()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 249
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v4, "getSupportedAntibanding"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 250
    .local v1, getSupportedAntibandingMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 251
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    .end local v1           #getSupportedAntibandingMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 255
    const-string v2, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No Such Method: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    move-object v2, v3

    .line 260
    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 169
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v4, "getSupportedColorEffects"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 170
    .local v1, getSupportedColorEffectsMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 171
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    .end local v1           #getSupportedColorEffectsMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 175
    const-string v2, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No Such Method: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    move-object v2, v3

    .line 180
    goto :goto_0

    .line 176
    :catch_1
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 185
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v4, "getSupportedFlashModes"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 186
    .local v1, getSupportedFlashModesMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 187
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .end local v1           #getSupportedFlashModesMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 191
    const-string v2, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No Such Method: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    move-object v2, v3

    .line 196
    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 201
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v4, "getSupportedFocusModes"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 202
    .local v1, getSupportedFocusModesMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 203
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    .end local v1           #getSupportedFocusModesMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 207
    const-string v2, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No Such Method: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    move-object v2, v3

    .line 212
    goto :goto_0

    .line 208
    :catch_1
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 137
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v4, "getSupportedPictureSizes"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 138
    .local v1, getSupportedPictureSizesMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 139
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    .end local v1           #getSupportedPictureSizesMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 143
    const-string v2, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No Such Method: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    move-object v2, v3

    .line 148
    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 153
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v4, "getSupportedPreviewSizes"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 154
    .local v1, getSupportedPreviewSizesMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 155
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    .end local v1           #getSupportedPreviewSizesMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 159
    const-string v2, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No Such Method: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    move-object v2, v3

    .line 164
    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 217
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v4, "getSupportedSceneModes"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 218
    .local v1, getSupportedSceneModesMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 219
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    .end local v1           #getSupportedSceneModesMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 223
    const-string v2, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No Such Method: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    move-object v2, v3

    .line 228
    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 233
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v4, "getSupportedWhiteBalance"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 234
    .local v1, getSupportedWhiteBalanceMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 235
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    .end local v1           #getSupportedWhiteBalanceMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 239
    const-string v2, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No Such Method: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    move-object v2, v3

    .line 244
    goto :goto_0

    .line 240
    :catch_1
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getZoomRatios()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 329
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v4, "getZoomRatios"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 330
    .local v1, getZoomRatiosMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 331
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    .end local v1           #getZoomRatiosMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 335
    const-string v2, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No Such Method: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    move-object v2, v3

    .line 340
    goto :goto_0

    .line 336
    :catch_1
    move-exception v0

    .line 337
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isAutoExposureLockSupported()Z
    .locals 5

    .prologue
    .line 281
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "isAutoExposureLockSupported"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 282
    .local v1, isAutoExposureLockSupportedMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 283
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 292
    .end local v1           #isAutoExposureLockSupportedMethod:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 287
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 288
    :catch_1
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isAutoWhiteBalanceLockSupported()Z
    .locals 5

    .prologue
    .line 297
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "isAutoWhiteBalanceLockSupported"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 298
    .local v1, isAutoWhiteBalanceLockSupportedMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 299
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 308
    .end local v1           #isAutoWhiteBalanceLockSupportedMethod:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 303
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 304
    :catch_1
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isZoomSupported()Z
    .locals 5

    .prologue
    .line 265
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "isZoomSupported"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 266
    .local v1, isZoomSupportedMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 267
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 276
    .end local v1           #isZoomSupportedMethod:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 271
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 272
    :catch_1
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setAutoExposureLock(Z)Landroid/hardware/Camera$Parameters;
    .locals 7
    .parameter "toggle"

    .prologue
    .line 364
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "setAutoExposureLock"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 365
    .local v1, setAutoExposureLockMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 366
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    .end local v1           #setAutoExposureLockMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 371
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 372
    :catch_1
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setAutoWhiteBalanceLock(Z)Landroid/hardware/Camera$Parameters;
    .locals 7
    .parameter "toggle"

    .prologue
    .line 381
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "setAutoWhiteBalanceLock"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 382
    .local v1, setAutoWhiteBalanceLockMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 383
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 393
    .end local v1           #setAutoWhiteBalanceLockMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 388
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 389
    :catch_1
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setColorEffect(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 7
    .parameter "colorEffect"

    .prologue
    .line 432
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "setColorEffect"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 433
    .local v1, setColorEffectMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 434
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 444
    .end local v1           #setColorEffectMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 439
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 440
    :catch_1
    move-exception v0

    .line 441
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setFlashMode(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 7
    .parameter "flashMode"

    .prologue
    .line 415
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "setFlashModeMethod"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 416
    .local v1, setFlashModeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 417
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 427
    .end local v1           #setFlashModeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 422
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 423
    :catch_1
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 425
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setFocusMode(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 7
    .parameter "focusMode"

    .prologue
    .line 398
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "setFocusMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 399
    .local v1, setFocusModeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 400
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    .end local v1           #setFocusModeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 405
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 406
    :catch_1
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setSceneMode(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 7
    .parameter "sceneMode"

    .prologue
    .line 449
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "setSceneMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 450
    .local v1, setSceneModeMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 451
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 461
    .end local v1           #setSceneModeMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 456
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 457
    :catch_1
    move-exception v0

    .line 458
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setWhiteBalance(Ljava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 7
    .parameter "whiteBalance"

    .prologue
    .line 466
    :try_start_0
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "setWhiteBalance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 467
    .local v1, setWhiteBalanceMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 468
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v2, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 478
    .end local v1           #setWhiteBalanceMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 473
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 474
    :catch_1
    move-exception v0

    .line 475
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 476
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setupCamera(Landroid/content/Context;)Landroid/hardware/Camera$Parameters;
    .locals 23
    .parameter "context"

    .prologue
    .line 61
    const-string v19, "resolution"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 63
    .local v16, resolution:Ljava/lang/String;
    const-string v19, "240p"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 64
    const/16 v13, 0x140

    .line 65
    .local v13, minWidth:I
    const/16 v8, 0xf0

    .line 83
    .local v8, minHeight:I
    :goto_0
    const-string v19, "trace"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Setup camera with resolution "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " | Size is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v7, 0x0

    .line 86
    .local v7, maxSize:Landroid/hardware/Camera$Size;
    int-to-double v0, v13

    move-wide/from16 v19, v0

    int-to-double v0, v8

    move-wide/from16 v21, v0

    div-double v11, v19, v21

    .line 87
    .local v11, minRatio:D
    const-wide/16 v5, 0x0

    .line 89
    .local v5, maxRatio:D
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/capture/CaptureParams;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v18

    .line 90
    .local v18, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_1

    .line 91
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 92
    .local v4, largerSize:Landroid/hardware/Camera$Size;
    sget-object v19, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    iget v0, v4, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 93
    const-string v19, "fullsensor"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 94
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v3, v19, -0x1

    .local v3, i:I
    :goto_1
    if-gez v3, :cond_8

    .line 107
    :cond_0
    if-eqz v7, :cond_1

    .line 108
    sget-object v19, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    iget v0, v7, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    iget v0, v7, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 114
    .end local v3           #i:I
    .end local v4           #largerSize:Landroid/hardware/Camera$Size;
    :cond_1
    sget-object v19, Lcom/ui/LapseIt/capture/CaptureView;->dm:Landroid/util/DisplayMetrics;

    if-eqz v19, :cond_2

    .line 115
    sget-object v19, Lcom/ui/LapseIt/capture/CaptureView;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v19

    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 116
    .local v10, minPreviewWidth:I
    sget-object v19, Lcom/ui/LapseIt/capture/CaptureView;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v19

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 118
    .local v9, minPreviewHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/capture/CaptureParams;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v17

    .line 119
    .local v17, supportedPreviewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v17, :cond_2

    .line 120
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v3, v19, -0x1

    .restart local v3       #i:I
    :goto_2
    if-gez v3, :cond_a

    .line 132
    .end local v3           #i:I
    .end local v9           #minPreviewHeight:I
    .end local v10           #minPreviewWidth:I
    .end local v17           #supportedPreviewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_2
    :goto_3
    sget-object v19, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    return-object v19

    .line 66
    .end local v5           #maxRatio:D
    .end local v7           #maxSize:Landroid/hardware/Camera$Size;
    .end local v8           #minHeight:I
    .end local v11           #minRatio:D
    .end local v13           #minWidth:I
    .end local v18           #supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_3
    const-string v19, "360p"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 67
    const/16 v13, 0x1e0

    .line 68
    .restart local v13       #minWidth:I
    const/16 v8, 0x168

    .restart local v8       #minHeight:I
    goto/16 :goto_0

    .line 69
    .end local v8           #minHeight:I
    .end local v13           #minWidth:I
    :cond_4
    const-string v19, "480p"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 70
    const/16 v13, 0x2d0

    .line 71
    .restart local v13       #minWidth:I
    const/16 v8, 0x1e0

    .restart local v8       #minHeight:I
    goto/16 :goto_0

    .line 72
    .end local v8           #minHeight:I
    .end local v13           #minWidth:I
    :cond_5
    const-string v19, "720p"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 73
    const/16 v13, 0x500

    .line 74
    .restart local v13       #minWidth:I
    const/16 v8, 0x2d0

    .restart local v8       #minHeight:I
    goto/16 :goto_0

    .line 75
    .end local v8           #minHeight:I
    .end local v13           #minWidth:I
    :cond_6
    const-string v19, "1080p"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 76
    const/16 v13, 0x780

    .line 77
    .restart local v13       #minWidth:I
    const/16 v8, 0x438

    .restart local v8       #minHeight:I
    goto/16 :goto_0

    .line 79
    .end local v8           #minHeight:I
    .end local v13           #minWidth:I
    :cond_7
    const/16 v13, 0x500

    .line 80
    .restart local v13       #minWidth:I
    const/16 v8, 0x2d0

    .restart local v8       #minHeight:I
    goto/16 :goto_0

    .line 95
    .restart local v3       #i:I
    .restart local v4       #largerSize:Landroid/hardware/Camera$Size;
    .restart local v5       #maxRatio:D
    .restart local v7       #maxSize:Landroid/hardware/Camera$Size;
    .restart local v11       #minRatio:D
    .restart local v18       #supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_8
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 96
    .local v2, currentSize:Landroid/hardware/Camera$Size;
    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v14, v19, v21

    .line 98
    .local v14, ratio:D
    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v0, v13, :cond_9

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v0, v8, :cond_9

    cmpl-double v19, v14, v5

    if-ltz v19, :cond_9

    .line 99
    move-object v7, v2

    .line 100
    move-wide v5, v14

    .line 101
    cmpl-double v19, v14, v11

    if-gtz v19, :cond_0

    .line 94
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 121
    .end local v2           #currentSize:Landroid/hardware/Camera$Size;
    .end local v4           #largerSize:Landroid/hardware/Camera$Size;
    .end local v14           #ratio:D
    .restart local v9       #minPreviewHeight:I
    .restart local v10       #minPreviewWidth:I
    .restart local v17       #supportedPreviewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_a
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 122
    .restart local v2       #currentSize:Landroid/hardware/Camera$Size;
    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v14, v19, v21

    .line 124
    .restart local v14       #ratio:D
    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v0, v10, :cond_b

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v0, v9, :cond_b

    int-to-double v0, v10

    move-wide/from16 v19, v0

    int-to-double v0, v9

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    cmpl-double v19, v14, v19

    if-ltz v19, :cond_b

    .line 125
    sget-object v19, Lcom/ui/LapseIt/capture/CaptureParams;->parameters:Landroid/hardware/Camera$Parameters;

    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_3

    .line 120
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2
.end method
