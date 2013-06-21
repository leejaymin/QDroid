.class public Lcom/google/devtools/simple/runtime/components/android/Sound;
.super Ljava/lang/Object;
.source "Sound.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;
.implements Lcom/google/devtools/simple/runtime/components/android/OnStopListener;
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->MEDIA:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A multimedia component that plays sound files and optionally vibrates for the number of milliseconds (thousandths of a second) specified in the Blocks Editor.  The name of the sound file to play can be specified either in the Designer or in the Blocks Editor.</p> <p>For legal sound and video formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>This component is best for short sound files, such as sound effects, while the <code>Player</code> component is more efficient for longer sounds, such as songs.</p>"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.VIBRATE, android.permission.INTERNET"
.end annotation


# static fields
.field private static final LOOP_MODE_NO_LOOP:I = 0x0

.field private static final MAX_STREAMS:I = 0xa

.field private static final PLAYBACK_RATE_NORMAL:F = 1.0f

.field private static final VOLUME_FULL:F = 1.0f


# instance fields
.field private final form:Lcom/google/devtools/simple/runtime/components/android/Form;

.field private minimumInterval:I

.field private soundId:I

.field private final soundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;

.field private sourcePath:Ljava/lang/String;

.field private streamId:I

.field private timeLastPlayed:J

.field private final vibe:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 4
    .parameter "container"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->form:Lcom/google/devtools/simple/runtime/components/android/Form;

    .line 73
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundMap:Ljava/util/Map;

    .line 75
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->form:Lcom/google/devtools/simple/runtime/components/android/Form;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->vibe:Landroid/os/Vibrator;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->sourcePath:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->form:Lcom/google/devtools/simple/runtime/components/android/Form;

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForOnResume(Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;)V

    .line 78
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->form:Lcom/google/devtools/simple/runtime/components/android/Form;

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForOnStop(Lcom/google/devtools/simple/runtime/components/android/OnStopListener;)V

    .line 81
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Sound;->MinimumInterval(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public MinimumInterval()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The minimum interval..."
    .end annotation

    .prologue
    .line 157
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->minimumInterval:I

    return v0
.end method

.method public MinimumInterval(I)V
    .locals 0
    .parameter "interval"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "500"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 171
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->minimumInterval:I

    .line 172
    return-void
.end method

.method public Pause()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 202
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v0, "Sound"

    const-string v1, "Unable to pause. Did you remember to call the Play function?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Play()V
    .locals 10
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    const-string v9, "Sound"

    .line 179
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundId:I

    if-eqz v0, :cond_3

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 181
    .local v7, currentTime:J
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->timeLastPlayed:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->timeLastPlayed:J

    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->minimumInterval:I

    int-to-long v5, v3

    add-long/2addr v0, v5

    cmp-long v0, v7, v0

    if-ltz v0, :cond_2

    .line 182
    :cond_0
    iput-wide v7, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->timeLastPlayed:J

    .line 183
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    .line 185
    const-string v0, "Sound"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundPool.play returned stream id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to play "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Sound;->SoundError(Ljava/lang/String;)V

    .line 195
    .end local v7           #currentTime:J
    :cond_1
    :goto_0
    return-void

    .line 190
    .restart local v7       #currentTime:J
    :cond_2
    const-string v0, "Sound"

    const-string v0, "Unable to play because MinimumInterval has not elapsed since last play."

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v7           #currentTime:J
    :cond_3
    const-string v0, "Sound"

    const-string v0, "Unable to play. Did you remember to set the Source property?"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Resume()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 214
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string v0, "Sound"

    const-string v1, "Unable to resume. Did you remember to call the Play function?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SoundError(Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 251
    const-string v0, "Sound"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v0, "SoundError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The name of the sound file.  Only <a href=\"http://developer.android.com/guide/appendix/media-formats.html\">certain formats</a> are supported."
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 9
    .parameter "path"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v8, "Unable to load "

    const-string v7, "Sound"

    const-string v6, "."

    .line 114
    if-nez p1, :cond_2

    const-string v3, ""

    :goto_0
    iput-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->sourcePath:Ljava/lang/String;

    .line 117
    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    iget v4, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->stop(I)V

    .line 119
    iput v5, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    .line 121
    :cond_0
    iput v5, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundId:I

    .line 123
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->sourcePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->sourcePath:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 125
    .local v1, existingSoundId:Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 126
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundId:I

    .line 144
    .end local v1           #existingSoundId:Ljava/lang/Integer;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v3, p1

    .line 114
    goto :goto_0

    .line 129
    .restart local v1       #existingSoundId:Ljava/lang/Integer;
    :cond_3
    const-string v3, "Sound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No existing sound with path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->sourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->form:Lcom/google/devtools/simple/runtime/components/android/Form;

    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->sourcePath:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->loadSoundPool(Landroid/media/SoundPool;Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)I

    move-result v2

    .line 132
    .local v2, newSoundId:I
    if-eqz v2, :cond_4

    .line 133
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->sourcePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v3, "Sound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully loaded sound: setting soundId to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput v2, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundId:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 139
    .end local v2           #newSoundId:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 140
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->sourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/devtools/simple/runtime/components/android/Sound;->SoundError(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #newSoundId:I
    :cond_4
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->sourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/devtools/simple/runtime/components/android/Sound;->SoundError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public Stop()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 226
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v0, "Sound"

    const-string v1, "Unable to stop. Did you remember to call the Play function?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Vibrate(I)V
    .locals 3
    .parameter "millisecs"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->vibe:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 240
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 281
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 284
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->vibe:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    .line 287
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "Sound"

    const-string v1, "Got onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    .line 273
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "Sound"

    const-string v1, "Got onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sound;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 263
    :cond_0
    return-void
.end method
