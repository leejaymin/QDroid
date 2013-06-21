.class public Lorg/tf/song/SongInfo;
.super Ljava/lang/Object;
.source "SongInfo.java"

# interfaces
.implements Lorg/tf/song/SongConfig;


# static fields
.field public static final BUNDLE_KEY:Ljava/lang/String; = "org.tf.SongInfo"

.field private static final DATA_TAG:I = 0x53494e46


# instance fields
.field private m_assetPath:Ljava/io/File;

.field private m_filesPath:Ljava/io/File;

.field private m_guitarFile:Ljava/io/File;

.field private m_ini:Lorg/tf/song/SongIni;

.field private m_selectedSkill:I

.field private m_songFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/io/File;)V
    .locals 1
    .parameter "assets"
    .parameter "songPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/song/InvalidSongException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/song/SongInfo;->m_selectedSkill:I

    .line 37
    new-instance v0, Lorg/tf/song/SongIni;

    invoke-direct {v0, p1, p2}, Lorg/tf/song/SongIni;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;)V

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_ini:Lorg/tf/song/SongIni;

    .line 38
    iput-object p2, p0, Lorg/tf/song/SongInfo;->m_assetPath:Ljava/io/File;

    .line 39
    return-void
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
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/song/SongInfo;->m_selectedSkill:I

    .line 51
    const v0, 0x53494e46

    invoke-static {p1, v0}, Lorg/tf/util/DataStreamHelpers;->checkTag(Ljava/io/DataInput;I)V

    .line 52
    new-instance v0, Lorg/tf/song/SongIni;

    invoke-direct {v0, p1}, Lorg/tf/song/SongIni;-><init>(Ljava/io/DataInput;)V

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_ini:Lorg/tf/song/SongIni;

    .line 53
    invoke-static {p1}, Lorg/tf/song/SongInfo;->restoreFile(Ljava/io/DataInput;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_filesPath:Ljava/io/File;

    .line 54
    invoke-static {p1}, Lorg/tf/song/SongInfo;->restoreFile(Ljava/io/DataInput;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_assetPath:Ljava/io/File;

    .line 55
    invoke-static {p1}, Lorg/tf/song/SongInfo;->restoreFile(Ljava/io/DataInput;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_guitarFile:Ljava/io/File;

    .line 56
    invoke-static {p1}, Lorg/tf/song/SongInfo;->restoreFile(Ljava/io/DataInput;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_songFile:Ljava/io/File;

    .line 57
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/song/SongInfo;->m_selectedSkill:I

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "songPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/song/InvalidSongException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/song/SongInfo;->m_selectedSkill:I

    .line 32
    new-instance v0, Lorg/tf/song/SongIni;

    invoke-direct {v0, p1}, Lorg/tf/song/SongIni;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_ini:Lorg/tf/song/SongIni;

    .line 33
    invoke-virtual {p0, p1}, Lorg/tf/song/SongInfo;->setFilesPath(Ljava/io/File;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/tf/song/SongInfo;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/song/SongInfo;->m_selectedSkill:I

    .line 42
    new-instance v0, Lorg/tf/song/SongIni;

    iget-object v1, p1, Lorg/tf/song/SongInfo;->m_ini:Lorg/tf/song/SongIni;

    invoke-direct {v0, v1}, Lorg/tf/song/SongIni;-><init>(Lorg/tf/song/SongIni;)V

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_ini:Lorg/tf/song/SongIni;

    .line 43
    iget-object v0, p1, Lorg/tf/song/SongInfo;->m_filesPath:Ljava/io/File;

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_filesPath:Ljava/io/File;

    .line 44
    iget-object v0, p1, Lorg/tf/song/SongInfo;->m_assetPath:Ljava/io/File;

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_assetPath:Ljava/io/File;

    .line 45
    iget-object v0, p1, Lorg/tf/song/SongInfo;->m_guitarFile:Ljava/io/File;

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_guitarFile:Ljava/io/File;

    .line 46
    iget-object v0, p1, Lorg/tf/song/SongInfo;->m_songFile:Ljava/io/File;

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_songFile:Ljava/io/File;

    .line 47
    iget v0, p1, Lorg/tf/song/SongInfo;->m_selectedSkill:I

    iput v0, p0, Lorg/tf/song/SongInfo;->m_selectedSkill:I

    .line 48
    return-void
.end method

.method private static restoreFile(Ljava/io/DataInput;)Ljava/io/File;
    .locals 2
    .parameter "dataIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static saveFile(Ljava/io/DataOutput;Ljava/io/File;)V
    .locals 1
    .parameter "dataOut"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 154
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/tf/song/SongInfo;->getIni()Lorg/tf/song/SongIni;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tf/song/SongIni;->getArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssetPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/tf/song/SongInfo;->m_assetPath:Ljava/io/File;

    return-object v0
.end method

.method public getErrorDetails()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "null"

    .line 131
    const-string v0, "Song info:\n  Name: %s\n  Artist: %s\n  Song file: %s\n  Guitar file: %s\n"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Lorg/tf/song/SongInfo;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 137
    invoke-virtual {p0}, Lorg/tf/song/SongInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 138
    iget-object v3, p0, Lorg/tf/song/SongInfo;->m_songFile:Ljava/io/File;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/tf/song/SongInfo;->m_songFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 139
    iget-object v3, p0, Lorg/tf/song/SongInfo;->m_guitarFile:Ljava/io/File;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/tf/song/SongInfo;->m_guitarFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v1, v2

    .line 130
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    const-string v3, "null"

    move-object v3, v4

    goto :goto_0

    .line 139
    :cond_1
    const-string v3, "null"

    move-object v3, v4

    goto :goto_1
.end method

.method public getFilesPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/tf/song/SongInfo;->m_filesPath:Ljava/io/File;

    return-object v0
.end method

.method public getGuitarFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/tf/song/SongInfo;->m_guitarFile:Ljava/io/File;

    return-object v0
.end method

.method public final getID()I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/tf/song/SongInfo;->getIni()Lorg/tf/song/SongIni;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tf/song/SongIni;->getID()I

    move-result v0

    return v0
.end method

.method public getIni()Lorg/tf/song/SongIni;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/tf/song/SongInfo;->m_ini:Lorg/tf/song/SongIni;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/tf/song/SongInfo;->getIni()Lorg/tf/song/SongIni;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tf/song/SongIni;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotesFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/tf/song/SongInfo;->m_filesPath:Ljava/io/File;

    const-string v2, "notes.mid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSelectedSkill()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/tf/song/SongInfo;->m_selectedSkill:I

    return v0
.end method

.method public final getSkills()I
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/tf/song/SongInfo;->getIni()Lorg/tf/song/SongIni;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tf/song/SongIni;->getSkills()I

    move-result v0

    return v0
.end method

.method public getSongFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/tf/song/SongInfo;->m_songFile:Ljava/io/File;

    return-object v0
.end method

.method public isAsset()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/tf/song/SongInfo;->m_assetPath:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 61
    const v0, 0x53494e46

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lorg/tf/song/SongInfo;->m_ini:Lorg/tf/song/SongIni;

    invoke-virtual {v0, p1}, Lorg/tf/song/SongIni;->saveState(Ljava/io/DataOutput;)V

    .line 63
    iget-object v0, p0, Lorg/tf/song/SongInfo;->m_filesPath:Ljava/io/File;

    invoke-static {p1, v0}, Lorg/tf/song/SongInfo;->saveFile(Ljava/io/DataOutput;Ljava/io/File;)V

    .line 64
    iget-object v0, p0, Lorg/tf/song/SongInfo;->m_assetPath:Ljava/io/File;

    invoke-static {p1, v0}, Lorg/tf/song/SongInfo;->saveFile(Ljava/io/DataOutput;Ljava/io/File;)V

    .line 65
    iget-object v0, p0, Lorg/tf/song/SongInfo;->m_guitarFile:Ljava/io/File;

    invoke-static {p1, v0}, Lorg/tf/song/SongInfo;->saveFile(Ljava/io/DataOutput;Ljava/io/File;)V

    .line 66
    iget-object v0, p0, Lorg/tf/song/SongInfo;->m_songFile:Ljava/io/File;

    invoke-static {p1, v0}, Lorg/tf/song/SongInfo;->saveFile(Ljava/io/DataOutput;Ljava/io/File;)V

    .line 67
    iget v0, p0, Lorg/tf/song/SongInfo;->m_selectedSkill:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 68
    return-void
.end method

.method public setFilesPath(Ljava/io/File;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 99
    iput-object p1, p0, Lorg/tf/song/SongInfo;->m_filesPath:Ljava/io/File;

    .line 100
    new-instance v0, Ljava/io/File;

    const-string v1, "guitar.ogg"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_guitarFile:Ljava/io/File;

    .line 101
    new-instance v0, Ljava/io/File;

    const-string v1, "song.ogg"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/tf/song/SongInfo;->m_songFile:Ljava/io/File;

    .line 102
    return-void
.end method

.method public setGuitarFile(Ljava/io/File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 112
    iput-object p1, p0, Lorg/tf/song/SongInfo;->m_guitarFile:Ljava/io/File;

    .line 113
    return-void
.end method

.method public setSelectedSkill(I)V
    .locals 0
    .parameter "skill"

    .prologue
    .line 126
    iput p1, p0, Lorg/tf/song/SongInfo;->m_selectedSkill:I

    .line 127
    return-void
.end method

.method public setSongFile(Ljava/io/File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 119
    iput-object p1, p0, Lorg/tf/song/SongInfo;->m_songFile:Ljava/io/File;

    .line 120
    return-void
.end method
