.class public Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LineBreakingOutputStream.java"


# static fields
.field private static final CRLF:[B


# instance fields
.field private lineLength:I

.field private linepos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter "out"
    .parameter "lineLength"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    .line 40
    const/16 v0, 0x4c

    iput v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->lineLength:I

    .line 44
    iput p2, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->lineLength:I

    .line 45
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    iget v1, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->lineLength:I

    if-lt v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 72
    iget v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    .line 73
    return-void
.end method

.method public final write([BII)V
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    :goto_0
    if-lez p3, :cond_2

    .line 49
    iget v1, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    add-int/2addr v1, p3

    iget v2, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->lineLength:I

    if-le v1, v2, :cond_1

    .line 50
    iget v1, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->lineLength:I

    iget v2, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    sub-int v0, v1, v2

    .line 51
    .local v0, count:I
    if-lez v0, :cond_0

    .line 52
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 53
    add-int/2addr p2, v0

    .line 54
    sub-int/2addr p3, v0

    .line 56
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    goto :goto_0

    .line 59
    .end local v0           #count:I
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    iget v1, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/james/mime4j/decoder/LineBreakingOutputStream;->linepos:I

    .line 61
    const/4 p3, 0x0

    goto :goto_0

    .line 64
    :cond_2
    return-void
.end method
