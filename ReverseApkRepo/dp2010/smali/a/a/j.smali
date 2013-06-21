.class public final La/a/j;
.super La/a/l;


# static fields
.field static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, La/a/j;->a:[C

    return-void

    :array_0
    .array-data 0x2
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
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const v2, 0xffff

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    invoke-direct {p0}, La/a/l;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v3, v1}, La/a/j;->a([CII)I

    move-result v1

    iput v1, p0, La/a/j;->b:I

    const/16 v1, 0x9

    invoke-static {v0, v1, v5}, La/a/j;->a([CII)I

    move-result v1

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, La/a/j;->c:S

    const/16 v1, 0xe

    invoke-static {v0, v1, v5}, La/a/j;->a([CII)I

    move-result v1

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, La/a/j;->d:S

    const/16 v1, 0x13

    invoke-static {v0, v1, v4}, La/a/j;->a([CII)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, La/a/j;->e:B

    const/16 v1, 0x15

    invoke-static {v0, v1, v4}, La/a/j;->a([CII)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, p0, La/a/j;->f:B

    const/4 v1, 0x6

    new-array v1, v1, [B

    iput-object v1, p0, La/a/j;->g:[B

    iget-object v1, p0, La/a/j;->g:[B

    const/16 v2, 0x18

    invoke-static {v0, v2, v4}, La/a/j;->a([CII)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    iget-object v1, p0, La/a/j;->g:[B

    const/4 v2, 0x1

    const/16 v3, 0x1a

    invoke-static {v0, v3, v4}, La/a/j;->a([CII)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, La/a/j;->g:[B

    const/16 v2, 0x1c

    invoke-static {v0, v2, v4}, La/a/j;->a([CII)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    iget-object v1, p0, La/a/j;->g:[B

    const/4 v2, 0x3

    const/16 v3, 0x1e

    invoke-static {v0, v3, v4}, La/a/j;->a([CII)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, La/a/j;->g:[B

    const/16 v2, 0x20

    invoke-static {v0, v2, v4}, La/a/j;->a([CII)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    iget-object v1, p0, La/a/j;->g:[B

    const/4 v2, 0x5

    const/16 v3, 0x22

    invoke-static {v0, v3, v4}, La/a/j;->a([CII)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    return-void
.end method

.method private static a([CII)I
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    if-ge v0, p2, :cond_0

    shl-int/lit8 v2, v2, 0x4

    aget-char v3, p0, v1

    sparse-switch v3, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    aget-char v3, p0, v1

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_1
    aget-char v3, p0, v1

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    goto :goto_1

    :sswitch_2
    aget-char v3, p0, v1

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x44 -> :sswitch_1
        0x45 -> :sswitch_1
        0x46 -> :sswitch_1
        0x61 -> :sswitch_2
        0x62 -> :sswitch_2
        0x63 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(II)Ljava/lang/String;
    .locals 4

    new-array v2, p1, [C

    array-length v0, v2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    sget-object v0, La/a/j;->a:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v0, v0, v3

    aput-char v0, v2, v1

    ushr-int/lit8 p0, p0, 0x4

    move v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x4

    const/16 v4, 0x2d

    const/4 v3, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, La/a/j;->b:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, La/a/j;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, La/a/j;->c:S

    invoke-static {v1, v5}, La/a/j;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, La/a/j;->d:S

    invoke-static {v1, v5}, La/a/j;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, La/a/j;->e:B

    invoke-static {v1, v3}, La/a/j;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, La/a/j;->f:B

    invoke-static {v1, v3}, La/a/j;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/j;->g:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-static {v1, v3}, La/a/j;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/j;->g:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    invoke-static {v1, v3}, La/a/j;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/j;->g:[B

    aget-byte v1, v1, v3

    invoke-static {v1, v3}, La/a/j;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/j;->g:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    invoke-static {v1, v3}, La/a/j;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/j;->g:[B

    aget-byte v1, v1, v5

    invoke-static {v1, v3}, La/a/j;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/j;->g:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    invoke-static {v1, v3}, La/a/j;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
