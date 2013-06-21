.class public final La/d/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/DataOutput;


# instance fields
.field private a:La/d/az;

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:[B

.field private i:La/d/av;


# direct methods
.method public constructor <init>(La/d/az;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, La/d/bd;->d:I

    iput v0, p0, La/d/bd;->g:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, La/d/bd;->h:[B

    const/4 v0, 0x0

    iput-object v0, p0, La/d/bd;->i:La/d/av;

    iput-object p1, p0, La/d/bd;->a:La/d/az;

    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    iput v0, p0, La/d/bd;->c:I

    :goto_0
    iget v0, p0, La/d/bd;->c:I

    iget v1, p0, La/d/bd;->d:I

    iget v2, p0, La/d/bd;->g:I

    invoke-virtual {p1, v0, v1, v2}, La/d/az;->a(III)V

    iget-object v0, p1, La/d/az;->h:La/d/bi;

    iget-object v0, v0, La/d/bi;->f:La/d/be;

    iget-object v0, v0, La/d/be;->e:La/d/bg;

    iget v0, v0, La/d/bg;->w:I

    add-int/lit8 v0, v0, -0x46

    iput v0, p0, La/d/bd;->e:I

    iget-object v0, p1, La/d/az;->h:La/d/bi;

    iget-object v0, v0, La/d/bi;->f:La/d/be;

    iget-object v0, v0, La/d/be;->e:La/d/bg;

    iget v0, v0, La/d/bg;->v:I

    add-int/lit8 v0, v0, -0x46

    iput v0, p0, La/d/bd;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/d/bd;->b:J

    return-void

    :cond_0
    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x17

    iput v0, p0, La/d/bd;->c:I

    new-instance v0, La/d/av;

    invoke-direct {v0}, La/d/av;-><init>()V

    iput-object v0, p0, La/d/bd;->i:La/d/av;

    const/16 v0, 0x842

    iput v0, p0, La/d/bd;->g:I

    const/4 v0, 0x3

    iput v0, p0, La/d/bd;->d:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, La/d/bd;->h:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, La/d/bd;->a([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/d/bd;->h:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method


# virtual methods
.method public final a([BII)I
    .locals 9

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v1, p0, La/d/bd;->b:J

    iget-object v3, p0, La/d/bd;->a:La/d/az;

    invoke-virtual {v3}, La/d/az;->b()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, La/d/bd;->a:La/d/az;

    iget v4, p0, La/d/bd;->c:I

    iget v5, p0, La/d/bd;->g:I

    invoke-virtual {v3, v4, v0, v5}, La/d/az;->a(III)V

    :cond_1
    new-instance v3, La/d/al;

    invoke-direct {v3, p1, p2}, La/d/al;-><init>([BI)V

    :cond_2
    iget v0, p0, La/d/bd;->e:I

    if-le p3, v0, :cond_3

    iget v0, p0, La/d/bd;->e:I

    :goto_1
    iget-object v4, p0, La/d/bd;->a:La/d/az;

    new-instance v5, La/d/ak;

    iget-object v6, p0, La/d/bd;->a:La/d/az;

    iget v6, v6, La/d/az;->j:I

    iget-wide v7, p0, La/d/bd;->b:J

    invoke-direct {v5, v6, v7, v8, v0}, La/d/ak;-><init>(IJI)V

    invoke-virtual {v4, v5, v3}, La/d/az;->a(La/d/u;La/d/u;)V

    iget v4, v3, La/d/al;->D:I

    if-gtz v4, :cond_5

    iget-wide v3, p0, La/d/bd;->b:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    iget-wide v3, p0, La/d/bd;->b:J

    sub-long v0, v3, v1

    :goto_2
    long-to-int v0, v0

    goto :goto_0

    :cond_3
    move v0, p3

    goto :goto_1

    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_2

    :cond_5
    iget-wide v5, p0, La/d/bd;->b:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, La/d/bd;->b:J

    sub-int/2addr p3, v4

    iget v5, v3, La/d/al;->c:I

    add-int/2addr v5, v4

    iput v5, v3, La/d/al;->c:I

    if-lez p3, :cond_6

    if-eq v4, v0, :cond_2

    :cond_6
    iget-wide v3, p0, La/d/bd;->b:J

    sub-long v0, v3, v1

    long-to-int v0, v0

    goto :goto_0
.end method

.method public final a()J
    .locals 2

    iget-wide v0, p0, La/d/bd;->b:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, La/d/bd;->b:J

    return-void
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, La/d/bd;->a:La/d/az;

    invoke-virtual {v0}, La/d/az;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, La/d/bd;->a:La/d/az;

    invoke-virtual {v0}, La/d/az;->c()V

    return-void
.end method

.method public final readBoolean()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, La/d/bd;->h:[B

    invoke-virtual {p0, v2, v1, v0}, La/d/bd;->a([BII)I

    move-result v2

    if-gez v2, :cond_0

    new-instance v0, La/d/ay;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, La/d/bd;->h:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final readByte()B
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, La/d/bd;->a([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, La/d/ay;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/d/bd;->h:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public final readChar()C
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, La/d/bd;->a([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, La/d/ay;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/d/bd;->h:[B

    invoke-static {v0, v2}, La/e/b;->a([BI)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .locals 3

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, La/d/bd;->a([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, La/d/ay;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/d/bd;->h:[B

    invoke-static {v0}, La/e/b;->a([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, La/d/bd;->a([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, La/d/ay;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/d/bd;->h:[B

    invoke-static {v0, v2}, La/e/b;->b([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La/d/bd;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 6

    const/4 v0, 0x0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, La/d/bd;->a([BII)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v0, La/d/ay;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/2addr v0, v1

    iget-wide v2, p0, La/d/bd;->b:J

    int-to-long v4, v1

    add-long v1, v2, v4

    iput-wide v1, p0, La/d/bd;->b:J

    if-lt v0, p3, :cond_0

    return-void
.end method

.method public final readInt()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, La/d/bd;->a([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, La/d/ay;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/d/bd;->h:[B

    invoke-static {v0, v2}, La/e/b;->b([BI)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 8

    const/4 v1, 0x1

    const/4 v3, -0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v2, v3

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0}, La/d/bd;->d()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-wide v5, p0, La/d/bd;->b:J

    invoke-direct {p0}, La/d/bd;->d()I

    move-result v0

    const/16 v7, 0xa

    if-eq v0, v7, :cond_2

    iput-wide v5, p0, La/d/bd;->b:J

    move v0, v1

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 3

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, La/d/bd;->a([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, La/d/ay;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/d/bd;->h:[B

    invoke-static {v0}, La/e/b;->a([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, La/d/bd;->a([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, La/d/ay;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/d/bd;->h:[B

    invoke-static {v0, v2}, La/e/b;->a([BI)S

    move-result v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/16 v8, 0x80

    invoke-virtual {p0}, La/d/bd;->readUnsignedShort()I

    move-result v3

    new-array v4, v3, [B

    invoke-virtual {p0, v4, v0, v3}, La/d/bd;->a([BII)I

    add-int/lit8 v1, v3, 0x0

    :try_start_0
    new-array v5, v1, [C

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_7

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_7

    if-ge v1, v8, :cond_1

    int-to-char v1, v1

    aput-char v1, v5, v2

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    and-int/lit16 v6, v1, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_3

    sub-int v6, v3, v0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_7

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    int-to-char v1, v1

    aput-char v1, v5, v2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    aget-char v6, v5, v2

    and-int/lit8 v7, v0, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v5, v2

    and-int/lit16 v0, v0, 0xc0

    if-ne v0, v8, :cond_2

    aget-char v0, v5, v2

    if-ge v0, v8, :cond_8

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid UTF-8 sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, La/d/ay;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, La/d/ay;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    and-int/lit16 v6, v1, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_6

    sub-int v6, v3, v0

    const/4 v7, 0x3

    if-lt v6, v7, :cond_7

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    int-to-char v1, v1

    :try_start_1
    aput-char v1, v5, v2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v6, v0, 0xc0

    if-eq v6, v8, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid UTF-8 sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    aget-char v6, v5, v2

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v6

    int-to-char v0, v0

    aput-char v0, v5, v2

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    aget-char v6, v5, v2

    and-int/lit8 v7, v1, 0x3f

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v5, v2

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v8, :cond_5

    aget-char v1, v5, v2

    const/16 v6, 0x800

    if-ge v1, v6, :cond_0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid UTF-8 sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported UTF-8 sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method public final readUnsignedByte()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, La/d/bd;->a([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, La/d/ay;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/d/bd;->h:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final readUnsignedShort()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, La/d/bd;->a([BII)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, La/d/ay;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/d/bd;->h:[B

    invoke-static {v0, v2}, La/e/b;->a([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final skipBytes(I)I
    .locals 4

    if-lez p1, :cond_0

    iget-wide v0, p0, La/d/bd;->b:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, La/d/bd;->b:J

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final write(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bd;->h:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, La/d/bd;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La/d/bd;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 9

    if-gtz p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, La/d/bd;->a:La/d/az;

    invoke-virtual {v0}, La/d/az;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La/d/bd;->a:La/d/az;

    iget v1, p0, La/d/bd;->c:I

    const/4 v2, 0x0

    iget v3, p0, La/d/bd;->g:I

    invoke-virtual {v0, v1, v2, v3}, La/d/az;->a(III)V

    :cond_1
    move v6, p2

    iget v0, p0, La/d/bd;->f:I

    if-le p3, v0, :cond_2

    iget v7, p0, La/d/bd;->f:I

    :goto_1
    iget-object v8, p0, La/d/bd;->a:La/d/az;

    new-instance v0, La/d/au;

    iget-object v1, p0, La/d/bd;->a:La/d/az;

    iget v1, v1, La/d/az;->j:I

    iget-wide v2, p0, La/d/bd;->b:J

    sub-int v4, p3, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, La/d/au;-><init>(IJI[BII)V

    iget-object v1, p0, La/d/bd;->i:La/d/av;

    invoke-virtual {v8, v0, v1}, La/d/az;->a(La/d/u;La/d/u;)V

    iget-wide v0, p0, La/d/bd;->b:J

    iget-object v2, p0, La/d/bd;->i:La/d/av;

    iget-wide v2, v2, La/d/av;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, La/d/bd;->b:J

    int-to-long v0, p3

    iget-object v2, p0, La/d/bd;->i:La/d/av;

    iget-wide v2, v2, La/d/av;->b:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    int-to-long v0, v6

    iget-object v2, p0, La/d/bd;->i:La/d/av;

    iget-wide v2, v2, La/d/av;->b:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    if-gtz p3, :cond_1

    goto :goto_0

    :cond_2
    move v7, p3

    goto :goto_1
.end method

.method public final writeBoolean(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, La/d/bd;->h:[B

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v3, v2

    iget-object v0, p0, La/d/bd;->h:[B

    invoke-virtual {p0, v0, v2, v1}, La/d/bd;->write([BII)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public final writeByte(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bd;->h:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, La/d/bd;->write([BII)V

    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, La/d/bd;->write([BII)V

    return-void
.end method

.method public final writeChar(I)V
    .locals 3

    int-to-short v0, p1

    iget-object v1, p0, La/d/bd;->h:[B

    invoke-static {v0, v1}, La/e/b;->a(S[B)I

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, La/d/bd;->write([BII)V

    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    new-array v5, v4, [B

    new-array v6, v3, [C

    invoke-virtual {p1, v1, v3, v6, v1}, Ljava/lang/String;->getChars(II[CI)V

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    add-int/lit8 v7, v0, 0x1

    aget-char v8, v6, v2

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    add-int/lit8 v0, v7, 0x1

    aget-char v8, v6, v2

    ushr-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5, v1, v4}, La/d/bd;->write([BII)V

    return-void
.end method

.method public final writeDouble(D)V
    .locals 3

    iget-object v0, p0, La/d/bd;->h:[B

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v1, v2, v0}, La/e/b;->a(J[B)I

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, La/d/bd;->write([BII)V

    return-void
.end method

.method public final writeFloat(F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bd;->h:[B

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {v1, v0, v2}, La/e/b;->a(I[BI)I

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, La/d/bd;->write([BII)V

    return-void
.end method

.method public final writeInt(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bd;->h:[B

    invoke-static {p1, v0, v2}, La/e/b;->a(I[BI)I

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, La/d/bd;->write([BII)V

    return-void
.end method

.method public final writeLong(J)V
    .locals 3

    iget-object v0, p0, La/d/bd;->h:[B

    invoke-static {p1, p2, v0}, La/e/b;->a(J[B)I

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, La/d/bd;->write([BII)V

    return-void
.end method

.method public final writeShort(I)V
    .locals 3

    int-to-short v0, p1

    iget-object v1, p0, La/d/bd;->h:[B

    invoke-static {v0, v1}, La/e/b;->a(S[B)I

    iget-object v0, p0, La/d/bd;->h:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, La/d/bd;->write([BII)V

    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 13

    const/16 v12, 0x7ff

    const/16 v11, 0x7f

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move v3, v4

    move v6, v4

    :goto_0
    if-ge v3, v7, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v0, v11, :cond_1

    if-le v0, v12, :cond_0

    move v0, v1

    :goto_1
    add-int v5, v6, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v6, v5

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    new-array v7, v6, [B

    invoke-virtual {p0, v6}, La/d/bd;->writeShort(I)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    move v3, v4

    move v5, v4

    :goto_2
    if-ge v5, v6, :cond_5

    if-ge v3, v8, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lez v9, :cond_3

    if-gt v9, v11, :cond_3

    add-int/lit8 v0, v5, 0x1

    int-to-byte v9, v9

    aput-byte v9, v7, v5

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v5, v0

    goto :goto_2

    :cond_3
    if-le v9, v12, :cond_4

    sub-int v0, v6, v5

    if-lt v0, v1, :cond_5

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v10, v9, 0xc

    and-int/lit8 v10, v10, 0xf

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v7, v5

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v10, v9, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v7, v0

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v9, v9, 0x0

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v7, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, La/d/ay;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, La/d/ay;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    sub-int v0, v6, v5

    if-lt v0, v2, :cond_5

    add-int/lit8 v10, v5, 0x1

    shr-int/lit8 v0, v9, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    :try_start_1
    aput-byte v0, v7, v5

    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v5, v9, 0x0

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v7, v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v7, v4, v6}, La/d/bd;->write([BII)V

    return-void
.end method
