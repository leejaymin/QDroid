.class public Lorg/tf/song/SongDB;
.super Ljava/lang/Object;
.source "SongDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/song/SongDB$Record;,
        Lorg/tf/song/SongDB$RecordImpl;,
        Lorg/tf/song/SongDB$Score;
    }
.end annotation


# static fields
.field private static m_modified:Z

.field private static m_records:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/tf/song/SongDB$RecordImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static m_timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 227
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/tf/song/SongDB;->m_timestamp:J

    .line 228
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/tf/song/SongDB;->m_records:Landroid/util/SparseArray;

    .line 229
    const/4 v0, 0x0

    sput-boolean v0, Lorg/tf/song/SongDB;->m_modified:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/io/DataOutput;Lorg/tf/song/SongDB$Score;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p0, p1}, Lorg/tf/song/SongDB;->storeScore(Ljava/io/DataOutput;Lorg/tf/song/SongDB$Score;)V

    return-void
.end method

.method static synthetic access$1(Ljava/io/DataInput;)Lorg/tf/song/SongDB$Score;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p0}, Lorg/tf/song/SongDB;->loadScore(Ljava/io/DataInput;)Lorg/tf/song/SongDB$Score;

    move-result-object v0

    return-object v0
.end method

.method public static find(I)Lorg/tf/song/SongDB$Record;
    .locals 1
    .parameter "songID"

    .prologue
    .line 121
    sget-object v0, Lorg/tf/song/SongDB;->m_records:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/tf/song/SongDB$Record;

    return-object p0
.end method

.method public static get(I)Lorg/tf/song/SongDB$Record;
    .locals 3
    .parameter "songID"

    .prologue
    .line 125
    sget-object v1, Lorg/tf/song/SongDB;->m_records:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tf/song/SongDB$RecordImpl;

    .line 126
    .local v0, record:Lorg/tf/song/SongDB$RecordImpl;
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/tf/song/SongDB$RecordImpl;

    .end local v0           #record:Lorg/tf/song/SongDB$RecordImpl;
    invoke-direct {v0}, Lorg/tf/song/SongDB$RecordImpl;-><init>()V

    .line 128
    .restart local v0       #record:Lorg/tf/song/SongDB$RecordImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/tf/song/SongDB$RecordImpl;->timeFirstPlayed:J

    .line 129
    sget-object v1, Lorg/tf/song/SongDB;->m_records:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    invoke-static {}, Lorg/tf/song/SongDB;->setModified()V

    .line 132
    :cond_0
    return-object v0
.end method

