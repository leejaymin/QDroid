.class public Lorg/tf/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final COUNTOF_VOLUMES:I = 0x4

.field public static final DEFAULT_ABSOLUTE_VOLUMES:[F = null

.field public static final DEFAULT_EARLY_PICK_MARGIN:F = 0.25f

.field public static final DEFAULT_LATE_PICK_MARGIN:F = 0.25f

.field public static final DEFAULT_MIN_NOTES_DISTANCE:I = 0x64

.field public static final DEFAULT_NOTES_DELAY:I = 0x0

.field public static final DEFAULT_REPICK_MARGIN:F = 0.25f

.field public static final DEFAULT_SHOW_DEBUG_INFO:Z = false

.field public static final DEFAULT_SONG_CACHE_LENGTH:I = 0x5

.field public static final DEFAULT_TARGET_FPS:I = 0x1e

.field public static final DEFAULT_TOUCH_HANDLER_SLEEP:I = 0x14

.field private static final KEY_EARLY_PICK_MARGIN:Ljava/lang/String; = "earlyPickMargin"

.field private static final KEY_LATE_PICK_MARGIN:Ljava/lang/String; = "latePickMargin"

.field private static final KEY_MIN_NOTES_DISTANCE:Ljava/lang/String; = "minNotesDistance"

.field private static final KEY_MODIFICATION_TIME:Ljava/lang/String; = "modificationTime"

.field private static final KEY_NOTES_DELAY:Ljava/lang/String; = "notesDelay"

.field private static final KEY_REPICK_MARGIN:Ljava/lang/String; = "repickMargin"

.field private static final KEY_SHOW_DEBUG_INFO:Ljava/lang/String; = "showDebugInfo"

.field private static final KEY_SONG_CACHE_LENGTH:Ljava/lang/String; = "songCacheLength"

.field private static final KEY_TARGET_FPS:Ljava/lang/String; = "targetFPS"

.field private static final KEY_TOUCH_HANDLER_SLEEP:Ljava/lang/String; = "touchHandlerSleep"

.field private static final KEY_VOLUME_:Ljava/lang/String; = "volume#"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "config2"

.field public static final VOLUME_GUITAR:I = 0x2

.field public static final VOLUME_MENU:I = 0x0

.field public static final VOLUME_SCREWUP:I = 0x3

.field public static final VOLUME_SONG:I = 0x1

.field private static m_absoluteVolumes:[F

.field private static m_backgroundColor:I

.field private static m_baseColor:I

.field private static m_defaultTypeface:Landroid/graphics/Typeface;

.field private static m_earlyPickMargin:F

.field private static m_fireTypeface:Landroid/graphics/Typeface;

.field private static m_latePickMargin:F

.field private static m_masterVolume:F

.field private static m_masterVolumeFixed:Z

.field private static m_minNotesDistance:I

.field private static m_modificationTime:J

.field private static m_notesDelay:I

.field private static m_repickMargin:F

.field private static m_selectedColor:I

.field private static m_shadowColor:I

.field private static m_showDebugInfo:Z

.field private static m_songCacheLength:I

.field private static m_stringColors:[I

.field private static m_targetFPS:I

.field private static m_touchHandlerSleep:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 267
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tf/Config;->DEFAULT_ABSOLUTE_VOLUMES:[F

    .line 409
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/tf/Config;->m_modificationTime:J

    .line 427
    new-array v0, v2, [F

    sput-object v0, Lorg/tf/Config;->m_absoluteVolumes:[F

    .line 32
    return-void

    .line 267
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3et
        0x33t 0x33t 0x33t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0xcdt 0xcct 0x4ct 0x3et
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixMasterVolume(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "force"

    .prologue
    const v1, 0x3e99999a

    .line 103
    sget-boolean v0, Lorg/tf/Config;->m_masterVolumeFixed:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lorg/tf/Config;->getMasterVolume()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 104
    invoke-static {v1, p0}, Lorg/tf/Config;->setMasterVolume(FLandroid/content/Context;)V

    .line 106
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lorg/tf/Config;->m_masterVolumeFixed:Z

    .line 107
    return-void
.end method

.method public static getAbsoluteVolume(I)F
    .locals 1
    .parameter "volumeIndex"

    .prologue
    .line 141
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lorg/tf/Config;->m_absoluteVolumes:[F

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static getBackgroundColor()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lorg/tf/Config;->m_backgroundColor:I

    return v0
.end method

.method public static getBaseColor()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lorg/tf/Config;->m_baseColor:I

    return v0
.end method

.method public static getBuiltinSongsPath()Ljava/io/File;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "songs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lorg/tf/Config;->m_defaultTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getEarlyPickMargin()F
    .locals 1

    .prologue
    .line 197
    sget v0, Lorg/tf/Config;->m_earlyPickMargin:F

    return v0
.end method

.method public static getFireTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lorg/tf/Config;->m_fireTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getLatePickMargin()F
    .locals 1

    .prologue
    .line 205
    sget v0, Lorg/tf/Config;->m_latePickMargin:F

    return v0
.end method

.method public static getMasterVolume()F
    .locals 1

    .prologue
    .line 96
    sget v0, Lorg/tf/Config;->m_masterVolume:F

    return v0
.end method

.method public static getMasterVolume(Landroid/content/Context;)F
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x3

    .line 274
    .line 275
    const-string v3, "audio"

    .line 274
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 276
    .local v0, audio:Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 278
    .local v2, volume:I
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 280
    .local v1, maxVolume:I
    if-nez v1, :cond_0

    .line 281
    const/4 v3, 0x0

    .line 283
    :goto_0
    return v3

    :cond_0
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0
.end method

.method public static getMinNotesDistance()I
    .locals 1

    .prologue
    .line 221
    sget v0, Lorg/tf/Config;->m_minNotesDistance:I

    return v0
.end method

.method public static getNotesDelay()I
    .locals 1

    .prologue
    .line 189
    sget v0, Lorg/tf/Config;->m_notesDelay:I

    return v0
.end method

.method public static getRepickMargin()F
    .locals 1

    .prologue
    .line 213
    sget v0, Lorg/tf/Config;->m_repickMargin:F

    return v0
.end method

.method public static getRootPath()Ljava/io/File;
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 53
    .local v0, base:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "FireTaps"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getScaledVolume(I)F
    .locals 2
    .parameter "volumeIndex"

    .prologue
    const/4 v1, 0x0

    .line 156
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    :cond_0
    move v0, v1

    .line 162
    :goto_0
    return v0

    .line 159
    :cond_1
    sget v0, Lorg/tf/Config;->m_masterVolume:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    move v0, v1

    .line 160
    goto :goto_0

    .line 162
    :cond_2
    sget-object v0, Lorg/tf/Config;->m_absoluteVolumes:[F

    aget v0, v0, p0

    sget v1, Lorg/tf/Config;->m_masterVolume:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public static getSelectedColor()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lorg/tf/Config;->m_selectedColor:I

    return v0
.end method

.method public static getShadowColor()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lorg/tf/Config;->m_shadowColor:I

    return v0
.end method

.method public static getSongCacheLength()I
    .locals 1

    .prologue
    .line 179
    sget v0, Lorg/tf/Config;->m_songCacheLength:I

    return v0
.end method

.method public static getSongCachePath()Ljava/io/File;
    .locals 3

    .prologue
    .line 175
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/tf/Config;->getRootPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSongDBFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "songs.db"

    return-object v0
.end method

.method public static getSongsPath()Ljava/io/File;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/tf/Config;->getRootPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "songs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStringColor(I)I
    .locals 1
    .parameter "string"

    .prologue
    .line 71
    sget-object v0, Lorg/tf/Config;->m_stringColors:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getStringColors()[I
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/tf/Config;->m_stringColors:[I

    return-object v0
.end method

.method public static getTargetFPS()I
    .locals 1

    .prologue
    .line 229
    sget v0, Lorg/tf/Config;->m_targetFPS:I

    return v0
.end method

.method public static getTouchHandlerSleep()I
    .locals 1

    .prologue
    .line 237
    sget v0, Lorg/tf/Config;->m_touchHandlerSleep:I

    return v0
.end method

.method public static load(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-static {p0}, Lorg/tf/Config;->loadResources(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Lorg/tf/Config;->loadPreferences(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Lorg/tf/Config;->loadMasterVolume(Landroid/content/Context;)F

    .line 38
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/tf/Config;->fixMasterVolume(Landroid/content/Context;Z)V

    .line 39
    return-void
.end method

.method public static loadMasterVolume(Landroid/content/Context;)F
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x3

    .line 110
    .line 111
    const-string v3, "audio"

    .line 110
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 112
    .local v0, audio:Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 114
    .local v2, volume:I
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 116
    .local v1, maxVolume:I
    if-nez v1, :cond_0

    .line 117
    const/4 v3, 0x0

    sput v3, Lorg/tf/Config;->m_masterVolume:F

    .line 121
    :goto_0
    sget v3, Lorg/tf/Config;->m_masterVolume:F

    return v3

    .line 119
    :cond_0
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    sput v3, Lorg/tf/Config;->m_masterVolume:F

    goto :goto_0
.end method

.method private static loadPreferences(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3e80

    .line 325
    .line 326
    const-string v4, "config2"

    .line 325
    invoke-virtual {p0, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 332
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v4, "modificationTime"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 333
    .local v1, modificationTime:J
    sget-wide v4, Lorg/tf/Config;->m_modificationTime:J

    cmp-long v4, v4, v1

    if-ltz v4, :cond_1

    .line 365
    :cond_0
    return-void

    .line 336
    :cond_1
    sput-wide v1, Lorg/tf/Config;->m_modificationTime:J

    .line 339
    const-string v4, "notesDelay"

    .line 338
    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lorg/tf/Config;->m_notesDelay:I

    .line 341
    const-string v4, "songCacheLength"

    const/4 v5, 0x5

    .line 340
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lorg/tf/Config;->m_songCacheLength:I

    .line 344
    const-string v4, "earlyPickMargin"

    .line 343
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    sput v4, Lorg/tf/Config;->m_earlyPickMargin:F

    .line 346
    const-string v4, "latePickMargin"

    .line 345
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    sput v4, Lorg/tf/Config;->m_latePickMargin:F

    .line 348
    const-string v4, "repickMargin"

    .line 347
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    sput v4, Lorg/tf/Config;->m_repickMargin:F

    .line 350
    const-string v4, "minNotesDistance"

    const/16 v5, 0x64

    .line 349
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lorg/tf/Config;->m_minNotesDistance:I

    .line 353
    const-string v4, "targetFPS"

    const/16 v5, 0x1e

    .line 352
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lorg/tf/Config;->m_targetFPS:I

    .line 355
    const-string v4, "touchHandlerSleep"

    const/16 v5, 0x14

    .line 354
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lorg/tf/Config;->m_touchHandlerSleep:I

    .line 358
    const-string v4, "showDebugInfo"

    .line 357
    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lorg/tf/Config;->m_showDebugInfo:Z

    .line 360
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    .line 361
    sget-object v4, Lorg/tf/Config;->m_absoluteVolumes:[F

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "volume#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 363
    sget-object v6, Lorg/tf/Config;->DEFAULT_ABSOLUTE_VOLUMES:[F

    aget v6, v6, v0

    .line 361
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    aput v5, v4, v0

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static loadResources(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 310
    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lorg/tf/Config;->m_stringColors:[I

    .line 311
    sget-object v0, Lorg/tf/Config;->m_stringColors:[I

    const/4 v1, 0x0

    const v2, 0x7f070008

    invoke-static {p0, v2}, Lorg/tf/ui/UIHelpers;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    .line 312
    sget-object v0, Lorg/tf/Config;->m_stringColors:[I

    const/4 v1, 0x1

    const v2, 0x7f070009

    invoke-static {p0, v2}, Lorg/tf/ui/UIHelpers;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    .line 313
    sget-object v0, Lorg/tf/Config;->m_stringColors:[I

    const/4 v1, 0x2

    const v2, 0x7f07000a

    invoke-static {p0, v2}, Lorg/tf/ui/UIHelpers;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    .line 315
    const v0, 0x7f070002

    invoke-static {p0, v0}, Lorg/tf/ui/UIHelpers;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lorg/tf/Config;->m_baseColor:I

    .line 316
    const/high16 v0, 0x7f07

    invoke-static {p0, v0}, Lorg/tf/ui/UIHelpers;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lorg/tf/Config;->m_backgroundColor:I

    .line 317
    const v0, 0x7f070007

    invoke-static {p0, v0}, Lorg/tf/ui/UIHelpers;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lorg/tf/Config;->m_selectedColor:I

    .line 318
    const v0, 0x7f070004

    invoke-static {p0, v0}, Lorg/tf/ui/UIHelpers;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lorg/tf/Config;->m_shadowColor:I

    .line 320
    const-string v0, "fonts/title.ttf"

    invoke-static {p0, v0}, Lorg/tf/ui/UIHelpers;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lorg/tf/Config;->m_fireTypeface:Landroid/graphics/Typeface;

    .line 321
    const-string v0, "fonts/default.ttf"

    invoke-static {p0, v0}, Lorg/tf/ui/UIHelpers;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lorg/tf/Config;->m_defaultTypeface:Landroid/graphics/Typeface;

    .line 322
    return-void
.end method

.method public static reset()V
    .locals 0

    .prologue
    .line 46
    invoke-static {}, Lorg/tf/Config;->resetPreferences()V

    .line 47
    return-void
.end method

.method private static resetPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3e80

    .line 290
    sput v3, Lorg/tf/Config;->m_notesDelay:I

    .line 291
    const/4 v1, 0x5

    sput v1, Lorg/tf/Config;->m_songCacheLength:I

    .line 293
    sput v2, Lorg/tf/Config;->m_earlyPickMargin:F

    .line 294
    sput v2, Lorg/tf/Config;->m_latePickMargin:F

    .line 295
    sput v2, Lorg/tf/Config;->m_repickMargin:F

    .line 296
    const/16 v1, 0x64

    sput v1, Lorg/tf/Config;->m_minNotesDistance:I

    .line 298
    const/16 v1, 0x1e

    sput v1, Lorg/tf/Config;->m_targetFPS:I

    .line 299
    const/16 v1, 0x14

    sput v1, Lorg/tf/Config;->m_touchHandlerSleep:I

    .line 301
    sput-boolean v3, Lorg/tf/Config;->m_showDebugInfo:Z

    .line 303
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 306
    invoke-static {}, Lorg/tf/Config;->setModified()V

    .line 307
    return-void

    .line 304
    :cond_0
    sget-object v1, Lorg/tf/Config;->m_absoluteVolumes:[F

    sget-object v2, Lorg/tf/Config;->DEFAULT_ABSOLUTE_VOLUMES:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setAbsoluteVolume(IF)V
    .locals 2
    .parameter "volumeIndex"
    .parameter "volume"

    .prologue
    .line 147
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-static {}, Lorg/tf/Config;->setModified()V

    .line 151
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 152
    sget-object v0, Lorg/tf/Config;->m_absoluteVolumes:[F

    aput p1, v0, p0

    goto :goto_0
.end method

.method public static setEarlyPickMargin(F)V
    .locals 0
    .parameter "margin"

    .prologue
    .line 200
    sput p0, Lorg/tf/Config;->m_earlyPickMargin:F

    .line 201
    invoke-static {}, Lorg/tf/Config;->setModified()V

    .line 202
    return-void
.end method

.method public static setLatePickMargin(F)V
    .locals 0
    .parameter "margin"

    .prologue
    .line 208
    sput p0, Lorg/tf/Config;->m_latePickMargin:F

    .line 209
    invoke-static {}, Lorg/tf/Config;->setModified()V

    .line 210
    return-void
.end method

.method public static setMasterVolume(F)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/tf/Config;->setMasterVolume(FLandroid/content/Context;)V

    .line 100
    return-void
.end method

.method public static setMasterVolume(FLandroid/content/Context;)V
    .locals 5
    .parameter "volume"
    .parameter "context"

    .prologue
    const/4 v4, 0x3

    .line 125
    const/4 v2, 0x0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f80

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sput v2, Lorg/tf/Config;->m_masterVolume:F

    .line 126
    if-eqz p1, :cond_0

    .line 128
    const-string v2, "audio"

    .line 127
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 129
    .local v0, audio:Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 133
    .local v1, maxVolume:I
    int-to-float v2, v1

    mul-float/2addr v2, p0

    invoke-static {v2}, Lorg/tf/util/MathHelpers;->round(F)I

    move-result v2

    .line 134
    const/4 v3, 0x0

    .line 131
    invoke-virtual {v0, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 136
    .end local v0           #audio:Landroid/media/AudioManager;
    .end local v1           #maxVolume:I
    :cond_0
    return-void
.end method

.method public static setMinNotesDistance(I)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 224
    sput p0, Lorg/tf/Config;->m_minNotesDistance:I

    .line 225
    invoke-static {}, Lorg/tf/Config;->setModified()V

    .line 226
    return-void
.end method

.method private static setModified()V
    .locals 2

    .prologue
    .line 393
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lorg/tf/Config;->m_modificationTime:J

    .line 394
    return-void
.end method

.method public static setNotesDelay(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 192
    sput p0, Lorg/tf/Config;->m_notesDelay:I

    .line 193
    invoke-static {}, Lorg/tf/Config;->setModified()V

    .line 194
    return-void
.end method

.method public static setRepickMargin(F)V
    .locals 0
    .parameter "margin"

    .prologue
    .line 216
    sput p0, Lorg/tf/Config;->m_repickMargin:F

    .line 217
    invoke-static {}, Lorg/tf/Config;->setModified()V

    .line 218
    return-void
.end method

.method public static setSongCacheLength(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 182
    sput p0, Lorg/tf/Config;->m_songCacheLength:I

    .line 183
    invoke-static {}, Lorg/tf/Config;->setModified()V

    .line 184
    return-void
.end method

.method public static setTargetFPS(I)V
    .locals 0
    .parameter "fps"

    .prologue
    .line 232
    sput p0, Lorg/tf/Config;->m_targetFPS:I

    .line 233
    invoke-static {}, Lorg/tf/Config;->setModified()V

    .line 234
    return-void
.end method

.method public static setTouchHandlerSleep(I)V
    .locals 0
    .parameter "sleep"

    .prologue
    .line 240
    sput p0, Lorg/tf/Config;->m_touchHandlerSleep:I

    .line 241
    invoke-static {}, Lorg/tf/Config;->setModified()V

    .line 242
    return-void
.end method

.method public static showDebugInfo(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 248
    sput-boolean p0, Lorg/tf/Config;->m_showDebugInfo:Z

    .line 249
    invoke-static {}, Lorg/tf/Config;->setModified()V

    .line 250
    return-void
.end method

.method public static showDebugInfo()Z
    .locals 1

    .prologue
    .line 245
    sget-boolean v0, Lorg/tf/Config;->m_showDebugInfo:Z

    return v0
.end method

.method public static store(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-static {p0}, Lorg/tf/Config;->storePreferences(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private static storePreferences(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 368
    .line 369
    const-string v3, "config2"

    const/4 v4, 0x0

    .line 368
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 370
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "modificationTime"

    sget-wide v4, Lorg/tf/Config;->m_modificationTime:J

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 373
    const-string v3, "notesDelay"

    sget v4, Lorg/tf/Config;->m_notesDelay:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 374
    const-string v3, "songCacheLength"

    sget v4, Lorg/tf/Config;->m_songCacheLength:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 376
    const-string v3, "earlyPickMargin"

    sget v4, Lorg/tf/Config;->m_earlyPickMargin:F

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 377
    const-string v3, "latePickMargin"

    sget v4, Lorg/tf/Config;->m_latePickMargin:F

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 378
    const-string v3, "repickMargin"

    sget v4, Lorg/tf/Config;->m_repickMargin:F

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 379
    const-string v3, "minNotesDistance"

    sget v4, Lorg/tf/Config;->m_minNotesDistance:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 381
    const-string v3, "targetFPS"

    sget v4, Lorg/tf/Config;->m_targetFPS:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string v3, "touchHandlerSleep"

    sget v4, Lorg/tf/Config;->m_touchHandlerSleep:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 383
    const-string v3, "showDebugInfo"

    sget-boolean v4, Lorg/tf/Config;->m_showDebugInfo:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 385
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 389
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 390
    return-void

    .line 386
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "volume#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/tf/Config;->m_absoluteVolumes:[F

    aget v4, v4, v1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
