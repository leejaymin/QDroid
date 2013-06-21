.class Lorg/tf/song/SongDB$RecordImpl;
.super Ljava/lang/Object;
.source "SongDB.java"

# interfaces
.implements Lorg/tf/song/SongDB$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/song/SongDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordImpl"
.end annotation


# instance fields
.field public scores:[Lorg/tf/song/SongDB$Score;

.field public timeFirstPlayed:J

.field public timeLastPlayed:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/tf/song/SongDB$Score;

    iput-object v0, p0, Lorg/tf/song/SongDB$RecordImpl;->scores:[Lorg/tf/song/SongDB$Score;

    .line 153
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
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/tf/song/SongDB$Score;

    iput-object v0, p0, Lorg/tf/song/SongDB$RecordImpl;->scores:[Lorg/tf/song/SongDB$Score;

    .line 155
    invoke-virtual {p0, p1}, Lorg/tf/song/SongDB$RecordImpl;->load(Ljava/io/DataInput;)V

    .line 156
    return-void
.end method


# virtual methods
.method public getFirstPlayedTime()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lorg/tf/song/SongDB$RecordImpl;->timeFirstPlayed:J

    return-wide v0
.end method

.method public getLastPlayedTime()J
    .locals 2

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/tf/song/SongDB$RecordImpl;->timeLastPlayed:J

    return-wide v0
.end method

.method public getScore(I)Lorg/tf/song/SongDB$Score;
    .locals 4
    .parameter "skill"

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-static {p1}, Lorg/tf/song/Song;->skillToIndex(I)I

    move-result v1

    .line 165
    .local v1, skillIndex:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v2, v3

    .line 172
    :goto_0
    return-object v2

    .line 168
    :cond_0
    iget-object v2, p0, Lorg/tf/song/SongDB$RecordImpl;->scores:[Lorg/tf/song/SongDB$Score;

    aget-object v0, v2, v1

    .line 169
    .local v0, score:Lorg/tf/song/SongDB$Score;
    if-nez v0, :cond_1

    move-object v2, v3

    .line 170
    goto :goto_0

    .line 172
    :cond_1
    new-instance v2, Lorg/tf/song/SongDB$Score;

    invoke-direct {v2, v0}, Lorg/tf/song/SongDB$Score;-><init>(Lorg/tf/song/SongDB$Score;)V

    goto :goto_0
.end method

.method public load(Ljava/io/DataInput;)V
    .locals 3
    .parameter "dataIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/tf/song/SongDB$RecordImpl;->timeFirstPlayed:J

    .line 184
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/tf/song/SongDB$RecordImpl;->timeLastPlayed:J

    .line 185
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 188
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lorg/tf/song/SongDB$RecordImpl;->scores:[Lorg/tf/song/SongDB$Score;

    #calls: Lorg/tf/song/SongDB;->loadScore(Ljava/io/DataInput;)Lorg/tf/song/SongDB$Score;
    invoke-static {p1}, Lorg/tf/song/SongDB;->access$1(Ljava/io/DataInput;)Lorg/tf/song/SongDB$Score;

    move-result-object v2

    aput-object v2, v1, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public store(Ljava/io/DataOutput;)V
    .locals 3
    .parameter "dataOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-wide v1, p0, Lorg/tf/song/SongDB$RecordImpl;->timeFirstPlayed:J

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 177
    iget-wide v1, p0, Lorg/tf/song/SongDB$RecordImpl;->timeLastPlayed:J

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 181
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lorg/tf/song/SongDB$RecordImpl;->scores:[Lorg/tf/song/SongDB$Score;

    aget-object v1, v1, v0

    #calls: Lorg/tf/song/SongDB;->storeScore(Ljava/io/DataOutput;Lorg/tf/song/SongDB$Score;)V
    invoke-static {p1, v1}, Lorg/tf/song/SongDB;->access$0(Ljava/io/DataOutput;Lorg/tf/song/SongDB$Score;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
