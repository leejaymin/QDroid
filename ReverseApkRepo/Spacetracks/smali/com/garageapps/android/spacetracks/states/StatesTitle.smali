.class public Lcom/garageapps/android/spacetracks/states/StatesTitle;
.super Ljava/lang/Object;
.source "StatesTitle.java"


# instance fields
.field final FLAG_HEIGHT:I

.field final FLAG_WIDTH:I

.field final PLANES_NUM:I

.field final TIME_BOTTOM_OVER_KEEPER:I

.field final TIME_BOTTOM_OVER_MOVER:I

.field final TIME_BOTTOM_TEXT_FADER:I

.field final TIME_BOTTOM_TEXT_KEEPER:I

.field final TIME_BOTTOM_TEXT_MESSAGES:I

.field final TIME_FADER:I

.field final TIME_FADER_2:I

.field final TIME_SEQ_1:I

.field final TIME_SEQ_2:I

.field final TIME_UPPER_TEXT_KEEPER:I

.field final TIME_UPPER_TEXT_SCALER:I

.field private bottomText:[Ljava/lang/String;

.field private bottomTextAlpha:F

.field private bottomTextCounter:I

.field private bottomTextOverAlpha:F

.field private bottomTextOverOffset:F

.field private bottomTextOverTimer:J

.field private bottomTextTimer:J

.field private fader:F

.field private faderTimer:J

.field private mTitleState:I

.field private mTitleStateFinished:Z

.field private objectsFlag:Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;

.field private objectsMenu:Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;

.field private objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

.field private objectsPlaneScroller:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

.field private objectsPlaneTitle:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

.field private objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

.field private rightAngle:F

.field private rightAnim:F

.field private scrollerOffset:F

.field private scrollerOffsetTimer:J

.field private sekvenca:J

.field private stani:Z

.field private svirajTimer:J

.field private upperTextScale:F

.field private upperTextTimer:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/16 v1, 0x1388

    const/16 v0, 0xbb8

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->TIME_FADER:I

    .line 27
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->TIME_FADER_2:I

    .line 28
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->TIME_UPPER_TEXT_SCALER:I

    .line 29
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->TIME_UPPER_TEXT_KEEPER:I

    .line 30
    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->TIME_BOTTOM_TEXT_FADER:I

    .line 31
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->TIME_BOTTOM_TEXT_KEEPER:I

    .line 32
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->TIME_BOTTOM_TEXT_MESSAGES:I

    .line 33
    iput v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->TIME_BOTTOM_OVER_KEEPER:I

    .line 34
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->TIME_BOTTOM_OVER_MOVER:I

    .line 35
    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->PLANES_NUM:I

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->FLAG_WIDTH:I

    .line 37
    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->FLAG_HEIGHT:I

    .line 38
    const/16 v0, 0xee2

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->TIME_SEQ_1:I

    .line 39
    const/16 v0, 0x1dec

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->TIME_SEQ_2:I

    .line 46
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomText:[Ljava/lang/String;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->svirajTimer:J

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    .line 20
    return-void
.end method

.method private drawUpdateBackground(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/16 v2, 0xde1

    const/high16 v3, 0x3f80

    .line 174
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 175
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 176
    sget-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v1, 0xb

    aget v0, v0, v1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 178
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 179
    const/4 v0, 0x0

    const v1, -0x41428f5c

    const/high16 v2, -0x4040

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 180
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 181
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 182
    return-void
.end method

.method private drawUpdateBottomOver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .parameter "gl"

    .prologue
    const/16 v10, 0xde1

    const/high16 v6, -0x3f10

    const-wide/16 v8, 0x1f40

    const/high16 v7, 0x3f80

    const-wide/16 v4, 0x1388

    .line 251
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextOverTimer:J

    invoke-static {v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 254
    .local v0, elapsedTime:J
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 284
    :goto_0
    return-void

    .line 258
    :cond_0
    cmp-long v2, v0, v4

    if-ltz v2, :cond_3

    cmp-long v2, v0, v8

    if-gez v2, :cond_3

    .line 259
    sub-long v2, v0, v4

    long-to-float v2, v2

    const v3, 0x3ba3d70a

    mul-float/2addr v2, v3

    add-float/2addr v2, v6

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextOverOffset:F

    .line 260
    cmp-long v2, v0, v4

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x157c

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 261
    sub-long v2, v0, v4

    long-to-float v2, v2

    const v3, 0x39d1b717

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextOverAlpha:F

    .line 274
    :cond_1
    :goto_1
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 275
    const/16 v2, 0x302

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 276
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 277
    sget-object v2, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-interface {p1, v10, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 279
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 280
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextOverOffset:F

    const v3, -0x3f6ccccd

    const/high16 v4, -0x3ea0

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 281
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextOverAlpha:F

    invoke-interface {p1, v7, v7, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 282
    const/high16 v2, 0x3f00

    invoke-interface {p1, v7, v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 283
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 262
    :cond_2
    const-wide/16 v2, 0x1d4c

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    cmp-long v2, v0, v8

    if-gez v2, :cond_1

    .line 263
    const v2, 0x3dcccccd

    sub-long v3, v0, v4

    const-wide/16 v5, 0xbb8

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    long-to-float v3, v3

    const v4, 0x3951b717

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextOverAlpha:F

    goto :goto_1

    .line 267
    :cond_3
    cmp-long v2, v0, v8

    if-ltz v2, :cond_1

    .line 268
    iput v6, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextOverOffset:F

    .line 269
    const/4 v2, 0x0

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextOverAlpha:F

    .line 270
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextOverTimer:J

    goto :goto_1
.end method

.method private drawUpdateBottomText(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .parameter "gl"

    .prologue
    const-wide/16 v12, 0x1b58

    const-wide/16 v7, 0x1770

    const v4, 0x3a83126f

    const-wide/16 v2, 0x3e8

    const/high16 v6, 0x3f80

    .line 221
    iget-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextTimer:J

    invoke-static {v0, v1}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v10

    .line 224
    .local v10, elapsedTime:J
    cmp-long v0, v10, v2

    if-gez v0, :cond_1

    .line 225
    long-to-float v0, v10

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextAlpha:F

    .line 245
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 246
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomText:[Ljava/lang/String;

    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextCounter:I

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    const/high16 v3, -0x3e7c

    const v4, -0x3ee33333

    const/high16 v5, -0x3e10

    iget v9, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextAlpha:F

    move-object v1, p1

    move v7, v6

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->draw(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFF)V

    .line 247
    return-void

    .line 228
    :cond_1
    cmp-long v0, v10, v2

    if-ltz v0, :cond_2

    cmp-long v0, v10, v7

    if-gez v0, :cond_2

    .line 229
    iput v6, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextAlpha:F

    goto :goto_0

    .line 232
    :cond_2
    cmp-long v0, v10, v7

    if-ltz v0, :cond_3

    cmp-long v0, v10, v12

    if-gtz v0, :cond_3

    .line 233
    const-wide/16 v0, 0x1388

    sub-long v0, v10, v0

    sub-long/2addr v0, v2

    long-to-float v0, v0

    mul-float/2addr v0, v4

    sub-float v0, v6, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextAlpha:F

    goto :goto_0

    .line 236
    :cond_3
    cmp-long v0, v10, v12

    if-ltz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextAlpha:F

    .line 238
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextTimer:J

    .line 239
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextCounter:I

    .line 240
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextCounter:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 241
    const/4 v0, 0x1

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextCounter:I

    goto :goto_0
.end method

.method private drawUpdateFader(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .parameter "gl"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 384
    iget-wide v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->faderTimer:J

    invoke-static {v3, v4}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v1

    .line 385
    .local v1, elapsedTime:J
    const/high16 v0, 0x3f80

    .line 388
    .local v0, color:F
    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    if-ne v3, v7, :cond_4

    .line 389
    const-wide/16 v3, 0x3e8

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    .line 390
    const v3, 0x3a83126f

    long-to-float v4, v1

    mul-float/2addr v3, v4

    sub-float v3, v5, v3

    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->fader:F

    .line 408
    :cond_0
    :goto_0
    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    if-eq v3, v7, :cond_1

    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    if-lt v3, v8, :cond_2

    .line 409
    :cond_1
    const/16 v3, 0xbe2

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 410
    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 411
    const/16 v3, 0xde1

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 413
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 414
    const v3, -0x3fe66666

    invoke-interface {p1, v6, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 415
    const/high16 v3, 0x3fc0

    invoke-interface {p1, v3, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 416
    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->fader:F

    invoke-interface {p1, v0, v0, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 417
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v3, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 419
    :cond_2
    return-void

    .line 392
    :cond_3
    const/4 v3, 0x2

    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    goto :goto_0

    .line 396
    :cond_4
    iget v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    if-ne v3, v8, :cond_0

    .line 397
    const-wide/16 v3, 0xbb8

    cmp-long v3, v1, v3

    if-gtz v3, :cond_5

    .line 398
    const v3, 0x39aec33e

    long-to-float v4, v1

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->fader:F

    .line 399
    const/4 v0, 0x0

    goto :goto_0

    .line 402
    :cond_5
    const/4 v3, 0x4

    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    .line 403
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawUpdateRightStuff(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .parameter "gl"

    .prologue
    const/high16 v8, 0x3f40

    const/4 v7, 0x1

    const/16 v4, 0xde1

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 288
    const v0, 0x3e4ccccd

    .line 290
    .local v0, c:F
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsMenu:Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;

    iget v2, v2, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchState:I

    if-nez v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsMenu:Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;

    iget v2, v2, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->currentMenu:I

    int-to-float v2, v2

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAnim:F

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsMenu:Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;

    iget v2, v2, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchState:I

    if-lez v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsMenu:Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;

    iget v2, v2, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchColor:F

    const v3, 0x3e4ccccd

    mul-float v0, v2, v3

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsMenu:Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;

    iget v2, v2, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 298
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsMenu:Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;

    iget v2, v2, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchMenu:I

    int-to-float v2, v2

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAnim:F

    .line 300
    :cond_2
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAngle:F

    add-float/2addr v2, v5

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAngle:F

    .line 303
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAnim:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAnim:F

    const/high16 v3, 0x4110

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 306
    :cond_3
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 307
    const/16 v2, 0x302

    invoke-interface {p1, v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 308
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 309
    sget-object v2, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    aget v2, v2, v7

    invoke-interface {p1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 311
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 312
    const v2, 0x3f866666

    const/high16 v3, -0x3fc0

    invoke-interface {p1, v2, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 313
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAngle:F

    invoke-interface {p1, v2, v6, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 314
    invoke-interface {p1, v5, v5, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 315
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 317
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x7

    if-lt v1, v2, :cond_7

    .line 325
    .end local v1           #i:I
    :cond_4
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAnim:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAnim:F

    const/high16 v3, 0x4000

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAnim:F

    const/high16 v3, 0x4100

    cmpl-float v2, v2, v3

    if-nez v2, :cond_8

    .line 328
    :cond_5
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 329
    const/16 v2, 0x302

    invoke-interface {p1, v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 330
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 332
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 333
    const v2, 0x3f19999a

    const v3, 0x3fd9999a

    const/high16 v4, -0x3f20

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 334
    invoke-interface {p1, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 335
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsFlag:Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;

    const/high16 v3, 0x4000

    mul-float/2addr v3, v0

    invoke-virtual {v2, p1, v3}, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 358
    :cond_6
    :goto_1
    return-void

    .line 318
    .restart local v1       #i:I
    :cond_7
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAngle:F

    invoke-interface {p1, v2, v6, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 319
    invoke-interface {p1, v8, v8, v8}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 320
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .end local v1           #i:I
    :cond_8
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAnim:F

    const/high16 v3, 0x4040

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAnim:F

    const/high16 v3, 0x40e0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    .line 342
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 343
    const/16 v2, 0x302

    invoke-interface {p1, v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 344
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 345
    sget-object v2, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v3, 0x28

    aget v2, v2, v3

    invoke-interface {p1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 347
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 348
    const v2, 0x40147ae1

    const/high16 v3, 0x3f00

    const/high16 v4, -0x3f60

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 349
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAngle:F

    neg-float v2, v2

    invoke-interface {p1, v2, v6, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 350
    invoke-interface {p1, v5, v5, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 351
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 353
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 354
    const v2, 0x3f99999a

    const/high16 v3, -0x4100

    const/high16 v4, -0x3f60

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 355
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAngle:F

    invoke-interface {p1, v2, v6, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 356
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_1
.end method

.method private drawUpdateScroller(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/16 v7, 0xde1

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 363
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->scrollerOffsetTimer:J

    invoke-static {v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 365
    .local v0, elapsedTime:J
    long-to-float v2, v0

    const v3, 0x3951b717

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->scrollerOffset:F

    .line 366
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlaneScroller:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    const/high16 v3, 0x3e00

    iget v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->scrollerOffset:F

    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->shiftTextureUV(FFFF)V

    .line 369
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 370
    const/16 v2, 0x302

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 371
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 372
    sget-object v2, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v3, 0x14

    aget v2, v2, v3

    invoke-interface {p1, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 374
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 375
    const/high16 v2, 0x3f00

    invoke-interface {p1, v5, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 376
    const v2, 0x3ecccccd

    const v3, 0x3dcccccd

    const/high16 v4, -0x3f80

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 377
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlaneScroller:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 378
    const/high16 v2, 0x4000

    const v3, -0x41b33333

    invoke-interface {p1, v2, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 379
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlaneScroller:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 380
    return-void
.end method

.method private drawUpdateUpperText(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .parameter "gl"

    .prologue
    const/16 v10, 0xde1

    const v9, 0x3951b717

    const/4 v8, 0x0

    const-wide/16 v4, 0x1388

    const/high16 v7, 0x3f80

    .line 186
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->upperTextTimer:J

    invoke-static {v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 189
    .local v0, elapsedTime:J
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 190
    iput v8, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->upperTextScale:F

    .line 205
    :cond_0
    :goto_0
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 206
    const/16 v2, 0x302

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 207
    invoke-interface {p1, v10}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 208
    sget-object v2, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v3, 0x14

    aget v2, v2, v3

    invoke-interface {p1, v10, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 210
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 211
    const v2, 0x3f147ae1

    const v3, -0x40266666

    invoke-interface {p1, v8, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 212
    const v2, 0x3ecccccd

    invoke-interface {p1, v7, v7, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 213
    const v2, 0x3f866666

    invoke-interface {p1, v2, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 214
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlaneTitle:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 215
    iget v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->upperTextScale:F

    add-float/2addr v2, v7

    invoke-interface {p1, v2, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 216
    iget-object v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlaneTitle:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v2, p1}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 217
    return-void

    .line 193
    :cond_1
    cmp-long v2, v0, v4

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x1f40

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 194
    sub-long v2, v0, v4

    long-to-float v2, v2

    mul-float/2addr v2, v9

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->upperTextScale:F

    goto :goto_0

    .line 197
    :cond_2
    const-wide/16 v2, 0x1f40

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    const-wide/16 v2, 0x2af8

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 198
    const v2, 0x3f19999a

    sub-long v3, v0, v4

    const-wide/16 v5, 0xbb8

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float/2addr v3, v9

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->upperTextScale:F

    goto :goto_0

    .line 201
    :cond_3
    const-wide/16 v2, 0x2af8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 202
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->upperTextTimer:J

    goto :goto_0
.end method

.method private init(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v5, 0x3e00

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 81
    invoke-static {p1}, Lcom/garageapps/android/spacetracks/glSpec;->setPerspectiveProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 82
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->clearControls()V

    .line 84
    iput v6, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    .line 86
    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->fader:F

    .line 87
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->faderTimer:J

    .line 88
    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->upperTextScale:F

    .line 89
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->upperTextTimer:J

    .line 90
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomText:[Ljava/lang/String;

    const-string v1, "          SpaceTracks v1.0.4          "

    aput-object v1, v0, v7

    .line 91
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomText:[Ljava/lang/String;

    const-string v1, " Developed by:  Vladimir Ignjatijevic "

    aput-object v1, v0, v6

    .line 92
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomText:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Additional graphics by: Ognjen Popovic"

    aput-object v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomText:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, " (C) Copyright 2010-2012, Garage Apps "

    aput-object v2, v0, v1

    .line 94
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextTimer:J

    .line 95
    iput v6, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextCounter:I

    .line 96
    iput v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextAlpha:F

    .line 97
    const/high16 v0, -0x3f10

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextOverOffset:F

    .line 98
    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextOverAlpha:F

    .line 99
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->bottomTextOverTimer:J

    .line 100
    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAngle:F

    .line 101
    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->rightAnim:F

    .line 102
    iput v4, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->scrollerOffset:F

    .line 103
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->scrollerOffsetTimer:J

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->svirajTimer:J

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    .line 106
    iput-boolean v7, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->stani:Z

    .line 108
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlane:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    .line 109
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlaneTitle:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    .line 110
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlaneTitle:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, v3, v5}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateVertexXY(FF)V

    .line 111
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlaneTitle:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, v3, v5}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FF)V

    .line 112
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlaneScroller:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    .line 113
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlaneScroller:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, v3, v5}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateVertexXY(FF)V

    .line 114
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsPlaneScroller:Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;

    invoke-virtual {v0, v3, v5}, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->updateTextureUV(FF)V

    .line 115
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;

    const/16 v1, 0xa

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;-><init>(II)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsFlag:Lcom/garageapps/android/spacetracks/objects/ObjectsFlag;

    .line 116
    new-instance v0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/objects/ObjectsText;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsText:Lcom/garageapps/android/spacetracks/objects/ObjectsText;

    .line 117
    new-instance v0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;

    invoke-direct {v0}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsMenu:Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;

    .line 118
    return-void
.end method

.method private play()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const-wide/16 v9, 0x7760

    const-wide/16 v7, 0x6

    const/4 v6, 0x1

    .line 423
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->svirajTimer:J

    invoke-static {v2, v3}, Lcom/garageapps/android/spacetracks/glSpec;->timerGet(J)J

    move-result-wide v0

    .line 425
    .local v0, elapsedTime:J
    iget-boolean v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->stani:Z

    if-eqz v2, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->svirajTimer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 430
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->svirajTimer:J

    .line 431
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    .line 432
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v11}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto :goto_0

    .line 435
    :cond_2
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-wide/16 v2, 0xee2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    const-wide/16 v2, 0x1dc4

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 436
    const-wide/16 v2, 0x2

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    .line 437
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v11}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto :goto_0

    .line 440
    :cond_3
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-wide/16 v2, 0x1dc4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    const-wide/16 v2, 0x2ca6

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 441
    const-wide/16 v2, 0x3

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    .line 442
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v12}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto :goto_0

    .line 445
    :cond_4
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    const-wide/16 v2, 0x2ca6

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    const-wide/16 v2, 0x3b88

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 446
    const-wide/16 v2, 0x4

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    .line 447
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v2, v6, v12}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 450
    :cond_5
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    const-wide/16 v2, 0x3b88

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    const-wide/16 v2, 0x5974

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    .line 451
    const-wide/16 v2, 0x5

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    .line 452
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 455
    :cond_6
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    const-wide/16 v2, 0x5974

    cmp-long v2, v0, v2

    if-ltz v2, :cond_7

    cmp-long v2, v0, v9

    if-gez v2, :cond_7

    .line 456
    iput-wide v7, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    .line 457
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 460
    :cond_7
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_8

    cmp-long v2, v0, v9

    if-ltz v2, :cond_8

    const-wide/32 v2, 0x954c

    cmp-long v2, v0, v2

    if-gez v2, :cond_8

    .line 461
    const-wide/16 v2, 0x7

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    .line 462
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 465
    :cond_8
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    const-wide/16 v4, 0x7

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    const-wide/32 v2, 0x954c

    cmp-long v2, v0, v2

    if-ltz v2, :cond_9

    const-wide/32 v2, 0xb338

    cmp-long v2, v0, v2

    if-gez v2, :cond_9

    .line 466
    const-wide/16 v2, 0x8

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    .line 467
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 470
    :cond_9
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    const-wide/32 v2, 0xb338

    cmp-long v2, v0, v2

    if-ltz v2, :cond_a

    const-wide/32 v2, 0xd124

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    .line 471
    const-wide/16 v2, 0x9

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    .line 472
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v6, v3}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->play(II)V

    goto/16 :goto_0

    .line 475
    :cond_a
    iget-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    const-wide/16 v4, 0x9

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/32 v2, 0xd124

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 476
    iput-wide v7, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->sekvenca:J

    .line 477
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iput-wide v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->svirajTimer:J

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 123
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesTitle;->init(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 127
    :cond_0
    invoke-static {p1, v1, v1, v1, v2}, Lcom/garageapps/android/spacetracks/glSpec;->clearScreen(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 130
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesTitle;->drawUpdateBackground(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesTitle;->drawUpdateUpperText(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesTitle;->drawUpdateBottomText(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesTitle;->drawUpdateBottomOver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesTitle;->drawUpdateRightStuff(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 148
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsMenu:Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;

    invoke-virtual {v0, p1}, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/garageapps/android/spacetracks/states/StatesTitle;->drawUpdateFader(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 154
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    if-eq v0, v4, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/states/StatesTitle;->play()V

    .line 158
    :cond_1
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsMenu:Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;

    iget v0, v0, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchToGame:I

    if-lez v0, :cond_2

    .line 159
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    .line 160
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->objectsMenu:Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;

    iget v1, v1, Lcom/garageapps/android/spacetracks/states/StatesTitleMenu;->switchToGame:I

    iput v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->gameMode:I

    .line 161
    iput v2, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->fader:F

    .line 162
    invoke-static {}, Lcom/garageapps/android/spacetracks/glSpec;->timerStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->faderTimer:J

    .line 163
    iput-boolean v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->stani:Z

    .line 166
    :cond_2
    iget v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    if-ne v0, v4, :cond_3

    .line 167
    iput-boolean v3, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleStateFinished:Z

    .line 169
    :cond_3
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleStateFinished:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleState:I

    .line 71
    iput-boolean v0, p0, Lcom/garageapps/android/spacetracks/states/StatesTitle;->mTitleStateFinished:Z

    .line 72
    return-void
.end method
