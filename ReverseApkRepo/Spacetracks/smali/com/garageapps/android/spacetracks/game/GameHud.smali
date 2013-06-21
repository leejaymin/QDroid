.class public Lcom/garageapps/android/spacetracks/game/GameHud;
.super Ljava/lang/Object;
.source "GameHud.java"


# instance fields
.field private bonusAngle:F

.field private disabled:Z

.field private hBonus_1:Z

.field private hBonus_2:Z

.field private hBonus_3:Z

.field private hIncrement_1:I

.field private hIncrement_2:I

.field private hScore:I

.field private hTimer:J

.field private lastElapsed:J

.field private lastIncrement_2:I

.field private objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

.field private objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

.field private objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    .line 40
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    .line 41
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/garageapps/android/spacetracks/game/GameHud;->initVars(I)V

    .line 43
    return-void
.end method

.method private drawBackground(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/16 v2, 0xde1

    const v5, 0x3e6147ae

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 87
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 88
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 89
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 90
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 91
    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 92
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 94
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 95
    const/high16 v0, -0x4080

    const v1, 0x3f90a3d7

    const v2, -0x3fb1eb85

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 96
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, v3, v5}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateVertexXY(FF)V

    .line 97
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, v4, v4, v3, v5}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FFFF)V

    .line 98
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 100
    const/high16 v0, 0x4000

    invoke-interface {p1, v0, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 101
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, v3, v5}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateVertexXY(FF)V

    .line 102
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    const/high16 v1, 0x3f00

    const v2, 0x3f3851ec

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FFFF)V

    .line 103
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 104
    return-void
.end method

