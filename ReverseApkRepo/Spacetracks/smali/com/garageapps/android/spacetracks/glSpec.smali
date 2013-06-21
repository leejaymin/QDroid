.class public Lcom/garageapps/android/spacetracks/glSpec;
.super Ljava/lang/Object;
.source "glSpec.java"


# static fields
.field public static final MUSIC_GAME_SEQ_1:I = 0x7

.field public static final MUSIC_GAME_SEQ_2:I = 0x8

.field public static final MUSIC_GAME_SEQ_3:I = 0x9

.field public static final MUSIC_GAME_SEQ_4:I = 0xa

.field public static final MUSIC_GAME_SEQ_5:I = 0xb

.field public static final MUSIC_GAME_SEQ_6:I = 0xc

.field public static final MUSIC_INTRO:I = 0x1

.field public static final MUSIC_TITLE_SEQ_1:I = 0x2

.field public static final MUSIC_TITLE_SEQ_2:I = 0x3

.field public static final MUSIC_TITLE_SEQ_3:I = 0x4

.field public static final MUSIC_TITLE_SEQ_4:I = 0x5

.field public static final MUSIC_TITLE_SEQ_5:I = 0x6

.field public static final SOUND_BALL:I = 0xf

.field public static final SOUND_COUNTDOWN_321:I = 0x10

.field public static final SOUND_COUNTDOWN_GO:I = 0x11

.field public static final SOUND_GAME_MESSAGE:I = 0x12

.field public static final SOUND_GAME_PICKUP_SCORE:I = 0x13

.field public static final SOUND_GAME_PICKUP_SHAKE:I = 0x14

.field public static final SOUND_GAME_PICKUP_SPEEDUP:I = 0x15

.field public static final SOUND_GAME_PICKUP_TIME:I = 0x16

.field public static final SOUND_MENU_CLICK:I = 0xd

.field public static final SOUND_MENU_MOVE:I = 0xe

.field public static final TEXTURE_BACKGROUND_GAME_HUD:I = 0xd

.field public static final TEXTURE_BACKGROUND_GAME_N1:I = 0xe

.field public static final TEXTURE_BACKGROUND_INTRO:I = 0xa

.field public static final TEXTURE_BACKGROUND_MENU:I = 0xc

.field public static final TEXTURE_BACKGROUND_TITLE:I = 0xb

.field public static final TEXTURE_CONTROL_BUTTON_H_OFF:I = 0x1e

.field public static final TEXTURE_CONTROL_BUTTON_H_ON:I = 0x1f

.field public static final TEXTURE_CONTROL_BUTTON_V_OFF:I = 0x20

.field public static final TEXTURE_CONTROL_BUTTON_V_ON:I = 0x21

.field public static final TEXTURE_FONT:I = 0x0

.field public static final TEXTURE_GRADIENT_CHECKERED:I = 0x1

.field public static final TEXTURE_GRADIENT_HORIZONTAL:I = 0x2

.field public static final TEXTURE_OBJ_BONUS:I = 0x29

.field public static final TEXTURE_OBJ_FLARE_1:I = 0x2a

.field public static final TEXTURE_OBJ_FLARE_2:I = 0x2b

.field public static final TEXTURE_OBJ_FLARE_3:I = 0x2c

.field public static final TEXTURE_OBJ_FLARE_4:I = 0x2d

.field public static final TEXTURE_OBJ_GEAR:I = 0x28

.field public static final TEXTURE_TEXT_DE_TITLE_INGAME:I = 0x16

.field public static final TEXTURE_TEXT_EN_TITLE_INGAME:I = 0x14

.field public static final TEXTURE_TEXT_ES_TITLE_INGAME:I = 0x19

.field public static final TEXTURE_TEXT_FR_TITLE_INGAME:I = 0x17

.field public static final TEXTURE_TEXT_IT_TITLE_INGAME:I = 0x18

