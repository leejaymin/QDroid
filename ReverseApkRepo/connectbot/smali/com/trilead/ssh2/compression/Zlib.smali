.class public Lcom/trilead/ssh2/compression/Zlib;
.super Ljava/lang/Object;
.source "Zlib.java"

# interfaces
.implements Lcom/trilead/ssh2/compression/ICompressor;


# instance fields
.field private deflate:Lcom/jcraft/jzlib/ZStream;

.field private deflate_tmpbuf:[B

.field private inflate:Lcom/jcraft/jzlib/ZStream;

.field private inflate_tmpbuf:[B

.field private inflated_buf:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x1000

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    .line 40
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    .line 42
    iget-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/ZStream;->deflateInit(I)I

    .line 43
    iget-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->inflateInit()I

    .line 45
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate_tmpbuf:[B

    .line 46
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate_tmpbuf:[B

    .line 47
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    .line 48
    return-void
.end method


# virtual methods
.method public canCompressPreauth()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public compress([BII[B)I
    .locals 4
    .parameter "buf"
    .parameter "start"
    .parameter "len"
    .parameter "output"

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 60
    iget-object v1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iput p2, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 61
    iget-object v1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    sub-int v2, p3, p2

    iput v2, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 63
    array-length v1, p1

    add-int/lit16 v1, v1, 0x400

    iget-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate_tmpbuf:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 64
    array-length v1, p1

    add-int/lit16 v1, v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate_tmpbuf:[B

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iget-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate_tmpbuf:[B

    iput-object v2, v1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 68
    iget-object v1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iput v3, v1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 69
    iget-object v1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    array-length v2, p4

    iput v2, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 71
    iget-object v1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "compress: compression failure"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-lez v1, :cond_2

    .line 76
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "compress: deflated data too large"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    :cond_2
    array-length v1, p4

    iget-object v2, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int v0, v1, v2

    .line 81
    .local v0, outputlen:I
    iget-object v1, p0, Lcom/trilead/ssh2/compression/Zlib;->deflate_tmpbuf:[B

    invoke-static {v1, v3, p4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x1000

    return v0
.end method

.method public uncompress([BI[I)[B
    .locals 7
    .parameter "buffer"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v6, 0x0

    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, inflated_end:I
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v3, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 90
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iput p2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 91
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    aget v4, p3, v6

    iput v4, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 94
    :goto_0
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget-object v4, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate_tmpbuf:[B

    iput-object v4, v3, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 95
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iput v6, v3, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 96
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    const/16 v4, 0x1000

    iput v4, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 97
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/jcraft/jzlib/ZStream;->inflate(I)I

    move-result v2

    .line 98
    .local v2, status:I
    sparse-switch v2, :sswitch_data_0

    .line 125
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uncompress: inflate returnd "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 100
    :sswitch_0
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    array-length v3, v3

    add-int/lit16 v4, v1, 0x1000

    .line 101
    iget-object v5, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 102
    add-int/lit16 v3, v1, 0x1000

    .line 103
    iget-object v4, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 102
    sub-int/2addr v3, v4

    new-array v0, v3, [B

    .line 104
    .local v0, foo:[B
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    invoke-static {v3, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iput-object v0, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    .line 107
    .end local v0           #foo:[B
    :cond_0
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate_tmpbuf:[B

    iget-object v4, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    .line 108
    iget-object v5, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    rsub-int v5, v5, 0x1000

    .line 107
    invoke-static {v3, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    rsub-int v3, v3, 0x1000

    add-int/2addr v1, v3

    .line 110
    aput v1, p3, v6

    goto :goto_0

    .line 113
    :sswitch_1
    array-length v3, p1

    sub-int/2addr v3, p2

    if-le v1, v3, :cond_1

    .line 114
    add-int v3, v1, p2

    new-array v0, v3, [B

    .line 115
    .restart local v0       #foo:[B
    invoke-static {p1, v6, v0, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    invoke-static {v3, v6, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    move-object p1, v0

    .line 122
    .end local v0           #foo:[B
    :goto_2
    aput v1, p3, v6

    move-object v3, p1

    .line 123
    goto :goto_1

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/trilead/ssh2/compression/Zlib;->inflated_buf:[B

    invoke-static {v3, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 98
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
