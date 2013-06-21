.class abstract La/d/u;
.super La/e/a/b;

# interfaces
.implements La/d/ax;
.implements La/e/a/a;


# static fields
.field static e:La/e/e;

.field static final f:[B


# instance fields
.field A:Ljava/lang/String;

.field B:La/d/v;

.field C:La/d/u;

.field g:B

.field h:B

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:Z

.field u:Z

.field v:Z

.field w:J

.field x:I

.field y:Z

.field z:La/d/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, La/e/e;->a()La/e/e;

    move-result-object v0

    sput-object v0, La/d/u;->e:La/e/e;

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, La/d/u;->f:[B

    return-void

    :array_0
    .array-data 0x1
        0xfft
        0x53t
        0x4dt
        0x42t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, La/e/a/b;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, La/d/u;->w:J

    iput-object v2, p0, La/d/u;->z:La/d/t;

    iput-object v2, p0, La/d/u;->B:La/d/v;

    const/16 v0, 0x18

    iput-byte v0, p0, La/d/u;->h:B

    sget v0, La/d/u;->aj:I

    iput v0, p0, La/d/u;->o:I

    const/4 v0, 0x0

    iput v0, p0, La/d/u;->k:I

    return-void
.end method

.method static a(J[BI)V
    .locals 3

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method static b(J[BI)V
    .locals 5

    const/16 v4, 0x8

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-long v1, p0, v4

    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v1, v4

    long-to-int v3, v1

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    shr-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method static d([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method static e([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method static f([BI)J
    .locals 5

    invoke-static {p0, p1}, La/d/u;->e([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, La/d/u;->e([BI)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static g([BI)J
    .locals 7

    invoke-static {p0, p1}, La/d/u;->e([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, La/d/u;->e([BI)I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v0, v1, v3

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    const-wide v2, 0xa9730b66800L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static h([BI)J
    .locals 4

    invoke-static {p0, p1}, La/d/u;->e([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method final a(Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, La/d/u;->t:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method final a(Ljava/lang/String;[BI)I
    .locals 1

    iget-boolean v0, p0, La/d/u;->t:Z

    invoke-virtual {p0, p1, p2, p3, v0}, La/d/u;->a(Ljava/lang/String;[BIZ)I

    move-result v0

    return v0
.end method

.method final a(Ljava/lang/String;[BIZ)I
    .locals 5

    if-eqz p4, :cond_1

    :try_start_0
    iget v0, p0, La/d/u;->i:I

    sub-int v0, p3, v0

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    add-int/lit8 v1, p3, 0x1

    const/4 v0, 0x0

    :try_start_1
    aput-byte v0, p2, p3

    :goto_0
    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    aput-byte v2, p2, v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    aput-byte v2, p2, v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    sub-int/2addr v0, p3

    return v0

    :cond_1
    :try_start_3
    sget-object v0, La/d/u;->am:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    add-int v1, p3, v0

    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    aput-byte v2, p2, v1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    sget-object v2, La/d/u;->e:La/e/e;

    sget v2, La/e/e;->a:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    sget-object v2, La/d/u;->e:La/e/e;

    invoke-virtual {v1, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, p3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_2

    :cond_2
    move v1, p3

    goto :goto_0
.end method

.method a([B)I
    .locals 6

    const/4 v0, 0x4

    iput v0, p0, La/d/u;->i:I

    invoke-virtual {p0, p1}, La/d/u;->c([B)I

    const/16 v0, 0x25

    invoke-virtual {p0, p1, v0}, La/d/u;->i([BI)I

    move-result v0

    iput v0, p0, La/d/u;->r:I

    const/16 v0, 0x24

    iget v1, p0, La/d/u;->r:I

    div-int/lit8 v1, v1, 0x2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    iget v0, p0, La/d/u;->r:I

    add-int/lit8 v0, v0, 0x25

    iget v1, p0, La/d/u;->r:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, La/d/u;->r:I

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, p1, v1}, La/d/u;->j([BI)I

    move-result v1

    iput v1, p0, La/d/u;->s:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, La/d/u;->s:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, La/d/u;->s:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget v1, p0, La/d/u;->s:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, La/d/u;->j:I

    iget-object v0, p0, La/d/u;->B:La/d/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/u;->B:La/d/v;

    iget v2, p0, La/d/u;->i:I

    iget v3, p0, La/d/u;->j:I

    iget-object v5, p0, La/d/u;->C:La/d/u;

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, La/d/v;->a([BIILa/d/u;La/d/u;)V

    :cond_0
    iget v0, p0, La/d/u;->j:I

    return v0
.end method

.method final a([BIIZ)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x80

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_6

    :try_start_0
    iget v3, p0, La/d/u;->i:I

    sub-int v3, p2, v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    add-int v3, p2, v2

    aget-byte v3, p1, v3

    if-nez v3, :cond_1

    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    if-eqz v3, :cond_5

    :cond_1
    add-int/lit8 v2, v2, 0x2

    if-le v2, p3, :cond_0

    sget-object v2, La/d/u;->e:La/e/e;

    sget v2, La/e/e;->a:I

    if-lez v2, :cond_3

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v0, :cond_2

    add-int/lit8 v0, p3, 0x8

    :cond_2
    invoke-static {v2, p1, p2, v0}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, La/d/u;->e:La/e/e;

    sget v2, La/e/e;->a:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    sget-object v2, La/d/u;->e:La/e/e;

    invoke-virtual {v0, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0

    :cond_6
    add-int v3, p2, v2

    aget-byte v3, p1, v3

    if-eqz v3, :cond_9

    add-int/lit8 v2, v2, 0x1

    if-le v2, p3, :cond_6

    sget-object v2, La/d/u;->e:La/e/e;

    sget v2, La/e/e;->a:I

    if-lez v2, :cond_8

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v0, :cond_7

    add-int/lit8 v0, p3, 0x8

    :cond_7
    invoke-static {v2, p1, p2, v0}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/String;

    sget-object v3, La/d/u;->am:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method b([B)I
    .locals 5

    const/16 v0, 0x25

    const/4 v4, 0x5

    const/4 v1, 0x4

    iput v1, p0, La/d/u;->i:I

    invoke-virtual {p0, p1}, La/d/u;->d([B)I

    const/16 v1, 0x24

    aget-byte v1, p1, v1

    iput v1, p0, La/d/u;->r:I

    iget v1, p0, La/d/u;->r:I

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, La/d/u;->k([BI)I

    move-result v0

    iget v1, p0, La/d/u;->r:I

    mul-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v1, La/d/u;->e:La/e/e;

    sget v1, La/e/e;->a:I

    if-lt v1, v4, :cond_0

    sget-object v1, La/d/u;->e:La/e/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wordCount * 2="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, La/d/u;->r:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but readParameterWordsWireFormat returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, La/e/e;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, La/d/u;->r:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x25

    :cond_1
    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v1

    iput v1, p0, La/d/u;->s:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/u;->s:I

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, La/d/u;->l([BI)I

    move-result v1

    iget v2, p0, La/d/u;->s:I

    if-eq v1, v2, :cond_2

    sget-object v2, La/d/u;->e:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v4, :cond_2

    sget-object v2, La/d/u;->e:La/e/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "byteCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, La/d/u;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but readBytesWireFormat returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_2
    iget v1, p0, La/d/u;->s:I

    add-int/2addr v0, v1

    :cond_3
    add-int/lit8 v0, v0, -0x4

    iput v0, p0, La/d/u;->j:I

    iget v0, p0, La/d/u;->j:I

    return v0
.end method

.method final b([BIIZ)Ljava/lang/String;
    .locals 4

    const/16 v3, 0xff

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_6

    :try_start_0
    iget v2, p0, La/d/u;->i:I

    sub-int v2, p2, v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    move v2, v0

    :goto_0
    add-int v0, p2, v2

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p3, :cond_5

    add-int v0, p2, v2

    aget-byte v0, p1, v0

    if-nez v0, :cond_1

    add-int v0, p2, v2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    if-eqz v0, :cond_5

    :cond_1
    if-le v2, v3, :cond_4

    sget-object v0, La/d/u;->e:La/e/e;

    sget v0, La/e/e;->a:I

    if-lez v0, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v2, 0x80

    invoke-static {v0, p1, p2, v2}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, La/d/u;->e:La/e/e;

    sget v2, La/e/e;->a:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    sget-object v2, La/d/u;->e:La/e/e;

    invoke-virtual {v0, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_4
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-16LE"

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_1

    :cond_6
    move v2, v0

    :goto_2
    if-ge p2, p3, :cond_9

    add-int v0, p2, v2

    aget-byte v0, p1, v0

    if-eqz v0, :cond_9

    if-le v2, v3, :cond_8

    sget-object v0, La/d/u;->e:La/e/e;

    sget v0, La/e/e;->a:I

    if-lez v0, :cond_7

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v2, 0x80

    invoke-static {v0, p1, p2, v2}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "zero termination not found"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/String;

    sget-object v3, La/d/u;->am:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method final c([B)I
    .locals 5

    const/16 v4, 0x20

    sget-object v0, La/d/u;->f:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    sget-object v3, La/d/u;->f:[B

    array-length v3, v3

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    iget-byte v1, p0, La/d/u;->g:B

    aput-byte v1, p1, v0

    const/16 v0, 0xd

    iget-byte v1, p0, La/d/u;->h:B

    aput-byte v1, p1, v0

    iget v0, p0, La/d/u;->m:I

    int-to-long v0, v0

    const/16 v2, 0xe

    invoke-static {v0, v1, p1, v2}, La/d/u;->a(J[BI)V

    iget v0, p0, La/d/u;->n:I

    int-to-long v0, v0

    const/16 v2, 0x1c

    invoke-static {v0, v1, p1, v2}, La/d/u;->a(J[BI)V

    iget v0, p0, La/d/u;->o:I

    int-to-long v0, v0

    const/16 v2, 0x1e

    invoke-static {v0, v1, p1, v2}, La/d/u;->a(J[BI)V

    iget v0, p0, La/d/u;->p:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, v4}, La/d/u;->a(J[BI)V

    iget v0, p0, La/d/u;->q:I

    int-to-long v0, v0

    const/16 v2, 0x22

    invoke-static {v0, v1, p1, v2}, La/d/u;->a(J[BI)V

    return v4
.end method

.method final d([B)I
    .locals 2

    const/16 v1, 0x20

    const/16 v0, 0x8

    aget-byte v0, p1, v0

    iput-byte v0, p0, La/d/u;->g:B

    const/16 v0, 0x9

    invoke-static {p1, v0}, La/d/u;->e([BI)I

    move-result v0

    iput v0, p0, La/d/u;->l:I

    const/16 v0, 0xd

    aget-byte v0, p1, v0

    iput-byte v0, p0, La/d/u;->h:B

    const/16 v0, 0xe

    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v0

    iput v0, p0, La/d/u;->m:I

    const/16 v0, 0x1c

    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v0

    iput v0, p0, La/d/u;->n:I

    const/16 v0, 0x1e

    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v0

    iput v0, p0, La/d/u;->o:I

    invoke-static {p1, v1}, La/d/u;->d([BI)I

    move-result v0

    iput v0, p0, La/d/u;->p:I

    const/16 v0, 0x22

    invoke-static {p1, v0}, La/d/u;->d([BI)I

    move-result v0

    iput v0, p0, La/d/u;->q:I

    return v1
.end method

.method e()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x18

    iput-byte v0, p0, La/d/u;->h:B

    iput v1, p0, La/d/u;->m:I

    iput v1, p0, La/d/u;->l:I

    iput-boolean v1, p0, La/d/u;->u:Z

    const/4 v0, 0x0

    iput-object v0, p0, La/d/u;->B:La/d/v;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, La/d/u;

    if-eqz v0, :cond_0

    check-cast p1, La/d/u;

    iget v0, p1, La/d/u;->q:I

    iget v1, p0, La/d/u;->q:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final f()Z
    .locals 2

    iget-byte v0, p0, La/d/u;->h:B

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, La/d/u;->q:I

    return v0
.end method

.method abstract i([BI)I
.end method

.method abstract j([BI)I
.end method

.method abstract k([BI)I
.end method

.method abstract l([BI)I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x4

    iget-byte v0, p0, La/d/u;->g:B

    sparse-switch v0, :sswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    iget v1, p0, La/d/u;->l:I

    if-nez v1, :cond_0

    const-string v1, "0"

    :goto_1
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "command="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",received="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, La/d/u;->u:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",errorCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, La/d/u;->h:B

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1, v5}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags2=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/d/u;->m:I

    invoke-static {v1, v5}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",signSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/d/u;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/d/u;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/d/u;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/d/u;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/d/u;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",wordCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/d/u;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",byteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/d/u;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    :sswitch_0
    const-string v0, "SMB_COM_NEGOTIATE"

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "SMB_COM_SESSION_SETUP_ANDX"

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "SMB_COM_TREE_CONNECT_ANDX"

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "SMB_COM_QUERY_INFORMATION"

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "SMB_COM_CHECK_DIRECTORY"

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "SMB_COM_TRANSACTION"

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "SMB_COM_TRANSACTION2"

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "SMB_COM_TRANSACTION_SECONDARY"

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "SMB_COM_FIND_CLOSE2"

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "SMB_COM_TREE_DISCONNECT"

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "SMB_COM_LOGOFF_ANDX"

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "SMB_COM_ECHO"

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "SMB_COM_MOVE"

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "SMB_COM_RENAME"

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "SMB_COM_DELETE"

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "SMB_COM_DELETE_DIRECTORY"

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "SMB_COM_NT_CREATE_ANDX"

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "SMB_COM_OPEN_ANDX"

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "SMB_COM_READ_ANDX"

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "SMB_COM_CLOSE"

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "SMB_COM_WRITE_ANDX"

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "SMB_COM_CREATE_DIRECTORY"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "SMB_COM_NT_TRANSACT"

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "SMB_COM_NT_TRANSACT_SECONDARY"

    goto/16 :goto_0

    :cond_0
    iget v1, p0, La/d/u;->l:I

    invoke-static {v1}, La/d/ay;->a(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60 -> :sswitch_16
        -0x5f -> :sswitch_17
        -0x5e -> :sswitch_10
        0x0 -> :sswitch_15
        0x1 -> :sswitch_f
        0x4 -> :sswitch_13
        0x6 -> :sswitch_e
        0x7 -> :sswitch_d
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x25 -> :sswitch_5
        0x26 -> :sswitch_7
        0x2a -> :sswitch_c
        0x2b -> :sswitch_b
        0x2d -> :sswitch_11
        0x2e -> :sswitch_12
        0x2f -> :sswitch_14
        0x32 -> :sswitch_6
        0x34 -> :sswitch_8
        0x71 -> :sswitch_9
        0x72 -> :sswitch_0
        0x73 -> :sswitch_1
        0x74 -> :sswitch_a
        0x75 -> :sswitch_2
    .end sparse-switch
.end method
