.class public Lcom/garageapps/android/spacetracks/states/StatesIntro;
.super Ljava/lang/Object;
.source "StatesIntro.java"


# instance fields
.field final TILED_PLANE:I

.field final TIME_DELAY:I

.field final TIME_FADER:I

.field private angle:F

.field private fader:F

.field private faderTimer:J

.field private mIntroState:I

.field private mIntroStateFinished:Z

.field private objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

.field private objectsTiledPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0xbb8

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->TIME_FADER:I

    .line 24
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->TIME_DELAY:I

    .line 25
    const/16 v0, 0xa

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->TILED_PLANE:I

    .line 17
    return-void
.end method

.method private drawTiledPlane(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .parameter "gl"

    .prologue
    .line 96
    const/high16 v4, 0x4110

    .line 97
    .local v4, vex:F
    const v3, 0x3dcccccd

    .line 98
    .local v3, tex:F
    const/high16 v8, 0x4180

    iget v9, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->angle:F

    const/high16 v10, 0x40f0

    div-float/2addr v9, v10

    sub-float v7, v8, v9

    .line 99
    .local v7, z:F
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->angle:F

    const v10, 0x3c360b61

    mul-float/2addr v9, v10

    sub-float v0, v8, v9

    .line 101
    .local v0, c:F
    const/16 v8, 0xbe2

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 102
    const/16 v8, 0xde1

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 103
    const/16 v8, 0xde1

    sget-object v9, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v10, 0xa

    aget v9, v9, v10

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 105
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    const/16 v8, 0xa

    if-lt v2, v8, :cond_0

    .line 119
    return-void

    .line 106
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v8, 0xa

    if-lt v1, v8, :cond_1

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_1
    int-to-float v8, v1

    const v9, 0x3dcccccd

    mul-float v5, v8, v9

    .line 108
    .local v5, xoff:F
    int-to-float v8, v2

    const v9, 0x3dcccccd

    mul-float v6, v8, v9

    .line 110
    .local v6, yoff:F
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 111
    const/high16 v8, -0x3ef0

    mul-int/lit8 v9, v1, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x4110

    neg-int v10, v2

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    neg-float v10, v7

    invoke-interface {p1, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 112
    iget v8, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->angle:F

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 113
    iget v8, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->angle:F

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 114
    const/high16 v8, 0x3f80

    invoke-interface {p1, v0, v0, v0, v8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 115
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->objectsTiledPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    const v9, 0x3dcccccd

    add-float/2addr v9, v5

    const v10, 0x3dcccccd

    add-float/2addr v10, v6

    invoke-virtual {v8, v5, v6, v9, v10}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FFFF)V

    .line 116
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->objectsTiledPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v8, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private init(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-static {p1}, Lcom/garageapps/android/spacetracks/glSpec;->setPerspectiveProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 49
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->mIntroState:I

    .line 51
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    .line 52
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->objectsTiledPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    .line 54
    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->angle:F

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->fader:F

    .line 56
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->faderTimer:J

    .line 58
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v0, v2, v2}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    .line 59
    return-void
.end method

.method private update(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .parameter "gl"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const v6, 0x3cf5c28f

    const-wide/16 v4, 0xbb8

    .line 123
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->faderTimer:J

    invoke-static {v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 126
    .local v0, elapsedTime:J
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->mIntroState:I

    if-ne v2, v7, :cond_2

    .line 127
    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 128
    const/4 v2, 0x0

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->angle:F

    .line 129
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->faderTimer:J

    .line 130
    iput v8, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->mIntroState:I

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/high16 v2, 0x42b4

    long-to-float v3, v0

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->angle:F

    goto :goto_0

    .line 138
    :cond_2
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->mIntroState:I

    if-ne v2, v8, :cond_3

    .line 139
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 140
    iput v9, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->mIntroState:I

    .line 141
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->faderTimer:J

    goto :goto_0

    .line 146
    :cond_3
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->mIntroState:I

    if-ne v2, v9, :cond_0

    .line 147
    cmp-long v2, v0, v4

    if-gez v2, :cond_4

    .line 148
    long-to-float v2, v0

    mul-float/2addr v2, v6

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->angle:F

    .line 149
    const v2, 0x39aec33e

    long-to-float v3, v0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->fader:F

    goto :goto_0

    .line 152
    :cond_4
    iput-boolean v7, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->mIntroStateFinished:Z

    goto :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 64
    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->mIntroState:I

    if-nez v1, :cond_0

    .line 65
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesIntro;->init(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 67
    :cond_0
    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->angle:F

    const v2, 0x3c360b61

    mul-float/2addr v1, v2

    sub-float v0, v4, v1

    .line 72
    .local v0, c:F
    const v1, 0x3f63d70a

    mul-float/2addr v1, v0

    const v2, 0x3f57ced9

    mul-float/2addr v2, v0

    const v3, 0x3f3ae148

    mul-float/2addr v3, v0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/garageapps/android/spacetracks/glSpec;->clearScreen(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 75
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesIntro;->drawTiledPlane(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 78
    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->mIntroState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 79
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 80
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 81
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 83
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 84
    const v1, -0x3fe66666

    invoke-interface {p1, v5, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 85
    const/high16 v1, 0x3fc0

    invoke-interface {p1, v1, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 86
    iget v1, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->fader:F

    invoke-interface {p1, v4, v4, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 87
    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v1, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesIntro;->update(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 92
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->mIntroStateFinished:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->mIntroState:I

    .line 37
    iput-boolean v0, p0, Lcom/garageapps/android/spacetracks/states/StatesIntro;->mIntroStateFinished:Z

    .line 38
    return-void
.end method
