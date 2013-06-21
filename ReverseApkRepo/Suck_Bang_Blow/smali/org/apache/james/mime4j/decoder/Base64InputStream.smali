.class public Lorg/apache/james/mime4j/decoder/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
.field private static TRANSLATION:[B

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

.field private closed:Z

.field private done:Z

.field private final s:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    .line 131
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->TRANSLATION:[B

    return-void

    :array_0
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x3et
        0xfft
        0xfft
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    new-instance v0, Lorg/apache/james/mime4j/decoder/ByteQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    .line 39
    iput-boolean v2, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->done:Z

    .line 40
    iput-boolean v2, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->closed:Z

    .line 43
    iput-object p1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    .line 44
    return-void
.end method

.method private decodeAndEnqueue([BI)V
    .locals 7
    .parameter "data"
    .parameter "len"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, accum:I
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x12

    or-int/2addr v0, v4

    .line 113
    const/4 v4, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v0, v4

    .line 114
    aget-byte v4, p1, v5

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v0, v4

    .line 115
    aget-byte v4, p1, v6

    or-int/2addr v0, v4

    .line 117
    ushr-int/lit8 v4, v0, 0x10

    int-to-byte v1, v4

    .line 118
    .local v1, b1:B
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 120
    if-le p2, v5, :cond_0

    .line 121
    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    .line 122
    .local v2, b2:B
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 124
    if-le p2, v6, :cond_0

    .line 125
    and-int/lit16 v4, v0, 0xff

    int-to-byte v3, v4

    .line 126
    .local v3, b3:B
    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V

    .line 129
    .end local v2           #b2:B
    .end local v3           #b3:B
    :cond_0
    return-void
.end method

.method private fillBuffer()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 81
    .local v0, data:[B
    const/4 v2, 0x0

    .line 84
    .local v2, pos:I
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->done:Z

    if-nez v5, :cond_1

    .line 85
    iget-object v5, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, i:I
    sparse-switch v1, :sswitch_data_0

    .line 97
    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64InputStream;->TRANSLATION:[B

    aget-byte v4, v5, v1

    .line 98
    .local v4, sX:B
    if-ltz v4, :cond_0

    .line 100
    add-int/lit8 v3, v2, 0x1

    .end local v2           #pos:I
    .local v3, pos:I
    aput-byte v4, v0, v2

    .line 101
    array-length v5, v0

    if-ne v3, v5, :cond_2

    .line 102
    invoke-direct {p0, v0, v3}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->decodeAndEnqueue([BI)V

    move v2, v3

    .line 108
    .end local v1           #i:I
    .end local v3           #pos:I
    .end local v4           #sX:B
    .restart local v2       #pos:I
    :cond_1
    :goto_1
    return-void

    .line 87
    .restart local v1       #i:I
    :sswitch_0
    if-lez v2, :cond_1

    .line 88
    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected EOF in MIME parser, dropping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sextets"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_1

    .line 93
    :sswitch_1
    invoke-direct {p0, v0, v2}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->decodeAndEnqueue([BI)V

    .line 94
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->done:Z

    goto :goto_0

    .end local v2           #pos:I
    .restart local v3       #pos:I
    .restart local v4       #sX:B
    :cond_2
    move v2, v3

    .end local v3           #pos:I
    .restart local v2       #pos:I
    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->closed:Z

    .line 54
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-boolean v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Base64InputStream has been closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->fillBuffer()V

    .line 62
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I

    move-result v1

    if-nez v1, :cond_1

    .line 63
    const/4 v1, -0x1

    .line 71
    :goto_0
    return v1

    .line 67
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64InputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->dequeue()B

    move-result v0

    .line 68
    .local v0, val:B
    if-ltz v0, :cond_2

    move v1, v0

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    and-int/lit16 v1, v0, 0xff

    goto :goto_0
.end method