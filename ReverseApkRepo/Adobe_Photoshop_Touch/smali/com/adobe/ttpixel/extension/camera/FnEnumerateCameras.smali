.class public Lcom/adobe/ttpixel/extension/camera/FnEnumerateCameras;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static final CAMERA_CLASS_AS:Ljava/lang/String; = "com.adobe.ttpixel.extension.TTCamera"

.field public static final POSITION_BACK:Ljava/lang/String; = "back"

.field public static final POSITION_FRONT:Ljava/lang/String; = "front"

.field public static final POSITION_UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    const-string v0, "com.adobe.ttpixel.extension.TTCamera"

    const/4 v2, 0x1

    invoke-static {v0, v3, v2}, Lcom/adobe/fre/FREArray;->newArray(Ljava/lang/String;IZ)Lcom/adobe/fre/FREArray;

    move-result-object v0

    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-static {v2, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v1, 0x3

    new-array v5, v1, [Lcom/adobe/fre/FREObject;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    iget v1, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    const-string v1, "back"

    :goto_1
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    iget v6, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "com.adobe.ttpixel.extension.TTCamera"

    invoke-static {v1, v5}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    int-to-long v5, v2

    invoke-virtual {v0, v5, v6, v1}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget v1, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v7, :cond_1

    const-string v1, "front"

    goto :goto_1

    :cond_1
    const-string v1, "unknown"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method
