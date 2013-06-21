.class public Lorg/apache/james/mime4j/io/RootInputStream;
.super Ljava/io/FilterInputStream;
.source "RootInputStream.java"


# instance fields
.field private lineNumber:I

.field private prev:I

.field private truncated:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/io/RootInputStream;->lineNumber:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/io/RootInputStream;->prev:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/RootInputStream;->truncated:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/apache/james/mime4j/io/RootInputStream;->lineNumber:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-boolean v1, p0, Lorg/apache/james/mime4j/io/RootInputStream;->truncated:Z

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, -0x1

    .line 80
    :goto_0
    return v1

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/io/RootInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 76
    .local v0, b:I
    iget v1, p0, Lorg/apache/james/mime4j/io/RootInputStream;->prev:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 77
    iget v1, p0, Lorg/apache/james/mime4j/io/RootInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/RootInputStream;->lineNumber:I

    .line 79
    :cond_1
    iput v0, p0, Lorg/apache/james/mime4j/io/RootInputStream;->prev:I

    move v1, v0

    .line 80
    goto :goto_0
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
    .line 88
    iget-boolean v2, p0, Lorg/apache/james/mime4j/io/RootInputStream;->truncated:Z

    if-eqz v2, :cond_0

    .line 89
    const/4 v2, -0x1

    .line 99
    :goto_0
    return v2

    .line 92
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/io/RootInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 93
    .local v1, n:I
    move v0, p2

    .local v0, i:I
    :goto_1
    add-int v2, p2, v1

    if-ge v0, v2, :cond_2

    .line 94
    iget v2, p0, Lorg/apache/james/mime4j/io/RootInputStream;->prev:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    aget-byte v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 95
    iget v2, p0, Lorg/apache/james/mime4j/io/RootInputStream;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/io/RootInputStream;->lineNumber:I

    .line 97
    :cond_1
    aget-byte v2, p1, v0

    iput v2, p0, Lorg/apache/james/mime4j/io/RootInputStream;->prev:I

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .line 99
    goto :goto_0
.end method

.method public truncate()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/RootInputStream;->truncated:Z

    .line 65
    return-void
.end method
