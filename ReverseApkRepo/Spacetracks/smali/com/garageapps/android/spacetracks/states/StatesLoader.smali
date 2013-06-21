.class public Lcom/garageapps/android/spacetracks/states/StatesLoader;
.super Ljava/lang/Object;
.source "StatesLoader.java"


# instance fields
.field final TIME_DELAY:I

.field final TIME_FADER:I

.field private fader:F

.field private faderTimer:J

.field private mLoaderState:I

.field private mLoaderStateFinished:Z

.field private objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->TIME_FADER:I

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->TIME_DELAY:I

    .line 17
    return-void
.end method

.method private init(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    .line 44
    invoke-static {p1}, Lcom/garageapps/android/spacetracks/glSpec;->setPerspectiveProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 46
    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderState:I

    .line 48
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/4 v1, 0x0

    const/high16 v2, 0x7f02

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 49
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const v1, 0x7f02000a

    invoke-static {p1, v1}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v1

    aput v1, v0, v4

    .line 51
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    .line 52
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1, v3}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FF)V

    .line 54
    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->fader:F

    .line 55
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->faderTimer:J

    .line 56
    return-void
.end method

.method private initGame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderState:I

    .line 62
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/4 v1, 0x2

    const v2, 0x7f02000b

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 63
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0xa

    const v2, 0x7f020003

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 64
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0xb

    const v2, 0x7f020005

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 65
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0xc

    const v2, 0x7f020004

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 66
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0xd

    const v2, 0x7f020001

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 67
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0xe

    const v2, 0x7f020002

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 68
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x14

    const v2, 0x7f020013

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 69
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x15

    const v2, 0x7f020017

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 70
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x16

    const v2, 0x7f020012

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 71
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x17

    const v2, 0x7f020015

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 72
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x18

    const v2, 0x7f020016

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 73
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x19

    const v2, 0x7f020014

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 74
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x1e

    const v2, 0x7f020006

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 75
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x1f

    const v2, 0x7f020007

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 76
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x20

    const v2, 0x7f020008

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 77
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x21

    const v2, 0x7f020009

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 78
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x28

    const v2, 0x7f020011

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 79
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x29

    const v2, 0x7f02000c

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 80
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x2a

    const v2, 0x7f02000d

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 81
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x2b

    const v2, 0x7f02000e

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 82
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x2c

    const v2, 0x7f02000f

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 83
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x2d

    const v2, 0x7f020010

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 84
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x2e

    const v2, 0x7f020018

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 85
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0x2f

    const v2, 0x7f020019

    invoke-static {p1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I

    move-result v2

    aput v2, v0, v1

    .line 86
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->loadAll()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->fader:F

    .line 89
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->faderTimer:J

    .line 90
    return-void
.end method

.method private update(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .parameter "gl"

    .prologue
    const-wide/16 v7, 0xbb8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const v4, 0x39aec33e

    .line 140
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->faderTimer:J

    invoke-static {v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 143
    .local v0, elapsedTime:J
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderState:I

    if-ne v2, v5, :cond_2

    .line 144
    cmp-long v2, v0, v7

    if-gtz v2, :cond_1

    .line 145
    const/high16 v2, 0x3f80

    long-to-float v3, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->fader:F

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderState:I

    goto :goto_0

    .line 151
    :cond_2
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 152
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 153
    iput v6, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderState:I

    .line 154
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->faderTimer:J

    goto :goto_0

    .line 159
    :cond_3
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderState:I

    if-ne v2, v6, :cond_0

    .line 160
    cmp-long v2, v0, v7

    if-gtz v2, :cond_4

    .line 161
    long-to-float v2, v0

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->fader:F

    goto :goto_0

    .line 163
    :cond_4
    iput-boolean v5, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderStateFinished:Z

    goto :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .parameter "gl"

    .prologue
    .line 95
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderState:I

    if-nez v0, :cond_3

    .line 96
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesLoader;->init(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 103
    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-static {p1, v0, v1, v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->clearScreen(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 106
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 107
    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 108
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 109
    const/16 v0, 0xde1

    sget-object v1, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 111
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 112
    const/4 v0, 0x0

    const/high16 v1, 0x3e80

    const/high16 v2, -0x3fe0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 113
    const/high16 v0, 0x41c8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 114
    const/high16 v0, -0x3dcc

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 115
    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    const v3, 0x3f19999a

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 116
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 119
    const-string v1, " spacetracks "

    const/high16 v2, -0x3f50

    const/high16 v3, 0x3f80

    const/high16 v4, -0x3e60

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object v0, p1

    invoke-static/range {v0 .. v10}, Lcom/garageapps/android/spacetracks/glSpec;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFFFF)V

    .line 120
    const-string v1, "...loading..."

    const/high16 v2, -0x3f50

    const/4 v3, 0x0

    const/high16 v4, -0x3e60

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    move-object v0, p1

    invoke-static/range {v0 .. v10}, Lcom/garageapps/android/spacetracks/glSpec;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFFFF)V

    .line 123
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 124
    :cond_1
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 125
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 126
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 128
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, -0x4000

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->fader:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 131
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 135
    :cond_2
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesLoader;->update(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 136
    return-void

    .line 99
    :cond_3
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesLoader;->initGame(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderStateFinished:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderState:I

    .line 34
    iput-boolean v0, p0, Lcom/garageapps/android/spacetracks/states/StatesLoader;->mLoaderStateFinished:Z

    .line 35
    return-void
.end method
