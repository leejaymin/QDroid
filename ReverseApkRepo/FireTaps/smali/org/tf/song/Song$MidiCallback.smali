.class Lorg/tf/song/Song$MidiCallback;
.super Lorg/tf/midi/MidiCallbackHelper;
.source "Song.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/song/Song;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MidiCallback"
.end annotation


# static fields
.field private static final MAX_CHANNEL:I = 0xf


# instance fields
.field private m_currentTicks:I

.field private m_currentTrack:I

.field private m_lastBPM:F

.field private m_lastBPMMillis:F

.field private m_lastBPMTicks:I

.field private m_noteStartTimes:[F

.field private m_song:Lorg/tf/song/Song;

.field private m_tempoCount:I

.field private m_tempoSyncIndex:I

.field private m_tempos:[I

.field private m_ticksPerBeat:I


# direct methods
.method public constructor <init>(Lorg/tf/song/Song;)V
    .locals 3
    .parameter "song"

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-direct {p0}, Lorg/tf/midi/MidiCallbackHelper;-><init>()V

    .line 279
    iput-object p1, p0, Lorg/tf/song/Song$MidiCallback;->m_song:Lorg/tf/song/Song;

    .line 280
    const/16 v0, 0x140

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/tf/song/Song$MidiCallback;->m_noteStartTimes:[F

    .line 281
    iget-object v0, p0, Lorg/tf/song/Song$MidiCallback;->m_noteStartTimes:[F

    const/high16 v1, -0x4080

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 282
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/tf/song/Song$MidiCallback;->m_tempos:[I

    .line 283
    iput v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoSyncIndex:I

    .line 284
    iput v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoCount:I

    .line 285
    return-void
.end method

.method private addTempo(II)V
    .locals 8
    .parameter "tempoTicks"
    .parameter "tempoValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 362
    iget v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoSyncIndex:I

    iget v3, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoCount:I

    if-eq v2, v3, :cond_0

    .line 363
    new-instance v2, Lorg/tf/midi/InvalidMidiDataException;

    .line 364
    const-string v3, "Unexpected tempo event at [%d]; current tempo sync index is %d [%d] (out of %d)."

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 366
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 367
    iget v6, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoSyncIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/tf/song/Song$MidiCallback;->m_tempos:[I

    iget v7, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoSyncIndex:I

    mul-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 368
    iget v6, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 363
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/tf/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 370
    :cond_0
    iget v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoCount:I

    mul-int/lit8 v1, v2, 0x2

    .line 371
    .local v1, index:I
    iget-object v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempos:[I

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 372
    mul-int/lit8 v2, v1, 0x2

    new-array v0, v2, [I

    .line 373
    .local v0, copy:[I
    iget-object v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempos:[I

    iget-object v3, p0, Lorg/tf/song/Song$MidiCallback;->m_tempos:[I

    array-length v3, v3

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    iput-object v0, p0, Lorg/tf/song/Song$MidiCallback;->m_tempos:[I

    .line 376
    .end local v0           #copy:[I
    :cond_1
    iget v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoCount:I

    .line 377
    iget v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoSyncIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoSyncIndex:I

    .line 378
    iget-object v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempos:[I

    aput p1, v2, v1

    .line 379
    iget-object v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempos:[I

    add-int/lit8 v3, v1, 0x1

    aput p2, v2, v3

    .line 380
    return-void
.end method

.method private applyTempo(II)V
    .locals 5
    .parameter "tempoTicks"
    .parameter "tempoValue"

    .prologue
    .line 351
    const v2, 0x4c64e1c0

    int-to-float v3, p2

    div-float v0, v2, v3

    .line 352
    .local v0, bpm:F
    iget v2, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPMMillis:F

    .line 353
    iget v3, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPMTicks:I

    sub-int v3, p1, v3

    iget v4, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPM:F

    invoke-direct {p0, v3, v4}, Lorg/tf/song/Song$MidiCallback;->ticksToMillis(IF)F

    move-result v3

    .line 352
    add-float v1, v2, v3

    .line 354
    .local v1, currentMillis:F
    iput v1, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPMMillis:F

    .line 355
    iput v0, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPM:F

    .line 356
    iput p1, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPMTicks:I

    .line 357
    return-void
.end method

.method private getCurrentMillis()F
    .locals 3

    .prologue
    .line 383
    iget v0, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPMMillis:F

    .line 384
    iget v1, p0, Lorg/tf/song/Song$MidiCallback;->m_currentTicks:I

    iget v2, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPMTicks:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPM:F

    invoke-direct {p0, v1, v2}, Lorg/tf/song/Song$MidiCallback;->ticksToMillis(IF)F

    move-result v1

    .line 383
    add-float/2addr v0, v1

    return v0
.end method

.method private syncTempo()V
    .locals 4

    .prologue
    .line 340
    :goto_0
    iget v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoSyncIndex:I

    iget v3, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoCount:I

    if-ne v2, v3, :cond_1

    .line 348
    :cond_0
    return-void

    .line 341
    :cond_1
    iget-object v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempos:[I

    iget v3, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoSyncIndex:I

    mul-int/lit8 v3, v3, 0x2

    aget v0, v2, v3

    .line 342
    .local v0, tempoTicks:I
    iget-object v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempos:[I

    iget v3, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoSyncIndex:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v1, v2, v3

    .line 343
    .local v1, tempoValue:I
    iget v2, p0, Lorg/tf/song/Song$MidiCallback;->m_currentTicks:I

    if-gt v0, v2, :cond_0

    .line 346
    invoke-direct {p0, v0, v1}, Lorg/tf/song/Song$MidiCallback;->applyTempo(II)V

    .line 340
    iget v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoSyncIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoSyncIndex:I

    goto :goto_0
.end method

.method private ticksToMillis(IF)F
    .locals 2
    .parameter "ticks"
    .parameter "bpm"

    .prologue
    const/4 v1, 0x0

    .line 388
    cmpl-float v0, p2, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/tf/song/Song$MidiCallback;->m_ticksPerBeat:I

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 391
    :goto_0
    return v0

    :cond_1
    const v0, 0x476a6000

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/tf/song/Song$MidiCallback;->m_ticksPerBeat:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public noteOnOff(ZIII)V
    .locals 5
    .parameter "on"
    .parameter "channel"
    .parameter "note"
    .parameter "velocity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    const/high16 v4, -0x4080

    .line 307
    iget v2, p0, Lorg/tf/song/Song$MidiCallback;->m_currentTrack:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-static {p3}, Lorg/tf/song/NoteMap;->indexOf(I)I

    move-result v0

    .line 311
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 314
    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v2, v2, 0x14

    add-int/2addr v0, v2

    .line 315
    if-eqz p1, :cond_2

    .line 316
    iget-object v2, p0, Lorg/tf/song/Song$MidiCallback;->m_noteStartTimes:[F

    invoke-direct {p0}, Lorg/tf/song/Song$MidiCallback;->getCurrentMillis()F

    move-result v3

    aput v3, v2, v0

    goto :goto_0

    .line 318
    :cond_2
    iget-object v2, p0, Lorg/tf/song/Song$MidiCallback;->m_noteStartTimes:[F

    aget v1, v2, v0

    .line 320
    .local v1, startMillis:F
    cmpl-float v2, v1, v4

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lorg/tf/song/Song$MidiCallback;->m_noteStartTimes:[F

    aput v4, v2, v0

    .line 325
    iget-object v2, p0, Lorg/tf/song/Song$MidiCallback;->m_song:Lorg/tf/song/Song;

    invoke-direct {p0}, Lorg/tf/song/Song$MidiCallback;->getCurrentMillis()F

    move-result v3

    #calls: Lorg/tf/song/Song;->addNoteEvent(IFF)V
    invoke-static {v2, p3, v1, v3}, Lorg/tf/song/Song;->access$0(Lorg/tf/song/Song;IFF)V

    goto :goto_0
.end method

.method public onEventDeltaTime(I)V
    .locals 1
    .parameter "deltaTime"

    .prologue
    .line 300
    iget v0, p0, Lorg/tf/song/Song$MidiCallback;->m_currentTicks:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/tf/song/Song$MidiCallback;->m_currentTicks:I

    .line 301
    invoke-direct {p0}, Lorg/tf/song/Song$MidiCallback;->syncTempo()V

    .line 302
    return-void
.end method

.method public onStart(Lorg/tf/midi/MidiHeader;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 288
    iget v0, p1, Lorg/tf/midi/MidiHeader;->resolution:I

    iput v0, p0, Lorg/tf/song/Song$MidiCallback;->m_ticksPerBeat:I

    .line 289
    return-void
.end method

.method public onTrackStart(I)V
    .locals 2
    .parameter "track"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 291
    iput p1, p0, Lorg/tf/song/Song$MidiCallback;->m_currentTrack:I

    .line 292
    iput v0, p0, Lorg/tf/song/Song$MidiCallback;->m_currentTicks:I

    .line 293
    iput v1, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPM:F

    .line 294
    iput v0, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPMTicks:I

    .line 295
    iput v1, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPMMillis:F

    .line 296
    iput v0, p0, Lorg/tf/song/Song$MidiCallback;->m_tempoSyncIndex:I

    .line 297
    return-void
.end method

.method public tempo(I)V
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    .line 332
    iget v0, p0, Lorg/tf/song/Song$MidiCallback;->m_currentTicks:I

    invoke-direct {p0, v0, p1}, Lorg/tf/song/Song$MidiCallback;->addTempo(II)V

    .line 333
    iget v0, p0, Lorg/tf/song/Song$MidiCallback;->m_currentTicks:I

    invoke-direct {p0, v0, p1}, Lorg/tf/song/Song$MidiCallback;->applyTempo(II)V

    .line 334
    iget-object v0, p0, Lorg/tf/song/Song$MidiCallback;->m_song:Lorg/tf/song/Song;

    new-instance v1, Lorg/tf/song/TempoEvent;

    iget v2, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPM:F

    iget v3, p0, Lorg/tf/song/Song$MidiCallback;->m_lastBPMMillis:F

    invoke-direct {v1, v2, v3}, Lorg/tf/song/TempoEvent;-><init>(FF)V

    #calls: Lorg/tf/song/Song;->addTempoEvent(Lorg/tf/song/TempoEvent;)V
    invoke-static {v0, v1}, Lorg/tf/song/Song;->access$1(Lorg/tf/song/Song;Lorg/tf/song/TempoEvent;)V

    .line 335
    return-void
.end method
