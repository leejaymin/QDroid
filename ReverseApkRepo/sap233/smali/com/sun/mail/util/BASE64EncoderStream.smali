.class public Lcom/sun/mail/util/BASE64EncoderStream;
.super Ljava/io/FilterOutputStream;


# static fields
.field private static h:[B

.field private static final i:[C


# instance fields
.field private a:[B

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/util/BASE64EncoderStream;->h:[B

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/util/BASE64EncoderStream;->i:[C

    return-void

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
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

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->b:I

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->d:I

    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->g:Z

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->a:[B

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->g:Z

    const/16 p2, 0x4c

    :cond_1
    div-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->e:I

    div-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->f:I

    iget-boolean v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->g:Z

    if-eqz v1, :cond_2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->c:[B

    :goto_0
    return-void

    :cond_2
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->c:[B

    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->c:[B

    const/16 v2, 0xd

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->c:[B

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v1, v0

    goto :goto_0
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->b:I

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->a:[B

    iget v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->b:I

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->c:[B

    invoke-static {v2, v5, v3, v4}, Lcom/sun/mail/util/BASE64EncoderStream;->a([BII[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->d:I

    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->d:I

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->e:I

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/BASE64EncoderStream;->h:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    iput v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->d:I

    :cond_1
    return-void
.end method

.method private static a([BII[B)[B
    .locals 6

    const/16 v5, 0x3d

    if-nez p3, :cond_0

    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array p3, v0, [B

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge p2, v1, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v0, 0x3

    aput-byte v5, p3, v2

    add-int/lit8 v2, v0, 0x2

    aput-byte v5, p3, v2

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->i:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x0

    sget-object v2, Lcom/sun/mail/util/BASE64EncoderStream;->i:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v2, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    :cond_1
    :goto_1
    return-object p3

    :cond_2
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, v3, 0x1

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x3

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->i:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->i:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->i:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x0

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->i:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v3, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    add-int/lit8 p2, p2, -0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v0, 0x3

    aput-byte v5, p3, v2

    add-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->i:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->i:[C

    and-int/lit8 v4, v1, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x0

    sget-object v2, Lcom/sun/mail/util/BASE64EncoderStream;->i:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v2, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    goto/16 :goto_1
.end method

.method public static encode([B)[B
    .locals 3

    array-length v0, p0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sun/mail/util/BASE64EncoderStream;->a([BII[B)[B

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->flush()V

    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->d:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/BASE64EncoderStream;->h:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->b:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->b:I

    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->a:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/BASE64EncoderStream;->write([BII)V

    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 7

    monitor-enter p0

    add-int v2, p2, p3

    move v0, p2

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->b:I

    if-eqz v1, :cond_0

    if-lt v0, v2, :cond_4

    :cond_0
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->e:I

    iget v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->d:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v3, v1, 0x3

    add-int v1, v0, v3

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v3, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    iget-boolean v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->g:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->c:[B

    add-int/lit8 v5, v1, 0x1

    const/16 v6, 0xd

    aput-byte v6, v4, v1

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->c:[B

    add-int/lit8 v1, v5, 0x1

    const/16 v6, 0xa

    aput-byte v6, v4, v5

    :cond_1
    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->c:[B

    invoke-static {p1, v0, v3, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->a([BII[B)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v3

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->d:I

    :cond_2
    :goto_1
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->f:I

    add-int/2addr v1, v0

    if-lt v1, v2, :cond_5

    add-int/lit8 v1, v0, 0x3

    if-ge v1, v2, :cond_3

    sub-int v1, v2, v0

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v3, v1, 0x2

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->c:[B

    invoke-static {p1, v0, v1, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->a([BII[B)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    if-lt v0, v2, :cond_6

    monitor-exit p0

    return-void

    :cond_4
    add-int/lit8 p2, v0, 0x1

    :try_start_1
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/BASE64EncoderStream;->write(I)V

    move v0, p2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->f:I

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->c:[B

    invoke-static {p1, v0, v3, v4}, Lcom/sun/mail/util/BASE64EncoderStream;->a([BII[B)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->f:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_6
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/BASE64EncoderStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
