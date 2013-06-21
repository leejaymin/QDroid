.class public Lorg/tf/stage/Stage;
.super Ljava/lang/Object;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/stage/Stage$Callback;,
        Lorg/tf/stage/Stage$FinalScore;,
        Lorg/tf/stage/Stage$LocalTimer;
    }
.end annotation


# static fields
.field private static final ACTIVE_KEY_DIM:F = 0.8f

.field private static final ACTIVE_KEY_DY:I = -0x2

.field private static final BPM_CHANGE_SPEED:F = 0.3f

.field private static final CHORD_BUFFER_TIME:I = 0xfa

.field private static final CHORD_MARGIN:F = 1.0f

.field private static final COOLDOWN_DURATION:I = 0x3e8

.field private static final COUNTDOWN_STEPS:I = 0x6

.field private static final HITS_HEIGHT:F = 30.0f

.field private static final KEYS_HEIGHT:I = 0x3a

.field private static final KEY_HEIGHT:I = 0x3c

.field private static final MIDDLE_KEY_FRACTION:F = 0.4f

.field private static final SCORE_HEIGHT:F = 40.0f

.field private static final SCORE_MULTIPLIER_SHOWTIME:I = 0x2bc

.field private static final STATE_DESTROYED:I = 0x3

.field private static final STATE_STARTED:I = 0x2

.field private static final STATE_STOPPED:I = 0x1

.field private static final STREAM_TAG:I = 0x53544147

.field private static final STRINGS_012:I

.field private static final STRINGS_02:I

.field private static m_lastPickedKeyStrings:I

.field private static m_prevLastPickedKeyStrings:I


# instance fields
.field private m_averageFPS:I

.field private m_bpm:F

.field private m_bpmChangePosition:I

.field private m_bufferChordStrings:I

.field private m_callback:Lorg/tf/stage/Stage$Callback;

.field private m_chordBeginPosition:I

.field private m_chordEndPosition:I

.field private m_cooldownTimer:Lorg/tf/stage/Stage$LocalTimer;

.field private m_countdownFont:Lorg/tf/gl/sprite/SpriteFont;

.field private m_countdownText:Lorg/tf/gl/sprite/SpriteRegion;

.field private m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

.field private m_currentStreak:I

.field private m_effects:Lorg/tf/stage/StageEffects;

.field private m_fpsFont:Lorg/tf/gl/sprite/SpriteFont;

.field private m_guitar:Lorg/tf/stage/Guitar;

.field private m_initialBPM:F

.field private m_keyDrawable:Landroid/graphics/drawable/Drawable;

.field private m_keySprite:Lorg/tf/gl/sprite/SpriteRegion;

.field private m_keyStrings:I

.field private m_keyTapzoneWidth:F

.field private m_keysWidth:F

.field private m_lastTime:F

.field private m_leafKeySprite:Lorg/tf/gl/sprite/SpriteRegion;

.field private m_localTimeAtPause:I

.field private m_localTimeBase:J

.field private m_longestStreak:I

.field private m_noteBuffer:[Lorg/tf/song/NoteEvent;

.field private m_pickedKeyStrings:I

.field private m_pickedNoteCount:I

.field private m_pickedNotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tf/song/Note;",
            ">;"
        }
    .end annotation
.end field

.field private m_player:Lorg/tf/stage/SongPlayer;

.field private m_position:I

.field private m_readiness:F

.field private m_renderingStopped:Z

.field private m_resourcesLoaded:Z

.field private m_score:I

.field private m_scoreCenter:F

.field private m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

.field private m_scoreMultiplier2x:Lorg/tf/gl/sprite/Sprite;

.field private m_scoreMultiplier3x:Lorg/tf/gl/sprite/Sprite;

.field private m_scoreMultiplier4x:Lorg/tf/gl/sprite/Sprite;

.field private m_scoreMultiplierTimer:Lorg/tf/stage/Stage$LocalTimer;

.field private m_song:Lorg/tf/song/Song;

.field private m_soundEffects:Lorg/tf/stage/StageSoundEffects;

.field private m_state:I

.field private m_stringBuilder:Lorg/tf/util/CharString;

.field private m_targetBPM:F

