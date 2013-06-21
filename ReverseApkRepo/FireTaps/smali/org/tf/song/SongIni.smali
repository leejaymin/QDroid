.class public Lorg/tf/song/SongIni;
.super Ljava/lang/Object;
.source "SongIni.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/song/SongIni$SkillGatherer;
    }
.end annotation


# static fields
.field private static final DATA_TAG:I = 0x53494e49

.field public static final DEFAULT_CASETTE_COLOR:I = 0x0

.field public static final GUITAR_FILE:Ljava/lang/String; = "guitar.ogg"

.field public static final INI_FILE:Ljava/lang/String; = "song.ini"

.field private static final INI_SECTION:Ljava/lang/String; = "song"

.field public static final NOTES_FILE:Ljava/lang/String; = "notes.mid"

.field public static final SONG_FILE:Ljava/lang/String; = "song.ogg"


# instance fields
.field private m_artist:Ljava/lang/String;

.field private m_casetteColor:I

.field private m_delay:I

.field private m_id:I

.field private m_name:Ljava/lang/String;

.field private m_skills:I


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/io/File;)V
    .locals 5
    .parameter "assets"
    .parameter "songPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/song/InvalidSongException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "song.ini"

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lorg/tf/song/SongIni;->readFileData(Landroid/content/res/AssetManager;Ljava/io/File;)[B

    move-result-object v1

    .line 55
    .local v1, iniData:[B
    new-instance v3, Ljava/io/File;

    const-string v4, "notes.mid"

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lorg/tf/song/SongIni;->readFileData(Landroid/content/res/AssetManager;Ljava/io/File;)[B

    move-result-object v2

    .line 56
    .local v2, notesData:[B
    invoke-direct {p0, v1, v2}, Lorg/tf/song/SongIni;->construct([B[B)V

    .line 57
    invoke-direct {p0, v1, v2}, Lorg/tf/song/SongIni;->calcUnique([B[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-void

    .line 59
    .end local v1           #iniData:[B
    .end local v2           #notesData:[B
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 60
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lorg/tf/song/InvalidSongException;

    invoke-direct {v3, v0}, Lorg/tf/song/InvalidSongException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 1
    .parameter "dataIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const v0, 0x53494e49

    invoke-static {p1, v0}, Lorg/tf/util/DataStreamHelpers;->checkTag(Ljava/io/DataInput;I)V

    .line 75
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/song/SongIni;->m_id:I

    .line 76
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/song/SongIni;->m_name:Ljava/lang/String;

    .line 77
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/song/SongIni;->m_artist:Ljava/lang/String;

    .line 78
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/song/SongIni;->m_casetteColor:I

    .line 79
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/song/SongIni;->m_delay:I

    .line 80
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/song/SongIni;->m_skills:I

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 5
    .parameter "songPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/song/InvalidSongException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "song.ini"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/tf/song/SongIni;->readFileData(Ljava/io/File;)[B

    move-result-object v1

    .line 43
    .local v1, iniData:[B
    new-instance v3, Ljava/io/File;

    const-string v4, "notes.mid"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/tf/song/SongIni;->readFileData(Ljava/io/File;)[B

    move-result-object v2

    .line 44
    .local v2, notesData:[B
    invoke-direct {p0, v1, v2}, Lorg/tf/song/SongIni;->construct([B[B)V

    .line 45
    invoke-direct {p0, v1, v2}, Lorg/tf/song/SongIni;->calcUnique([B[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 47
    .end local v1           #iniData:[B
    .end local v2           #notesData:[B
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 48
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lorg/tf/song/InvalidSongException;

    invoke-direct {v3, v0}, Lorg/tf/song/InvalidSongException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public constructor <init>(Lorg/tf/song/SongIni;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget v0, p1, Lorg/tf/song/SongIni;->m_id:I

    iput v0, p0, Lorg/tf/song/SongIni;->m_id:I

    .line 66
    iget-object v0, p1, Lorg/tf/song/SongIni;->m_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/tf/song/SongIni;->m_name:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lorg/tf/song/SongIni;->m_artist:Ljava/lang/String;

    iput-object v0, p0, Lorg/tf/song/SongIni;->m_artist:Ljava/lang/String;

    .line 68
    iget v0, p1, Lorg/tf/song/SongIni;->m_casetteColor:I

    iput v0, p0, Lorg/tf/song/SongIni;->m_casetteColor:I

    .line 69
    iget v0, p1, Lorg/tf/song/SongIni;->m_delay:I

    iput v0, p0, Lorg/tf/song/SongIni;->m_delay:I

    .line 70
    iget v0, p1, Lorg/tf/song/SongIni;->m_skills:I

    iput v0, p0, Lorg/tf/song/SongIni;->m_skills:I

    .line 71
    return-void
.end method

.method private calcUnique([B[B)V
    .locals 3
    .parameter "iniData"
    .parameter "notesData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 175
    .local v0, crc:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 176
    invoke-virtual {v0, p2}, Ljava/util/zip/CRC32;->update([B)V

    .line 177
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lorg/tf/song/SongIni;->m_id:I

    .line 178
    return-void
.end method

.method private construct([B[B)V
    .locals 6
    .parameter "iniData"
    .parameter "notesData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/song/InvalidSongException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v5, "<unknown>"

    .line 159
    new-instance v0, Lorg/tf/util/IniFile;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/tf/util/IniFile;-><init>(Ljava/io/InputStream;)V

    .line 160
    .local v0, iniFile:Lorg/tf/util/IniFile;
    const-string v2, "song"

    invoke-virtual {v0, v2}, Lorg/tf/util/IniFile;->getSection(Ljava/lang/String;)Lorg/tf/util/IniFile$Section;

    move-result-object v1

    .line 161
    .local v1, section:Lorg/tf/util/IniFile$Section;
    const-string v2, "name"

    const-string v3, "<unknown>"

    invoke-virtual {v1, v2, v5}, Lorg/tf/util/IniFile$Section;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/tf/song/SongIni;->m_name:Ljava/lang/String;

    .line 162
    const-string v2, "artist"

    const-string v3, "<unknown>"

    invoke-virtual {v1, v2, v5}, Lorg/tf/util/IniFile$Section;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/tf/song/SongIni;->m_artist:Ljava/lang/String;

    .line 163
    const-string v2, "casettecolor"

    invoke-virtual {v1, v2, v4}, Lorg/tf/util/IniFile$Section;->getColorValue(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/tf/song/SongIni;->m_casetteColor:I

    .line 164
    const-string v2, "delay"

    invoke-virtual {v1, v2, v4}, Lorg/tf/util/IniFile$Section;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/tf/song/SongIni;->m_delay:I

    .line 165
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Lorg/tf/song/SongIni$SkillGatherer;->gather(Ljava/io/InputStream;)I

    move-result v2

    iput v2, p0, Lorg/tf/song/SongIni;->m_skills:I

    .line 166
    iget v2, p0, Lorg/tf/song/SongIni;->m_skills:I

    if-nez v2, :cond_0

    .line 167
    new-instance v2, Lorg/tf/song/InvalidSongException;

    const-string v3, "Song doesn\'t notes."

    invoke-direct {v2, v3}, Lorg/tf/song/InvalidSongException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_0
    return-void
.end method

.method private static readFileData(Landroid/content/res/AssetManager;Ljava/io/File;)[B
    .locals 4
    .parameter "assets"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 133
    .local v1, length:I
    new-array v0, v1, [B

    .line 134
    .local v0, data:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {v2}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 135
    return-object v0

    .line 137
    .end local v0           #data:[B
    .end local v1           #length:I
    :catchall_0
    move-exception v3

    .line 138
    invoke-static {v2}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 139
    throw v3
.end method

.method private static readFileData(Ljava/io/File;)[B
    .locals 6
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v2, 0x0

    .line 145
    .local v2, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v2           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    .line 147
    .local v1, length:I
    new-array v0, v1, [B

    .line 148
    .local v0, data:[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    invoke-static {v3}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 149
    return-object v0

    .line 151
    .end local v0           #data:[B
    .end local v1           #length:I
    .end local v3           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    .line 152
    :goto_0
    invoke-static {v2}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 153
    throw v4

    .line 151
    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v3       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    goto :goto_0
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/tf/song/SongIni;->m_artist:Ljava/lang/String;

    return-object v0
.end method

.method public getCassetteColor()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/tf/song/SongIni;->m_casetteColor:I

    return v0
.end method

.method public getDelay()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/tf/song/SongIni;->m_delay:I

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/tf/song/SongIni;->m_id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/tf/song/SongIni;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSkills()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/tf/song/SongIni;->m_skills:I

    return v0
.end method

.method public saveState(Ljava/io/DataOutput;)V
    .locals 1
    .parameter "dataOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const v0, 0x53494e49

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 85
    iget v0, p0, Lorg/tf/song/SongIni;->m_id:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lorg/tf/song/SongIni;->m_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/tf/song/SongIni;->m_artist:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lorg/tf/song/SongIni;->m_casetteColor:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 89
    iget v0, p0, Lorg/tf/song/SongIni;->m_delay:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 90
    iget v0, p0, Lorg/tf/song/SongIni;->m_skills:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 91
    return-void
.end method
