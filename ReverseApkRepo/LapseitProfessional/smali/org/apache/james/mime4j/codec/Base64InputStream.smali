.class public Lorg/apache/james/mime4j/codec/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BASE64_DECODE:[I = null

.field private static final BASE64_PAD:B = 0x3dt

.field private static final ENCODED_BUFFER_SIZE:I = 0x600

.field private static final EOF:I = -0x1


# instance fields
.field private closed:Z

.field private final decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private final encoded:[B

.field private eof:Z

.field private final in:Ljava/io/InputStream;

.field private final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field private position:I

.field private final singleByte:[B

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 30
    const-class v1, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    .line 33
    new-array v1, v3, [I

    sput-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    .line 36
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 37
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    .restart local v0       #i:I
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 39
    sget-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    aput v0, v1, v2

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 40
    :cond_2
    return-void
.end method

.method protected constructor <init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 2
    .parameter "bufsize"
    .parameter "in"
    .parameter "monitor"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    .line 52
    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 53
    iput v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    .line 55
    iput-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    .line 68
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 69
    iput-object p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    .line 70
    iput-object p3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 1
    .parameter "in"
    .parameter "monitor"

    .prologue
    .line 61
    const/16 v0, 0x600

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .parameter "in"
    .parameter "strict"

    .prologue
    .line 78
    const/16 v1, 0x600

    if-eqz p2, :cond_0

    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->STRICT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    :goto_0
    invoke-direct {p0, v1, p1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(ILjava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 79
    return-void

    .line 78
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    goto :goto_0
.end method

.method private decodePad(II[BII)I
    .locals 5
    .parameter "data"
    .parameter "sextets"
    .parameter "buffer"
    .parameter "index"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    .line 244
    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    .line 247
    ushr-int/lit8 v4, p1, 0x4

    int-to-byte v0, v4

    .line 248
    .local v0, b:B
    if-ge p4, p5, :cond_0

    .line 249
    add-int/lit8 v3, p4, 0x1

    .end local p4
    .local v3, index:I
    aput-byte v0, p3, p4

    move p4, v3

    .line 274
    .end local v0           #b:B
    .end local v3           #index:I
    .restart local p4
    :goto_0
    return p4

    .line 251
    .restart local v0       #b:B
    :cond_0
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    .line 253
    .end local v0           #b:B
    :cond_1
    const/4 v4, 0x3

    if-ne p2, v4, :cond_4

    .line 256
    ushr-int/lit8 v4, p1, 0xa

    int-to-byte v1, v4

    .line 257
    .local v1, b1:B
    ushr-int/lit8 v4, p1, 0x2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    .line 259
    .local v2, b2:B
    add-int/lit8 v4, p5, -0x1

    if-ge p4, v4, :cond_2

    .line 260
    add-int/lit8 v3, p4, 0x1

    .end local p4
    .restart local v3       #index:I
    aput-byte v1, p3, p4

    .line 261
    add-int/lit8 p4, v3, 0x1

    .end local v3           #index:I
    .restart local p4
    aput-byte v2, p3, v3

    goto :goto_0

    .line 262
    :cond_2
    if-ge p4, p5, :cond_3

    .line 263
    add-int/lit8 v3, p4, 0x1

    .end local p4
    .restart local v3       #index:I
    aput-byte v1, p3, p4

    .line 264
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    move p4, v3

    .end local v3           #index:I
    .restart local p4
    goto :goto_0

    .line 266
    :cond_3
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 267
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_0

    .line 271
    .end local v1           #b1:B
    .end local v2           #b2:B
    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpecedPad(I)V

    goto :goto_0
.end method

.method private handleUnexpecedPad(I)V
    .locals 4
    .parameter "sextets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v1, "Unexpected padding character"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sextet(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected padding character"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    return-void
.end method

.method private handleUnexpectedEof(I)V
    .locals 4
    .parameter "sextets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const-string v1, "Unexpected end of BASE64 stream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sextet(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected end of BASE64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    return-void
.end method

.method private read0([BII)I
    .locals 19
    .parameter "buffer"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    move/from16 v13, p2

    .line 137
    .local v13, from:I
    add-int v7, p2, p3

    .line 138
    .local v7, to:I
    move/from16 v6, p2

    .line 141
    .local v6, index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    move/from16 v0, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 143
    .local v11, chunk:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v5, v0, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v11}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->remove(II)V

    .line 145
    add-int/2addr v6, v11

    .line 150
    .end local v11           #chunk:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    if-eqz v2, :cond_2

    .line 151
    if-ne v6, v13, :cond_1

    const/4 v2, -0x1

    .line 237
    :goto_0
    return v2

    .line 151
    :cond_1
    sub-int v2, v6, v13

    goto :goto_0

    .line 155
    :cond_2
    const/4 v3, 0x0

    .line 156
    .local v3, data:I
    const/4 v4, 0x0

    .line 158
    .local v4, sextets:I
    :cond_3
    if-ge v6, v7, :cond_10

    .line 161
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ne v2, v5, :cond_a

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    .line 163
    .local v15, n:I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_7

    .line 164
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    .line 166
    if-eqz v4, :cond_5

    .line 168
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpectedEof(I)V

    .line 171
    :cond_5
    if-ne v6, v13, :cond_6

    const/4 v2, -0x1

    goto :goto_0

    :cond_6
    sub-int v2, v6, v13

    goto :goto_0

    .line 172
    :cond_7
    if-lez v15, :cond_8

    .line 173
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 174
    move-object/from16 v0, p0

    iput v15, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    goto :goto_1

    .line 176
    :cond_8
    sget-boolean v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-eqz v15, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 199
    .end local v15           #n:I
    .local v12, decoded:I
    .local v16, value:I
    :cond_9
    shl-int/lit8 v2, v3, 0x6

    or-int v3, v2, v12

    .line 200
    add-int/lit8 v4, v4, 0x1

    .line 202
    const/4 v2, 0x4

    if-ne v4, v2, :cond_a

    .line 203
    const/4 v4, 0x0

    .line 205
    ushr-int/lit8 v2, v3, 0x10

    int-to-byte v8, v2

    .line 206
    .local v8, b1:B
    ushr-int/lit8 v2, v3, 0x8

    int-to-byte v9, v2

    .line 207
    .local v9, b2:B
    int-to-byte v10, v3

    .line 209
    .local v10, b3:B
    add-int/lit8 v2, v7, -0x2

    if-ge v6, v2, :cond_c

    .line 210
    add-int/lit8 v14, v6, 0x1

    .end local v6           #index:I
    .local v14, index:I
    aput-byte v8, p1, v6

    .line 211
    add-int/lit8 v6, v14, 0x1

    .end local v14           #index:I
    .restart local v6       #index:I
    aput-byte v9, p1, v14

    .line 212
    add-int/lit8 v14, v6, 0x1

    .end local v6           #index:I
    .restart local v14       #index:I
    aput-byte v10, p1, v6

    move v6, v14

    .line 182
    .end local v8           #b1:B
    .end local v9           #b2:B
    .end local v10           #b3:B
    .end local v12           #decoded:I
    .end local v14           #index:I
    .end local v16           #value:I
    .restart local v6       #index:I
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ge v2, v5, :cond_3

    if-ge v6, v7, :cond_3

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    aget-byte v2, v2, v5

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 185
    .restart local v16       #value:I
    const/16 v2, 0x3d

    move/from16 v0, v16

    if-ne v0, v2, :cond_b

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 186
    invoke-direct/range {v2 .. v7}, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodePad(II[BII)I

    move-result v6

    .line 187
    sub-int v2, v6, v13

    goto/16 :goto_0

    .line 190
    :cond_b
    sget-object v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    aget v12, v2, v16

    .line 191
    .restart local v12       #decoded:I
    if-gez v12, :cond_9

    .line 192
    const/16 v2, 0xd

    move/from16 v0, v16

    if-eq v0, v2, :cond_a

    const/16 v2, 0xa

    move/from16 v0, v16

    if-eq v0, v2, :cond_a

    const/16 v2, 0x20

    move/from16 v0, v16

    if-eq v0, v2, :cond_a

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unexpected base64 byte: "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v17, "ignoring."

    move-object/from16 v0, v17

    invoke-virtual {v2, v5, v0}, Lorg/apache/james/mime4j/codec/DecodeMonitor;->warn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 194
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Unexpected base64 byte"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .restart local v8       #b1:B
    .restart local v9       #b2:B
    .restart local v10       #b3:B
    :cond_c
    add-int/lit8 v2, v7, -0x1

    if-ge v6, v2, :cond_d

    .line 215
    add-int/lit8 v14, v6, 0x1

    .end local v6           #index:I
    .restart local v14       #index:I
    aput-byte v8, p1, v6

    .line 216
    add-int/lit8 v6, v14, 0x1

    .end local v14           #index:I
    .restart local v6       #index:I
    aput-byte v9, p1, v14

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2, v10}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 228
    :goto_2
    sget-boolean v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_f

    if-eq v6, v7, :cond_f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 218
    :cond_d
    if-ge v6, v7, :cond_e

    .line 219
    add-int/lit8 v14, v6, 0x1

    .end local v6           #index:I
    .restart local v14       #index:I
    aput-byte v8, p1, v6

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2, v9}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2, v10}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    move v6, v14

    .end local v14           #index:I
    .restart local v6       #index:I
    goto :goto_2

    .line 223
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2, v8}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2, v9}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2, v10}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    goto :goto_2

    .line 229
    :cond_f
    sub-int v2, v7, v13

    goto/16 :goto_0

    .line 235
    .end local v8           #b1:B
    .end local v9           #b2:B
    .end local v10           #b3:B
    .end local v12           #decoded:I
    .end local v16           #value:I
    :cond_10
    sget-boolean v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_11

    if-eqz v4, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 236
    :cond_11
    sget-boolean v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_12

    if-eq v6, v7, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 237
    :cond_12
    sub-int v2, v7, v13

    goto/16 :goto_0
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
    .line 129
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    goto :goto_0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 83
    iget-boolean v2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v2, :cond_0

    .line 84
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream has been closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    invoke-direct {p0, v2, v3, v4}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    .line 88
    .local v0, bytes:I
    if-ne v0, v1, :cond_1

    .line 92
    :goto_0
    return v1

    .line 91
    :cond_1
    if-ne v0, v4, :cond_0

    .line 92
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-boolean v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-nez p1, :cond_1

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 104
    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    .line 107
    :goto_0
    return v0

    :cond_2
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    if-nez p1, :cond_1

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 118
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 121
    :cond_3
    if-nez p3, :cond_4

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    goto :goto_0
.end method
