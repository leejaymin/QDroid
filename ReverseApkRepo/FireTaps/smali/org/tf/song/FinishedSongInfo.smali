.class public Lorg/tf/song/FinishedSongInfo;
.super Lorg/tf/song/SongInfo;
.source "FinishedSongInfo.java"


# static fields
.field public static final BUNDLE_KEY:Ljava/lang/String; = "org.tf.FinishedSongInfo"

.field private static final DATA_TAG:I = 0x46534e46


# instance fields
.field private m_accuracy:F

.field private m_longestStreak:I

.field private m_score:I


# direct methods
.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 1
    .parameter "dataIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/tf/song/SongInfo;-><init>(Ljava/io/DataInput;)V

    .line 34
    const v0, 0x46534e46

    invoke-static {p1, v0}, Lorg/tf/util/DataStreamHelpers;->checkTag(Ljava/io/DataInput;I)V

    .line 35
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/song/FinishedSongInfo;->m_score:I

    .line 36
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/song/FinishedSongInfo;->m_longestStreak:I

    .line 37
    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/song/FinishedSongInfo;->m_accuracy:F

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/tf/song/SongInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/tf/song/SongInfo;-><init>(Lorg/tf/song/SongInfo;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/tf/song/FinishedSongInfo;->m_accuracy:F

    return v0
.end method

.method public getLongestStreak()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lorg/tf/song/FinishedSongInfo;->m_longestStreak:I

    return v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/tf/song/FinishedSongInfo;->m_score:I

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
    .line 41
    invoke-super {p0, p1}, Lorg/tf/song/SongInfo;->saveState(Ljava/io/DataOutput;)V

    .line 42
    const v0, 0x46534e46

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 43
    iget v0, p0, Lorg/tf/song/FinishedSongInfo;->m_score:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 44
    iget v0, p0, Lorg/tf/song/FinishedSongInfo;->m_longestStreak:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 45
    iget v0, p0, Lorg/tf/song/FinishedSongInfo;->m_accuracy:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    .line 46
    return-void
.end method

.method public setAccuracy(F)V
    .locals 0
    .parameter "accuracy"

    .prologue
    .line 66
    iput p1, p0, Lorg/tf/song/FinishedSongInfo;->m_accuracy:F

    .line 67
    return-void
.end method

.method public setLongestStreak(I)V
    .locals 0
    .parameter "streak"

    .prologue
    .line 59
    iput p1, p0, Lorg/tf/song/FinishedSongInfo;->m_longestStreak:I

    .line 60
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .parameter "score"

    .prologue
    .line 52
    iput p1, p0, Lorg/tf/song/FinishedSongInfo;->m_score:I

    .line 53
    return-void
.end method