.method private static getFilePath(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"

    .prologue
    .line 203
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lorg/tf/Config;->getSongDBFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static load(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 67
    const/4 v6, 0x0

    .line 69
    .local v6, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-static {p0}, Lorg/tf/song/SongDB;->getFilePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v6           #stream:Ljava/io/InputStream;
    .local v7, stream:Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    .local v1, dataIn:Ljava/io/DataInputStream;
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 72
    .local v5, records:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lorg/tf/song/SongDB$RecordImpl;>;"
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 73
    .local v8, timestamp:J
    sget-wide v10, Lorg/tf/song/SongDB;->m_timestamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    cmp-long v10, v10, v8

    if-ltz v10, :cond_0

    .line 90
    invoke-static {v7}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    move-object v6, v7

    .line 92
    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .end local v5           #records:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lorg/tf/song/SongDB$RecordImpl;>;"
    .end local v7           #stream:Ljava/io/InputStream;
    .end local v8           #timestamp:J
    .restart local v6       #stream:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 76
    .end local v6           #stream:Ljava/io/InputStream;
    .restart local v1       #dataIn:Ljava/io/DataInputStream;
    .restart local v5       #records:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lorg/tf/song/SongDB$RecordImpl;>;"
    .restart local v7       #stream:Ljava/io/InputStream;
    .restart local v8       #timestamp:J
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 77
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ne v2, v0, :cond_1

    .line 82
    sput-wide v8, Lorg/tf/song/SongDB;->m_timestamp:J

    .line 83
    sput-object v5, Lorg/tf/song/SongDB;->m_records:Landroid/util/SparseArray;

    .line 84
    const/4 v10, 0x0

    sput-boolean v10, Lorg/tf/song/SongDB;->m_modified:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    invoke-static {v7}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    move-object v6, v7

    .end local v7           #stream:Ljava/io/InputStream;
    .restart local v6       #stream:Ljava/io/InputStream;
    goto :goto_0

    .line 78
    .end local v6           #stream:Ljava/io/InputStream;
    .restart local v7       #stream:Ljava/io/InputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 79
    .local v3, id:I
    new-instance v4, Lorg/tf/song/SongDB$RecordImpl;

    invoke-direct {v4, v1}, Lorg/tf/song/SongDB$RecordImpl;-><init>(Ljava/io/DataInput;)V

    .line 80
    .local v4, record:Lorg/tf/song/SongDB$RecordImpl;
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    .end local v0           #count:I
    .end local v1           #dataIn:Ljava/io/DataInputStream;
    .end local v2           #i:I
    .end local v3           #id:I
    .end local v4           #record:Lorg/tf/song/SongDB$RecordImpl;
    .end local v5           #records:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lorg/tf/song/SongDB$RecordImpl;>;"
    .end local v7           #stream:Ljava/io/InputStream;
    .end local v8           #timestamp:J
    .restart local v6       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v10

    .line 90
    :goto_2
    invoke-static {v6}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v10

    .line 90
    :goto_3
    invoke-static {v6}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 91
    throw v10

    .line 89
    .end local v6           #stream:Ljava/io/InputStream;
    .restart local v7       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #stream:Ljava/io/InputStream;
    .restart local v6       #stream:Ljava/io/InputStream;
    goto :goto_3

    .line 86
    .end local v6           #stream:Ljava/io/InputStream;
    .restart local v7       #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v10

    move-object v6, v7

    .end local v7           #stream:Ljava/io/InputStream;
    .restart local v6       #stream:Ljava/io/InputStream;
    goto :goto_2
.end method

.method private static loadScore(Ljava/io/DataInput;)Lorg/tf/song/SongDB$Score;
    .locals 3
    .parameter "dataIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/tf/song/SongDB$Score;

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readFloat()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/tf/song/SongDB$Score;-><init>(IF)V

    goto :goto_0
.end method

.method private static setModified()V
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/tf/song/SongDB;->m_timestamp:J

    .line 197
    const/4 v0, 0x1

    sput-boolean v0, Lorg/tf/song/SongDB;->m_modified:Z

    .line 198
    return-void
.end method

.method public static store(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 95
    sget-boolean v4, Lorg/tf/song/SongDB;->m_modified:Z

    if-nez v4, :cond_0

    .line 118
    .end local p0
    :goto_0
    return-void

    .line 98
    .restart local p0
    :cond_0
    const/4 v2, 0x0

    .line 100
    .local v2, stream:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-static {p0}, Lorg/tf/song/SongDB;->getFilePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v2           #stream:Ljava/io/OutputStream;
    .local v3, stream:Ljava/io/OutputStream;
    :try_start_1
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 102
    .local v0, dataOut:Ljava/io/DataOutputStream;
    sget-wide v4, Lorg/tf/song/SongDB;->m_timestamp:J

    invoke-virtual {v0, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 103
    sget-object v4, Lorg/tf/song/SongDB;->m_records:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 104
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_1
    sget-object v4, Lorg/tf/song/SongDB;->m_records:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 108
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 109
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 110
    const/4 v4, 0x0

    sput-boolean v4, Lorg/tf/song/SongDB;->m_modified:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    invoke-static {v3}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    goto :goto_0

    .line 105
    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v3       #stream:Ljava/io/OutputStream;
    :cond_1
    :try_start_2
    sget-object v4, Lorg/tf/song/SongDB;->m_records:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 106
    sget-object v4, Lorg/tf/song/SongDB;->m_records:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/tf/song/SongDB$RecordImpl;

    invoke-virtual {p0, v0}, Lorg/tf/song/SongDB$RecordImpl;->store(Ljava/io/DataOutput;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    .end local v0           #dataOut:Ljava/io/DataOutputStream;
    .end local v1           #i:I
    .end local v3           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    .restart local p0
    :catch_0
    move-exception v4

    .line 116
    .end local p0
    :goto_2
    invoke-static {v2}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 115
    .restart local p0
    :catchall_0
    move-exception v4

    .line 116
    .end local p0
    :goto_3
    invoke-static {v2}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 117
    throw v4

    .line 115
    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v3       #stream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    goto :goto_3

    .line 112
    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v3       #stream:Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private static storeScore(Ljava/io/DataOutput;Lorg/tf/song/SongDB$Score;)V
    .locals 1
    .parameter "dataOut"
    .parameter "score"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 211
    iget v0, p1, Lorg/tf/song/SongDB$Score;->score:I

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 212
    iget v0, p1, Lorg/tf/song/SongDB$Score;->rating:F

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    goto :goto_0
.end method

.method public static update(IILorg/tf/song/SongDB$Score;)V
    .locals 5
    .parameter "songID"
    .parameter "skill"
    .parameter "score"

    .prologue
    .line 136
    invoke-static {p1}, Lorg/tf/song/Song;->skillToIndex(I)I

    move-result v2

    .line 137
    .local v2, skillIndex:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez p2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {p0}, Lorg/tf/song/SongDB;->get(I)Lorg/tf/song/SongDB$Record;

    move-result-object v1

    check-cast v1, Lorg/tf/song/SongDB$RecordImpl;

    .line 141
    .local v1, record:Lorg/tf/song/SongDB$RecordImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lorg/tf/song/SongDB$RecordImpl;->timeLastPlayed:J

    .line 142
    iget-object v3, v1, Lorg/tf/song/SongDB$RecordImpl;->scores:[Lorg/tf/song/SongDB$Score;

    aget-object v0, v3, v2

    .line 143
    .local v0, oldScore:Lorg/tf/song/SongDB$Score;
    invoke-virtual {p2, v0}, Lorg/tf/song/SongDB$Score;->isBetter(Lorg/tf/song/SongDB$Score;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, v1, Lorg/tf/song/SongDB$RecordImpl;->scores:[Lorg/tf/song/SongDB$Score;

    new-instance v4, Lorg/tf/song/SongDB$Score;

    invoke-direct {v4, p2}, Lorg/tf/song/SongDB$Score;-><init>(Lorg/tf/song/SongDB$Score;)V

    aput-object v4, v3, v2

    .line 145
    invoke-static {}, Lorg/tf/song/SongDB;->setModified()V

    goto :goto_0
.end method
