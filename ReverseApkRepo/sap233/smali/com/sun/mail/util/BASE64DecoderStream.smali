.class public Lcom/sun/mail/util/BASE64DecoderStream;
.super Ljava/io/FilterInputStream;


# static fields
.field private static final h:[C

.field private static final i:[B


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->h:[C

    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->i:[B

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-lt v1, v2, :cond_0

    :goto_1
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->h:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->i:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->i:[B

    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->h:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->a:[B

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->b:I

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->c:I

    const/16 v1, 0x1ffe

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->d:[B

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->e:I

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->f:I

    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->g:Z

    :try_start_0
    const-string v1, "mail.mime.base64.ignoreerrors"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->g:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->a:[B

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->b:I

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->c:I

    const/16 v0, 0x1ffe

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->d:[B

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->e:I

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->f:I

    iput-boolean v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->g:Z

    iput-boolean p2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->g:Z

    return-void
.end method

.method private a()I
    .locals 4

    const/4 v0, -0x1

    :cond_0
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->e:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->f:I

    if-lt v1, v2, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->d:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->f:I

    if-gtz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->e:I

    :cond_2
    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->d:[B

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->e:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_3

    const/4 v0, -0x2

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->i:[B

    aget-byte v1, v2, v1

    if-eq v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a([BII)I
    .locals 10

    const/4 v9, 0x2

    const/4 v0, 0x1

    const/4 v8, -0x2

    const/4 v1, 0x0

    const/4 v7, -0x1

    move v5, p2

    :goto_0
    const/4 v2, 0x3

    if-ge p3, v2, :cond_0

    sub-int v0, v5, p2

    :goto_1
    return v0

    :cond_0
    move v4, v1

    move v2, v1

    :goto_2
    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    add-int/lit8 v2, v5, 0x2

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    shr-int/lit8 v2, v4, 0x8

    add-int/lit8 v3, v5, 0x1

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v5

    add-int/lit8 p3, p3, -0x3

    add-int/lit8 v2, v5, 0x3

    move v5, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->a()I

    move-result v6

    if-eq v6, v7, :cond_2

    if-ne v6, v8, :cond_c

    :cond_2
    if-ne v6, v7, :cond_6

    if-nez v2, :cond_3

    sub-int v0, v5, p2

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->g:Z

    if-nez v1, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error in encoded stream: needed 4 valid base64 characters but only got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before EOF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v3, v0

    :goto_3
    add-int/lit8 v1, v2, -0x1

    if-nez v1, :cond_d

    :goto_4
    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v4, 0x6

    :goto_5
    const/4 v4, 0x4

    if-lt v2, v4, :cond_9

    shr-int/lit8 v1, v1, 0x8

    if-ne v0, v9, :cond_5

    add-int/lit8 v2, v5, 0x1

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    :cond_5
    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v5

    add-int/2addr v0, v5

    sub-int/2addr v0, p2

    goto :goto_1

    :cond_6
    if-ge v2, v9, :cond_7

    iget-boolean v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->g:Z

    if-nez v3, :cond_7

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before padding character (=)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez v2, :cond_8

    sub-int v0, v5, p2

    goto/16 :goto_1

    :cond_8
    move v3, v1

    goto :goto_3

    :cond_9
    if-nez v3, :cond_b

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->a()I

    move-result v4

    if-ne v4, v7, :cond_a

    iget-boolean v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->g:Z

    if-nez v4, :cond_b

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in encoded stream: hit EOF while looking for padding characters (=)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eq v4, v8, :cond_b

    iget-boolean v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->g:Z

    if-nez v4, :cond_b

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in encoded stream: found valid base64 character after a padding character (=)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_c
    shl-int/lit8 v4, v4, 0x6

    add-int/lit8 v3, v2, 0x1

    or-int v2, v4, v6

    move v4, v2

    move v2, v3

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto/16 :goto_4
.end method

.method private b()Ljava/lang/String;
    .locals 4

    const/16 v1, 0xa

    const-string v0, ""

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->e:I

    if-le v2, v1, :cond_1

    move v2, v1

    :goto_0
    if-lez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", the "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " most recent characters were: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->e:I

    sub-int/2addr v0, v2

    :goto_1
    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->e:I

    if-lt v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->e:I

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->d:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\r"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static decode([B)[B
    .locals 10

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v9, 0x3d

    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v9, :cond_1

    add-int/lit8 v0, v0, -0x1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, p0, v3

    if-ne v3, v9, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    new-array v5, v0, [B

    array-length v0, p0

    move v6, v2

    move v7, v0

    :goto_1
    if-gtz v7, :cond_2

    move-object p0, v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    sget-object v3, Lcom/sun/mail/util/BASE64DecoderStream;->i:[B

    add-int/lit8 v8, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x6

    sget-object v3, Lcom/sun/mail/util/BASE64DecoderStream;->i:[B

    add-int/lit8 v4, v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    aget-byte v3, v3, v8

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x6

    aget-byte v3, p0, v4

    if-eq v3, v9, :cond_5

    sget-object v8, Lcom/sun/mail/util/BASE64DecoderStream;->i:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v8, v4

    or-int/2addr v2, v4

    :goto_2
    shl-int/lit8 v2, v2, 0x6

    aget-byte v4, p0, v3

    if-eq v4, v9, :cond_6

    sget-object v8, Lcom/sun/mail/util/BASE64DecoderStream;->i:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v8, v3

    or-int/2addr v2, v3

    move v3, v4

    :goto_3
    if-le v0, v1, :cond_3

    add-int/lit8 v4, v6, 0x2

    and-int/lit16 v8, v2, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v4

    :cond_3
    shr-int/lit8 v2, v2, 0x8

    const/4 v4, 0x1

    if-le v0, v4, :cond_4

    add-int/lit8 v4, v6, 0x1

    and-int/lit16 v8, v2, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v4

    :cond_4
    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    add-int/2addr v0, v6

    add-int/lit8 v2, v7, -0x4

    move v6, v0

    move v7, v2

    move v2, v3

    goto :goto_1

    :cond_5
    move v0, v1

    move v3, v4

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method


# virtual methods
.method public available()I
    .locals 3

    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->b:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->c:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->c:I

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->b:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->a:[B

    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->a:[B

    array-length v1, v1

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->a([BII)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->b:I

    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->b:I

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->c:I

    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->a:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6

    const/4 v2, -0x1

    move v0, p2

    :goto_0
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->c:I

    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->b:I

    if-ge v1, v3, :cond_0

    if-gtz p3, :cond_2

    :cond_0
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->c:I

    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->b:I

    if-lt v1, v3, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->c:I

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->b:I

    :cond_1
    div-int/lit8 v1, p3, 0x3

    mul-int/lit8 v1, v1, 0x3

    if-lez v1, :cond_5

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->a([BII)I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr p3, v3

    if-eq v3, v1, :cond_5

    if-ne v0, p2, :cond_3

    move v0, v2

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->a:[B

    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/mail/util/BASE64DecoderStream;->c:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v0

    add-int/lit8 p3, p3, -0x1

    move v0, v1

    goto :goto_0

    :cond_3
    sub-int/2addr v0, p2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->read()I

    move-result v3

    if-eq v3, v2, :cond_6

    add-int/lit8 v1, v0, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 p3, p3, -0x1

    move v0, v1

    :cond_5
    if-gtz p3, :cond_4

    :cond_6
    if-ne v0, p2, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    sub-int/2addr v0, p2

    goto :goto_1
.end method
