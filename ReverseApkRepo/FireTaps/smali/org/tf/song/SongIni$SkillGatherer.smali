.class Lorg/tf/song/SongIni$SkillGatherer;
.super Lorg/tf/midi/MidiCallbackHelper;
.source "SongIni.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/song/SongIni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkillGatherer"
.end annotation


# instance fields
.field private m_skills:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lorg/tf/midi/MidiCallbackHelper;-><init>()V

    return-void
.end method

.method public static gather(Ljava/io/InputStream;)I
    .locals 3
    .parameter "notesFileStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/song/InvalidSongException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lorg/tf/song/SongIni$SkillGatherer;

    invoke-direct {v0}, Lorg/tf/song/SongIni$SkillGatherer;-><init>()V

    .line 189
    .local v0, callback:Lorg/tf/song/SongIni$SkillGatherer;
    :try_start_0
    invoke-static {v0, p0}, Lorg/tf/midi/MidiReader;->read(Lorg/tf/midi/MidiReader$Callback;Ljava/io/InputStream;)V

    .line 190
    iget v2, v0, Lorg/tf/song/SongIni$SkillGatherer;->m_skills:I
    :try_end_0
    .catch Lorg/tf/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return v2

    .line 192
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 193
    .local v1, e:Lorg/tf/midi/InvalidMidiDataException;
    new-instance v2, Lorg/tf/song/InvalidSongException;

    invoke-direct {v2, v1}, Lorg/tf/song/InvalidSongException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 195
    .end local v1           #e:Lorg/tf/midi/InvalidMidiDataException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 196
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Lorg/tf/song/InvalidSongException;

    invoke-direct {v2, v1}, Lorg/tf/song/InvalidSongException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public noteOnOff(ZIII)V
    .locals 2
    .parameter "on"
    .parameter "channel"
    .parameter "note"
    .parameter "velocity"

    .prologue
    .line 201
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-static {p3}, Lorg/tf/song/NoteMap;->skillOf(I)I

    move-result v0

    .line 205
    .local v0, skill:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 206
    iget v1, p0, Lorg/tf/song/SongIni$SkillGatherer;->m_skills:I

    or-int/2addr v1, v0

    iput v1, p0, Lorg/tf/song/SongIni$SkillGatherer;->m_skills:I

    goto :goto_0
.end method
