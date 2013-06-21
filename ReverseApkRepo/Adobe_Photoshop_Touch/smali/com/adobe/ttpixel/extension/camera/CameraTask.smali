.class public Lcom/adobe/ttpixel/extension/camera/CameraTask;
.super Landroid/os/AsyncTask;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;",
        "Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;",
        "Landroid/hardware/Camera$PictureCallback;",
        "Landroid/hardware/Camera$ShutterCallback;",
        "Landroid/hardware/Camera$AutoFocusCallback;",
        "Landroid/hardware/Camera$ErrorCallback;"
    }
.end annotation


# static fields
.field static final COMMAND_EXIT_AFTER_DEVICE_FAILURE:Lcom/adobe/ttpixel/extension/camera/CommandForcedExit; = null

.field static final COMMAND_RENDER_PREVIEW_FRAME:Lcom/adobe/ttpixel/extension/camera/CommandRenderPreviewFrame; = null

.field static final COMMAND_TAKE_PICTURE_INTERNAL:Lcom/adobe/ttpixel/extension/camera/CommandTakePictureInternal; = null

.field public static final DEFAULT_CAMERA:I = -0x1

.field static final DEFAULT_FRAGMENT_SHADER_SOURCE:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nuniform samplerExternalOES tt_uniform_maintexture;\nuniform mat4 tt_uniform_camera_matrix;\nvarying vec4 mainTexCoord;\nvoid main()\n{\n\tvec4 cameraTexCoord = tt_uniform_camera_matrix * mainTexCoord;\n\tgl_FragColor = texture2D( tt_uniform_maintexture, cameraTexCoord.st / cameraTexCoord.q ).bgra;\n\t/* gl_FragColor = texture2DProj( tt_uniform_maintexture, tt_uniform_camera_matrix * mainTexCoord ).bgra; */\n}\n"

.field static final DEFAULT_VERTEX_SHADER_SOURCE:Ljava/lang/String; = "attribute vec4 tt_attrib_position;\nattribute vec4 tt_attrib_texcoords;\nuniform mat4 tt_uniform_modelviewprojectionmatrix;\nvarying vec4 mainTexCoord;\nvoid main()\n{\n\tgl_Position = tt_uniform_modelviewprojectionmatrix * tt_attrib_position;\n\tmainTexCoord = vec4(tt_attrib_texcoords.x, tt_attrib_texcoords.y, 0, 1);\n}\n"