.method private drawBonus(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/high16 v7, 0x4178

    const/high16 v6, -0x3de0

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 138
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 139
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 140
    const/16 v0, 0xde1

    sget-object v1, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 142
    iget-boolean v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hBonus_1:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {p1, v3, v5, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 144
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 145
    const/high16 v0, 0x4188

    invoke-interface {p1, v0, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 146
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->bonusAngle:F

    invoke-interface {p1, v0, v4, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 147
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hBonus_2:Z

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {p1, v5, v3, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 152
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 153
    const/high16 v0, 0x41a0

    invoke-interface {p1, v0, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 154
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->bonusAngle:F

    invoke-interface {p1, v0, v4, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 155
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 158
    :cond_1
    iget-boolean v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hBonus_3:Z

    if-eqz v0, :cond_2

    .line 159
    invoke-interface {p1, v5, v5, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 160
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 161
    const/high16 v0, 0x41b8

    invoke-interface {p1, v0, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 162
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->bonusAngle:F

    invoke-interface {p1, v0, v4, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 163
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 165
    :cond_2
    return-void
.end method

.method private drawIncrements(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .parameter "gl"

    .prologue
    const v9, 0x3f90a3d7

    const/high16 v8, 0x3f80

    const v7, 0x3e6147ae

    const v6, -0x3fb1eb85

    const v3, 0x3c23d70a

    .line 110
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_1:I

    int-to-float v2, v2

    mul-float v0, v3, v2

    .line 111
    .local v0, xp:F
    iget-boolean v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->disabled:Z

    if-nez v2, :cond_0

    .line 112
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_2:I

    int-to-float v2, v2

    mul-float v1, v3, v2

    .line 113
    .local v1, xp2:F
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_2:I

    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->lastIncrement_2:I

    .line 118
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 119
    const/high16 v2, -0x4000

    add-float/2addr v2, v0

    invoke-interface {p1, v2, v9, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 120
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, v0, v7}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateVertexXY(FF)V

    .line 121
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    const/4 v3, 0x0

    const/high16 v4, 0x3e80

    const v5, 0x3ef0a3d7

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FFFF)V

    .line 122
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 124
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 125
    const/high16 v2, 0x4000

    sub-float/2addr v2, v1

    invoke-interface {p1, v2, v9, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 126
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, v1, v7}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateVertexXY(FF)V

    .line 127
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    sub-float v3, v8, v1

    const/high16 v4, 0x3f40

    const v5, 0x3f7851ec

    invoke-virtual {v2, v3, v4, v8, v5}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FFFF)V

    .line 128
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsPlaneInc:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 129
    return-void

    .line 116
    .end local v1           #xp2:F
    :cond_0
    iget v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->lastIncrement_2:I

    int-to-float v2, v2

    mul-float v1, v3, v2

    .restart local v1       #xp2:F
    goto :goto_0
.end method

.method private drawScore(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .parameter "gl"

    .prologue
    const/high16 v6, 0x3f80

    .line 133
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    iget v1, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hScore:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x3e75999a

    const v4, 0x41366666

    const/high16 v5, -0x3e18

    move-object v1, p1

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->draw(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFF)V

    .line 134
    return-void
.end method

.method private drawTimer(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .parameter "gl"

    .prologue
    const/high16 v4, 0x40b0

    const/high16 v5, -0x3e70

    const/high16 v3, -0x3ff0

    const-wide/16 v7, 0x0

    const/high16 v6, 0x3f80

    .line 171
    iget-boolean v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->disabled:Z

    if-nez v0, :cond_1

    .line 172
    iget-wide v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hTimer:J

    invoke-static {v0, v1}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v10

    .line 173
    .local v10, elapsedTime:J
    cmp-long v0, v10, v7

    if-gez v0, :cond_0

    .line 174
    const-wide/16 v10, 0x0

    .line 175
    :cond_0
    iput-wide v10, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->lastElapsed:J

    .line 180
    :goto_0
    iget-wide v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hTimer:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    const/4 v1, 0x0

    invoke-static {v7, v8, v1}, Lcom/garageapps/android/spacetracks/glSpec;->timerToString(JZ)Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->draw(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFF)V

    .line 184
    :goto_1
    return-void

    .line 178
    .end local v10           #elapsedTime:J
    :cond_1
    iget-wide v10, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->lastElapsed:J

    .restart local v10       #elapsedTime:J
    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    const/4 v1, 0x1

    invoke-static {v10, v11, v1}, Lcom/garageapps/android/spacetracks/glSpec;->timerToString(JZ)Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->draw(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFF)V

    goto :goto_1
.end method

.method private update()V
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->bonusAngle:F

    const/high16 v1, 0x4000

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->bonusAngle:F

    .line 83
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->disabled:Z

    .line 212
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/game/GameHud;->drawBackground(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/game/GameHud;->drawIncrements(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/game/GameHud;->drawScore(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/game/GameHud;->drawBonus(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/game/GameHud;->drawTimer(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 77
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/game/GameHud;->update()V

    .line 78
    return-void
.end method

.method public initVars(I)V
    .locals 4
    .parameter "score"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_1:I

    .line 48
    const/16 v0, 0x64

    iput v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_2:I

    .line 49
    iput-boolean v1, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hBonus_1:Z

    .line 50
    iput-boolean v1, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hBonus_2:Z

    .line 51
    iput-boolean v1, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hBonus_3:Z

    .line 52
    iput p1, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hScore:I

    .line 53
    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hTimer:J

    .line 54
    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->lastElapsed:J

    .line 55
    iput v1, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->lastIncrement_2:I

    .line 56
    iput-boolean v1, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->disabled:Z

    .line 57
    return-void
.end method

.method public set(IIIZZZJ)V
    .locals 3
    .parameter "score"
    .parameter "increment_1"
    .parameter "increment_2"
    .parameter "bonus_1"
    .parameter "bonus_2"
    .parameter "bonus_3"
    .parameter "timer"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x64

    .line 188
    iput p2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_1:I

    .line 190
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_1:I

    if-le v0, v1, :cond_2

    .line 191
    iput v1, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_1:I

    .line 195
    :cond_0
    :goto_0
    iput p3, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_2:I

    .line 197
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_2:I

    if-le v0, v1, :cond_3

    .line 198
    iput v1, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_2:I

    .line 202
    :cond_1
    :goto_1
    iput p1, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hScore:I

    .line 203
    iput-boolean p4, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hBonus_1:Z

    .line 204
    iput-boolean p5, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hBonus_2:Z

    .line 205
    iput-boolean p6, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hBonus_3:Z

    .line 206
    iput-wide p7, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hTimer:J

    .line 207
    return-void

    .line 192
    :cond_2
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_1:I

    if-gez v0, :cond_0

    .line 193
    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_1:I

    goto :goto_0

    .line 199
    :cond_3
    iget v0, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_2:I

    if-gez v0, :cond_1

    .line 200
    iput v2, p0, Lcom/garageapps/android/spacetracks/game/GameHud;->hIncrement_2:I

    goto :goto_1
.end method
