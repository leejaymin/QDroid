.class public Lcom/garageapps/android/spacetracks/game/GameBillboard;
.super Ljava/lang/Object;
.source "GameBillboard.java"


# instance fields
.field final TIME_LONG:I

.field final TIME_SHORT:I

.field private alpha:F

.field private distance:F

.field private messageId:I

.field private objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

.field private state:I

.field private timer:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->TIME_LONG:I

    .line 21
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->TIME_SHORT:I

    .line 35
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    .line 36
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3e00

    invoke-virtual {v0, v1, v2}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateVertexXY(FF)V

    .line 37
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/game/GameBillboard;->initVars()V

    .line 38
    return-void
.end method

.method private update()V
    .locals 9

    .prologue
    const v8, 0x3f28f5c3

    const/high16 v4, 0x3e00

    const/high16 v7, 0x3e80

    const/4 v6, 0x2

    const/high16 v5, 0x3f80

    .line 83
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->timer:J

    invoke-static {v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 85
    .local v0, elapsedTime:J
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 87
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 88
    const v2, 0x3a83126f

    long-to-float v3, v0

    mul-float/2addr v2, v3

    sub-float v2, v5, v2

    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->alpha:F

    .line 89
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->distance:F

    const v3, 0x39d1b718

    long-to-float v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->distance:F

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/high16 v2, -0x4040

    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->distance:F

    .line 94
    iput v5, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->alpha:F

    .line 95
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->timer:J

    .line 96
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->messageId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->messageId:I

    .line 98
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->messageId:I

    if-ne v2, v6, :cond_2

    .line 99
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    const v3, 0x3ea8f5c3

    invoke-virtual {v2, v3, v4, v8, v7}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FFFF)V

    .line 100
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/16 v3, 0x10

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto :goto_0

    .line 103
    :cond_2
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->messageId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 104
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, v8, v4, v5, v7}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FFFF)V

    .line 105
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/16 v3, 0x10

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto :goto_0

    .line 108
    :cond_3
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->messageId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 109
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    const/4 v3, 0x0

    const/high16 v4, 0x3ec0

    invoke-virtual {v2, v3, v7, v5, v4}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FFFF)V

    .line 110
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/16 v3, 0x11

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto :goto_0

    .line 113
    :cond_4
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->messageId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 114
    const/4 v2, 0x0

    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->state:I

    goto :goto_0

    .line 119
    :cond_5
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->state:I

    if-ne v2, v6, :cond_0

    .line 120
    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_6

    .line 121
    const v2, 0x3a03126f

    long-to-float v3, v0

    mul-float/2addr v2, v3

    sub-float v2, v5, v2

    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->alpha:F

    .line 122
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->distance:F

    const v3, 0x3951b718

    long-to-float v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->distance:F

    goto :goto_0

    .line 125
    :cond_6
    const/4 v2, 0x0

    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->state:I

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v1, 0x1

    const/high16 v3, 0x3f80

    const/16 v2, 0xde1

    .line 52
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/game/GameBillboard;->update()V

    .line 54
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->state:I

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 58
    :cond_0
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 59
    const/16 v0, 0x302

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 60
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 62
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    if-nez v0, :cond_2

    .line 63
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 75
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 76
    const/4 v0, 0x0

    const v1, 0x3e99999a

    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->distance:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 77
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->alpha:F

    invoke-interface {p1, v3, v3, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 78
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 64
    :cond_2
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    if-ne v0, v1, :cond_3

    .line 65
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_1

    .line 66
    :cond_3
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 67
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x16

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_1

    .line 68
    :cond_4
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 69
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x17

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_1

    .line 70
    :cond_5
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 71
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x18

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_1

    .line 72
    :cond_6
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 73
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x19

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_1
.end method

.method public initVars()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 42
    iput v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->messageId:I

    .line 43
    iput v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->state:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->timer:J

    .line 45
    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->distance:F

    .line 46
    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->alpha:F

    .line 47
    return-void
.end method

.method public set(II)V
    .locals 8
    .parameter "messageId"
    .parameter "soundId"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x3e00

    .line 131
    iput p1, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->messageId:I

    .line 133
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->messageId:I

    if-ne v0, v4, :cond_0

    .line 134
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    const v1, 0x3ea8f5c3

    const/high16 v2, 0x3e80

    invoke-virtual {v0, v6, v3, v1, v2}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FFFF)V

    .line 135
    iput v4, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->state:I

    .line 136
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v5, v1}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 139
    :cond_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->messageId:I

    if-le v0, v4, :cond_1

    .line 140
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    int-to-float v1, p1

    mul-float/2addr v1, v3

    int-to-float v2, p1

    mul-float/2addr v2, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v7, v2}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FFFF)V

    .line 141
    iput v5, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->state:I

    .line 142
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v0, v5, p2}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 145
    :cond_1
    const/high16 v0, -0x4040

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->distance:F

    .line 146
    iput v7, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->alpha:F

    .line 147
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/game/GameBillboard;->timer:J

    .line 148
    return-void
.end method