.field public static final TEXTURE_TEXT_SR_TITLE_INGAME:I = 0x15

.field public static final TEXTURE_TILE_MAP_1:I = 0x2e

.field public static final TEXTURE_TILE_MAP_2:I = 0x2f

.field public static final TYPE_MUSIC:I = 0x1

.field public static final TYPE_SOUND:I = 0x2

.field public static _CTX:Landroid/content/Context;

.field public static fpsFrames:J

.field public static fpsReal:J

.field public static fpsTimer:J

.field public static textureBuffer:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x40

    new-array v0, v0, [I

    sput-object v0, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 320
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method public static LogF(Ljava/lang/String;F)V
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 330
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method public static LogI(Ljava/lang/String;I)V
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 325
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method public static allocateFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "size"

    .prologue
    .line 83
    mul-int/lit8 v2, p0, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 86
    .local v1, fb:Ljava/nio/FloatBuffer;
    return-object v1
.end method

.method public static clearControls()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v2, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentKey:I

    .line 175
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v2, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchEvent:I

    .line 176
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchX:F

    .line 177
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchY:F

    .line 178
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v2, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackEvent:I

    .line 179
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackX:F

    .line 180
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iput v1, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTrackY:F

    .line 181
    return-void
.end method

.method public static clearScreen(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 1
    .parameter "gl"
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 153
    invoke-interface {p0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 154
    const/16 v0, 0x4100

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 155
    return-void
.end method

.method public static drawFps(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .parameter "gl"

    .prologue
    const/high16 v5, 0x3f80

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 257
    .local v11, currentTime:J
    sget-wide v2, Lcom/garageapps/android/spacetracks/glSpec;->fpsReal:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, str:Ljava/lang/String;
    sget-wide v2, Lcom/garageapps/android/spacetracks/glSpec;->fpsTimer:J

    sub-long v2, v11, v2

    const-wide/16 v6, 0x3e8

    cmp-long v0, v2, v6

    if-gez v0, :cond_0

    .line 260
    sget-wide v2, Lcom/garageapps/android/spacetracks/glSpec;->fpsFrames:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    sput-wide v2, Lcom/garageapps/android/spacetracks/glSpec;->fpsFrames:J

    .line 268
    :goto_0
    const/high16 v2, -0x3e70

    const/high16 v3, 0x4128

    const/high16 v4, -0x3e10

    move-object v0, p0

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    move v10, v5

    invoke-static/range {v0 .. v10}, Lcom/garageapps/android/spacetracks/glSpec;->drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFFFF)V

    .line 269
    return-void

    .line 262
    :cond_0
    sget-wide v2, Lcom/garageapps/android/spacetracks/glSpec;->fpsFrames:J

    sput-wide v2, Lcom/garageapps/android/spacetracks/glSpec;->fpsReal:J

    .line 263
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/garageapps/android/spacetracks/glSpec;->fpsFrames:J

    .line 264
    sput-wide v11, Lcom/garageapps/android/spacetracks/glSpec;->fpsTimer:J

    goto :goto_0
.end method

.method public static drawText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFFFF)V
    .locals 20
    .parameter "gl"
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "xscale"
    .parameter "yscale"
    .parameter "rc"
    .parameter "gc"
    .parameter "bc"
    .parameter "a"

    .prologue
    .line 190
    const/high16 v14, 0x3f00

    .line 191
    .local v14, vunit:F
    const v9, 0x3f666666

    .line 192
    .local v9, space:F
    const v7, 0x3da4dd2f

    .line 193
    .local v7, charw:F
    const v6, 0x3dee978d

    .line 195
    .local v6, charh:F
    const/16 v17, 0xc

    move/from16 v0, v17

    new-array v13, v0, [F

    const/16 v17, 0x0

    .line 196
    const/high16 v18, -0x4100

    mul-float v18, v18, p5

    aput v18, v13, v17

    const/16 v17, 0x1

    const/high16 v18, 0x3f00

    mul-float v18, v18, p6

    aput v18, v13, v17

    const/16 v17, 0x2

    const/16 v18, 0x0

    aput v18, v13, v17

    const/16 v17, 0x3

    .line 197
    const/high16 v18, 0x3f00

    mul-float v18, v18, p5

    aput v18, v13, v17

    const/16 v17, 0x4

    const/high16 v18, 0x3f00

    mul-float v18, v18, p6

    aput v18, v13, v17

    const/16 v17, 0x5

    const/16 v18, 0x0

    aput v18, v13, v17

    const/16 v17, 0x6

    .line 198
    const/high16 v18, -0x4100

    mul-float v18, v18, p5

    aput v18, v13, v17

    const/16 v17, 0x7

    const/high16 v18, -0x4100

    mul-float v18, v18, p6

    aput v18, v13, v17

    const/16 v17, 0x8

    const/16 v18, 0x0

    aput v18, v13, v17

    const/16 v17, 0x9

    .line 199
    const/high16 v18, 0x3f00

    mul-float v18, v18, p5

    aput v18, v13, v17

    const/16 v17, 0xa

    const/high16 v18, -0x4100

    mul-float v18, v18, p6

    aput v18, v13, v17

    const/16 v17, 0xb

    const/16 v18, 0x0

    aput v18, v13, v17

    .line 201
    .local v13, vertex:[F
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v11, v0, [F

    .line 203
    .local v11, texel:[F
    invoke-static {v13}, Lcom/garageapps/android/spacetracks/glSpec;->initFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v12

    .line 204
    .local v12, vb:Ljava/nio/FloatBuffer;
    invoke-static {v11}, Lcom/garageapps/android/spacetracks/glSpec;->initFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 206
    .local v10, tb:Ljava/nio/FloatBuffer;
    invoke-interface/range {p0 .. p0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 207
    invoke-interface/range {p0 .. p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 208
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 209
    const/16 v17, 0xb44

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 210
    const/16 v17, 0xb71

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 211
    const/16 v17, 0xbe2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 212
    const/16 v17, 0x302

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 213
    const/16 v17, 0xde1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 214
    const/16 v17, 0xde1

    sget-object v18, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 215
    const/16 v17, 0x3

    const/16 v18, 0x1406

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3, v12}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 216
    const v17, 0x8074

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 217
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    move/from16 v4, p10

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 218
    const v17, 0x8076

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 219
    const/16 v17, 0x2

    const/16 v18, 0x1406

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 220
    const v17, 0x8078

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 222
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_0

    .line 243
    invoke-interface/range {p0 .. p0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 244
    return-void

    .line 224
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 225
    .local v5, ch:C
    add-int/lit8 v17, v5, -0x20

    rem-int/lit8 v17, v17, 0xc

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3da4dd2f

    mul-float v15, v17, v18

    .line 226
    .local v15, xoff:F
    add-int/lit8 v17, v5, -0x20

    div-int/lit8 v17, v17, 0xc

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3dee978d

    mul-float v16, v17, v18

    .line 228
    .local v16, yoff:F
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 229
    invoke-virtual {v10, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 230
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 231
    const v17, 0x3da4dd2f

    add-float v17, v17, v15

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 232
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 233
    invoke-virtual {v10, v15}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 234
    const v17, 0x3dee978d

    add-float v17, v17, v16

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 235
    const v17, 0x3da4dd2f

    add-float v17, v17, v15

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 236
    const v17, 0x3dee978d

    add-float v17, v17, v16

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 237
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 239
    const/16 v17, 0x5

    const/16 v18, 0x0

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 240
    const v17, 0x3f666666

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 222
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method public static inBounds(FFFF)Z
    .locals 1
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 163
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchX:F

    cmpl-float v0, v0, p0

    if-ltz v0, :cond_0

    .line 164
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchX:F

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    .line 165
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchY:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    .line 166
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->currentTouchY:F

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "array"

    .prologue
    .line 91
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 94
    .local v1, fb:Ljava/nio/FloatBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    return-object v1
.end method

.method public static initTexture(Ljavax/microedition/khronos/opengles/GL10;I)I
    .locals 9
    .parameter "gl"
    .parameter "resource"

    .prologue
    const/4 v6, 0x1

    const/16 v8, 0xde1

    const/4 v7, 0x0

    .line 130
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 131
    .local v2, sBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 132
    sget-object v5, Lcom/garageapps/android/spacetracks/glSpec;->_CTX:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 133
    .local v1, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    invoke-static {v1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-array v3, v6, [I

    .line 136
    .local v3, tmp_tex:[I
    invoke-interface {p0, v6, v3, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 137
    aget v4, v3, v7

    .line 139
    .local v4, tx:I
    invoke-interface {p0, v8, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 140
    const/16 v5, 0x2801

    const/high16 v6, 0x4618

    invoke-interface {p0, v8, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 141
    const/16 v5, 0x2800

    const v6, 0x46180400

    invoke-interface {p0, v8, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 142
    invoke-static {v8, v7, v0, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 144
    return v4
.end method

.method public static setOrtho2dProjection(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v4, 0x0

    .line 105
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v1, v2, Lcom/garageapps/android/spacetracks/mainApplication;->screenWidth:I

    .line 106
    .local v1, w:I
    sget-object v2, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v2, v2, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget v0, v2, Lcom/garageapps/android/spacetracks/mainApplication;->screenHeight:I

    .line 108
    .local v0, h:I
    const/16 v2, 0x1701

    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 109
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 110
    int-to-float v2, v1

    int-to-float v3, v0

    invoke-static {p0, v4, v2, v3, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 111
    const/16 v2, 0x1700

    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 112
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 113
    return-void
.end method

.method public static setPerspectiveProjection(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 117
    const/16 v0, 0x1701

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 118
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 119
    const/high16 v0, 0x4234

    const/high16 v1, 0x3fc0

    const v2, 0x3dcccccd

    const/high16 v3, 0x42c8

    invoke-static {p0, v0, v1, v2, v3}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 120
    const/16 v0, 0x1700

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 121
    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 122
    return-void
.end method

.method public static timerGet(J)J
    .locals 2
    .parameter "start"

    .prologue
    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static timerStart()J
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static timerToString(JZ)Ljava/lang/String;
    .locals 11
    .parameter "time"
    .parameter "blink"

    .prologue
    const-wide/16 v9, 0x3e8

    .line 287
    const-wide/32 v5, 0x927c0

    cmp-long v5, p0, v5

    if-ltz v5, :cond_0

    .line 288
    const-wide/16 p0, 0x0

    .line 290
    :cond_0
    div-long v5, p0, v9

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    long-to-int v1, v5

    .line 291
    .local v1, elapsedMin:I
    div-long v5, p0, v9

    long-to-int v5, v5

    mul-int/lit8 v6, v1, 0x3c

    sub-int v2, v5, v6

    .line 292
    .local v2, elapsedSec:I
    mul-int/lit8 v5, v1, 0x3c

    add-int/2addr v5, v2

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    sub-long v5, p0, v5

    long-to-int v5, v5

    div-int/lit8 v0, v5, 0x64

    .line 297
    .local v0, elapsedMil:I
    const/16 v5, 0xa

    if-ge v2, v5, :cond_1

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, strSec:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_3

    .line 303
    if-ltz v0, :cond_2

    const/4 v5, 0x5

    if-ge v0, v5, :cond_2

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, str:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 300
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #strSec:Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #strSec:Ljava/lang/String;
    goto :goto_0

    .line 306
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #str:Ljava/lang/String;
    goto :goto_1

    .line 309
    .end local v3           #str:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #str:Ljava/lang/String;
    goto :goto_1
.end method
