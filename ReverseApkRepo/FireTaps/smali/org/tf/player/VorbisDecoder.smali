.class public Lorg/tf/player/VorbisDecoder;
.super Ljava/lang/Object;
.source "VorbisDecoder.java"

# interfaces
.implements Lorg/tf/player/PCMDecoder;


# instance fields
.field private m_file:Ljava/io/File;

.field m_nativeInstance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const-string v0, "tf"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lorg/tf/player/VorbisDecoder;->nativeStaticSetup()V

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lorg/tf/player/VorbisDecoder;->open(Ljava/io/File;)V

    .line 30
    return-void
.end method

.method private handleError(Ljava/lang/String;I)V
    .locals 5
    .parameter "what"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    if-nez p2, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 106
    const-string v1, "Failed to %s \'%s\' (%d)."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/tf/player/VorbisDecoder;->m_file:Ljava/io/File;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static handleOpenResult(Ljava/io/File;I)V
    .locals 5
    .parameter "file"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    new-instance v0, Ljava/io/IOException;

    .line 96
    const-string v1, "Failed to open \'%s\' (%d)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    return-void
.end method

.method private native nativeClose()V
.end method

.method private native nativeGetChannels()I
.end method

.method private native nativeGetRate()I
.end method

.method private native nativeGetTimeLength()I
.end method

.method private native nativeGetTimePosition()I
.end method

.method private native nativeIsSeekable()Z
.end method

.method private native nativeOpen(Ljava/lang/String;)I
.end method

.method private native nativeRead([BII)I
.end method

.method private native nativeSeekToTime(I)I
.end method

.method private static native nativeStaticSetup()V
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/tf/player/VorbisDecoder;->nativeClose()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/player/VorbisDecoder;->m_file:Ljava/io/File;

    .line 45
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/tf/player/VorbisDecoder;->nativeClose()V

    .line 91
    return-void
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/tf/player/VorbisDecoder;->nativeGetChannels()I

    move-result v0

    return v0
.end method

.method public getRate()I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/tf/player/VorbisDecoder;->nativeGetRate()I

    move-result v0

    return v0
.end method

.method public getTimeLength()I
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/tf/player/VorbisDecoder;->nativeGetTimeLength()I

    move-result v0

    return v0
.end method

.method public getTimePosition()I
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/tf/player/VorbisDecoder;->nativeGetTimePosition()I

    move-result v0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lorg/tf/player/VorbisDecoder;->m_nativeInstance:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/tf/player/VorbisDecoder;->nativeIsSeekable()Z

    move-result v0

    return v0
.end method

.method public open(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/tf/player/VorbisDecoder;->close()V

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/tf/player/VorbisDecoder;->nativeOpen(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/tf/player/VorbisDecoder;->handleOpenResult(Ljava/io/File;I)V

    .line 39
    iput-object p1, p0, Lorg/tf/player/VorbisDecoder;->m_file:Ljava/io/File;

    .line 40
    return-void
.end method

.method public read([BII)I
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 73
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 77
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/tf/player/VorbisDecoder;->nativeRead([BII)I

    move-result v0

    .line 78
    .local v0, result:I
    if-nez v0, :cond_2

    .line 79
    const/4 v1, -0x1

    .line 84
    :goto_0
    return v1

    .line 81
    :cond_2
    if-gez v0, :cond_3

    .line 82
    const-string v1, "decode"

    invoke-direct {p0, v1, v0}, Lorg/tf/player/VorbisDecoder;->handleError(Ljava/lang/String;I)V

    :cond_3
    move v1, v0

    .line 84
    goto :goto_0
.end method

.method public seekToTime(I)V
    .locals 2
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const-string v0, "seek"

    invoke-direct {p0, p1}, Lorg/tf/player/VorbisDecoder;->nativeSeekToTime(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/tf/player/VorbisDecoder;->handleError(Ljava/lang/String;I)V

    .line 69
    return-void
.end method
