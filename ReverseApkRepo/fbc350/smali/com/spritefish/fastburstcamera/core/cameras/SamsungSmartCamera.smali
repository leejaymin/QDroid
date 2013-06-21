.class public Lcom/spritefish/fastburstcamera/core/cameras/SamsungSmartCamera;
.super Ljava/lang/Object;
.source "SamsungSmartCamera.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/core/CameraSetupApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFixedFps()I
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x78

    return v0
.end method

.method public getFixedFpsRange()[I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x60t 0xeat 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
    .end array-data
.end method

.method public getTempBufCount()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public hasScreenButton()Z
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    return v0
.end method

.method public hasShootZoomFocusButton()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public preshotAlwaysEnabled()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public support2ndCam()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public useContinuousFocus()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public useDirectBuffers()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
