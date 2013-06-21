.class public Lcom/sun/mail/util/UUDecoderStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/sun/mail/util/LineInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->e:I

    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->f:Z

    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->g:Z

    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->h:Lcom/sun/mail/util/LineInputStream;

    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->c:[B

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->h:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "UUDecoder error: No Begin"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v3, "begin"

    const/4 v5, 0x5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    const/16 v3, 0x9

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->f:Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UUDecoder error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3

    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->e:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getMode()I
    .locals 1

    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->a()V

    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->b:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->a()V

    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->a:Ljava/lang/String;

    return-object v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 10

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->e:I

    iget v3, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    if-lt v0, v3, :cond_b

    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->a()V

    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->g:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_1
    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    :cond_2
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->h:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing End"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v3, "end"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->g:Z

    move v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ge v3, v4, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer format error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v3, v3, -0x20

    and-int/lit8 v6, v3, 0x3f

    if-nez v6, :cond_8

    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->h:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "end"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing End"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->g:Z

    move v1, v2

    goto :goto_0

    :cond_8
    mul-int/lit8 v3, v6, 0x8

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    if-ge v4, v3, :cond_9

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Short buffer error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v3, v1

    :goto_2
    iget v4, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    if-ge v4, v6, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x20

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v5, v3

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->c:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    shl-int/lit8 v5, v5, 0x2

    and-int/lit16 v5, v5, 0xfc

    ushr-int/lit8 v9, v4, 0x4

    and-int/lit8 v9, v9, 0x3

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v7, v8

    iget v5, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    if-ge v5, v6, :cond_d

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x20

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->c:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v9, v3, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v7, v8

    move v4, v5

    move v5, v3

    :goto_3
    iget v3, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    if-ge v3, v6, :cond_c

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->c:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->d:I

    shl-int/lit8 v5, v5, 0x6

    and-int/lit16 v5, v5, 0xc0

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v7, v8

    goto :goto_2

    :cond_a
    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->e:I

    :cond_b
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->c:[B

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto/16 :goto_1

    :cond_c
    move v3, v4

    goto/16 :goto_2

    :cond_d
    move v5, v4

    move v4, v3

    goto :goto_3
.end method

.method public read([BII)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p3, :cond_1

    :cond_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/util/UUDecoderStream;->read()I

    move-result v2

    if-ne v2, v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_2
    add-int v3, p2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
