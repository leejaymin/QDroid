.class public Lui/utils/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRotationReflection(Landroid/view/Display;)I
    .locals 5
    .parameter "display"

    .prologue
    .line 76
    :try_start_0
    const-class v2, Landroid/view/Display;

    const-string v3, "getRotation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 77
    .local v1, getRotationMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 87
    .end local v1           #getRotationMethod:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 82
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

    .line 87
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ZLandroid/hardware/Camera;)V
    .locals 7
    .parameter "activity"
    .parameter "isFrontFacing"
    .parameter "camera"

    .prologue
    .line 16
    :try_start_0
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 17
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    if-eqz p1, :cond_0

    .line 18
    const/4 v5, 0x1

    invoke-static {v5, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 23
    :goto_0
    const/4 v0, 0x0

    .line 25
    .local v0, degrees:I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    packed-switch v5, :pswitch_data_0

    .line 41
    :goto_1
    if-eqz p1, :cond_2

    .line 43
    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v5, v0

    rem-int/lit16 v3, v5, 0x168

    .line 44
    .local v3, result:I
    rsub-int v5, v3, 0x168

    rem-int/lit16 v3, v5, 0x168

    .line 48
    :goto_2
    invoke-static {p2, v3}, Lui/utils/CameraUtils;->setDisplayOrientationReflection(Landroid/hardware/Camera;I)V

    .line 54
    .end local v0           #degrees:I
    .end local v2           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v3           #result:I
    :goto_3
    return-void

    .line 20
    .restart local v2       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    const/4 v5, 0x0

    invoke-static {v5, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 49
    .end local v2           #info:Landroid/hardware/Camera$CameraInfo;
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 27
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #degrees:I
    .restart local v2       #info:Landroid/hardware/Camera$CameraInfo;
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    .line 28
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    .line 31
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-static {v5}, Lui/utils/CameraUtils;->getRotationReflection(Landroid/view/Display;)I

    move-result v4

    .line 32
    .local v4, rotation:I
    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 33
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_1

    .line 34
    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_1

    .line 35
    :pswitch_4
    const/16 v0, 0xb4

    goto :goto_1

    .line 36
    :pswitch_5
    const/16 v0, 0x10e

    goto :goto_1

    .line 46
    .end local v4           #rotation:I
    :cond_2
    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v5, v0

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v3, v5, 0x168
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3       #result:I
    goto :goto_2

    .line 51
    .end local v0           #degrees:I
    .end local v2           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v3           #result:I
    :catch_1
    move-exception v1

    .line 52
    .local v1, e:Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_3

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 32
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setDisplayOrientationReflection(Landroid/hardware/Camera;I)V
    .locals 7
    .parameter "camera"
    .parameter "cameraIndex"

    .prologue
    .line 58
    :try_start_0
    const-class v2, Landroid/hardware/Camera;

    const-string v3, "setDisplayOrientation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 59
    .local v1, setDisplayOrientationMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 60
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v2, "trace"

    const-string v3, "Setted displaysoasd"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    .end local v1           #setDisplayOrientationMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 66
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

    goto :goto_0

    .line 67
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
