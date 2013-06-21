.class public Lorg/tf/song/Song;
.super Ljava/lang/Object;
.source "Song.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/song/Song$MidiCallback;
    }
.end annotation


# static fields
.field private static final ACTUAL_STRING_COUNT:I = 0x5

.field public static final ALL_SKILLS:I = 0xf

.field public static final INVALID_SKILL:I = 0x0

.field private static final MERGE_MARGIN:F = 10.0f

.field public static final SKILL_AMAZING:I = 0x1

.field public static final SKILL_COUNT:I = 0x4

.field public static final SKILL_EASY:I = 0x4

.field public static final SKILL_MEDIUM:I = 0x2

.field public static final SKILL_SUPAEASY:I = 0x8

.field public static final STRING_COUNT:I = 0x3


# instance fields
.field private m_config:Lorg/tf/song/SongConfig;

.field private m_noteEvents:[[Lorg/tf/song/EventListBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Lorg/tf/song/EventListBuilder",
            "<",
            "Lorg/tf/song/NoteEvent;",
            ">;"
        }
    .end annotation
.end field

.field private m_selectedSkillIndex:I

.field private m_tempoEvents:Lorg/tf/song/EventListBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/tf/song/EventListBuilder",
            "<",
            "Lorg/tf/song/TempoEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/tf/song/SongConfig;)V
    .locals 7
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/song/InvalidSongException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/tf/song/Song;->m_config:Lorg/tf/song/SongConfig;

    .line 34
    new-instance v4, Lorg/tf/song/EventListBuilder;

    invoke-direct {v4}, Lorg/tf/song/EventListBuilder;-><init>()V

    iput-object v4, p0, Lorg/tf/song/Song;->m_tempoEvents:Lorg/tf/song/EventListBuilder;

    .line 36
    const/4 v4, 0x4

    new-array v4, v4, [[Lorg/tf/song/EventListBuilder;

    .line 35
    iput-object v4, p0, Lorg/tf/song/Song;->m_noteEvents:[[Lorg/tf/song/EventListBuilder;

    .line 37
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lorg/tf/song/Song;->m_noteEvents:[[Lorg/tf/song/EventListBuilder;

    array-length v4, v4

    if-ne v2, v4, :cond_0

    .line 46
    const/4 v4, -0x1

    iput v4, p0, Lorg/tf/song/Song;->m_selectedSkillIndex:I

    .line 49
    :try_start_0
    new-instance v4, Lorg/tf/song/Song$MidiCallback;

    invoke-direct {v4, p0}, Lorg/tf/song/Song$MidiCallback;-><init>(Lorg/tf/song/Song;)V

    .line 50
    new-instance v5, Ljava/io/FileInputStream;

    invoke-interface {p1}, Lorg/tf/song/SongConfig;->getNotesFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 48
    invoke-static {v4, v5}, Lorg/tf/midi/MidiReader;->read(Lorg/tf/midi/MidiReader$Callback;Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/tf/midi/InvalidMidiDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    invoke-direct {p0}, Lorg/tf/song/Song;->mergeNoteEvents()V

    .line 59
    return-void

    .line 40
    :cond_0
    new-array v1, v5, [Lorg/tf/song/EventListBuilder;

    .line 41
    .local v1, events:[Lorg/tf/song/EventListBuilder;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ne v3, v5, :cond_1

    .line 44
    iget-object v4, p0, Lorg/tf/song/Song;->m_noteEvents:[[Lorg/tf/song/EventListBuilder;

    aput-object v1, v4, v2

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    new-instance v4, Lorg/tf/song/EventListBuilder;

    invoke-direct {v4}, Lorg/tf/song/EventListBuilder;-><init>()V

    aput-object v4, v1, v3

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 52
    .end local v1           #events:[Lorg/tf/song/EventListBuilder;
    .end local v3           #j:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 53
    .local v0, e:Lorg/tf/midi/InvalidMidiDataException;
    new-instance v4, Lorg/tf/song/InvalidSongException;

    invoke-direct {v4, v0}, Lorg/tf/song/InvalidSongException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 55
    .end local v0           #e:Lorg/tf/midi/InvalidMidiDataException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 56
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lorg/tf/song/InvalidSongException;

    invoke-direct {v4, v0}, Lorg/tf/song/InvalidSongException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static synthetic access$0(Lorg/tf/song/Song;IFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Lorg/tf/song/Song;->addNoteEvent(IFF)V

    return-void
.end method

.method static synthetic access$1(Lorg/tf/song/Song;Lorg/tf/song/TempoEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lorg/tf/song/Song;->addTempoEvent(Lorg/tf/song/TempoEvent;)V

    return-void
.end method

.method private addNoteEvent(IFF)V
    .locals 6
    .parameter "note"
    .parameter "time"
    .parameter "endTime"

    .prologue
    .line 179
    invoke-static {p1}, Lorg/tf/song/NoteMap;->indexOf(I)I

    move-result v1

    .line 180
    .local v1, noteIndex:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 188
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {v1}, Lorg/tf/song/NoteMap;->indexToSkill(I)I

    move-result v3

    invoke-static {v3}, Lorg/tf/song/Song;->skillToIndex(I)I

    move-result v2

    .line 184
    .local v2, skillIndex:I
    iget-object v3, p0, Lorg/tf/song/Song;->m_noteEvents:[[Lorg/tf/song/EventListBuilder;

    aget-object v0, v3, v2

    .line 185
    .local v0, events:[Lorg/tf/song/EventListBuilder;
    invoke-static {v1}, Lorg/tf/song/NoteMap;->indexToString(I)I

    move-result v3

    aget-object v3, v0, v3

    .line 186
    new-instance v4, Lorg/tf/song/NoteEvent;

    invoke-static {v1}, Lorg/tf/song/NoteMap;->indexToString(I)I

    move-result v5

    invoke-direct {v4, v5, p2, p3}, Lorg/tf/song/NoteEvent;-><init>(IFF)V

    .line 185
    invoke-virtual {v3, v4}, Lorg/tf/song/EventListBuilder;->add(Lorg/tf/song/Event;)I

    goto :goto_0
.end method

.method private addTempoEvent(Lorg/tf/song/TempoEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 175
    iget-object v0, p0, Lorg/tf/song/Song;->m_tempoEvents:Lorg/tf/song/EventListBuilder;

    invoke-virtual {v0, p1}, Lorg/tf/song/EventListBuilder;->add(Lorg/tf/song/Event;)I

    .line 176
    return-void
.end method

.method private checkSkillSelected()V
    .locals 2

    .prologue
    .line 259
    iget v0, p0, Lorg/tf/song/Song;->m_selectedSkillIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Skill is not selected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    return-void
.end method

.method public static indexToSkill(I)I
    .locals 1
    .parameter "skillIndex"

    .prologue
    .line 156
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private static mergeNoteEvent(Lorg/tf/song/EventListBuilder;IIFF)V
    .locals 5
    .parameter
    .parameter "fromIndex"
    .parameter "string"
    .parameter "time"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tf/song/EventListBuilder",
            "<",
            "Lorg/tf/song/NoteEvent;",
            ">;IIFF)V"
        }
    .end annotation

    .prologue
    .local p0, events:Lorg/tf/song/EventListBuilder;,"Lorg/tf/song/EventListBuilder<Lorg/tf/song/NoteEvent;>;"
    const/high16 v4, 0x4120

    .line 237
    :goto_0
    if-nez p1, :cond_2

    .line 243
    :cond_0
    move v1, p1

    .line 244
    .local v1, toIndex:I
    :goto_1
    invoke-virtual {p0}, Lorg/tf/song/EventListBuilder;->count()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 252
    :cond_1
    sub-int v2, v1, p1

    invoke-virtual {p0, p1, v2}, Lorg/tf/song/EventListBuilder;->remove(II)V

    .line 253
    new-instance v2, Lorg/tf/song/NoteEvent;

    invoke-direct {v2, p2, p3, p4}, Lorg/tf/song/NoteEvent;-><init>(IFF)V

    invoke-virtual {p0, v2}, Lorg/tf/song/EventListBuilder;->add(Lorg/tf/song/Event;)I

    .line 254
    return-void

    .line 238
    .end local v1           #toIndex:I
    :cond_2
    const/4 v2, 0x1

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lorg/tf/song/EventListBuilder;->get(I)Lorg/tf/song/Event;

    move-result-object v0

    check-cast v0, Lorg/tf/song/NoteEvent;

    .line 239
    .local v0, mergeEvent:Lorg/tf/song/NoteEvent;
    invoke-virtual {v0}, Lorg/tf/song/NoteEvent;->getEndTime()F

    move-result v2

    sub-float v3, p3, v4

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 237
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 245
    .end local v0           #mergeEvent:Lorg/tf/song/NoteEvent;
    .restart local v1       #toIndex:I
    :cond_3
    invoke-virtual {p0, v1}, Lorg/tf/song/EventListBuilder;->get(I)Lorg/tf/song/Event;

    move-result-object v0

    check-cast v0, Lorg/tf/song/NoteEvent;

    .line 246
    .restart local v0       #mergeEvent:Lorg/tf/song/NoteEvent;
    add-float v2, p4, v4

    invoke-virtual {v0}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 249
    invoke-virtual {v0}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 250
    invoke-virtual {v0}, Lorg/tf/song/NoteEvent;->getEndTime()F

    move-result v2

    invoke-static {p4, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private mergeNoteEvents()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 193
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ne v0, v4, :cond_0

    .line 199
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lorg/tf/song/Song;->m_noteEvents:[[Lorg/tf/song/EventListBuilder;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lorg/tf/song/Song;->m_noteEvents:[[Lorg/tf/song/EventListBuilder;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/tf/song/Song;->m_noteEvents:[[Lorg/tf/song/EventListBuilder;

    aget-object v2, v2, v0

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lorg/tf/song/Song;->mergeNoteEvents([Lorg/tf/song/EventListBuilder;Lorg/tf/song/EventListBuilder;)V

    .line 196
    iget-object v1, p0, Lorg/tf/song/Song;->m_noteEvents:[[Lorg/tf/song/EventListBuilder;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/tf/song/Song;->m_noteEvents:[[Lorg/tf/song/EventListBuilder;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    invoke-direct {p0, v1, v2}, Lorg/tf/song/Song;->mergeNoteEvents([Lorg/tf/song/EventListBuilder;Lorg/tf/song/EventListBuilder;)V

    .line 193
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private mergeNoteEvents([Lorg/tf/song/EventListBuilder;Lorg/tf/song/EventListBuilder;)V
    .locals 13
    .parameter "stringEvents"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/tf/song/EventListBuilder",
            "<",
            "Lorg/tf/song/NoteEvent;",
            ">;",
            "Lorg/tf/song/EventListBuilder",
            "<",
            "Lorg/tf/song/NoteEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, events:Lorg/tf/song/EventListBuilder;,"Lorg/tf/song/EventListBuilder<Lorg/tf/song/NoteEvent;>;"
    const/4 v12, 0x3

    .line 205
    new-array v7, v12, [J

    .line 206
    .local v7, stringWeights:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ne v2, v12, :cond_0

    .line 210
    invoke-static {v7}, Ljava/util/Arrays;->sort([J)V

    .line 211
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2}, Lorg/tf/song/EventListBuilder;->count()I

    move-result v8

    if-ne v2, v8, :cond_1

    .line 230
    return-void

    .line 207
    :cond_0
    aget-object v8, p1, v2

    invoke-virtual {v8}, Lorg/tf/song/EventListBuilder;->count()I

    move-result v8

    int-to-long v0, v8

    .line 208
    .local v0, count:J
    const/16 v8, 0x20

    shl-long v8, v0, v8

    int-to-long v10, v2

    or-long/2addr v8, v10

    aput-wide v8, v7, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v0           #count:J
    :cond_1
    invoke-virtual {p2, v2}, Lorg/tf/song/EventListBuilder;->get(I)Lorg/tf/song/Event;

    move-result-object v5

    check-cast v5, Lorg/tf/song/NoteEvent;

    .line 213
    .local v5, note:Lorg/tf/song/NoteEvent;
    const/4 v3, 0x0

    .line 214
    .local v3, index:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ne v4, v12, :cond_3

    .line 222
    :goto_3
    if-gez v3, :cond_2

    .line 223
    const/4 v8, 0x2

    aget-wide v8, v7, v8

    long-to-int v6, v8

    .line 225
    .local v6, string:I
    aget-object v8, p1, v6

    .line 226
    neg-int v9, v3

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 227
    invoke-virtual {v5}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v10

    invoke-virtual {v5}, Lorg/tf/song/NoteEvent;->getEndTime()F

    move-result v11

    .line 224
    invoke-static {v8, v9, v6, v10, v11}, Lorg/tf/song/Song;->mergeNoteEvent(Lorg/tf/song/EventListBuilder;IIFF)V

    .line 211
    .end local v6           #string:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 215
    :cond_3
    aget-wide v8, v7, v4

    long-to-int v6, v8

    .line 216
    .restart local v6       #string:I
    aget-object v8, p1, v6

    invoke-virtual {v8, v5}, Lorg/tf/song/EventListBuilder;->add(Lorg/tf/song/Event;)I

    move-result v3

    .line 217
    if-ltz v3, :cond_4

    .line 218
    invoke-virtual {v5, v6}, Lorg/tf/song/NoteEvent;->setString(I)V

    goto :goto_3

    .line 214
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static skillToIndex(I)I
    .locals 2
    .parameter "skill"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 142
    if-ne p0, v0, :cond_1

    .line 143
    const/4 v0, 0x0

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    if-eq p0, v1, :cond_0

    .line 146
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    move v0, v1

    .line 147
    goto :goto_0

    .line 148
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 149
    const/4 v0, 0x3

    goto :goto_0

    .line 151
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getConfig()Lorg/tf/song/SongConfig;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/tf/song/Song;->m_config:Lorg/tf/song/SongConfig;

    return-object v0
.end method

.method public getIni()Lorg/tf/song/SongIni;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/tf/song/Song;->m_config:Lorg/tf/song/SongConfig;

    invoke-interface {v0}, Lorg/tf/song/SongConfig;->getIni()Lorg/tf/song/SongIni;

    move-result-object v0

    return-object v0
.end method

.method public getNoteEvents(I)Lorg/tf/song/EventList;
    .locals 5
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/tf/song/EventList",
            "<",
            "Lorg/tf/song/NoteEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/tf/song/Song;->checkSkillSelected()V

    .line 122
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 124
    const-string v1, "Invalid string index %d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    iget-object v0, p0, Lorg/tf/song/Song;->m_noteEvents:[[Lorg/tf/song/EventListBuilder;

    iget v1, p0, Lorg/tf/song/Song;->m_selectedSkillIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSelectedSkill()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/tf/song/Song;->m_selectedSkillIndex:I

    invoke-static {v0}, Lorg/tf/song/Song;->indexToSkill(I)I

    move-result v0

    return v0
.end method

.method public getTempoEvents()Lorg/tf/song/EventList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/tf/song/EventList",
            "<",
            "Lorg/tf/song/TempoEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/tf/song/Song;->m_tempoEvents:Lorg/tf/song/EventListBuilder;

    return-object v0
.end method

.method public getTotalNoteEventCount()I
    .locals 4

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/tf/song/Song;->checkSkillSelected()V

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, string:I
    :goto_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 136
    return v0

    .line 134
    :cond_0
    iget-object v2, p0, Lorg/tf/song/Song;->m_noteEvents:[[Lorg/tf/song/EventListBuilder;

    iget v3, p0, Lorg/tf/song/Song;->m_selectedSkillIndex:I

    aget-object v2, v2, v3

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/tf/song/EventListBuilder;->count()I

    move-result v2

    add-int/2addr v0, v2

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public glueNoteEvents(F)V
    .locals 11
    .parameter "minDistance"

    .prologue
    const/4 v10, 0x2

    .line 93
    invoke-direct {p0}, Lorg/tf/song/Song;->checkSkillSelected()V

    .line 95
    const/4 v7, 0x0

    .local v7, string:I
    :goto_0
    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 118
    return-void

    .line 96
    :cond_0
    iget-object v8, p0, Lorg/tf/song/Song;->m_noteEvents:[[Lorg/tf/song/EventListBuilder;

    iget v9, p0, Lorg/tf/song/Song;->m_selectedSkillIndex:I

    aget-object v8, v8, v9

    aget-object v2, v8, v7

    .line 97
    .local v2, events:Lorg/tf/song/EventListBuilder;,"Lorg/tf/song/EventListBuilder<Lorg/tf/song/NoteEvent;>;"
    const/4 v3, 0x0

    .line 98
    .local v3, eventsRemoved:I
    const/4 v4, 0x0

    .line 99
    .local v4, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/tf/song/EventListBuilder;->count()I

    move-result v8

    sub-int/2addr v8, v10

    if-le v4, v8, :cond_1

    .line 95
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v2, v4}, Lorg/tf/song/EventListBuilder;->get(I)Lorg/tf/song/Event;

    move-result-object v1

    check-cast v1, Lorg/tf/song/NoteEvent;

    .line 103
    .local v1, event:Lorg/tf/song/NoteEvent;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v2, v8}, Lorg/tf/song/EventListBuilder;->get(I)Lorg/tf/song/Event;

    move-result-object v6

    check-cast v6, Lorg/tf/song/NoteEvent;

    .line 104
    .local v6, nextEvent:Lorg/tf/song/NoteEvent;
    invoke-virtual {v6}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v8

    invoke-virtual {v1}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v9

    sub-float v0, v8, v9

    .line 105
    .local v0, distance:F
    cmpl-float v8, v0, p1

    if-lez v8, :cond_2

    .line 106
    add-int/lit8 v4, v4, 0x1

    .line 107
    goto :goto_1

    .line 109
    :cond_2
    new-instance v5, Lorg/tf/song/NoteEvent;

    .line 111
    invoke-virtual {v1}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v8

    .line 112
    invoke-virtual {v6}, Lorg/tf/song/NoteEvent;->getTime()F

    move-result v9

    .line 109
    invoke-direct {v5, v7, v8, v9}, Lorg/tf/song/NoteEvent;-><init>(IFF)V

    .line 113
    .local v5, newEvent:Lorg/tf/song/NoteEvent;
    invoke-virtual {v2, v4, v10}, Lorg/tf/song/EventListBuilder;->remove(II)V

    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 115
    invoke-virtual {v2, v5}, Lorg/tf/song/EventListBuilder;->add(Lorg/tf/song/Event;)I

    goto :goto_1
.end method

.method public selectAnySkill()V
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/tf/song/Song;->selectSkill(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/tf/song/Song;->selectSkill(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/tf/song/Song;->selectSkill(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/tf/song/Song;->selectSkill(I)Z

    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 86
    :cond_0
    return-void
.end method

.method public selectSkill(I)Z
    .locals 3
    .parameter "skill"

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0}, Lorg/tf/song/Song;->getIni()Lorg/tf/song/SongIni;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tf/song/SongIni;->getSkills()I

    move-result v0

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    move v0, v2

    .line 78
    :goto_0
    return v0

    .line 77
    :cond_0
    invoke-static {p1}, Lorg/tf/song/Song;->skillToIndex(I)I

    move-result v0

    iput v0, p0, Lorg/tf/song/Song;->m_selectedSkillIndex:I

    .line 78
    iget v0, p0, Lorg/tf/song/Song;->m_selectedSkillIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
