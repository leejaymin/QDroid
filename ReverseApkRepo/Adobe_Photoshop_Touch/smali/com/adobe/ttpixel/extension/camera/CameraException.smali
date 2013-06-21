.class public Lcom/adobe/ttpixel/extension/camera/CameraException;
.super Ljava/lang/Exception;


# static fields
.field public static final CAMERA_ALREADY_OPEN:I = -0x3e9

.field public static final CAMERA_CANCELED:I = 0x3e8

.field public static final CAMERA_COMMAND_FAILED:I = -0x7d0

.field public static final CAMERA_DEVICE_ERROR:I = -0xbb8

.field public static final CAMERA_EGL_ERROR:I = -0x3ec

.field public static final CAMERA_GL_ERROR:I = -0x3ed

.field public static final CAMERA_NO_EXTENSION_CONTEXT:I = -0x3e8

.field public static final CAMERA_OK:I = 0x0

.field public static final CAMERA_OPEN_FAILED:I = -0x3ea

.field public static final CAMERA_UNCAUGHT_EXCEPTION:I = -0x3eb

.field public static final CAMERA_UNKNOWN:I = -0x270f

.field public static final serialVersionUID:J = -0x1L


# instance fields
.field private iCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/16 v0, -0x270f

    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraException;->iCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/adobe/ttpixel/extension/camera/CameraException;->iCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, -0x270f

    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraException;->iCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/adobe/ttpixel/extension/camera/CameraException;->iCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, -0x270f

    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraException;->iCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Lcom/adobe/ttpixel/extension/camera/CameraException;->iCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 v0, -0x270f

    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraException;->iCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput p2, p0, Lcom/adobe/ttpixel/extension/camera/CameraException;->iCode:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraException;->iCode:I

    return v0
.end method

.method public isError()Ljava/lang/Boolean;
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraException;->iCode:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
