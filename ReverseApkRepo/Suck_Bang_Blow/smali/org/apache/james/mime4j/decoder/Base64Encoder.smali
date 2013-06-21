.class final Lorg/apache/james/mime4j/decoder/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"


# static fields
.field private static final ENCODING:[B = null

.field private static final FIRST_MASK:I = 0xfc0000

.field private static final FORTH_MASK:I = 0x3f

.field private static final MASK:I = 0x3f

.field private static final SECOND_MASK:I = 0x3f000

.field private static final THIRD_MASK:I = 0xfc0


# instance fields
.field private final in:[B

.field private final out:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    return-void

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "inputBufferSize"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v1, p1, [B

    iput-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->in:[B

    .line 43
    mul-int/lit8 v1, p1, 0x4

    int-to-float v1, v1

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v0, v1, 0x3

    .line 44
    .local v0, outputBufferSize:I
    int-to-float v1, v0

    const/high16 v2, 0x4298

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 45
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    .line 46
    return-void
.end method

.method private checkLineLength([BI)I
    .locals 7
    .parameter "results"
    .parameter "outputIndex"

    .prologue
    const/16 v1, 0x4c

    .line 117
    if-eq p2, v1, :cond_0

    if-le p2, v1, :cond_1

    int-to-double v1, p2

    const-wide/high16 v3, 0x4000

    int-to-float v5, p2

    const/high16 v6, 0x4298

    div-float/2addr v5, v6

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4053

    rem-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    .line 118
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, outputIndex:I
    const/16 v1, 0xd

    aput-byte v1, p1, p2

    .line 119
    add-int/lit8 p2, v0, 0x1

    .end local v0           #outputIndex:I
    .restart local p2
    const/16 v1, 0xa

    aput-byte v1, p1, v0

    .line 121
    :cond_1
    return p2
.end method

.method private encodeInputBuffer([BII)I
    .locals 11
    .parameter "in"
    .parameter "pos"
    .parameter "inputLength"

    .prologue
    .line 59
    if-nez p3, :cond_0

    .line 60
    const/4 v9, 0x0

    .line 103
    :goto_0
    return v9

    .line 62
    :cond_0
    add-int v1, p2, p3

    .line 63
    .local v1, inputEnd:I
    move v2, p2

    .line 64
    .local v2, inputIndex:I
    const/4 v5, 0x0

    .local v5, outputIndex:I
    move v3, v2

    .line 65
    .end local v2           #inputIndex:I
    .local v3, inputIndex:I
    :goto_1
    sub-int v9, v1, v3

    const/4 v10, 0x2

    if-le v9, v10, :cond_1

    .line 66
    add-int/lit8 v2, v3, 0x1

    .end local v3           #inputIndex:I
    .restart local v2       #inputIndex:I
    aget-byte v9, p1, v3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->toInt(B)I

    move-result v9

    shl-int/lit8 v4, v9, 0x10

    .line 67
    .local v4, one:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #inputIndex:I
    .restart local v3       #inputIndex:I
    aget-byte v9, p1, v2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->toInt(B)I

    move-result v9

    shl-int/lit8 v8, v9, 0x8

    .line 68
    .local v8, two:I
    add-int/lit8 v2, v3, 0x1

    .end local v3           #inputIndex:I
    .restart local v2       #inputIndex:I
    aget-byte v9, p1, v3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->toInt(B)I

    move-result v7

    .line 69
    .local v7, three:I
    or-int v9, v4, v8

    or-int v6, v9, v7

    .line 70
    .local v6, quantum:I
    const/high16 v9, 0xfc

    and-int/2addr v9, v6

    shr-int/lit8 v0, v9, 0x12

    .line 71
    .local v0, index:I
    iget-object v9, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v10, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v10, v10, v0

    invoke-direct {p0, v9, v5, v10}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v5

    .line 72
    const v9, 0x3f000

    and-int/2addr v9, v6

    shr-int/lit8 v0, v9, 0xc

    .line 73
    iget-object v9, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v10, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v10, v10, v0

    invoke-direct {p0, v9, v5, v10}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v5

    .line 74
    and-int/lit16 v9, v6, 0xfc0

    shr-int/lit8 v0, v9, 0x6

    .line 75
    iget-object v9, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v10, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v10, v10, v0

    invoke-direct {p0, v9, v5, v10}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v5

    .line 76
    and-int/lit8 v0, v6, 0x3f

    .line 77
    iget-object v9, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v10, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v10, v10, v0

    invoke-direct {p0, v9, v5, v10}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v5

    move v3, v2

    .line 78
    .end local v2           #inputIndex:I
    .restart local v3       #inputIndex:I
    goto :goto_1

    .line 80
    .end local v0           #index:I
    .end local v4           #one:I
    .end local v6           #quantum:I
    .end local v7           #three:I
    .end local v8           #two:I
    :cond_1
    sub-int v9, v1, v3

    packed-switch v9, :pswitch_data_0

    move v2, v3

    .end local v3           #inputIndex:I
    .restart local v2       #inputIndex:I
    :goto_2
    move v9, v5

    .line 103
    goto :goto_0

    .line 82
    .end local v2           #inputIndex:I
    .restart local v3       #inputIndex:I
    :pswitch_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #inputIndex:I
    .restart local v2       #inputIndex:I
    aget-byte v9, p1, v3

    shl-int/lit8 v6, v9, 0x10

    .line 83
    .restart local v6       #quantum:I
    const/high16 v9, 0xfc

    and-int/2addr v9, v6

    shr-int/lit8 v0, v9, 0x12

    .line 84
    .restart local v0       #index:I
    iget-object v9, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v10, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v10, v10, v0

    invoke-direct {p0, v9, v5, v10}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v5

    .line 85
    const v9, 0x3f000

    and-int/2addr v9, v6

    shr-int/lit8 v0, v9, 0xc

    .line 86
    iget-object v9, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v10, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v10, v10, v0

    invoke-direct {p0, v9, v5, v10}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v5

    .line 87
    iget-object v9, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    const/16 v10, 0x3d

    invoke-direct {p0, v9, v5, v10}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v5

    .line 88
    iget-object v9, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    const/16 v10, 0x3d

    invoke-direct {p0, v9, v5, v10}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v5

    .line 89
    goto :goto_2

    .line 92
    .end local v0           #index:I
    .end local v2           #inputIndex:I
    .end local v6           #quantum:I
    .restart local v3       #inputIndex:I
    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #inputIndex:I
    .restart local v2       #inputIndex:I
    aget-byte v9, p1, v3

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v3, v2, 0x1

    .end local v2           #inputIndex:I
    .restart local v3       #inputIndex:I
    aget-byte v10, p1, v2

    shl-int/lit8 v10, v10, 0x8

    add-int v6, v9, v10

    .line 93
    .restart local v6       #quantum:I
    const/high16 v9, 0xfc

    and-int/2addr v9, v6

    shr-int/lit8 v0, v9, 0x12

    .line 94
    .restart local v0       #index:I
    iget-object v9, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v10, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v10, v10, v0

    invoke-direct {p0, v9, v5, v10}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v5

    .line 95
    const v9, 0x3f000

    and-int/2addr v9, v6

    shr-int/lit8 v0, v9, 0xc

    .line 96
    iget-object v9, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v10, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v10, v10, v0

    invoke-direct {p0, v9, v5, v10}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v5

    .line 97
    and-int/lit16 v9, v6, 0xfc0

    shr-int/lit8 v0, v9, 0x6

    .line 98
    iget-object v9, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    sget-object v10, Lorg/apache/james/mime4j/decoder/Base64Encoder;->ENCODING:[B

    aget-byte v10, v10, v0

    invoke-direct {p0, v9, v5, v10}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v5

    .line 99
    iget-object v9, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    const/16 v10, 0x3d

    invoke-direct {p0, v9, v5, v10}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->setResult([BIB)I

    move-result v5

    move v2, v3

    .end local v3           #inputIndex:I
    .restart local v2       #inputIndex:I
    goto :goto_2

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setResult([BIB)I
    .locals 1
    .parameter "results"
    .parameter "outputIndex"
    .parameter "value"

    .prologue
    .line 111
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, outputIndex:I
    aput-byte p3, p1, p2

    .line 112
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->checkLineLength([BI)I

    move-result p2

    .line 113
    .end local v0           #outputIndex:I
    .restart local p2
    return p2
.end method

.method private toInt(B)I
    .locals 1
    .parameter "b"

    .prologue
    .line 107
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .parameter "inStream"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 50
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->in:[B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, inputLength:I
    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    .line 51
    iget-object v2, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->in:[B

    invoke-direct {p0, v2, v3, v0}, Lorg/apache/james/mime4j/decoder/Base64Encoder;->encodeInputBuffer([BII)I

    move-result v1

    .line 52
    .local v1, outputLength:I
    if-lez v1, :cond_0

    .line 53
    iget-object v2, p0, Lorg/apache/james/mime4j/decoder/Base64Encoder;->out:[B

    invoke-virtual {p2, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 56
    .end local v1           #outputLength:I
    :cond_1
    return-void
.end method
