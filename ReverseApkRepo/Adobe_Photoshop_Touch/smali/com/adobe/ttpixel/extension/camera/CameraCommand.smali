.class public abstract Lcom/adobe/ttpixel/extension/camera/CameraCommand;
.super Ljava/lang/Object;


# static fields
.field public static final COMMAND_FORCED_EXIT:Ljava/lang/String; = "forcedExit"

.field public static final COMMAND_RENDER_PREVIEW_FRAME:Ljava/lang/String; = "renderPreviewFrame"

.field public static final COMMAND_SET_PARAMETERS:Ljava/lang/String; = "setParameters"

.field public static final COMMAND_START_PREVIEW:Ljava/lang/String; = "startPreview"

.field public static final COMMAND_STOP_PREVIEW:Ljava/lang/String; = "stopPreview"

.field public static final COMMAND_TAKE_PICTURE:Ljava/lang/String; = "takePicture"

.field public static final COMMAND_TAKE_PICTURE_INTERNAL:Ljava/lang/String; = "takePictureInternal"


# instance fields
.field protected iCommandId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraCommand;->iCommandId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/adobe/ttpixel/extension/camera/CameraCommand;->iCommandId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/adobe/ttpixel/extension/camera/CameraTask;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/adobe/ttpixel/extension/camera/CameraException;
        }
    .end annotation
.end method

.method public getCommandId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/camera/CameraCommand;->iCommandId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getCommandType()Ljava/lang/String;
.end method

.method public postExecute(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public shouldDispatchFinishEvent()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
