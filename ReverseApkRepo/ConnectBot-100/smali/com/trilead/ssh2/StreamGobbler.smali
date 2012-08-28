.class public Lcom/trilead/ssh2/StreamGobbler;
.super Ljava/io/InputStream;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/StreamGobbler$GobblerThread;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private exception:Ljava/io/IOException;

.field private is:Ljava/io/InputStream;

.field private isClosed:Z

.field private isEOF:Z

.field private read_pos:I

.field private synchronizer:Ljava/lang/Object;

.field private t:Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

.field private write_pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    .line 110
    iput-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    .line 111
    iput-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    .line 114
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    .line 115
    iput v1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    .line 116
    iput v1, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    .line 120
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->is:Ljava/io/InputStream;

    .line 121
    new-instance v0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;-><init>(Lcom/trilead/ssh2/StreamGobbler;)V

    iput-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->t:Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

    .line 122
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->t:Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->setDaemon(Z)V

    .line 123
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->t:Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

    invoke-virtual {v0}, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->start()V

    .line 124
    return-void
.end method

.method static synthetic access$0(Lcom/trilead/ssh2/StreamGobbler;)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$1(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/trilead/ssh2/StreamGobbler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    return-void
.end method

.method static synthetic access$3(Lcom/trilead/ssh2/StreamGobbler;)[B
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    return-object v0
.end method

.method static synthetic access$4(Lcom/trilead/ssh2/StreamGobbler;)I
    .locals 1
    .parameter

    .prologue
    .line 116
    iget v0, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    return v0
.end method

.method static synthetic access$5(Lcom/trilead/ssh2/StreamGobbler;)I
    .locals 1
    .parameter

    .prologue
    .line 115
    iget v0, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    return v0
.end method

.method static synthetic access$6(Lcom/trilead/ssh2/StreamGobbler;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    return-void
.end method

.method static synthetic access$7(Lcom/trilead/ssh2/StreamGobbler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput p1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    return-void
.end method

.method static synthetic access$8(Lcom/trilead/ssh2/StreamGobbler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput p1, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    return-void
.end method

.method static synthetic access$9(Lcom/trilead/ssh2/StreamGobbler;Ljava/io/IOException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Ljava/io/IOException;

    const-string v2, "This StreamGobbler is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 163
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    sub-int/2addr v1, v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-eqz v1, :cond_0

    .line 177
    monitor-exit v0

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    .line 180
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 181
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 174
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-boolean v2, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-eqz v2, :cond_3

    .line 131
    new-instance v2, Ljava/io/IOException;

    const-string v3, "This StreamGobbler is closed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 135
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    throw v2

    .line 138
    :cond_1
    iget-boolean v2, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    if-eqz v2, :cond_2

    .line 139
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, -0x1

    .line 152
    :goto_0
    return v1

    .line 143
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    :cond_3
    :goto_1
    :try_start_3
    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    iget v3, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    if-eq v2, v3, :cond_0

    .line 150
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    iget v3, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 152
    .local v0, b:I
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v0

    goto :goto_0

    .line 145
    .end local v0           #b:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/trilead/ssh2/StreamGobbler;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 190
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_1

    add-int v1, p2, p3

    if-ltz v1, :cond_1

    array-length v1, p1

    if-le p2, v1, :cond_2

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 193
    :cond_2
    if-nez p3, :cond_3

    .line 194
    const/4 v1, 0x0

    .line 226
    :goto_0
    return v1

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-boolean v2, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-eqz v2, :cond_7

    .line 199
    new-instance v2, Ljava/io/IOException;

    const-string v3, "This StreamGobbler is closed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 203
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    if-eqz v2, :cond_5

    .line 204
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    throw v2

    .line 206
    :cond_5
    iget-boolean v2, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    if-eqz v2, :cond_6

    .line 207
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, -0x1

    goto :goto_0

    .line 211
    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 201
    :cond_7
    :goto_1
    :try_start_3
    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    iget v3, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    if-eq v2, v3, :cond_4

    .line 218
    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    iget v3, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    sub-int v0, v2, v3

    .line 220
    .local v0, avail:I
    if-le v0, p3, :cond_8

    move v0, p3

    .line 222
    :cond_8
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    iget v3, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    .line 226
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v0

    goto :goto_0

    .line 213
    .end local v0           #avail:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method
