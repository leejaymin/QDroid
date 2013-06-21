.class public Lorg/apache/james/mime4j/decoder/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field static final CHUNK_SEPARATOR:[B = null

.field static final CHUNK_SIZE:I = 0x4c

.field private static final MASK_6BITS:I = 0x3f

.field private static final PAD:B = 0x3dt

.field private static final base64ToInt:[B

.field private static final intToBase64:[B


# instance fields
.field private buf:[B

.field private closed:Z

.field private currentLinePos:I

.field private final encodeSize:I

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private final singleByte:[B

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->CHUNK_SEPARATOR:[B

    .line 71
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    .line 94
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->base64ToInt:[B

    return-void

    .line 61
    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 71
    nop

    :array_1
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

    .line 94
    :array_2
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
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "os"

    .prologue
    .line 170
    const/16 v0, 0x4c

    sget-object v1, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter "os"
    .parameter "lineLength"

    .prologue
    .line 189
    sget-object v0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I[B)V
    .locals 5
    .parameter "os"
    .parameter "lineLength"
    .parameter "lineSeparator"

    .prologue
    const/4 v4, 0x0

    .line 211
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 132
    const/16 v2, 0x400

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    .line 156
    iput-boolean v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->closed:Z

    .line 267
    const/4 v2, 0x1

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->singleByte:[B

    .line 212
    iput p2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineLength:I

    .line 213
    array-length v2, p3

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    .line 214
    iget-object v2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v3, p3

    invoke-static {p3, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    if-lez p2, :cond_0

    .line 216
    array-length v2, p3

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->encodeSize:I

    .line 220
    :goto_0
    invoke-static {p3}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->containsBase64Byte([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .local v0, sep:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineSeperator must not contain base64 characters: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    .end local v0           #sep:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x4

    iput v2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->encodeSize:I

    goto :goto_0

    .line 224
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 225
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .restart local v0       #sep:Ljava/lang/String;
    goto :goto_1

    .line 229
    .end local v0           #sep:Ljava/lang/String;
    .end local v1           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_1
    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 2
    .parameter "arrayOctet"

    .prologue
    .line 257
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 258
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->isBase64(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const/4 v1, 0x1

    .line 262
    :goto_1
    return v1

    .line 257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 367
    iget v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    if-lez v0, :cond_0

    .line 368
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 370
    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    .line 372
    :cond_0
    return-void
.end method

.method public static isBase64(B)Z
    .locals 2
    .parameter "octet"

    .prologue
    .line 246
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->base64ToInt:[B

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->base64ToInt:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeBuf()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 234
    .local v0, b:[B
    iget-object v1, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget-object v2, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iput-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    .line 236
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 390
    iget-boolean v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 396
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->singleByte:[B

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->write([BII)V

    .line 397
    invoke-virtual {p0}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    iput-boolean v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->closed:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->closed:Z

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->flushBuffer()V

    .line 382
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 383
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 274
    iget-object v0, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->write([BII)V

    .line 275
    return-void
.end method

.method public write([BII)V
    .locals 9
    .parameter "b"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 292
    iget-boolean v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->closed:Z

    if-eqz v3, :cond_0

    .line 293
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Base64OutputStream has been closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 295
    :cond_0
    if-nez p1, :cond_1

    .line 296
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 297
    :cond_1
    if-gez p3, :cond_4

    .line 300
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->closed:Z

    .line 301
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    array-length v3, v3

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->encodeSize:I

    if-ge v3, v4, :cond_2

    .line 302
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->resizeBuf()V

    .line 304
    :cond_2
    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->modulus:I

    packed-switch v3, :pswitch_data_0

    .line 319
    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineLength:I

    if-lez v3, :cond_3

    .line 320
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    .line 324
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    .line 354
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->flushBuffer()V

    .line 355
    return-void

    .line 306
    :pswitch_0
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 307
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 308
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    aput-byte v8, v3, v4

    .line 309
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    aput-byte v8, v3, v4

    goto :goto_0

    .line 313
    :pswitch_1
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shr-int/lit8 v6, v6, 0xa

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 314
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 315
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 316
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    aput-byte v8, v3, v4

    goto/16 :goto_0

    .line 327
    :cond_4
    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v3, p2, p3

    if-gez v3, :cond_6

    .line 328
    :cond_5
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 329
    :cond_6
    array-length v3, p1

    if-gt p2, v3, :cond_7

    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_8

    .line 330
    :cond_7
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 331
    :cond_8
    if-lez p3, :cond_3

    .line 332
    const/4 v1, 0x0

    .local v1, i:I
    move v2, p2

    .end local p2
    .local v2, offset:I
    :goto_2
    if-ge v1, p3, :cond_c

    .line 333
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    array-length v3, v3

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->encodeSize:I

    if-ge v3, v4, :cond_9

    .line 334
    invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->resizeBuf()V

    .line 336
    :cond_9
    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->modulus:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->modulus:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->modulus:I

    .line 337
    add-int/lit8 p2, v2, 0x1

    .end local v2           #offset:I
    .restart local p2
    aget-byte v0, p1, v2

    .line 338
    .local v0, bc:I
    if-gez v0, :cond_a

    add-int/lit16 v0, v0, 0x100

    .line 339
    :cond_a
    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    .line 340
    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->modulus:I

    if-nez v3, :cond_b

    .line 341
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 342
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 343
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 344
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    sget-object v5, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->intToBase64:[B

    iget v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->x:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 345
    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->currentLinePos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->currentLinePos:I

    .line 346
    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineLength:I

    if-lez v3, :cond_b

    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineLength:I

    iget v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->currentLinePos:I

    if-gt v3, v4, :cond_b

    .line 347
    iget-object v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->buf:[B

    iget v5, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v6, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    iget v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    iget-object v4, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->pos:I

    .line 349
    iput v7, p0, Lorg/apache/james/mime4j/decoder/Base64OutputStream;->currentLinePos:I

    .line 332
    :cond_b
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2
    .restart local v2       #offset:I
    goto/16 :goto_2

    .end local v0           #bc:I
    :cond_c
    move p2, v2

    .end local v2           #offset:I
    .restart local p2
    goto/16 :goto_1

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