.field private static final EGL_CONFIG_SPEC:[I = null

.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_CONTEXT_SPEC:[I = null

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field static final GL_RGBA8_OES:I = 0x8058

.field static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final MAX_QUEUE_COMMANDS:I = 0x40

.field static final NUM_FRAME_BUFFERS:I = 0x2

.field public static final STATE_CLOSED:I = 0x32

.field public static final STATE_FINISHED:I = 0x3c

.field public static final STATE_NOT_STARTED:I = 0x0

.field public static final STATE_OPEN:I = 0x14

.field public static final STATE_PICTURE_READY:I = 0x28

.field public static final STATE_PICTURE_TAKEN:I = 0x1e

.field public static final STATE_STARTED:I = 0xa

.field private static final UNIFORMS:[Ljava/lang/String;

.field private static final VERTEX_ATTRIBUTES:[Ljava/lang/String;

.field private static final VERTEX_ATTRIB_ARRAY_TEMPLATE:[F


# instance fields
.field iBitmapHeight:I

.field iBitmapWidth:I

.field iCamera:Landroid/hardware/Camera;

.field iCameraId:I

.field volatile iCameraTaskStatus:I

.field iCommandQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/adobe/ttpixel/extension/camera/CameraCommand;",
            ">;"
        }
    .end annotation
.end field

.field iEGL:Ljavax/microedition/khronos/egl/EGL10;

.field iEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field iEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field iEGLSurfaceSpec:[I

.field iExtensionContextCamera:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;

.field volatile iFinishCode:I

.field iGLFragmentShaderSource:Ljava/lang/String;

.field iGLProgram:I

.field iGLSquareVertices:Ljava/nio/FloatBuffer;

.field iGLTextureCoordinates:Ljava/nio/FloatBuffer;

.field iGLTextures:[I

.field iGLVertexShaderSource:Ljava/lang/String;

.field iParameters:Landroid/hardware/Camera$Parameters;

.field iParametersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field iPictureData:Ljava/nio/ByteBuffer;

.field volatile iPictureDataExternal:Ljava/nio/ByteBuffer;

.field iPictureDataLock:Ljava/util/concurrent/locks/ReentrantLock;

.field iRenderBuffer:Ljava/nio/ByteBuffer;

.field volatile iRenderBufferExternal:Ljava/nio/ByteBuffer;

.field iRenderBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field iSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field iTransformMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CommandRenderPreviewFrame;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/camera/CommandRenderPreviewFrame;-><init>()V

    sput-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->COMMAND_RENDER_PREVIEW_FRAME:Lcom/adobe/ttpixel/extension/camera/CommandRenderPreviewFrame;

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CommandTakePictureInternal;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/camera/CommandTakePictureInternal;-><init>()V

    sput-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->COMMAND_TAKE_PICTURE_INTERNAL:Lcom/adobe/ttpixel/extension/camera/CommandTakePictureInternal;

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CommandForcedExit;

    new-instance v1, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v2, -0xbb8

    invoke-direct {v1, v2}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/adobe/ttpixel/extension/camera/CommandForcedExit;-><init>(Lcom/adobe/ttpixel/extension/camera/CameraException;)V

    sput-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->COMMAND_EXIT_AFTER_DEVICE_FAILURE:Lcom/adobe/ttpixel/extension/camera/CommandForcedExit;

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->EGL_CONFIG_SPEC:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->EGL_CONTEXT_SPEC:[I

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "tt_attrib_position"

    aput-object v1, v0, v3

    const-string v1, "tt_attrib_texcoords"

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->VERTEX_ATTRIBUTES:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "tt_uniform_maintexture"

    aput-object v1, v0, v3

    const-string v1, "tt_uniform_imagewidth"

    aput-object v1, v0, v4

    const-string v1, "tt_uniform_imageheight"

    aput-object v1, v0, v5

    const-string v1, "tt_uniform_surfacewidth"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "tt_uniform_surfaceheight"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tt_uniform_pixelwidth"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tt_uniform_pixelheight"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tt_uniform_modelviewprojectionmatrix"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->UNIFORMS:[Ljava/lang/String;

    new-array v0, v7, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->VERTEX_ATTRIB_ARRAY_TEMPLATE:[F

    return-void

    :array_0
    .array-data 0x4
        0x3ft 0x30t 0x0t 0x0t
        0x8et 0x30t 0x0t 0x0t
        0x33t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurfaceSpec:[I

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iExtensionContextCamera:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;

    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCameraId:I

    iput p2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapWidth:I

    iput p3, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapHeight:I

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCameraTaskStatus:I

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParameters:Landroid/hardware/Camera$Parameters;

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    const/16 v0, -0x270f

    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iFinishCode:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x56t 0x30t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurfaceSpec:[I

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iExtensionContextCamera:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;

    iput p2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCameraId:I

    iput p3, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapWidth:I

    iput p4, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapHeight:I

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCameraTaskStatus:I

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParameters:Landroid/hardware/Camera$Parameters;

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    const/16 v0, -0x270f

    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iFinishCode:I

    return-void

    :array_0
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x56t 0x30t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private static arrayToFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private attachShader(ILjava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/ttpixel/extension/camera/CameraException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x8b81

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, v5, :cond_1

    iget v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/adobe/ttpixel/extension/camera/CameraException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v2, -0x3ed

    invoke-direct {v0, v2}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/adobe/ttpixel/extension/camera/CameraException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/camera/CameraException;->printStackTrace()V

    if-eqz v1, :cond_2

    const-string v2, "CameraTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shader info log: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    :cond_3
    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v1, :cond_4

    const-string v0, "CameraTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shader info log: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    goto :goto_0
.end method

.method private cancellationPoint()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/ttpixel/extension/camera/CameraException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0

    :cond_0
    return-void
.end method

.method private static getNextPowerOfTwo(I)I
    .locals 1

    const/16 v0, 0x40

    if-gt p0, v0, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p0, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initGLTextureCoordinates(II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/ttpixel/extension/camera/CameraException;
        }
    .end annotation

    const/4 v1, 0x2

    const/high16 v9, 0x4000

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f00

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    int-to-float v6, p1

    div-float v6, v5, v6

    int-to-float v7, p2

    div-float v7, v2, v7

    cmpg-float v8, v6, v7

    if-gez v8, :cond_0

    int-to-float v5, p2

    mul-float/2addr v5, v6

    div-float v2, v5, v2

    div-float/2addr v2, v9

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextureCoordinates:Ljava/nio/FloatBuffer;

    sub-float v7, v4, v5

    invoke-virtual {v6, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextureCoordinates:Ljava/nio/FloatBuffer;

    add-float v7, v4, v2

    invoke-virtual {v6, v0, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextureCoordinates:Ljava/nio/FloatBuffer;

    add-float v7, v4, v5

    invoke-virtual {v6, v1, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextureCoordinates:Ljava/nio/FloatBuffer;

    const/4 v7, 0x3

    add-float v8, v4, v2

    invoke-virtual {v6, v7, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextureCoordinates:Ljava/nio/FloatBuffer;

    const/4 v7, 0x4

    sub-float v8, v4, v5

    invoke-virtual {v6, v7, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextureCoordinates:Ljava/nio/FloatBuffer;

    const/4 v7, 0x5

    sub-float v8, v4, v2

    invoke-virtual {v6, v7, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextureCoordinates:Ljava/nio/FloatBuffer;

    const/4 v7, 0x6

    add-float/2addr v5, v4

    invoke-virtual {v6, v7, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextureCoordinates:Ljava/nio/FloatBuffer;

    const/4 v6, 0x7

    sub-float v2, v4, v2

    invoke-virtual {v5, v6, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextureCoordinates:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    return-void

    :cond_0
    cmpg-float v2, v7, v6

    if-gez v2, :cond_1

    int-to-float v2, p1

    mul-float/2addr v2, v7

    div-float/2addr v2, v5

    div-float/2addr v2, v9

    move v5, v2

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    move v5, v4

    goto :goto_0
.end method

.method private matrixMultiply([F[F[F)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget v0, p2, v4

    aget v1, p3, v4

    mul-float/2addr v0, v1

    aget v1, p2, v8

    aget v2, p3, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p2, v1

    aget v2, p3, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p2, v1

    aget v2, p3, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v4

    aget v0, p2, v5

    aget v1, p3, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p2, v1

    aget v2, p3, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x9

    aget v1, p2, v1

    aget v2, p3, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p2, v1

    aget v2, p3, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v5

    aget v0, p2, v6

    aget v1, p3, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p2, v1

    aget v2, p3, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p2, v1

    aget v2, p3, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p2, v1

    aget v2, p3, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v6

    aget v0, p2, v7

    aget v1, p3, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p2, v1

    aget v2, p3, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xb

    aget v1, p2, v1

    aget v2, p3, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p2, v1

    aget v2, p3, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v7

    aget v0, p2, v4

    aget v1, p3, v8

    mul-float/2addr v0, v1

    aget v1, p2, v8

    const/4 v2, 0x5

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p2, v1

    const/4 v2, 0x6

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p2, v1

    const/4 v2, 0x7

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v8

    const/4 v0, 0x5

    aget v1, p2, v5

    aget v2, p3, v8

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p2, v2

    const/4 v3, 0x6

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p2, v2

    const/4 v3, 0x7

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x6

    aget v1, p2, v6

    aget v2, p3, v8

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p2, v2

    const/4 v3, 0x6

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p2, v2

    const/4 v3, 0x7

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x7

    aget v1, p2, v7

    aget v2, p3, v8

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, 0x6

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p2, v2

    const/4 v3, 0x7

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/16 v0, 0x8

    aget v1, p2, v4

    const/16 v2, 0x8

    aget v2, p3, v2

    mul-float/2addr v1, v2

    aget v2, p2, v8

    const/16 v3, 0x9

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p2, v2

    const/16 v3, 0xa

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/16 v0, 0x9

    aget v1, p2, v5

    const/16 v2, 0x8

    aget v2, p3, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p2, v2

    const/16 v3, 0x9

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p2, v2

    const/16 v3, 0xa

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/16 v0, 0xa

    aget v1, p2, v6

    const/16 v2, 0x8

    aget v2, p3, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p2, v2

    const/16 v3, 0x9

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p2, v2

    const/16 v3, 0xa

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/16 v0, 0xb

    aget v1, p2, v7

    const/16 v2, 0x8

    aget v2, p3, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    const/16 v3, 0x9

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p2, v2

    const/16 v3, 0xa

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/16 v0, 0xc

    aget v1, p2, v4

    const/16 v2, 0xc

    aget v2, p3, v2

    mul-float/2addr v1, v2

    aget v2, p2, v8

    const/16 v3, 0xd

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p2, v2

    const/16 v3, 0xe

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/16 v0, 0xd

    aget v1, p2, v5

    const/16 v2, 0xc

    aget v2, p3, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p2, v2

    const/16 v3, 0xd

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p2, v2

    const/16 v3, 0xe

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/16 v0, 0xe

    aget v1, p2, v6

    const/16 v2, 0xc

    aget v2, p3, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p2, v2

    const/16 v3, 0xd

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p2, v2

    const/16 v3, 0xe

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/16 v0, 0xf

    aget v1, p2, v7

    const/16 v2, 0xc

    aget v2, p3, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    const/16 v3, 0xd

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p2, v2

    const/16 v3, 0xe

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method private matrixSetIdentity([F)V
    .locals 3

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    const/4 v0, 0x0

    aput v2, p1, v0

    const/4 v0, 0x1

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v1, p1, v0

    const/4 v0, 0x3

    aput v1, p1, v0

    const/4 v0, 0x4

    aput v1, p1, v0

    const/4 v0, 0x5

    aput v2, p1, v0

    const/4 v0, 0x6

    aput v1, p1, v0

    const/4 v0, 0x7

    aput v1, p1, v0

    const/16 v0, 0x8

    aput v1, p1, v0

    const/16 v0, 0x9

    aput v1, p1, v0

    const/16 v0, 0xa

    aput v2, p1, v0

    const/16 v0, 0xb

    aput v1, p1, v0

    const/16 v0, 0xc

    aput v1, p1, v0

    const/16 v0, 0xd

    aput v1, p1, v0

    const/16 v0, 0xe

    aput v1, p1, v0

    const/16 v0, 0xf

    aput v2, p1, v0

    return-void
.end method

.method private matrixSetOrthographic([FFFFFFF)V
    .locals 8

    sub-float v0, p3, p2

    sub-float v1, p5, p4

    sub-float v2, p7, p6

    add-float v3, p3, p2

    neg-float v3, v3

    sub-float v4, p3, p2

    div-float/2addr v3, v4

    add-float v4, p5, p4

    neg-float v4, v4

    sub-float v5, p5, p4

    div-float/2addr v4, v5

    add-float v5, p7, p6

    neg-float v5, v5

    sub-float v6, p7, p6

    div-float/2addr v5, v6

    const/4 v6, 0x0

    const/high16 v7, 0x4000

    div-float v0, v7, v0

    aput v0, p1, v6

    const/4 v0, 0x1

    const/4 v6, 0x0

    aput v6, p1, v0

    const/4 v0, 0x2

    const/4 v6, 0x0

    aput v6, p1, v0

    const/4 v0, 0x3

    const/4 v6, 0x0

    aput v6, p1, v0

    const/4 v0, 0x4

    const/4 v6, 0x0

    aput v6, p1, v0

    const/4 v0, 0x5

    const/high16 v6, 0x4000

    div-float v1, v6, v1

    aput v1, p1, v0

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, p1, v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput v1, p1, v0

    const/16 v0, 0x9

    const/4 v1, 0x0

    aput v1, p1, v0

    const/16 v0, 0xa

    const/high16 v1, -0x4000

    div-float/2addr v1, v2

    aput v1, p1, v0

    const/16 v0, 0xb

    const/4 v1, 0x0

    aput v1, p1, v0

    const/16 v0, 0xc

    aput v3, p1, v0

    const/16 v0, 0xd

    aput v4, p1, v0

    const/16 v0, 0xe

    aput v5, p1, v0

    const/16 v0, 0xf

    const/high16 v1, 0x3f80

    aput v1, p1, v0

    return-void
.end method

.method public static translateCameraState(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "notStarted"

    goto :goto_0

    :sswitch_1
    const-string v0, "started"

    goto :goto_0

    :sswitch_2
    const-string v0, "open"

    goto :goto_0

    :sswitch_3
    const-string v0, "pictureTaken"

    goto :goto_0

    :sswitch_4
    const-string v0, "pictureReady"

    goto :goto_0

    :sswitch_5
    const-string v0, "closed"

    goto :goto_0

    :sswitch_6
    const-string v0, "finished"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x3c -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method checkGLError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/ttpixel/extension/camera/CameraException;
        }
    .end annotation

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v1, -0x3ed

    invoke-direct {v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0

    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x32

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->setCameraTaskStatus(I)V

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->cancellationPoint()V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iExtensionContextCamera:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;

    if-nez v0, :cond_3

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v2, -0x3e8

    invoke-direct {v0, v2}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/adobe/ttpixel/extension/camera/CameraException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/camera/CameraException;->isError()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/camera/CameraException;->printStackTrace()V

    :cond_0
    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/camera/CameraException;->getCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->stopPreview()Ljava/lang/Boolean;

    :try_start_2
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->doneAll()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :goto_0
    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    invoke-virtual {p0, v6}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->setCameraTaskStatus(I)V

    :cond_2
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->freeDirect(Ljava/nio/ByteBuffer;)V

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBuffer:Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->freeDirect(Ljava/nio/ByteBuffer;)V

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    :goto_1
    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iFinishCode:I

    invoke-static {}, Ljava/lang/System;->gc()V

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->setCameraTaskStatus(I)V

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iFinishCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v2, -0x3e9

    invoke-direct {v0, v2}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/adobe/ttpixel/extension/camera/CameraException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    move-exception v0

    const/16 v0, 0x3e8

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_4
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->stopPreview()Ljava/lang/Boolean;

    :try_start_4
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->doneAll()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :goto_2
    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    invoke-virtual {p0, v6}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->setCameraTaskStatus(I)V

    :cond_5
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->freeDirect(Ljava/nio/ByteBuffer;)V

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBuffer:Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->freeDirect(Ljava/nio/ByteBuffer;)V

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_6
    :try_start_5
    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCameraId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_a

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v2, -0x3ea

    invoke-direct {v0, v2}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/adobe/ttpixel/extension/camera/CameraException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v0, -0x3eb

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_7
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->stopPreview()Ljava/lang/Boolean;

    :try_start_7
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->doneAll()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :goto_4
    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    invoke-virtual {p0, v6}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->setCameraTaskStatus(I)V

    :cond_8
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->freeDirect(Ljava/nio/ByteBuffer;)V

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBuffer:Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->freeDirect(Ljava/nio/ByteBuffer;)V

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_9
    :try_start_8
    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCameraId:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_3

    :cond_a
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iExtensionContextCamera:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;

    invoke-virtual {v3, v2}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->onSetInitialParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/adobe/ttpixel/extension/camera/CameraException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {p0, v2, v3}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->setParameters(Landroid/hardware/Camera$Parameters;Z)Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/adobe/ttpixel/extension/camera/CameraException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_5
    :try_start_a
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->initAll()V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->setCameraTaskStatus(I)V

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->cancellationPoint()V

    :goto_6
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCommandQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/ttpixel/extension/camera/CameraCommand;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lcom/adobe/ttpixel/extension/camera/CameraException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :try_start_b
    invoke-virtual {v0, p0}, Lcom/adobe/ttpixel/extension/camera/CameraCommand;->execute(Lcom/adobe/ttpixel/extension/camera/CameraTask;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/adobe/ttpixel/extension/camera/CameraException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1

    move-result v2

    :goto_7
    :try_start_c
    iget-object v3, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iExtensionContextCamera:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->onCommandExecuted(Lcom/adobe/ttpixel/extension/camera/CameraCommand;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2}, Lcom/adobe/ttpixel/extension/camera/CameraCommand;->postExecute(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lcom/adobe/ttpixel/extension/camera/CameraException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_6

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_b
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->stopPreview()Ljava/lang/Boolean;

    :try_start_d
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->doneAll()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :goto_8
    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    invoke-virtual {p0, v6}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->setCameraTaskStatus(I)V

    :cond_c
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->freeDirect(Ljava/nio/ByteBuffer;)V

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBuffer:Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->freeDirect(Ljava/nio/ByteBuffer;)V

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    throw v0

    :catch_3
    move-exception v2

    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {p0, v0, v2}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->setParameters(Landroid/hardware/Camera$Parameters;Z)Ljava/lang/Boolean;

    goto :goto_5

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Lcom/adobe/ttpixel/extension/camera/CameraException;->printStackTrace()V

    invoke-virtual {v2}, Lcom/adobe/ttpixel/extension/camera/CameraException;->getCode()I

    move-result v2

    goto :goto_7

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lcom/adobe/ttpixel/extension/camera/CameraException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    const/16 v2, -0x7d0

    goto :goto_7

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :catch_9
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method doneAll()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->doneGL()V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->doneEGL()V

    return-void
.end method

.method doneEGL()V
    .locals 5

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    :cond_3
    return-void
.end method

.method doneGL()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    :cond_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextures:[I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextures:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextures:[I

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraTaskStatus()I
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCameraTaskStatus:I

    return v0
.end method

.method public getFinishCode()I
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iFinishCode:I

    return v0
.end method

.method public getNextPreviewFrame(IILjava/nio/ByteBuffer;)Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapWidth:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapHeight:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;

    invoke-static {p3, v0}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->copyDirect(Ljava/nio/Buffer;Ljava/nio/Buffer;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParametersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParametersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParametersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getPictureData(IILjava/nio/ByteBuffer;)Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne p1, v2, :cond_1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    invoke-static {p3, v0}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->copySwapColorChannels(Ljava/nio/Buffer;Ljava/nio/Buffer;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v3, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method initAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/ttpixel/extension/camera/CameraException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapWidth:I

    iget v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->initEGL(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->cancellationPoint()V

    :try_start_1
    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapWidth:I

    iget v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->initGL(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->cancellationPoint()V

    :try_start_2
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v1, -0x3ec

    invoke-direct {v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v1, -0x3ed

    invoke-direct {v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v1, -0x270f

    invoke-direct {v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0
.end method

.method initEGL(II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/ttpixel/extension/camera/CameraException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/16 v6, -0x3ec

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    invoke-direct {v0, v6}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v5, v4, [I

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/adobe/ttpixel/extension/camera/CameraTask;->EGL_CONFIG_SPEC:[I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    aget v0, v5, v7

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    invoke-direct {v0, v6}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0

    :cond_2
    aget-object v0, v3, v7

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurfaceSpec:[I

    invoke-static {p1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getNextPowerOfTwo(I)I

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurfaceSpec:[I

    invoke-static {p2}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getNextPowerOfTwo(I)I

    move-result v2

    aput v2, v1, v8

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurfaceSpec:[I

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    invoke-direct {v0, v6}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v4, Lcom/adobe/ttpixel/extension/camera/CameraTask;->EGL_CONTEXT_SPEC:[I

    invoke-interface {v1, v2, v0, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    invoke-direct {v0, v6}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method

.method initGL(II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/ttpixel/extension/camera/CameraException;
        }
    .end annotation

    const/16 v0, 0xd05

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/16 v0, 0xcf5

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    new-instance v8, Landroid/hardware/Camera$Size;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getNextPowerOfTwo(I)I

    move-result v1

    invoke-static {p2}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getNextPowerOfTwo(I)I

    move-result v2

    invoke-direct {v8, v0, v1, v2}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, v8, Landroid/hardware/Camera$Size;->width:I

    iget v3, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextures:[I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextures:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const v0, 0x8d65

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v1, -0x3ed

    invoke-direct {v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0

    :cond_0
    const v0, 0x8b31

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLVertexShaderSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->attachShader(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x8b30

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLFragmentShaderSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->attachShader(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v1, -0x3ed

    invoke-direct {v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    iget v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    sget-object v2, Lcom/adobe/ttpixel/extension/camera/CameraTask;->VERTEX_ATTRIBUTES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    const v2, 0x8b82

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/adobe/ttpixel/extension/camera/CameraException;

    const/16 v1, -0x3ed

    invoke-direct {v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraException;-><init>(I)V

    throw v0

    :cond_4
    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    const/16 v0, 0x10

    new-array v9, v0, [F

    const/16 v0, 0x10

    new-array v10, v0, [F

    const/4 v2, 0x0

    iget v0, v8, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v0

    const/4 v4, 0x0

    iget v0, v8, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v0

    const/high16 v6, -0x4080

    const/high16 v7, 0x3f80

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->matrixSetOrthographic([FFFFFFF)V

    invoke-direct {p0, v9}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->matrixSetIdentity([F)V

    invoke-direct {p0, v10, v1, v9}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->matrixMultiply([F[F[F)V

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    sget-object v1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->UNIFORMS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    sget-object v1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->UNIFORMS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    sget-object v1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->UNIFORMS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    sget-object v1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->UNIFORMS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    iget v1, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    sget-object v1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->UNIFORMS:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    iget v1, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    sget-object v1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->UNIFORMS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/high16 v1, 0x3f80

    iget v2, v8, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    sget-object v1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->UNIFORMS:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/high16 v1, 0x3f80

    iget v2, v8, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    sget-object v1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->UNIFORMS:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v10, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLSquareVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLSquareVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLSquareVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLSquareVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLSquareVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->checkGLError()V

    invoke-direct {p0, p1, p2}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->initGLTextureCoordinates(II)V

    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    sget-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->COMMAND_TAKE_PICTURE_INTERNAL:Lcom/adobe/ttpixel/extension/camera/CommandTakePictureInternal;

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->scheduleCommand(Lcom/adobe/ttpixel/extension/camera/CameraCommand;)Ljava/lang/Boolean;

    return-void
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 1

    sget-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->COMMAND_EXIT_AFTER_DEVICE_FAILURE:Lcom/adobe/ttpixel/extension/camera/CommandForcedExit;

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->scheduleCommand(Lcom/adobe/ttpixel/extension/camera/CameraCommand;)Ljava/lang/Boolean;

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCommandQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->COMMAND_RENDER_PREVIEW_FRAME:Lcom/adobe/ttpixel/extension/camera/CommandRenderPreviewFrame;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->COMMAND_RENDER_PREVIEW_FRAME:Lcom/adobe/ttpixel/extension/camera/CommandRenderPreviewFrame;

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->scheduleCommand(Lcom/adobe/ttpixel/extension/camera/CameraCommand;)Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->freeDirect(Ljava/nio/ByteBuffer;)V

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iget v3, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCameraId:I

    invoke-static {v3, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->flipImageHor(Ljava/nio/Buffer;III)Z

    :cond_2
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->setCameraTaskStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->freeDirect(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParameters:Landroid/hardware/Camera$Parameters;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParametersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCommandQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextures:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLProgram:I

    const-string v0, "attribute vec4 tt_attrib_position;\nattribute vec4 tt_attrib_texcoords;\nuniform mat4 tt_uniform_modelviewprojectionmatrix;\nvarying vec4 mainTexCoord;\nvoid main()\n{\n\tgl_Position = tt_uniform_modelviewprojectionmatrix * tt_attrib_position;\n\tmainTexCoord = vec4(tt_attrib_texcoords.x, tt_attrib_texcoords.y, 0, 1);\n}\n"

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLVertexShaderSource:Ljava/lang/String;

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nuniform samplerExternalOES tt_uniform_maintexture;\nuniform mat4 tt_uniform_camera_matrix;\nvarying vec4 mainTexCoord;\nvoid main()\n{\n\tvec4 cameraTexCoord = tt_uniform_camera_matrix * mainTexCoord;\n\tgl_FragColor = texture2D( tt_uniform_maintexture, cameraTexCoord.st / cameraTexCoord.q ).bgra;\n\t/* gl_FragColor = texture2DProj( tt_uniform_maintexture, tt_uniform_camera_matrix * mainTexCoord ).bgra; */\n}\n"

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLFragmentShaderSource:Ljava/lang/String;

    sget-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->VERTEX_ATTRIB_ARRAY_TEMPLATE:[F

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->arrayToFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLSquareVertices:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->VERTEX_ATTRIB_ARRAY_TEMPLATE:[F

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->arrayToFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iGLTextureCoordinates:Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapWidth:I

    iget v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBuffer:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferExternal:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iRenderBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iTransformMatrix:[F

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureData:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataExternal:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iPictureDataLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 v0, -0x270f

    iput v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iFinishCode:I

    return-void
.end method

.method public onShutter()V
    .locals 1

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->setCameraTaskStatus(I)V

    return-void
.end method

.method public scheduleCommand(Lcom/adobe/ttpixel/extension/camera/CameraCommand;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCommandQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCommandQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setCameraTaskStatus(I)V
    .locals 1

    iput p1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCameraTaskStatus:I

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iExtensionContextCamera:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iExtensionContextCamera:Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;

    invoke-virtual {v0, p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCamera;->onTaskStatusChange(I)V

    :cond_0
    return-void
.end method

.method setParameters(Landroid/hardware/Camera$Parameters;Z)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParametersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    new-instance v0, Landroid/hardware/Camera$Size;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p2, :cond_1

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapWidth:I

    iget v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iBitmapHeight:I

    invoke-direct {p0, v0, v1}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->initGLTextureCoordinates(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParametersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iParametersLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public startPreview()Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public stopPreview()Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCommandQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v1, Lcom/adobe/ttpixel/extension/camera/CameraTask;->COMMAND_RENDER_PREVIEW_FRAME:Lcom/adobe/ttpixel/extension/camera/CommandRenderPreviewFrame;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method takePicture()Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/camera/CameraTask;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "macro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraTask;->iCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method