.field private m_viewport:Lorg/tf/gl/GLRect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1270
    sget v0, Lorg/tf/stage/Guitar;->STRING_0:I

    sget v1, Lorg/tf/stage/Guitar;->STRING_2:I

    or-int/2addr v0, v1

    sput v0, Lorg/tf/stage/Stage;->STRINGS_02:I

    .line 1271
    sget v0, Lorg/tf/stage/Guitar;->STRING_0:I

    sget v1, Lorg/tf/stage/Guitar;->STRING_1:I

    or-int/2addr v0, v1

    sget v1, Lorg/tf/stage/Guitar;->STRING_2:I

    or-int/2addr v0, v1

    sput v0, Lorg/tf/stage/Stage;->STRINGS_012:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/tf/song/Song;)V
    .locals 3
    .parameter "context"
    .parameter "song"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/song/InvalidSongException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    new-instance v0, Lorg/tf/stage/Stage$LocalTimer;

    invoke-direct {v0, p0}, Lorg/tf/stage/Stage$LocalTimer;-><init>(Lorg/tf/stage/Stage;)V

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    .line 560
    new-instance v0, Lorg/tf/stage/Stage$LocalTimer;

    invoke-direct {v0, p0}, Lorg/tf/stage/Stage$LocalTimer;-><init>(Lorg/tf/stage/Stage;)V

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_cooldownTimer:Lorg/tf/stage/Stage$LocalTimer;

    .line 740
    new-instance v0, Lorg/tf/stage/Stage$LocalTimer;

    invoke-direct {v0, p0}, Lorg/tf/stage/Stage$LocalTimer;-><init>(Lorg/tf/stage/Stage;)V

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_scoreMultiplierTimer:Lorg/tf/stage/Stage$LocalTimer;

    .line 1264
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/tf/song/NoteEvent;

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_noteBuffer:[Lorg/tf/song/NoteEvent;

    .line 1410
    new-instance v0, Lorg/tf/util/CharString;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/tf/util/CharString;-><init>(I)V

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_stringBuilder:Lorg/tf/util/CharString;

    .line 58
    iput-object p2, p0, Lorg/tf/stage/Stage;->m_song:Lorg/tf/song/Song;

    .line 59
    invoke-direct {p0}, Lorg/tf/stage/Stage;->initializeBPM()V

    .line 61
    new-instance v0, Lorg/tf/stage/Guitar;

    invoke-direct {v0, p2}, Lorg/tf/stage/Guitar;-><init>(Lorg/tf/song/Song;)V

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_guitar:Lorg/tf/stage/Guitar;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_pickedNotes:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lorg/tf/stage/StageSoundEffects;

    invoke-direct {v0}, Lorg/tf/stage/StageSoundEffects;-><init>()V

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_soundEffects:Lorg/tf/stage/StageSoundEffects;

    .line 64
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_soundEffects:Lorg/tf/stage/StageSoundEffects;

    invoke-virtual {v0, p1}, Lorg/tf/stage/StageSoundEffects;->load(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lorg/tf/stage/SongPlayer;

    invoke-direct {v0}, Lorg/tf/stage/SongPlayer;-><init>()V

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    .line 67
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    iget-object v1, p0, Lorg/tf/stage/Stage;->m_song:Lorg/tf/song/Song;

    invoke-virtual {v1}, Lorg/tf/song/Song;->getConfig()Lorg/tf/song/SongConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tf/stage/SongPlayer;->open(Lorg/tf/song/SongConfig;)V

    .line 68
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v0, v2}, Lorg/tf/stage/SongPlayer;->mute(Z)V

    .line 70
    iput v2, p0, Lorg/tf/stage/Stage;->m_state:I

    .line 71
    invoke-direct {p0}, Lorg/tf/stage/Stage;->resetPlayingState()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tf/stage/Stage;->m_resourcesLoaded:Z

    .line 73
    iput-boolean v2, p0, Lorg/tf/stage/Stage;->m_renderingStopped:Z

    .line 74
    return-void
.end method

.method static synthetic access$0(Lorg/tf/stage/Stage;)I
    .locals 1
    .parameter

    .prologue
    .line 1290
    invoke-direct {p0}, Lorg/tf/stage/Stage;->getLocalTime()I

    move-result v0

    return v0
.end method

.method private advance()V
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Lorg/tf/stage/Stage;->m_state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-direct {p0}, Lorg/tf/stage/Stage;->finishCountdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-direct {p0}, Lorg/tf/stage/Stage;->startPlaying()V

    .line 328
    :cond_1
    invoke-direct {p0}, Lorg/tf/stage/Stage;->finishCooldown()V

    .line 329
    invoke-direct {p0}, Lorg/tf/stage/Stage;->changeBPM()V

    .line 330
    invoke-direct {p0}, Lorg/tf/stage/Stage;->setPosition()V

    .line 331
    invoke-direct {p0}, Lorg/tf/stage/Stage;->setReadiness()V

    .line 332
    invoke-direct {p0}, Lorg/tf/stage/Stage;->updateChordBufferNotes()V

    .line 333
    invoke-direct {p0}, Lorg/tf/stage/Stage;->pickNotes()V

    goto :goto_0
.end method

.method private beginRender(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x3f80

    .line 408
    .line 409
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v0, v0, Lorg/tf/gl/GLRect;->x:F

    iget-object v2, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v2, v2, Lorg/tf/gl/GLRect;->y:F

    .line 410
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v3, v3, Lorg/tf/gl/GLRect;->width:F

    iget-object v4, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v4, v4, Lorg/tf/gl/GLRect;->height:F

    .line 407
    invoke-static {p1, v0, v2, v3, v4}, Lorg/tf/gl/GLHelpers;->setViewport(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 412
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 413
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 415
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v2, v0, Lorg/tf/gl/GLRect;->width:F

    .line 416
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v4, v0, Lorg/tf/gl/GLRect;->height:F

    move-object v0, p1

    move v3, v1

    move v5, v1

    .line 414
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 418
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 419
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 421
    invoke-interface {p1, v6, v6, v6, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 422
    return-void
.end method

.method private changeBPM()V
    .locals 7

    .prologue
    .line 984
    iget v4, p0, Lorg/tf/stage/Stage;->m_bpm:F

    iget v5, p0, Lorg/tf/stage/Stage;->m_targetBPM:F

    iget v6, p0, Lorg/tf/stage/Stage;->m_bpm:F

    sub-float/2addr v5, v6

    const v6, 0x3e99999a

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/tf/stage/Stage;->m_bpm:F

    .line 985
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_song:Lorg/tf/song/Song;

    invoke-virtual {v4}, Lorg/tf/song/Song;->getTempoEvents()Lorg/tf/song/EventList;

    move-result-object v3

    .line 986
    .local v3, tempos:Lorg/tf/song/EventList;,"Lorg/tf/song/EventList<Lorg/tf/song/TempoEvent;>;"
    iget v4, p0, Lorg/tf/stage/Stage;->m_position:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/tf/song/EventList;->lowerBound(F)I

    move-result v1

    .line 987
    .local v1, index:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    invoke-virtual {v3, v1}, Lorg/tf/song/EventList;->get(I)Lorg/tf/song/Event;

    move-result-object v2

    check-cast v2, Lorg/tf/song/TempoEvent;

    .line 991
    .local v2, tempo:Lorg/tf/song/TempoEvent;
    const v4, 0x476a6000

    iget v5, p0, Lorg/tf/stage/Stage;->m_bpm:F

    div-float v0, v4, v5

    .line 992
    .local v0, beatPeriod:F
    iget v4, p0, Lorg/tf/stage/Stage;->m_position:I

    int-to-float v4, v4

    invoke-virtual {v2}, Lorg/tf/song/TempoEvent;->getTime()F

    move-result v5

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v0

    if-gez v4, :cond_0

    .line 993
    invoke-virtual {v2}, Lorg/tf/song/TempoEvent;->getTime()F

    move-result v4

    iget v5, p0, Lorg/tf/stage/Stage;->m_bpmChangePosition:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 995
    iget v4, p0, Lorg/tf/stage/Stage;->m_targetBPM:F

    iput v4, p0, Lorg/tf/stage/Stage;->m_bpm:F

    .line 996
    invoke-virtual {v2}, Lorg/tf/song/TempoEvent;->getBPM()F

    move-result v4

    iput v4, p0, Lorg/tf/stage/Stage;->m_targetBPM:F

    .line 997
    iget v4, p0, Lorg/tf/stage/Stage;->m_position:I

    iput v4, p0, Lorg/tf/stage/Stage;->m_bpmChangePosition:I

    .line 999
    iget v4, p0, Lorg/tf/stage/Stage;->m_targetBPM:F

    iput v4, p0, Lorg/tf/stage/Stage;->m_bpm:F

    goto :goto_0
.end method

.method private checkNotDestroyed()V
    .locals 2

    .prologue
    .line 1372
    iget v0, p0, Lorg/tf/stage/Stage;->m_state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1373
    invoke-direct {p0}, Lorg/tf/stage/Stage;->invalidStateException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1375
    :cond_0
    return-void
.end method

.method private static checkStrings(II)I
    .locals 5
    .parameter "chordStrings"
    .parameter "activeStrings"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1220
    sget v0, Lorg/tf/stage/Stage;->STRINGS_012:I

    if-eq p0, v0, :cond_0

    sget v0, Lorg/tf/stage/Stage;->STRINGS_02:I

    if-ne p0, v0, :cond_4

    :cond_0
    invoke-static {}, Lorg/tf/GameActivity;->getNumTouches()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 1221
    sget v0, Lorg/tf/stage/Stage;->STRINGS_02:I

    and-int/2addr v0, p1

    sget v1, Lorg/tf/stage/Stage;->STRINGS_02:I

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 1259
    :goto_0
    return v0

    .line 1225
    :cond_1
    sget v0, Lorg/tf/stage/Stage;->STRINGS_02:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    .line 1227
    sget v0, Lorg/tf/stage/Stage;->STRINGS_02:I

    and-int/2addr v0, p1

    sget v1, Lorg/tf/stage/Stage;->STRINGS_02:I

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 1229
    goto :goto_0

    :cond_2
    move v0, v4

    .line 1233
    goto :goto_0

    :cond_3
    move v0, v3

    .line 1238
    goto :goto_0

    .line 1240
    :cond_4
    sget v0, Lorg/tf/stage/Stage;->STRINGS_012:I

    if-eq p0, v0, :cond_5

    sget v0, Lorg/tf/stage/Stage;->STRINGS_02:I

    if-ne p0, v0, :cond_7

    .line 1241
    :cond_5
    sget v0, Lorg/tf/stage/Guitar;->STRING_1:I

    if-ne p1, v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0

    .line 1243
    :cond_7
    and-int v0, p0, p1

    if-ne v0, p0, :cond_8

    move v0, v2

    .line 1244
    goto :goto_0

    .line 1246
    :cond_8
    and-int v0, p0, p1

    if-eqz v0, :cond_a

    .line 1248
    and-int v0, p0, p1

    if-ne v0, p0, :cond_9

    move v0, v2

    .line 1250
    goto :goto_0

    :cond_9
    move v0, v4

    .line 1254
    goto :goto_0

    :cond_a
    move v0, v3

    .line 1259
    goto :goto_0
.end method

.method private createKeySprites(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/16 v6, 0x3c

    .line 914
    iget v4, p0, Lorg/tf/stage/Stage;->m_keysWidth:F

    const v5, 0x40733332

    div-float v3, v4, v5

    .line 918
    .local v3, tapzoneWidth:F
    const v4, 0x3ecccccd

    mul-float v2, v3, v4

    .line 919
    .local v2, middleTapzoneWidth:F
    iput v3, p0, Lorg/tf/stage/Stage;->m_keyTapzoneWidth:F

    .line 921
    const/high16 v4, 0x4000

    div-float v4, v2, v4

    add-float v1, v3, v4

    .line 922
    .local v1, leafKeyWidth:F
    add-float v0, v3, v2

    .line 925
    .local v0, keyWidth:F
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_keyDrawable:Landroid/graphics/drawable/Drawable;

    .line 926
    invoke-static {v0}, Lorg/tf/util/MathHelpers;->round(F)I

    move-result v5

    .line 923
    invoke-static {p1, v4, v5, v6}, Lorg/tf/gl/sprite/SpriteUtil;->createSprite(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;II)Lorg/tf/gl/sprite/SpriteRegion;

    move-result-object v4

    iput-object v4, p0, Lorg/tf/stage/Stage;->m_keySprite:Lorg/tf/gl/sprite/SpriteRegion;

    .line 929
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_keyDrawable:Landroid/graphics/drawable/Drawable;

    .line 930
    invoke-static {v1}, Lorg/tf/util/MathHelpers;->round(F)I

    move-result v5

    .line 927
    invoke-static {p1, v4, v5, v6}, Lorg/tf/gl/sprite/SpriteUtil;->createSprite(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;II)Lorg/tf/gl/sprite/SpriteRegion;

    move-result-object v4

    iput-object v4, p0, Lorg/tf/stage/Stage;->m_leafKeySprite:Lorg/tf/gl/sprite/SpriteRegion;

    .line 931
    return-void
.end method

.method private endRender(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 425
    return-void
.end method

.method private finish(Ljava/lang/Exception;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 310
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/tf/stage/Stage;->stop(Z)V

    .line 311
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_callback:Lorg/tf/stage/Stage$Callback;

    if-eqz v1, :cond_0

    .line 312
    new-instance v0, Lorg/tf/stage/Stage$FinalScore;

    invoke-direct {v0}, Lorg/tf/stage/Stage$FinalScore;-><init>()V

    .line 313
    .local v0, info:Lorg/tf/stage/Stage$FinalScore;
    iput-object p1, v0, Lorg/tf/stage/Stage$FinalScore;->error:Ljava/lang/Exception;

    .line 314
    iget v1, p0, Lorg/tf/stage/Stage;->m_score:I

    iput v1, v0, Lorg/tf/stage/Stage$FinalScore;->score:I

    .line 315
    iget v1, p0, Lorg/tf/stage/Stage;->m_longestStreak:I

    iput v1, v0, Lorg/tf/stage/Stage$FinalScore;->longestStreak:I

    .line 316
    iget v1, p0, Lorg/tf/stage/Stage;->m_pickedNoteCount:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/tf/stage/Stage;->m_song:Lorg/tf/song/Song;

    invoke-virtual {v2}, Lorg/tf/song/Song;->getTotalNoteEventCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lorg/tf/stage/Stage$FinalScore;->accuracy:F

    .line 317
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_callback:Lorg/tf/stage/Stage$Callback;

    invoke-interface {v1, v0}, Lorg/tf/stage/Stage$Callback;->onFinished(Lorg/tf/stage/Stage$FinalScore;)V

    .line 319
    .end local v0           #info:Lorg/tf/stage/Stage$FinalScore;
    :cond_0
    return-void
.end method

.method private finishCooldown()V
    .locals 3

    .prologue
    .line 539
    iget v1, p0, Lorg/tf/stage/Stage;->m_state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v1}, Lorg/tf/stage/SongPlayer;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_cooldownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v1}, Lorg/tf/stage/Stage$LocalTimer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_cooldownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v1}, Lorg/tf/stage/Stage$LocalTimer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_cooldownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v1}, Lorg/tf/stage/Stage$LocalTimer;->stop()V

    .line 548
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/tf/stage/Stage;->finish(Ljava/lang/Exception;)V

    goto :goto_0

    .line 551
    :cond_2
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v1}, Lorg/tf/stage/SongPlayer;->getFinishError()Ljava/lang/Exception;

    move-result-object v0

    .line 552
    .local v0, error:Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 553
    invoke-direct {p0, v0}, Lorg/tf/stage/Stage;->finish(Ljava/lang/Exception;)V

    goto :goto_0

    .line 555
    :cond_3
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_cooldownTimer:Lorg/tf/stage/Stage$LocalTimer;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lorg/tf/stage/Stage$LocalTimer;->start(I)V

    goto :goto_0
.end method

.method private finishCountdown()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v0}, Lorg/tf/stage/Stage$LocalTimer;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v0}, Lorg/tf/stage/Stage$LocalTimer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    :cond_0
    const/4 v0, 0x0

    .line 477
    :goto_0
    return v0

    .line 476
    :cond_1
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v0}, Lorg/tf/stage/Stage$LocalTimer;->stop()V

    .line 477
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static formatState(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 1384
    packed-switch p0, :pswitch_data_0

    .line 1389
    const-string v0, "<INVALID STATE>"

    :goto_0
    return-object v0

    .line 1385
    :pswitch_0
    const-string v0, "DESTROYED"

    goto :goto_0

    .line 1386
    :pswitch_1
    const-string v0, "STOPPED"

    goto :goto_0

    .line 1387
    :pswitch_2
    const-string v0, "STARTED"

    goto :goto_0

    .line 1384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getBonusScore()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 718
    iget v1, p0, Lorg/tf/stage/Stage;->m_position:I

    iget v2, p0, Lorg/tf/stage/Stage;->m_chordEndPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 719
    iget v2, p0, Lorg/tf/stage/Stage;->m_chordBeginPosition:I

    .line 718
    sub-int v0, v1, v2

    .line 720
    .local v0, length:I
    if-nez v0, :cond_0

    move v1, v4

    .line 726
    :goto_0
    return v1

    .line 723
    :cond_0
    int-to-float v1, v0

    const v2, 0x476a6000

    iget v3, p0, Lorg/tf/stage/Stage;->m_bpm:F

    div-float/2addr v2, v3

    const/high16 v3, 0x4080

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 724
    div-int/lit8 v1, v0, 0xa

    goto :goto_0

    :cond_1
    move v1, v4

    .line 726
    goto :goto_0
.end method

.method private getLocalTime()I
    .locals 2

    .prologue
    .line 1291
    iget v0, p0, Lorg/tf/stage/Stage;->m_localTimeAtPause:I

    if-eqz v0, :cond_0

    .line 1292
    iget v0, p0, Lorg/tf/stage/Stage;->m_localTimeAtPause:I

    .line 1294
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/tf/stage/Stage;->m_localTimeBase:J

    invoke-static {v0, v1}, Lskiba/util/Simply;->elapsedUptimeMillis(J)I

    move-result v0

    goto :goto_0
.end method

.method private getScoreMultiplier()I
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lorg/tf/stage/Stage;->m_currentStreak:I

    add-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private initializeBPM()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/song/InvalidSongException;
        }
    .end annotation

    .prologue
    .line 957
    iget-object v2, p0, Lorg/tf/stage/Stage;->m_song:Lorg/tf/song/Song;

    invoke-virtual {v2}, Lorg/tf/song/Song;->getTempoEvents()Lorg/tf/song/EventList;

    move-result-object v1

    .line 958
    .local v1, tempoEvents:Lorg/tf/song/EventList;,"Lorg/tf/song/EventList<Lorg/tf/song/TempoEvent;>;"
    invoke-virtual {v1}, Lorg/tf/song/EventList;->count()I

    move-result v2

    if-nez v2, :cond_0

    .line 959
    new-instance v2, Lorg/tf/song/InvalidSongException;

    const-string v3, "Song doesn\'t have tempo events."

    invoke-direct {v2, v3}, Lorg/tf/song/InvalidSongException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 961
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/tf/song/EventList;->get(I)Lorg/tf/song/Event;

    move-result-object v0

    check-cast v0, Lorg/tf/song/TempoEvent;

    .line 962
    .local v0, tempo:Lorg/tf/song/TempoEvent;
    invoke-virtual {v0}, Lorg/tf/song/TempoEvent;->getBPM()F

    move-result v2

    iput v2, p0, Lorg/tf/stage/Stage;->m_initialBPM:F

    .line 963
    return-void
.end method

.method private invalidStateException()Ljava/lang/RuntimeException;
    .locals 5

    .prologue
    .line 1378
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1379
    const-string v1, "Invalid state %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/tf/stage/Stage;->m_state:I

    invoke-static {v4}, Lorg/tf/stage/Stage;->formatState(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1378
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadCountdownResources(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 503
    new-instance v0, Lorg/tf/gl/sprite/SpriteFontBuilder;

    invoke-direct {v0}, Lorg/tf/gl/sprite/SpriteFontBuilder;-><init>()V

    .line 504
    .local v0, fontBuilder:Lorg/tf/gl/sprite/SpriteFontBuilder;
    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setSize(F)V

    .line 505
    invoke-static {}, Lorg/tf/Config;->getFireTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setTypeface(Landroid/graphics/Typeface;)V

    .line 506
    invoke-static {}, Lorg/tf/Config;->getSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setColor(I)V

    .line 507
    invoke-static {}, Lorg/tf/Config;->getShadowColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setShadowColor(I)V

    .line 508
    invoke-virtual {v0}, Lorg/tf/gl/sprite/SpriteFontBuilder;->resetCharacters()V

    .line 509
    const-string v1, "0123456789"

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->addCharacters(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->buildFont(Ljavax/microedition/khronos/opengles/GL10;)Lorg/tf/gl/sprite/SpriteFont;

    move-result-object v1

    iput-object v1, p0, Lorg/tf/stage/Stage;->m_countdownFont:Lorg/tf/gl/sprite/SpriteFont;

    .line 512
    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setSize(F)V

    .line 513
    invoke-static {}, Lorg/tf/Config;->getDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setTypeface(Landroid/graphics/Typeface;)V

    .line 514
    invoke-static {}, Lorg/tf/Config;->getBaseColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setColor(I)V

    .line 515
    const-string v1, "Get ready to rock!"

    invoke-virtual {v0, p1, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->buildText(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Lorg/tf/gl/sprite/SpriteRegion;

    move-result-object v1

    iput-object v1, p0, Lorg/tf/stage/Stage;->m_countdownText:Lorg/tf/gl/sprite/SpriteRegion;

    .line 516
    return-void
.end method

.method private loadEffects(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "context"
    .parameter "gl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Lorg/tf/stage/StageEffects;

    invoke-direct {v0, p1, p2}, Lorg/tf/stage/StageEffects;-><init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    .line 437
    return-void
.end method

.method private loadFPSResources(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 756
    new-instance v0, Lorg/tf/gl/sprite/SpriteFontBuilder;

    invoke-direct {v0}, Lorg/tf/gl/sprite/SpriteFontBuilder;-><init>()V

    .line 757
    .local v0, fontBuilder:Lorg/tf/gl/sprite/SpriteFontBuilder;
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setTypeface(Landroid/graphics/Typeface;)V

    .line 758
    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setSize(F)V

    .line 759
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setColor(I)V

    .line 760
    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setBackgroundColor(I)V

    .line 761
    const-string v1, "0123456789/"

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->addCharacters(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->buildFont(Ljavax/microedition/khronos/opengles/GL10;)Lorg/tf/gl/sprite/SpriteFont;

    move-result-object v1

    iput-object v1, p0, Lorg/tf/stage/Stage;->m_fpsFont:Lorg/tf/gl/sprite/SpriteFont;

    .line 763
    return-void
.end method

.method private loadKeyResources(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "context"
    .parameter "gl"

    .prologue
    .line 792
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_keyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 793
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_keyDrawable:Landroid/graphics/drawable/Drawable;

    .line 795
    :cond_0
    return-void
.end method

.method private loadScoreResources(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "context"
    .parameter "gl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    new-instance v0, Lorg/tf/gl/sprite/SpriteFontBuilder;

    invoke-direct {v0}, Lorg/tf/gl/sprite/SpriteFontBuilder;-><init>()V

    .line 578
    .local v0, fontBuilder:Lorg/tf/gl/sprite/SpriteFontBuilder;
    invoke-static {}, Lorg/tf/Config;->getDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setTypeface(Landroid/graphics/Typeface;)V

    .line 579
    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setSize(F)V

    .line 580
    invoke-static {}, Lorg/tf/Config;->getBaseColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setColor(I)V

    .line 581
    invoke-static {}, Lorg/tf/Config;->getShadowColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->setShadowColor(I)V

    .line 582
    const-string v1, "0123456789"

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->addCharacters(Ljava/lang/String;)V

    .line 583
    const-string v1, " hits"

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/SpriteFontBuilder;->addCharacters(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0, p2}, Lorg/tf/gl/sprite/SpriteFontBuilder;->buildFont(Ljavax/microedition/khronos/opengles/GL10;)Lorg/tf/gl/sprite/SpriteFont;

    move-result-object v1

    iput-object v1, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    .line 586
    new-instance v1, Lorg/tf/gl/sprite/Sprite;

    const v2, 0x7f02000d

    invoke-direct {v1, p1, p2, v2}, Lorg/tf/gl/sprite/Sprite;-><init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)V

    iput-object v1, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier2x:Lorg/tf/gl/sprite/Sprite;

    .line 587
    new-instance v1, Lorg/tf/gl/sprite/Sprite;

    const v2, 0x7f02000e

    invoke-direct {v1, p1, p2, v2}, Lorg/tf/gl/sprite/Sprite;-><init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)V

    iput-object v1, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier3x:Lorg/tf/gl/sprite/Sprite;

    .line 588
    new-instance v1, Lorg/tf/gl/sprite/Sprite;

    const v2, 0x7f02000f

    invoke-direct {v1, p1, p2, v2}, Lorg/tf/gl/sprite/Sprite;-><init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)V

    iput-object v1, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier4x:Lorg/tf/gl/sprite/Sprite;

    .line 589
    return-void
.end method

.method private multitouchKeys([F)V
    .locals 12
    .parameter "screenCoordinates"

    .prologue
    const/4 v10, 0x2

    const-string v11, "taps"

    .line 863
    iget v8, p0, Lorg/tf/stage/Stage;->m_keyTapzoneWidth:F

    const v9, 0x3fb33333

    mul-float v1, v8, v9

    .line 864
    .local v1, keyWidth:F
    iget v8, p0, Lorg/tf/stage/Stage;->m_keyTapzoneWidth:F

    const v9, 0x3f666666

    mul-float v2, v8, v9

    .line 865
    .local v2, leafKeyWidth:F
    const/4 v5, 0x0

    .line 866
    .local v5, strings:I
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    array-length v8, p1

    if-le v0, v8, :cond_0

    .line 885
    const-string v8, "taps"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "m_keyStrings"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lorg/tf/stage/Stage;->m_keyStrings:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string v8, "taps"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "strings:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget v8, p0, Lorg/tf/stage/Stage;->m_keyStrings:I

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v5

    iput v8, p0, Lorg/tf/stage/Stage;->m_pickedKeyStrings:I

    .line 889
    iput v5, p0, Lorg/tf/stage/Stage;->m_keyStrings:I

    .line 890
    return-void

    .line 867
    :cond_0
    sub-int v8, v0, v10

    aget v6, p1, v8

    .line 868
    .local v6, x:F
    iget-object v8, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v8, v8, Lorg/tf/gl/GLRect;->height:F

    const/4 v9, 0x1

    sub-int v9, v0, v9

    aget v9, p1, v9

    sub-float v7, v8, v9

    .line 869
    .local v7, y:F
    const/high16 v8, 0x42f0

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_1

    .line 870
    move v3, v2

    .line 871
    .local v3, right:F
    const/4 v4, 0x0

    .local v4, string:I
    :goto_1
    const/4 v8, 0x3

    if-ne v4, v8, :cond_2

    .line 866
    .end local v3           #right:F
    .end local v4           #string:I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 872
    .restart local v3       #right:F
    .restart local v4       #string:I
    :cond_2
    cmpg-float v8, v6, v3

    if-gez v8, :cond_3

    .line 873
    invoke-static {v5, v4}, Lorg/tf/stage/Guitar;->stringsAdd(II)I

    move-result v5

    .line 874
    goto :goto_2

    .line 876
    :cond_3
    if-eq v4, v10, :cond_4

    .line 877
    add-float/2addr v3, v1

    .line 871
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 879
    :cond_4
    add-float/2addr v3, v2

    goto :goto_3
.end method

.method private onNoteUnpicked()V
    .locals 0

    .prologue
    .line 1029
    invoke-direct {p0}, Lorg/tf/stage/Stage;->updateScoreOnUnpick()V

    .line 1030
    return-void
.end method

.method private onNotesMissed()V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_soundEffects:Lorg/tf/stage/StageSoundEffects;

    invoke-virtual {v0}, Lorg/tf/stage/StageSoundEffects;->playScrewUpSound()V

    .line 1023
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    invoke-virtual {v0}, Lorg/tf/stage/StageEffects;->onNotesMissed()V

    .line 1024
    invoke-direct {p0}, Lorg/tf/stage/Stage;->updateScoreOnMiss()V

    .line 1025
    return-void
.end method

.method private onNotesPicked([Lorg/tf/song/NoteEvent;I)V
    .locals 2
    .parameter "chord"
    .parameter "chordLength"

    .prologue
    .line 1015
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/tf/stage/SongPlayer;->mute(Z)V

    .line 1016
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    invoke-virtual {v0, p1, p2}, Lorg/tf/stage/StageEffects;->onNotesPicked([Lorg/tf/song/NoteEvent;I)V

    .line 1017
    invoke-direct {p0, p1, p2}, Lorg/tf/stage/Stage;->updateScoreOnPick([Lorg/tf/song/NoteEvent;I)V

    .line 1018
    return-void
.end method

.method private onNotesSlipped()V
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/tf/stage/SongPlayer;->mute(Z)V

    .line 1035
    invoke-direct {p0}, Lorg/tf/stage/Stage;->updateScoreOnSlip()V

    .line 1036
    return-void
.end method

.method private pauseLocalTime()V
    .locals 1

    .prologue
    .line 1299
    iget v0, p0, Lorg/tf/stage/Stage;->m_localTimeAtPause:I

    if-nez v0, :cond_0

    .line 1300
    invoke-direct {p0}, Lorg/tf/stage/Stage;->getLocalTime()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage;->m_localTimeAtPause:I

    .line 1302
    :cond_0
    return-void
.end method

.method private pickNotes()V
    .locals 27

    .prologue
    .line 1039
    const v24, 0x476a6000

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_bpm:F

    move/from16 v25, v0

    div-float v3, v24, v25

    .line 1040
    .local v3, beatPeriod:F
    invoke-static {}, Lorg/tf/Config;->getEarlyPickMargin()F

    move-result v24

    mul-float v8, v3, v24

    .line 1041
    .local v8, earlyMargin:F
    invoke-static {}, Lorg/tf/Config;->getLatePickMargin()F

    move-result v24

    mul-float v11, v3, v24

    .line 1042
    .local v11, lateMargin:F
    invoke-static {}, Lorg/tf/Config;->getRepickMargin()F

    move-result v24

    mul-float v20, v3, v24

    .line 1044
    .local v20, repickMargin:F
    const/4 v13, 0x0

    .line 1045
    .local v13, noteSlipped:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/stage/Stage;->m_noteBuffer:[Lorg/tf/song/NoteEvent;

    move-object v4, v0

    .line 1046
    .local v4, chord:[Lorg/tf/song/NoteEvent;
    const v6, 0x7f7fffff

    .line 1047
    .local v6, chordMinTime:F
    const/16 v23, 0x0

    .local v23, string:I
    :goto_0
    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1097
    const/4 v7, 0x0

    .line 1098
    .local v7, chordStrings:I
    const/16 v21, 0x0

    .line 1099
    .local v21, repickedStrings:I
    const/16 v22, 0x0

    .line 1100
    .local v22, requiredStrings:I
    const/16 v23, 0x0

    :goto_1
    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 1116
    const/4 v5, 0x0

    .line 1117
    .local v5, chordLength:I
    const/16 v23, 0x0

    :goto_2
    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 1124
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_pickedKeyStrings:I

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 1125
    if-eqz v22, :cond_0

    .line 1126
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_pickedKeyStrings:I

    move/from16 v24, v0

    move v0, v7

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/tf/stage/Stage;->checkStrings(II)I

    move-result v24

    if-nez v24, :cond_19

    .line 1128
    :cond_0
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ne v10, v5, :cond_17

    .line 1134
    invoke-direct/range {p0 .. p0}, Lorg/tf/stage/Stage;->onNotesMissed()V

    .line 1158
    .end local v10           #i:I
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_pickedKeyStrings:I

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_pickedKeyStrings:I

    move/from16 v24, v0

    move v0, v7

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/tf/stage/Stage;->checkStrings(II)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 1159
    :cond_2
    const/4 v14, 0x0

    .line 1160
    .local v14, noteUnpicked:Z
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_keyStrings:I

    move/from16 v24, v0

    if-nez v24, :cond_3

    if-eqz v21, :cond_3

    .line 1161
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_5
    if-ne v10, v5, :cond_1d

    .line 1171
    .end local v10           #i:I
    :cond_3
    if-eqz v14, :cond_4

    .line 1172
    invoke-direct/range {p0 .. p0}, Lorg/tf/stage/Stage;->onNoteUnpicked()V

    .line 1174
    :cond_4
    if-eqz v13, :cond_5

    .line 1176
    invoke-direct/range {p0 .. p0}, Lorg/tf/stage/Stage;->onNotesSlipped()V

    .line 1179
    .end local v14           #noteUnpicked:Z
    :cond_5
    return-void

    .line 1048
    .end local v5           #chordLength:I
    .end local v7           #chordStrings:I
    .end local v21           #repickedStrings:I
    .end local v22           #requiredStrings:I
    :cond_6
    const/16 v24, 0x0

    aput-object v24, v4, v23

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tf/stage/Stage;->m_song:Lorg/tf/song/Song;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/tf/song/Song;->getNoteEvents(I)Lorg/tf/song/EventList;

    move-result-object v15

    .line 1050
    .local v15, notes:Lorg/tf/song/EventList;,"Lorg/tf/song/EventList<Lorg/tf/song/NoteEvent;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_position:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_position:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v8

    move-object v0, v15

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/tf/song/EventList;->range(FF)J

    move-result-wide v16

    .line 1051
    .local v16, range:J
    invoke-static/range {v16 .. v17}, Lorg/tf/song/EventList;->rangeBegin(J)I

    move-result v18

    .line 1052
    .local v18, rangeBegin:I
    invoke-static/range {v16 .. v17}, Lorg/tf/song/EventList;->rangeEnd(J)I

    move-result v19

    .line 1053
    .local v19, rangeEnd:I
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1047
    :cond_7
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 1056
    :cond_8
    if-eqz v18, :cond_9

    .line 1057
    const/16 v24, 0x1

    sub-int v24, v18, v24

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/tf/song/EventList;->get(I)Lorg/tf/song/Event;

    move-result-object v12

    check-cast v12, Lorg/tf/song/NoteEvent;

    .line 1058
    .local v12, note:Lorg/tf/song/NoteEvent;
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->isIntact()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 1059
    const-string v24, "taps"

    const-string v25, "note is being set to missed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->setMissed()V

    .line 1061
    const/4 v13, 0x1

    .line 1064
    .end local v12           #note:Lorg/tf/song/NoteEvent;
    :cond_9
    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/tf/song/EventList;->get(I)Lorg/tf/song/Event;

    move-result-object v12

    check-cast v12, Lorg/tf/song/NoteEvent;

    .line 1065
    .restart local v12       #note:Lorg/tf/song/NoteEvent;
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->isUnpicked()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 1066
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_position:I

    move/from16 v24, v0

    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->getUnpickPosition()I

    move-result v25

    sub-int v9, v24, v25

    .line 1067
    .local v9, elapsed:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_position:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->getEndTime()F

    move-result v25

    cmpl-float v24, v24, v25

    if-gtz v24, :cond_a

    move v0, v9

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v24, v20

    if-lez v24, :cond_c

    .line 1068
    :cond_a
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->endPick()V

    .line 1073
    .end local v9           #elapsed:I
    :cond_b
    :goto_7
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->isPicked()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1074
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->getEndTime()F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_position:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    cmpl-float v24, v24, v8

    if-lez v24, :cond_d

    .line 1075
    aput-object v12, v4, v23

    goto :goto_6

    .line 1069
    .restart local v9       #elapsed:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_keyStrings:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/tf/stage/Guitar;->stringsCheck(II)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 1070
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->pick()V

    goto :goto_7

    .line 1079
    .end local v9           #elapsed:I
    :cond_d
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->isIntact()Z

    move-result v24

    if-nez v24, :cond_f

    .line 1080
    add-int/lit8 v18, v18, 0x1

    .line 1090
    :cond_e
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 1093
    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/tf/song/EventList;->get(I)Lorg/tf/song/Event;

    move-result-object v12

    .end local v12           #note:Lorg/tf/song/NoteEvent;
    check-cast v12, Lorg/tf/song/NoteEvent;

    .line 1094
    .restart local v12       #note:Lorg/tf/song/NoteEvent;
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v24

    move v0, v6

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1095
    aput-object v12, v4, v23

    goto/16 :goto_6

    .line 1082
    :cond_f
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_position:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v11

    cmpg-float v24, v24, v25

    if-gez v24, :cond_e

    .line 1083
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->isMissed()Z

    move-result v24

    if-nez v24, :cond_10

    .line 1084
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->setMissed()V

    .line 1085
    const/4 v13, 0x1

    .line 1087
    :cond_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 1101
    .end local v12           #note:Lorg/tf/song/NoteEvent;
    .end local v15           #notes:Lorg/tf/song/EventList;,"Lorg/tf/song/EventList<Lorg/tf/song/NoteEvent;>;"
    .end local v16           #range:J
    .end local v18           #rangeBegin:I
    .end local v19           #rangeEnd:I
    .restart local v7       #chordStrings:I
    .restart local v21       #repickedStrings:I
    .restart local v22       #requiredStrings:I
    :cond_11
    aget-object v12, v4, v23

    .line 1102
    .restart local v12       #note:Lorg/tf/song/NoteEvent;
    if-nez v12, :cond_12

    .line 1100
    :goto_9
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 1105
    :cond_12
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->isIntact()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 1106
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v24

    sub-float v24, v6, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    const/high16 v25, 0x3f80

    cmpl-float v24, v24, v25

    if-lez v24, :cond_13

    .line 1107
    const/16 v24, 0x0

    aput-object v24, v4, v23

    goto :goto_9

    .line 1110
    :cond_13
    invoke-static/range {v22 .. v23}, Lorg/tf/stage/Guitar;->stringsAdd(II)I

    move-result v22

    .line 1114
    :goto_a
    move v0, v7

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/tf/stage/Guitar;->stringsAdd(II)I

    move-result v7

    goto :goto_9

    .line 1112
    :cond_14
    move/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/tf/stage/Guitar;->stringsAdd(II)I

    move-result v21

    goto :goto_a

    .line 1118
    .end local v12           #note:Lorg/tf/song/NoteEvent;
    .restart local v5       #chordLength:I
    :cond_15
    aget-object v12, v4, v23

    .line 1119
    .restart local v12       #note:Lorg/tf/song/NoteEvent;
    if-eqz v12, :cond_16

    .line 1120
    aput-object v12, v4, v5

    .line 1121
    add-int/lit8 v5, v5, 0x1

    .line 1117
    :cond_16
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 1129
    .end local v12           #note:Lorg/tf/song/NoteEvent;
    .restart local v10       #i:I
    :cond_17
    aget-object v12, v4, v10

    .line 1130
    .restart local v12       #note:Lorg/tf/song/NoteEvent;
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->isPicked()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 1131
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->endPick()V

    .line 1128
    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1136
    .end local v10           #i:I
    .end local v12           #note:Lorg/tf/song/NoteEvent;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_pickedKeyStrings:I

    move/from16 v24, v0

    move v0, v7

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/tf/stage/Stage;->checkStrings(II)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 1139
    const-string v24, "taps"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "string:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_pickedKeyStrings:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "needed"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const-string v24, "taps"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "m_bufferChordStrings"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_bufferChordStrings:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_bufferChordStrings:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_pickedKeyStrings:I

    move/from16 v25, v0

    or-int v24, v24, v25

    move v0, v7

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/tf/stage/Stage;->checkStrings(II)I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1143
    const-string v24, "taps"

    const-string v25, "correct notes!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_b
    if-ne v10, v5, :cond_1a

    .line 1147
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lorg/tf/stage/Stage;->onNotesPicked([Lorg/tf/song/NoteEvent;I)V

    goto/16 :goto_4

    .line 1145
    :cond_1a
    aget-object v24, v4, v10

    invoke-virtual/range {v24 .. v24}, Lorg/tf/song/NoteEvent;->pick()V

    .line 1144
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1151
    .end local v10           #i:I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_pickedKeyStrings:I

    move/from16 v24, v0

    move v0, v7

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/tf/stage/Stage;->checkStrings(II)I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1152
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_c
    if-ne v10, v5, :cond_1c

    .line 1155
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lorg/tf/stage/Stage;->onNotesPicked([Lorg/tf/song/NoteEvent;I)V

    goto/16 :goto_4

    .line 1153
    :cond_1c
    aget-object v24, v4, v10

    invoke-virtual/range {v24 .. v24}, Lorg/tf/song/NoteEvent;->pick()V

    .line 1152
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 1162
    .restart local v14       #noteUnpicked:Z
    :cond_1d
    aget-object v12, v4, v10

    .line 1163
    .restart local v12       #note:Lorg/tf/song/NoteEvent;
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->isPicked()Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 1164
    invoke-virtual {v12}, Lorg/tf/song/NoteEvent;->getEndTime()F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_position:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    cmpl-float v24, v24, v20

    if-lez v24, :cond_1e

    .line 1166
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tf/stage/Stage;->m_position:I

    move/from16 v24, v0

    move-object v0, v12

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/tf/song/NoteEvent;->unpick(I)V

    .line 1167
    const/4 v14, 0x1

    .line 1161
    :cond_1e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5
.end method

.method private renderBackground(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->beginRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 402
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    invoke-virtual {v0, p1}, Lorg/tf/stage/StageEffects;->renderBackground(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 403
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->endRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 404
    return-void
.end method

.method private renderCountdown(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v5, 0x3f80

    .line 481
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v4, v4, Lorg/tf/gl/GLRect;->width:F

    div-float v0, v4, v7

    .line 482
    .local v0, centerX:F
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v4, v4, Lorg/tf/gl/GLRect;->height:F

    div-float v1, v4, v7

    .line 484
    .local v1, centerY:F
    invoke-interface {p1, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 486
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v4}, Lorg/tf/stage/Stage$LocalTimer;->getProgress()F

    move-result v4

    sub-float v4, v5, v4

    const/high16 v5, 0x40c0

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 487
    .local v2, step:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, stepString:Ljava/lang/String;
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_countdownFont:Lorg/tf/gl/sprite/SpriteFont;

    const/high16 v5, 0x4040

    invoke-virtual {v4, v5}, Lorg/tf/gl/sprite/SpriteFont;->setScale(F)V

    .line 489
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_countdownFont:Lorg/tf/gl/sprite/SpriteFont;

    .line 491
    iget-object v5, p0, Lorg/tf/stage/Stage;->m_countdownFont:Lorg/tf/gl/sprite/SpriteFont;

    invoke-virtual {v5}, Lorg/tf/gl/sprite/SpriteFont;->getHeight()F

    move-result v5

    const v6, 0x3e4ccccd

    mul-float/2addr v5, v6

    sub-float v5, v1, v5

    .line 489
    invoke-virtual {v4, v0, v5}, Lorg/tf/gl/sprite/SpriteFont;->setCenter(FF)V

    .line 492
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_countdownFont:Lorg/tf/gl/sprite/SpriteFont;

    invoke-virtual {v4, p1, v3}, Lorg/tf/gl/sprite/SpriteFont;->render(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/CharSequence;)V

    .line 495
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_countdownText:Lorg/tf/gl/sprite/SpriteRegion;

    const v5, 0x3fa66666

    invoke-virtual {v4, v5}, Lorg/tf/gl/sprite/SpriteRegion;->setScale(F)V

    .line 496
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_countdownText:Lorg/tf/gl/sprite/SpriteRegion;

    .line 498
    iget-object v5, p0, Lorg/tf/stage/Stage;->m_countdownText:Lorg/tf/gl/sprite/SpriteRegion;

    invoke-virtual {v5}, Lorg/tf/gl/sprite/SpriteRegion;->getHeight()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    .line 496
    invoke-virtual {v4, v0, v5}, Lorg/tf/gl/sprite/SpriteRegion;->setCenter(FF)V

    .line 499
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_countdownText:Lorg/tf/gl/sprite/SpriteRegion;

    invoke-virtual {v4, p1}, Lorg/tf/gl/sprite/SpriteRegion;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 500
    return-void
.end method

.method private renderFPS(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/high16 v5, 0x4000

    .line 773
    invoke-static {}, Lorg/tf/Config;->showDebugInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 782
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_stringBuilder:Lorg/tf/util/CharString;

    invoke-virtual {v1}, Lorg/tf/util/CharString;->clear()V

    .line 777
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_stringBuilder:Lorg/tf/util/CharString;

    iget v2, p0, Lorg/tf/stage/Stage;->m_averageFPS:I

    invoke-virtual {v1, v2}, Lorg/tf/util/CharString;->append(I)Lorg/tf/util/CharString;

    .line 779
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_fpsFont:Lorg/tf/gl/sprite/SpriteFont;

    iget-object v2, p0, Lorg/tf/stage/Stage;->m_stringBuilder:Lorg/tf/util/CharString;

    invoke-virtual {v1, v2}, Lorg/tf/gl/sprite/SpriteFont;->measureWidth(Ljava/lang/CharSequence;)F

    move-result v0

    .line 780
    .local v0, width:F
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_fpsFont:Lorg/tf/gl/sprite/SpriteFont;

    div-float v2, v0, v5

    iget-object v3, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v3, v3, Lorg/tf/gl/GLRect;->height:F

    iget-object v4, p0, Lorg/tf/stage/Stage;->m_fpsFont:Lorg/tf/gl/sprite/SpriteFont;

    invoke-virtual {v4}, Lorg/tf/gl/sprite/SpriteFont;->getHeight()F

    move-result v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/tf/gl/sprite/SpriteFont;->setCenter(FF)V

    .line 781
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_fpsFont:Lorg/tf/gl/sprite/SpriteFont;

    iget-object v2, p0, Lorg/tf/stage/Stage;->m_stringBuilder:Lorg/tf/util/CharString;

    invoke-virtual {v1, p1, v2}, Lorg/tf/gl/sprite/SpriteFont;->render(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private renderForeground(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->beginRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 390
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->renderKeys(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 391
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    invoke-virtual {v0, p1}, Lorg/tf/stage/StageEffects;->renderForeground(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 392
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v0}, Lorg/tf/stage/Stage$LocalTimer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->renderCountdown(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 395
    :cond_0
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->renderScore(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 396
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->renderFPS(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 397
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->endRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 398
    return-void
.end method

.method private renderKeys(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/high16 v6, 0x4000

    .line 893
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v4, v4, Lorg/tf/gl/GLRect;->width:F

    div-float/2addr v4, v6

    iget v5, p0, Lorg/tf/stage/Stage;->m_keysWidth:F

    div-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 894
    .local v0, baseX:F
    const/4 v3, 0x0

    .local v3, string:I
    :goto_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 911
    return-void

    .line 896
    :cond_0
    if-eqz v3, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 897
    :cond_1
    iget-object v2, p0, Lorg/tf/stage/Stage;->m_leafKeySprite:Lorg/tf/gl/sprite/SpriteRegion;

    .line 901
    .local v2, keySprite:Lorg/tf/gl/sprite/SpriteRegion;
    :goto_1
    invoke-virtual {v2}, Lorg/tf/gl/sprite/SpriteRegion;->getWidth()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v4, v0

    const/high16 v5, 0x41f0

    invoke-virtual {v2, v4, v5}, Lorg/tf/gl/sprite/SpriteRegion;->setCenter(FF)V

    .line 902
    invoke-static {v3}, Lorg/tf/Config;->getStringColor(I)I

    move-result v1

    .line 903
    .local v1, color:I
    iget v4, p0, Lorg/tf/stage/Stage;->m_keyStrings:I

    invoke-static {v4, v3}, Lorg/tf/stage/Guitar;->stringsCheck(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 904
    const v4, 0x3f4ccccd

    invoke-static {v1, v4}, Lorg/tf/gl/GLHelpers;->multiplyColor(IF)I

    move-result v1

    .line 905
    const/4 v4, 0x0

    const/high16 v5, -0x4000

    invoke-virtual {v2, v4, v5}, Lorg/tf/gl/sprite/SpriteRegion;->translateCenter(FF)V

    .line 907
    :cond_2
    const/high16 v4, 0x3f80

    invoke-static {p1, v1, v4}, Lorg/tf/gl/GLHelpers;->setColor(Ljavax/microedition/khronos/opengles/GL10;IF)V

    .line 908
    invoke-virtual {v2, p1}, Lorg/tf/gl/sprite/SpriteRegion;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 909
    invoke-virtual {v2}, Lorg/tf/gl/sprite/SpriteRegion;->getWidth()F

    move-result v4

    add-float/2addr v0, v4

    .line 894
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 899
    .end local v1           #color:I
    .end local v2           #keySprite:Lorg/tf/gl/sprite/SpriteRegion;
    :cond_3
    iget-object v2, p0, Lorg/tf/stage/Stage;->m_keySprite:Lorg/tf/gl/sprite/SpriteRegion;

    .restart local v2       #keySprite:Lorg/tf/gl/sprite/SpriteRegion;
    goto :goto_1
.end method

.method private renderScore(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .parameter "gl"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x4080

    const/high16 v8, 0x4040

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    .line 627
    invoke-interface {p1, v6, v6, v6, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 629
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    const/high16 v4, 0x4220

    iget-object v5, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    invoke-virtual {v5}, Lorg/tf/gl/sprite/SpriteFont;->getUnscaledHeight()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/tf/gl/sprite/SpriteFont;->setScale(F)V

    .line 630
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v3, v3, Lorg/tf/gl/GLRect;->height:F

    iget-object v4, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    invoke-virtual {v4}, Lorg/tf/gl/sprite/SpriteFont;->getHeight()F

    move-result v4

    div-float/2addr v4, v7

    sub-float v2, v3, v4

    .line 632
    .local v2, textY:F
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_stringBuilder:Lorg/tf/util/CharString;

    invoke-virtual {v3}, Lorg/tf/util/CharString;->clear()V

    .line 633
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_stringBuilder:Lorg/tf/util/CharString;

    iget v4, p0, Lorg/tf/stage/Stage;->m_score:I

    invoke-direct {p0}, Lorg/tf/stage/Stage;->getBonusScore()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/tf/util/CharString;->append(I)Lorg/tf/util/CharString;

    .line 634
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    iget v4, p0, Lorg/tf/stage/Stage;->m_scoreCenter:F

    invoke-virtual {v3, v4, v2}, Lorg/tf/gl/sprite/SpriteFont;->setCenter(FF)V

    .line 635
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    iget-object v4, p0, Lorg/tf/stage/Stage;->m_stringBuilder:Lorg/tf/util/CharString;

    invoke-virtual {v3, p1, v4}, Lorg/tf/gl/sprite/SpriteFont;->render(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/CharSequence;)V

    .line 637
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    invoke-virtual {v3}, Lorg/tf/gl/sprite/SpriteFont;->getHeight()F

    move-result v3

    mul-float/2addr v3, v8

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    .line 639
    iget v3, p0, Lorg/tf/stage/Stage;->m_currentStreak:I

    if-le v3, v10, :cond_0

    .line 640
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_stringBuilder:Lorg/tf/util/CharString;

    invoke-virtual {v3}, Lorg/tf/util/CharString;->clear()V

    .line 641
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_stringBuilder:Lorg/tf/util/CharString;

    iget v4, p0, Lorg/tf/stage/Stage;->m_currentStreak:I

    invoke-virtual {v3, v4}, Lorg/tf/util/CharString;->append(I)Lorg/tf/util/CharString;

    .line 642
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_stringBuilder:Lorg/tf/util/CharString;

    const-string v4, " hits"

    invoke-virtual {v3, v4}, Lorg/tf/util/CharString;->append(Ljava/lang/CharSequence;)Lorg/tf/util/CharString;

    .line 643
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    iget v4, p0, Lorg/tf/stage/Stage;->m_scoreCenter:F

    invoke-virtual {v3, v4, v2}, Lorg/tf/gl/sprite/SpriteFont;->setCenter(FF)V

    .line 644
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    const/high16 v4, 0x41f0

    iget-object v5, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    invoke-virtual {v5}, Lorg/tf/gl/sprite/SpriteFont;->getUnscaledHeight()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/tf/gl/sprite/SpriteFont;->setScale(F)V

    .line 645
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    iget-object v4, p0, Lorg/tf/stage/Stage;->m_stringBuilder:Lorg/tf/util/CharString;

    invoke-virtual {v3, p1, v4}, Lorg/tf/gl/sprite/SpriteFont;->render(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/CharSequence;)V

    .line 648
    :cond_0
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_scoreMultiplierTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v3}, Lorg/tf/stage/Stage$LocalTimer;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 649
    const/4 v1, 0x0

    .line 650
    .local v1, sprite:Lorg/tf/gl/sprite/Sprite;
    invoke-direct {p0}, Lorg/tf/stage/Stage;->getScoreMultiplier()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 661
    :goto_0
    if-eqz v1, :cond_1

    .line 662
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_scoreMultiplierTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v3}, Lorg/tf/stage/Stage$LocalTimer;->getProgress()F

    move-result v0

    .line 663
    .local v0, f:F
    mul-float/2addr v0, v0

    .line 664
    mul-float v3, v0, v7

    div-float/2addr v3, v8

    sub-float v3, v6, v3

    invoke-interface {p1, v6, v6, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 665
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v3, v3, Lorg/tf/gl/GLRect;->width:F

    div-float/2addr v3, v7

    iget-object v4, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v4, v4, Lorg/tf/gl/GLRect;->height:F

    mul-float/2addr v4, v8

    div-float/2addr v4, v9

    invoke-virtual {v1, v3, v4}, Lorg/tf/gl/sprite/Sprite;->setCenter(FF)V

    .line 666
    mul-float v3, v9, v0

    invoke-virtual {v1, v3}, Lorg/tf/gl/sprite/Sprite;->setScale(F)V

    .line 667
    const/16 v3, 0x302

    invoke-interface {p1, v3, v10}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 668
    invoke-virtual {v1, p1}, Lorg/tf/gl/sprite/Sprite;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 669
    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 672
    .end local v0           #f:F
    .end local v1           #sprite:Lorg/tf/gl/sprite/Sprite;
    :cond_1
    return-void

    .line 652
    .restart local v1       #sprite:Lorg/tf/gl/sprite/Sprite;
    :pswitch_0
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier2x:Lorg/tf/gl/sprite/Sprite;

    .line 653
    goto :goto_0

    .line 655
    :pswitch_1
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier3x:Lorg/tf/gl/sprite/Sprite;

    .line 656
    goto :goto_0

    .line 658
    :pswitch_2
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier4x:Lorg/tf/gl/sprite/Sprite;

    goto :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetBPM()V
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lorg/tf/stage/Stage;->m_initialBPM:F

    iput v0, p0, Lorg/tf/stage/Stage;->m_bpm:F

    .line 967
    iget v0, p0, Lorg/tf/stage/Stage;->m_initialBPM:F

    iput v0, p0, Lorg/tf/stage/Stage;->m_targetBPM:F

    .line 968
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/stage/Stage;->m_bpmChangePosition:I

    .line 969
    return-void
.end method

.method private resetEffects()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    invoke-virtual {v0}, Lorg/tf/stage/StageEffects;->resetState()V

    .line 433
    :cond_0
    return-void
.end method

.method private resetNotes()V
    .locals 4

    .prologue
    .line 1182
    const/4 v2, 0x0

    .local v2, string:I
    :goto_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1188
    return-void

    .line 1183
    :cond_0
    iget-object v3, p0, Lorg/tf/stage/Stage;->m_song:Lorg/tf/song/Song;

    invoke-virtual {v3, v2}, Lorg/tf/song/Song;->getNoteEvents(I)Lorg/tf/song/EventList;

    move-result-object v1

    .line 1184
    .local v1, notes:Lorg/tf/song/EventList;,"Lorg/tf/song/EventList<Lorg/tf/song/NoteEvent;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/tf/song/EventList;->count()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 1182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1185
    :cond_1
    invoke-virtual {v1, v0}, Lorg/tf/song/EventList;->get(I)Lorg/tf/song/Event;

    move-result-object v3

    check-cast v3, Lorg/tf/song/NoteEvent;

    invoke-virtual {v3}, Lorg/tf/song/NoteEvent;->makeIntact()V

    .line 1184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private resetPauseLocalTime()V
    .locals 4

    .prologue
    .line 1286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tf/stage/Stage;->m_localTimeBase:J

    .line 1287
    const/4 v0, 0x1

    iput v0, p0, Lorg/tf/stage/Stage;->m_localTimeAtPause:I

    .line 1288
    return-void
.end method

.method private resetPlayingState()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lorg/tf/stage/Stage;->resetBPM()V

    .line 301
    invoke-direct {p0}, Lorg/tf/stage/Stage;->resetPauseLocalTime()V

    .line 302
    invoke-direct {p0}, Lorg/tf/stage/Stage;->startCountdown()V

    .line 303
    return-void
.end method

.method private resetScore()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 568
    iput v0, p0, Lorg/tf/stage/Stage;->m_score:I

    .line 569
    iput v0, p0, Lorg/tf/stage/Stage;->m_currentStreak:I

    .line 570
    iput v0, p0, Lorg/tf/stage/Stage;->m_longestStreak:I

    .line 571
    iput v0, p0, Lorg/tf/stage/Stage;->m_pickedNoteCount:I

    .line 572
    iput v0, p0, Lorg/tf/stage/Stage;->m_chordBeginPosition:I

    .line 573
    iput v0, p0, Lorg/tf/stage/Stage;->m_chordEndPosition:I

    .line 574
    return-void
.end method

.method private restoreBPM(Ljava/io/DataInputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 978
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage;->m_bpm:F

    .line 979
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage;->m_targetBPM:F

    .line 980
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage;->m_bpmChangePosition:I

    .line 981
    return-void
.end method

.method private restoreEffects(Ljava/io/DataInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 457
    .local v0, saved:Z
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eq v0, v1, :cond_1

    .line 458
    invoke-static {}, Lorg/tf/util/DataStreamHelpers;->inconsistentStateException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 457
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 460
    :cond_1
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    if-eqz v1, :cond_2

    .line 461
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    invoke-virtual {v1, p1}, Lorg/tf/stage/StageEffects;->restoreState(Ljava/io/DataInputStream;)V

    .line 463
    :cond_2
    return-void
.end method

.method private restoreLocalTime(Ljava/io/DataInputStream;)V
    .locals 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tf/stage/Stage;->m_localTimeBase:J

    .line 1282
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage;->m_localTimeAtPause:I

    .line 1283
    return-void
.end method

.method private restoreNotes(Ljava/io/DataInputStream;)V
    .locals 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1203
    const/4 v4, 0x0

    .local v4, string:I
    :goto_0
    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1215
    return-void

    .line 1204
    :cond_0
    iget-object v5, p0, Lorg/tf/stage/Stage;->m_song:Lorg/tf/song/Song;

    invoke-virtual {v5, v4}, Lorg/tf/song/Song;->getNoteEvents(I)Lorg/tf/song/EventList;

    move-result-object v3

    .line 1205
    .local v3, notes:Lorg/tf/song/EventList;,"Lorg/tf/song/EventList<Lorg/tf/song/NoteEvent;>;"
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1206
    .local v0, count:I
    invoke-virtual {v3}, Lorg/tf/song/EventList;->count()I

    move-result v5

    if-eq v0, v5, :cond_1

    .line 1207
    invoke-static {}, Lorg/tf/util/DataStreamHelpers;->inconsistentStateException()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1209
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ne v1, v0, :cond_2

    .line 1203
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1210
    :cond_2
    invoke-virtual {v3, v1}, Lorg/tf/song/EventList;->get(I)Lorg/tf/song/Event;

    move-result-object v2

    check-cast v2, Lorg/tf/song/NoteEvent;

    .line 1211
    .local v2, note:Lorg/tf/song/NoteEvent;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Lorg/tf/song/NoteEvent;->state:I

    .line 1212
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Lorg/tf/song/NoteEvent;->unpickPosition:I

    .line 1209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private restoreScore(Ljava/io/DataInputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage;->m_score:I

    .line 620
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage;->m_currentStreak:I

    .line 621
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage;->m_longestStreak:I

    .line 622
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage;->m_pickedNoteCount:I

    .line 623
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_scoreMultiplierTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v0, p1}, Lorg/tf/stage/Stage$LocalTimer;->restore(Ljava/io/DataInputStream;)V

    .line 624
    return-void
.end method

.method private resumeLocalTime()V
    .locals 4

    .prologue
    .line 1305
    iget v0, p0, Lorg/tf/stage/Stage;->m_localTimeAtPause:I

    if-nez v0, :cond_0

    .line 1310
    :goto_0
    return-void

    .line 1308
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lorg/tf/stage/Stage;->m_localTimeAtPause:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tf/stage/Stage;->m_localTimeBase:J

    .line 1309
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/stage/Stage;->m_localTimeAtPause:I

    goto :goto_0
.end method

.method private saveBPM(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 972
    iget v0, p0, Lorg/tf/stage/Stage;->m_bpm:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 973
    iget v0, p0, Lorg/tf/stage/Stage;->m_targetBPM:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 974
    iget v0, p0, Lorg/tf/stage/Stage;->m_bpmChangePosition:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 975
    return-void
.end method

.method private saveEffects(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 449
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    invoke-virtual {v0, p1}, Lorg/tf/stage/StageEffects;->saveState(Ljava/io/DataOutputStream;)V

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_0
.end method

.method private saveLocalTime(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1276
    invoke-direct {p0}, Lorg/tf/stage/Stage;->getLocalTime()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1277
    iget v0, p0, Lorg/tf/stage/Stage;->m_localTimeAtPause:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1278
    return-void
.end method

.method private saveNotes(Ljava/io/DataOutputStream;)V
    .locals 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1191
    const/4 v3, 0x0

    .local v3, string:I
    :goto_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1200
    return-void

    .line 1192
    :cond_0
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_song:Lorg/tf/song/Song;

    invoke-virtual {v4, v3}, Lorg/tf/song/Song;->getNoteEvents(I)Lorg/tf/song/EventList;

    move-result-object v2

    .line 1193
    .local v2, notes:Lorg/tf/song/EventList;,"Lorg/tf/song/EventList<Lorg/tf/song/NoteEvent;>;"
    invoke-virtual {v2}, Lorg/tf/song/EventList;->count()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/tf/song/EventList;->count()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 1191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1195
    :cond_1
    invoke-virtual {v2, v0}, Lorg/tf/song/EventList;->get(I)Lorg/tf/song/Event;

    move-result-object v1

    check-cast v1, Lorg/tf/song/NoteEvent;

    .line 1196
    .local v1, note:Lorg/tf/song/NoteEvent;
    iget v4, v1, Lorg/tf/song/NoteEvent;->state:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1197
    iget v4, v1, Lorg/tf/song/NoteEvent;->unpickPosition:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private saveScore(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    iget v0, p0, Lorg/tf/stage/Stage;->m_score:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 612
    iget v0, p0, Lorg/tf/stage/Stage;->m_currentStreak:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 613
    iget v0, p0, Lorg/tf/stage/Stage;->m_longestStreak:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 614
    iget v0, p0, Lorg/tf/stage/Stage;->m_pickedNoteCount:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 615
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_scoreMultiplierTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v0, p1}, Lorg/tf/stage/Stage$LocalTimer;->save(Ljava/io/DataOutputStream;)V

    .line 616
    return-void
.end method

.method public static setDefaults(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 285
    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 286
    const/high16 v0, 0x3f80

    invoke-interface {p0, v2, v2, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 288
    const/16 v0, 0xbe2

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 289
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 290
    const/16 v0, 0xde1

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 291
    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 292
    const v0, 0x8078

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 293
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/16 v2, 0x2100

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 294
    return-void
.end method

.method private setKeysWidth(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 0
    .parameter "gl"
    .parameter "keysWidth"

    .prologue
    .line 809
    iput p2, p0, Lorg/tf/stage/Stage;->m_keysWidth:F

    .line 810
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->unloadKeyResources(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 811
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->createKeySprites(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 812
    return-void
.end method

.method private setPosition()V
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v1}, Lorg/tf/stage/SongPlayer;->getPosition()I

    move-result v0

    .line 363
    .local v0, position:I
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v1}, Lorg/tf/stage/Stage$LocalTimer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v1}, Lorg/tf/stage/Stage$LocalTimer;->getRemainingTime()I

    move-result v1

    sub-int/2addr v0, v1

    .line 368
    :cond_0
    :goto_0
    invoke-static {}, Lorg/tf/Config;->getNotesDelay()I

    move-result v1

    iget-object v2, p0, Lorg/tf/stage/Stage;->m_song:Lorg/tf/song/Song;

    invoke-virtual {v2}, Lorg/tf/song/Song;->getIni()Lorg/tf/song/SongIni;

    move-result-object v2

    invoke-virtual {v2}, Lorg/tf/song/SongIni;->getDelay()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 369
    iput v0, p0, Lorg/tf/stage/Stage;->m_position:I

    .line 370
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_guitar:Lorg/tf/stage/Guitar;

    iget v2, p0, Lorg/tf/stage/Stage;->m_bpm:F

    invoke-virtual {v1, v0, v2}, Lorg/tf/stage/Guitar;->setPosition(IF)V

    .line 371
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    iget v2, p0, Lorg/tf/stage/Stage;->m_bpm:F

    invoke-virtual {v1, v0, v2}, Lorg/tf/stage/StageEffects;->setPosition(IF)V

    .line 372
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_cooldownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v1}, Lorg/tf/stage/Stage$LocalTimer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_cooldownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v1}, Lorg/tf/stage/Stage$LocalTimer;->getElapsedTime()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private setReadiness()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 375
    const/high16 v0, 0x3f80

    .line 376
    .local v0, readiness:F
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v1}, Lorg/tf/stage/Stage$LocalTimer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v1}, Lorg/tf/stage/Stage$LocalTimer;->getProgress()F

    move-result v0

    .line 381
    :cond_0
    :goto_0
    iput v0, p0, Lorg/tf/stage/Stage;->m_readiness:F

    .line 382
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_guitar:Lorg/tf/stage/Guitar;

    invoke-virtual {v1, v0}, Lorg/tf/stage/Guitar;->setReadiness(F)V

    .line 383
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    const/high16 v2, 0x4040

    mul-float/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/tf/stage/StageEffects;->setReadiness(F)V

    .line 384
    return-void

    .line 378
    :cond_1
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_cooldownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v1}, Lorg/tf/stage/Stage$LocalTimer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_cooldownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v1}, Lorg/tf/stage/Stage$LocalTimer;->getProgress()F

    move-result v1

    sub-float v0, v3, v1

    goto :goto_0
.end method

.method private startCountdown()V
    .locals 3

    .prologue
    .line 468
    const v1, 0x476a6000

    iget v2, p0, Lorg/tf/stage/Stage;->m_bpm:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 469
    .local v0, stepPeriod:I
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    mul-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Lorg/tf/stage/Stage$LocalTimer;->start(I)V

    .line 470
    return-void
.end method

.method private startPlaying()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v0}, Lorg/tf/stage/SongPlayer;->play()V

    .line 307
    return-void
.end method

.method private touchKeys(FF)V
    .locals 8
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 815
    move v5, p1

    .line 816
    .local v5, x:F
    iget-object v7, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v7, v7, Lorg/tf/gl/GLRect;->height:F

    sub-float v6, v7, p2

    .line 817
    .local v6, y:F
    iget v4, p0, Lorg/tf/stage/Stage;->m_keyTapzoneWidth:F

    .line 818
    .local v4, tapzoneWidth:F
    const v7, 0x3ecccccd

    mul-float v1, v4, v7

    .line 819
    .local v1, middleTapzoneWidth:F
    const/4 v3, 0x0

    .line 820
    .local v3, strings:I
    const/high16 v7, 0x42f0

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_0

    .line 821
    move v2, v4

    .line 822
    .local v2, right:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v7, 0x5

    if-ne v0, v7, :cond_1

    .line 840
    .end local v0           #i:I
    .end local v2           #right:F
    :cond_0
    :goto_1
    sget v7, Lorg/tf/stage/Stage;->m_lastPickedKeyStrings:I

    sput v7, Lorg/tf/stage/Stage;->m_prevLastPickedKeyStrings:I

    .line 841
    iget v7, p0, Lorg/tf/stage/Stage;->m_pickedKeyStrings:I

    sput v7, Lorg/tf/stage/Stage;->m_lastPickedKeyStrings:I

    .line 843
    iget v7, p0, Lorg/tf/stage/Stage;->m_keyStrings:I

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v7, v3

    iput v7, p0, Lorg/tf/stage/Stage;->m_pickedKeyStrings:I

    .line 844
    iput v3, p0, Lorg/tf/stage/Stage;->m_keyStrings:I

    .line 860
    return-void

    .line 823
    .restart local v0       #i:I
    .restart local v2       #right:F
    :cond_1
    cmpg-float v7, v5, v2

    if-gez v7, :cond_3

    .line 824
    rem-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_2

    .line 825
    div-int/lit8 v7, v0, 0x2

    invoke-static {v3, v7}, Lorg/tf/stage/Guitar;->stringsAdd(II)I

    move-result v3

    goto :goto_1

    .line 827
    :cond_2
    div-int/lit8 v7, v0, 0x2

    invoke-static {v3, v7}, Lorg/tf/stage/Guitar;->stringsAdd(II)I

    move-result v3

    .line 828
    div-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v7}, Lorg/tf/stage/Guitar;->stringsAdd(II)I

    move-result v3

    .line 830
    goto :goto_1

    .line 832
    :cond_3
    rem-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_4

    .line 833
    add-float/2addr v2, v1

    .line 822
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    :cond_4
    add-float/2addr v2, v4

    goto :goto_2
.end method

.method private unloadCountdownResources(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    .line 519
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_countdownFont:Lorg/tf/gl/sprite/SpriteFont;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_countdownFont:Lorg/tf/gl/sprite/SpriteFont;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/SpriteFont;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 521
    iput-object v1, p0, Lorg/tf/stage/Stage;->m_countdownFont:Lorg/tf/gl/sprite/SpriteFont;

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_countdownText:Lorg/tf/gl/sprite/SpriteRegion;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_countdownText:Lorg/tf/gl/sprite/SpriteRegion;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/SpriteRegion;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 525
    iput-object v1, p0, Lorg/tf/stage/Stage;->m_countdownText:Lorg/tf/gl/sprite/SpriteRegion;

    .line 527
    :cond_1
    return-void
.end method

.method private unloadEffects(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 440
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    invoke-virtual {v0, p1}, Lorg/tf/stage/StageEffects;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    .line 444
    :cond_0
    return-void
.end method

.method private unloadFPSResources(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 766
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_fpsFont:Lorg/tf/gl/sprite/SpriteFont;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_fpsFont:Lorg/tf/gl/sprite/SpriteFont;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/SpriteFont;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/stage/Stage;->m_fpsFont:Lorg/tf/gl/sprite/SpriteFont;

    .line 770
    :cond_0
    return-void
.end method

.method private unloadKeyResources(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    .line 798
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_keySprite:Lorg/tf/gl/sprite/SpriteRegion;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_keySprite:Lorg/tf/gl/sprite/SpriteRegion;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/SpriteRegion;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 800
    iput-object v1, p0, Lorg/tf/stage/Stage;->m_keySprite:Lorg/tf/gl/sprite/SpriteRegion;

    .line 802
    :cond_0
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_leafKeySprite:Lorg/tf/gl/sprite/SpriteRegion;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_leafKeySprite:Lorg/tf/gl/sprite/SpriteRegion;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/SpriteRegion;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 804
    iput-object v1, p0, Lorg/tf/stage/Stage;->m_leafKeySprite:Lorg/tf/gl/sprite/SpriteRegion;

    .line 806
    :cond_1
    return-void
.end method

.method private unloadScoreResources(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    .line 592
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/SpriteFont;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 594
    iput-object v1, p0, Lorg/tf/stage/Stage;->m_scoreFont:Lorg/tf/gl/sprite/SpriteFont;

    .line 596
    :cond_0
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier2x:Lorg/tf/gl/sprite/Sprite;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier2x:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/Sprite;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 598
    iput-object v1, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier2x:Lorg/tf/gl/sprite/Sprite;

    .line 600
    :cond_1
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier3x:Lorg/tf/gl/sprite/Sprite;

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier3x:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/Sprite;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 602
    iput-object v1, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier3x:Lorg/tf/gl/sprite/Sprite;

    .line 604
    :cond_2
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier4x:Lorg/tf/gl/sprite/Sprite;

    if-eqz v0, :cond_3

    .line 605
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier4x:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/Sprite;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 606
    iput-object v1, p0, Lorg/tf/stage/Stage;->m_scoreMultiplier4x:Lorg/tf/gl/sprite/Sprite;

    .line 608
    :cond_3
    return-void
.end method

.method private updateChordBufferNotes()V
    .locals 9

    .prologue
    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 338
    .local v2, curTime:J
    iget-object v8, p0, Lorg/tf/stage/Stage;->m_pickedNotes:Ljava/util/ArrayList;

    new-instance v0, Lorg/tf/song/Note;

    iget v1, p0, Lorg/tf/stage/Stage;->m_pickedKeyStrings:I

    const-wide/16 v4, 0xfa

    add-long/2addr v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/tf/song/Note;-><init>(IJJ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/stage/Stage;->m_bufferChordStrings:I

    .line 344
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_pickedNotes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    .line 359
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_pickedNotes:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/tf/song/Note;

    .line 348
    .local v6, curNote:Lorg/tf/song/Note;
    invoke-virtual {v6}, Lorg/tf/song/Note;->getEndTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 350
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_pickedNotes:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 351
    add-int/lit8 v7, v7, -0x1

    .line 344
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 355
    :cond_1
    iget v0, p0, Lorg/tf/stage/Stage;->m_bufferChordStrings:I

    invoke-virtual {v6}, Lorg/tf/song/Note;->getString()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/tf/stage/Stage;->m_bufferChordStrings:I

    goto :goto_1
.end method

.method private updateScoreOnMiss()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 701
    iput v0, p0, Lorg/tf/stage/Stage;->m_currentStreak:I

    .line 702
    iput v0, p0, Lorg/tf/stage/Stage;->m_chordEndPosition:I

    .line 703
    return-void
.end method

.method private updateScoreOnPick([Lorg/tf/song/NoteEvent;I)V
    .locals 7
    .parameter "chord"
    .parameter "chordLength"

    .prologue
    .line 677
    iget v0, p0, Lorg/tf/stage/Stage;->m_chordEndPosition:I

    .line 678
    .local v0, chordEnd:I
    const/4 v3, 0x0

    .line 679
    .local v3, repickedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ne v1, p2, :cond_2

    .line 686
    if-nez v3, :cond_0

    .line 687
    iget v4, p0, Lorg/tf/stage/Stage;->m_score:I

    invoke-direct {p0}, Lorg/tf/stage/Stage;->getBonusScore()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/tf/stage/Stage;->m_score:I

    .line 688
    iget v4, p0, Lorg/tf/stage/Stage;->m_position:I

    iput v4, p0, Lorg/tf/stage/Stage;->m_chordBeginPosition:I

    .line 690
    :cond_0
    iput v0, p0, Lorg/tf/stage/Stage;->m_chordEndPosition:I

    .line 691
    iget v4, p0, Lorg/tf/stage/Stage;->m_currentStreak:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/tf/stage/Stage;->m_currentStreak:I

    .line 692
    iget v4, p0, Lorg/tf/stage/Stage;->m_pickedNoteCount:I

    sub-int v5, p2, v3

    add-int/2addr v4, v5

    iput v4, p0, Lorg/tf/stage/Stage;->m_pickedNoteCount:I

    .line 693
    iget v4, p0, Lorg/tf/stage/Stage;->m_longestStreak:I

    iget v5, p0, Lorg/tf/stage/Stage;->m_currentStreak:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lorg/tf/stage/Stage;->m_longestStreak:I

    .line 694
    iget v4, p0, Lorg/tf/stage/Stage;->m_currentStreak:I

    rem-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_1

    .line 695
    iget-object v4, p0, Lorg/tf/stage/Stage;->m_scoreMultiplierTimer:Lorg/tf/stage/Stage$LocalTimer;

    const/16 v5, 0x2bc

    invoke-virtual {v4, v5}, Lorg/tf/stage/Stage$LocalTimer;->start(I)V

    .line 697
    :cond_1
    iget v4, p0, Lorg/tf/stage/Stage;->m_score:I

    mul-int/lit8 v5, p2, 0x32

    invoke-direct {p0}, Lorg/tf/stage/Stage;->getScoreMultiplier()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lorg/tf/stage/Stage;->m_score:I

    .line 698
    return-void

    .line 680
    :cond_2
    aget-object v2, p1, v1

    .line 681
    .local v2, note:Lorg/tf/song/NoteEvent;
    invoke-virtual {v2}, Lorg/tf/song/NoteEvent;->isRepicked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 682
    add-int/lit8 v3, v3, 0x1

    .line 684
    :cond_3
    invoke-virtual {v2}, Lorg/tf/song/NoteEvent;->getEndTime()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateScoreOnSlip()V
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/stage/Stage;->m_currentStreak:I

    .line 711
    return-void
.end method

.method private updateScoreOnUnpick()V
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/stage/Stage;->m_chordEndPosition:I

    .line 707
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v0}, Lorg/tf/stage/SongPlayer;->close()V

    .line 78
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_soundEffects:Lorg/tf/stage/StageSoundEffects;

    invoke-virtual {v0}, Lorg/tf/stage/StageSoundEffects;->destroy()V

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lorg/tf/stage/Stage;->m_state:I

    .line 80
    return-void
.end method

.method public loadResources(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "context"
    .parameter "gl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Lorg/tf/stage/Stage;->checkNotDestroyed()V

    .line 224
    :try_start_0
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_guitar:Lorg/tf/stage/Guitar;

    invoke-virtual {v1, p1, p2}, Lorg/tf/stage/Guitar;->loadResources(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 225
    invoke-direct {p0, p2}, Lorg/tf/stage/Stage;->loadCountdownResources(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 226
    invoke-direct {p0, p1, p2}, Lorg/tf/stage/Stage;->loadScoreResources(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 227
    invoke-direct {p0, p2}, Lorg/tf/stage/Stage;->loadFPSResources(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 228
    invoke-direct {p0, p1, p2}, Lorg/tf/stage/Stage;->loadKeyResources(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 229
    invoke-direct {p0, p1, p2}, Lorg/tf/stage/Stage;->loadEffects(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 230
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/tf/stage/Stage;->m_resourcesLoaded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    return-void

    .line 232
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 233
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0, p2}, Lorg/tf/stage/Stage;->unloadResources(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 234
    throw v0
.end method

.method public onKeyPressed(II)V
    .locals 1
    .parameter "keyCode"
    .parameter "metaState"

    .prologue
    .line 214
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    invoke-virtual {v0, p1, p2}, Lorg/tf/stage/StageEffects;->onKeyPressed(II)V

    .line 217
    :cond_0
    return-void
.end method

.method public onMultitouch([F)V
    .locals 2
    .parameter "screenCoordinates"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->multitouchKeys([F)V

    .line 204
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_guitar:Lorg/tf/stage/Guitar;

    iget v1, p0, Lorg/tf/stage/Stage;->m_keyStrings:I

    invoke-virtual {v0, v1}, Lorg/tf/stage/Guitar;->setActiveStrings(I)V

    .line 205
    return-void
.end method

.method public onTouch(FF)V
    .locals 2
    .parameter "screenX"
    .parameter "screenY"

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lorg/tf/stage/Stage;->touchKeys(FF)V

    .line 199
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_guitar:Lorg/tf/stage/Guitar;

    iget v1, p0, Lorg/tf/stage/Stage;->m_keyStrings:I

    invoke-virtual {v0, v1}, Lorg/tf/stage/Guitar;->setActiveStrings(I)V

    .line 200
    return-void
.end method

.method public render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 274
    invoke-direct {p0}, Lorg/tf/stage/Stage;->checkNotDestroyed()V

    .line 275
    invoke-direct {p0}, Lorg/tf/stage/Stage;->advance()V

    .line 276
    iget-boolean v0, p0, Lorg/tf/stage/Stage;->m_renderingStopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/tf/stage/Stage;->m_resourcesLoaded:Z

    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->renderBackground(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 280
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_guitar:Lorg/tf/stage/Guitar;

    invoke-virtual {v0, p1}, Lorg/tf/stage/Guitar;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 281
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->renderForeground(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public resetState()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/tf/stage/Stage;->checkNotDestroyed()V

    .line 86
    iget v0, p0, Lorg/tf/stage/Stage;->m_state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/tf/stage/Stage;->invalidStateException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v0}, Lorg/tf/stage/Stage$LocalTimer;->reset()V

    .line 90
    invoke-direct {p0}, Lorg/tf/stage/Stage;->resetEffects()V

    .line 91
    invoke-direct {p0}, Lorg/tf/stage/Stage;->resetScore()V

    .line 92
    invoke-direct {p0}, Lorg/tf/stage/Stage;->resetNotes()V

    .line 93
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/tf/stage/SongPlayer;->setPosition(I)V

    .line 94
    invoke-direct {p0}, Lorg/tf/stage/Stage;->resetPlayingState()V

    .line 95
    return-void
.end method

.method public restoreState(Ljava/io/DataInputStream;)V
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/tf/stage/Stage;->checkNotDestroyed()V

    .line 115
    iget v0, p0, Lorg/tf/stage/Stage;->m_state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 116
    invoke-direct {p0}, Lorg/tf/stage/Stage;->invalidStateException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 118
    :cond_0
    const v0, 0x53544147

    invoke-static {p1, v0}, Lorg/tf/util/DataStreamHelpers;->checkTag(Ljava/io/DataInput;I)V

    .line 119
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->restoreLocalTime(Ljava/io/DataInputStream;)V

    .line 120
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v0, p1}, Lorg/tf/stage/Stage$LocalTimer;->restore(Ljava/io/DataInputStream;)V

    .line 121
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_cooldownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v0, p1}, Lorg/tf/stage/Stage$LocalTimer;->restore(Ljava/io/DataInputStream;)V

    .line 122
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->restoreEffects(Ljava/io/DataInputStream;)V

    .line 123
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->restoreScore(Ljava/io/DataInputStream;)V

    .line 124
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->restoreBPM(Ljava/io/DataInputStream;)V

    .line 125
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->restoreNotes(Ljava/io/DataInputStream;)V

    .line 126
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/tf/stage/SongPlayer;->setPosition(I)V

    .line 128
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage;->m_position:I

    .line 129
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage;->m_readiness:F

    .line 130
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_guitar:Lorg/tf/stage/Guitar;

    iget v1, p0, Lorg/tf/stage/Stage;->m_readiness:F

    invoke-virtual {v0, v1}, Lorg/tf/stage/Guitar;->setReadiness(F)V

    .line 131
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_guitar:Lorg/tf/stage/Guitar;

    iget v1, p0, Lorg/tf/stage/Stage;->m_position:I

    iget v2, p0, Lorg/tf/stage/Stage;->m_bpm:F

    invoke-virtual {v0, v1, v2}, Lorg/tf/stage/Guitar;->setPosition(IF)V

    .line 132
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    iget v1, p0, Lorg/tf/stage/Stage;->m_readiness:F

    invoke-virtual {v0, v1}, Lorg/tf/stage/StageEffects;->setReadiness(F)V

    .line 133
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    iget v1, p0, Lorg/tf/stage/Stage;->m_position:I

    iget v2, p0, Lorg/tf/stage/Stage;->m_bpm:F

    invoke-virtual {v0, v1, v2}, Lorg/tf/stage/StageEffects;->setPosition(IF)V

    .line 134
    return-void
.end method

.method public restoreState([B)V
    .locals 2
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 146
    .local v1, stream:Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    .local v0, dataStream:Ljava/io/DataInputStream;
    invoke-virtual {p0, v0}, Lorg/tf/stage/Stage;->restoreState(Ljava/io/DataInputStream;)V

    .line 148
    return-void
.end method

.method public saveState(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/tf/stage/Stage;->checkNotDestroyed()V

    .line 99
    const v0, 0x53544147

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 100
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->saveLocalTime(Ljava/io/DataOutputStream;)V

    .line 101
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v0, p1}, Lorg/tf/stage/Stage$LocalTimer;->save(Ljava/io/DataOutputStream;)V

    .line 102
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_cooldownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v0, p1}, Lorg/tf/stage/Stage$LocalTimer;->save(Ljava/io/DataOutputStream;)V

    .line 103
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->saveEffects(Ljava/io/DataOutputStream;)V

    .line 104
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->saveScore(Ljava/io/DataOutputStream;)V

    .line 105
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->saveBPM(Ljava/io/DataOutputStream;)V

    .line 106
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->saveNotes(Ljava/io/DataOutputStream;)V

    .line 107
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v0}, Lorg/tf/stage/SongPlayer;->getPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 109
    iget v0, p0, Lorg/tf/stage/Stage;->m_position:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 110
    iget v0, p0, Lorg/tf/stage/Stage;->m_readiness:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 111
    return-void
.end method

.method public saveState()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 138
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 139
    .local v0, dataStream:Ljava/io/DataOutputStream;
    invoke-virtual {p0, v0}, Lorg/tf/stage/Stage;->saveState(Ljava/io/DataOutputStream;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 141
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public setCallback(Lorg/tf/stage/Stage$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 192
    iput-object p1, p0, Lorg/tf/stage/Stage;->m_callback:Lorg/tf/stage/Stage$Callback;

    .line 193
    return-void
.end method

.method public setFPS(I)V
    .locals 0
    .parameter "fps"

    .prologue
    .line 208
    iput p1, p0, Lorg/tf/stage/Stage;->m_averageFPS:I

    .line 209
    return-void
.end method

.method public setViewport(Ljavax/microedition/khronos/opengles/GL10;Lorg/tf/gl/GLRect;)V
    .locals 5
    .parameter "gl"
    .parameter "viewport"

    .prologue
    const/high16 v4, 0x4000

    const/high16 v3, 0x4268

    .line 249
    invoke-direct {p0}, Lorg/tf/stage/Stage;->checkNotDestroyed()V

    .line 250
    new-instance v1, Lorg/tf/gl/GLRect;

    invoke-direct {v1, p2}, Lorg/tf/gl/GLRect;-><init>(Lorg/tf/gl/GLRect;)V

    iput-object v1, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    .line 251
    new-instance v0, Lorg/tf/gl/GLRect;

    invoke-direct {v0}, Lorg/tf/gl/GLRect;-><init>()V

    .line 252
    .local v0, guitarViewport:Lorg/tf/gl/GLRect;
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v1, v1, Lorg/tf/gl/GLRect;->height:F

    iget-object v2, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v2, v2, Lorg/tf/gl/GLRect;->width:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 253
    const/4 v1, 0x0

    iput v1, v0, Lorg/tf/gl/GLRect;->x:F

    .line 254
    iput v3, v0, Lorg/tf/gl/GLRect;->y:F

    .line 255
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v1, v1, Lorg/tf/gl/GLRect;->width:F

    iput v1, v0, Lorg/tf/gl/GLRect;->width:F

    .line 256
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v1, v1, Lorg/tf/gl/GLRect;->width:F

    iput v1, v0, Lorg/tf/gl/GLRect;->height:F

    .line 258
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v1, v1, Lorg/tf/gl/GLRect;->width:F

    div-float/2addr v1, v4

    iput v1, p0, Lorg/tf/stage/Stage;->m_scoreCenter:F

    .line 259
    iget v1, v0, Lorg/tf/gl/GLRect;->width:F

    invoke-direct {p0, p1, v1}, Lorg/tf/stage/Stage;->setKeysWidth(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 269
    :goto_0
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_guitar:Lorg/tf/stage/Guitar;

    invoke-virtual {v1, v0}, Lorg/tf/stage/Guitar;->setViewport(Lorg/tf/gl/GLRect;)V

    .line 270
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_effects:Lorg/tf/stage/StageEffects;

    invoke-virtual {v1, p2}, Lorg/tf/stage/StageEffects;->setViewport(Lorg/tf/gl/GLRect;)V

    .line 271
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v1, v1, Lorg/tf/gl/GLRect;->width:F

    div-float/2addr v1, v4

    iget-object v2, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v2, v2, Lorg/tf/gl/GLRect;->height:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/tf/gl/GLRect;->x:F

    .line 262
    iput v3, v0, Lorg/tf/gl/GLRect;->y:F

    .line 263
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v1, v1, Lorg/tf/gl/GLRect;->height:F

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/tf/gl/GLRect;->width:F

    .line 264
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v1, v1, Lorg/tf/gl/GLRect;->height:F

    sub-float/2addr v1, v3

    iput v1, v0, Lorg/tf/gl/GLRect;->height:F

    .line 266
    iget-object v1, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v1, v1, Lorg/tf/gl/GLRect;->width:F

    iget-object v2, p0, Lorg/tf/stage/Stage;->m_viewport:Lorg/tf/gl/GLRect;

    iget v2, v2, Lorg/tf/gl/GLRect;->width:F

    const/high16 v3, 0x4080

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/tf/stage/Stage;->m_scoreCenter:F

    .line 267
    iget v1, v0, Lorg/tf/gl/GLRect;->width:F

    invoke-direct {p0, p1, v1}, Lorg/tf/stage/Stage;->setKeysWidth(Ljavax/microedition/khronos/opengles/GL10;F)V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 153
    invoke-direct {p0}, Lorg/tf/stage/Stage;->checkNotDestroyed()V

    .line 154
    iget v0, p0, Lorg/tf/stage/Stage;->m_state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 155
    invoke-direct {p0}, Lorg/tf/stage/Stage;->invalidStateException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 157
    :cond_0
    iget v0, p0, Lorg/tf/stage/Stage;->m_state:I

    if-ne v0, v2, :cond_1

    .line 166
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-direct {p0}, Lorg/tf/stage/Stage;->resumeLocalTime()V

    .line 161
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_countdownTimer:Lorg/tf/stage/Stage$LocalTimer;

    invoke-virtual {v0}, Lorg/tf/stage/Stage$LocalTimer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    invoke-direct {p0}, Lorg/tf/stage/Stage;->startPlaying()V

    .line 164
    :cond_2
    iput v2, p0, Lorg/tf/stage/Stage;->m_state:I

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tf/stage/Stage;->m_renderingStopped:Z

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 2
    .parameter "stopRendering"

    .prologue
    .line 169
    invoke-direct {p0}, Lorg/tf/stage/Stage;->checkNotDestroyed()V

    .line 170
    iget v0, p0, Lorg/tf/stage/Stage;->m_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_player:Lorg/tf/stage/SongPlayer;

    invoke-virtual {v0}, Lorg/tf/stage/SongPlayer;->stop()V

    .line 172
    invoke-direct {p0}, Lorg/tf/stage/Stage;->pauseLocalTime()V

    .line 173
    const/4 v0, 0x1

    iput v0, p0, Lorg/tf/stage/Stage;->m_state:I

    .line 175
    :cond_0
    iput-boolean p1, p0, Lorg/tf/stage/Stage;->m_renderingStopped:Z

    .line 176
    return-void
.end method

.method public unloadResources(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 239
    iget-object v0, p0, Lorg/tf/stage/Stage;->m_guitar:Lorg/tf/stage/Guitar;

    invoke-virtual {v0, p1}, Lorg/tf/stage/Guitar;->unloadResources(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 240
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->unloadCountdownResources(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 241
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->unloadScoreResources(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 242
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->unloadFPSResources(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 243
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->unloadKeyResources(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 244
    invoke-direct {p0, p1}, Lorg/tf/stage/Stage;->unloadEffects(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tf/stage/Stage;->m_resourcesLoaded:Z

    .line 246
    return-void
.end method
