.class public final Lcom/tequnique/camerax/a/f;
.super Ljava/lang/Object;


# static fields
.field static c:[B

.field private static final d:[C


# instance fields
.field a:Lcom/tequnique/camerax/a/g;

.field b:Lcom/tequnique/camerax/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    sput-object v0, Lcom/tequnique/camerax/a/f;->c:[B

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tequnique/camerax/a/f;->d:[C

    return-void

    nop

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
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/tequnique/camerax/a/f;->a()V

    return-void
.end method

.method private a(Lcom/tequnique/camerax/a/g;[BI)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tequnique/camerax/a/f;->b:Lcom/tequnique/camerax/a/g;

    add-int/lit8 v0, p3, 0x0

    array-length v2, p2

    if-le v0, v2, :cond_0

    array-length v0, p2

    add-int/lit8 p3, v0, 0x0

    :cond_0
    iget-wide v2, p1, Lcom/tequnique/camerax/a/g;->b:J

    const-wide/16 v4, 0x3f

    and-long/2addr v2, v4

    long-to-int v2, v2

    iget-wide v3, p1, Lcom/tequnique/camerax/a/g;->b:J

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p1, Lcom/tequnique/camerax/a/g;->b:J

    rsub-int/lit8 v0, v2, 0x40

    if-lt p3, v0, :cond_1

    const/16 v3, 0x10

    new-array v4, v3, [I

    const/16 v3, 0x40

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    add-int/lit8 v2, v0, 0x3f

    if-lt v2, p3, :cond_5

    move v2, v1

    move v1, v0

    :cond_1
    if-ge v1, p3, :cond_2

    move v0, v1

    :goto_1
    if-lt v0, p3, :cond_6

    :cond_2
    return-void

    :cond_3
    move v3, v1

    :goto_2
    if-lt v3, v0, :cond_4

    iget-object v2, p1, Lcom/tequnique/camerax/a/g;->c:[B

    invoke-static {p1, v2, v1, v4}, Lcom/tequnique/camerax/a/f;->a(Lcom/tequnique/camerax/a/g;[BI[I)V

    goto :goto_0

    :cond_4
    iget-object v5, p1, Lcom/tequnique/camerax/a/g;->c:[B

    add-int v6, v3, v2

    add-int/lit8 v7, v3, 0x0

    aget-byte v7, p2, v7

    aput-byte v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v0, 0x0

    invoke-static {p1, p2, v2, v4}, Lcom/tequnique/camerax/a/f;->a(Lcom/tequnique/camerax/a/g;[BI[I)V

    add-int/lit8 v0, v0, 0x40

    goto :goto_0

    :cond_6
    iget-object v3, p1, Lcom/tequnique/camerax/a/g;->c:[B

    add-int v4, v2, v0

    sub-int/2addr v4, v1

    add-int/lit8 v5, v0, 0x0

    aget-byte v5, p2, v5

    aput-byte v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a(Lcom/tequnique/camerax/a/g;[BI[I)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tequnique/camerax/a/g;->a:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/tequnique/camerax/a/g;->a:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/tequnique/camerax/a/g;->a:[I

    aget v2, v2, v9

    iget-object v3, p0, Lcom/tequnique/camerax/a/g;->a:[I

    aget v3, v3, v10

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, p3, v7

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, p3, v8

    add-int/lit8 v4, p2, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xa

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, p3, v9

    add-int/lit8 v4, p2, 0xc

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xe

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xf

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, p3, v10

    add-int/lit8 v4, p2, 0x10

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p2, 0x11

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x12

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x13

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, p3, v11

    const/4 v4, 0x5

    add-int/lit8 v5, p2, 0x14

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x15

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x16

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x17

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, p3, v4

    const/4 v4, 0x6

    add-int/lit8 v5, p2, 0x18

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x19

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x1a

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x1b

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, p3, v4

    const/4 v4, 0x7

    add-int/lit8 v5, p2, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x1d

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x1e

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x1f

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, p3, v4

    const/16 v4, 0x8

    add-int/lit8 v5, p2, 0x20

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x21

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x22

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x23

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, p3, v4

    const/16 v4, 0x9

    add-int/lit8 v5, p2, 0x24

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x25

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x26

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x27

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, p3, v4

    const/16 v4, 0xa

    add-int/lit8 v5, p2, 0x28

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x29

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x2a

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x2b

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, p3, v4

    const/16 v4, 0xb

    add-int/lit8 v5, p2, 0x2c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x2d

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x2e

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x2f

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, p3, v4

    const/16 v4, 0xc

    add-int/lit8 v5, p2, 0x30

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x31

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x32

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x33

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, p3, v4

    const/16 v4, 0xd

    add-int/lit8 v5, p2, 0x34

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x35

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x36

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x37

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, p3, v4

    const/16 v4, 0xe

    add-int/lit8 v5, p2, 0x38

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x39

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x3a

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x3b

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, p3, v4

    const/16 v4, 0xf

    add-int/lit8 v5, p2, 0x3c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x3d

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x3e

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x3f

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    aput v5, p3, v4

    and-int v4, v1, v2

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    aget v5, p3, v7

    add-int/2addr v4, v5

    const v5, -0x28955b88

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x7

    ushr-int/lit8 v0, v0, 0x19

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    and-int v4, v0, v1

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    aget v5, p3, v8

    add-int/2addr v4, v5

    const v5, -0x173848aa

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0xc

    ushr-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    and-int v4, v3, v0

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    aget v5, p3, v9

    add-int/2addr v4, v5

    const v5, 0x242070db

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0x11

    ushr-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    and-int v4, v2, v3

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    aget v5, p3, v10

    add-int/2addr v4, v5

    const v5, -0x3e423112

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x16

    ushr-int/lit8 v1, v1, 0xa

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    and-int v4, v1, v2

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    aget v5, p3, v11

    add-int/2addr v4, v5

    const v5, -0xa83f051

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x7

    ushr-int/lit8 v0, v0, 0x19

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    and-int v4, v0, v1

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    const/4 v5, 0x5

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x4787c62a

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0xc

    ushr-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    and-int v4, v3, v0

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    const/4 v5, 0x6

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x57cfb9ed

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0x11

    ushr-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    and-int v4, v2, v3

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x2b96aff

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x16

    ushr-int/lit8 v1, v1, 0xa

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    and-int v4, v1, v2

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x698098d8

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x7

    ushr-int/lit8 v0, v0, 0x19

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    and-int v4, v0, v1

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    const/16 v5, 0x9

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x74bb0851

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0xc

    ushr-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    and-int v4, v3, v0

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    const/16 v5, 0xa

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0xa44f

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0x11

    ushr-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    and-int v4, v2, v3

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    const/16 v5, 0xb

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x76a32842

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x16

    ushr-int/lit8 v1, v1, 0xa

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    and-int v4, v1, v2

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x6b901122

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x7

    ushr-int/lit8 v0, v0, 0x19

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    and-int v4, v0, v1

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    const/16 v5, 0xd

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x2678e6d

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0xc

    ushr-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    and-int v4, v3, v0

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x5986bc72

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0x11

    ushr-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    and-int v4, v2, v3

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    const/16 v5, 0xf

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x49b40821

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x16

    ushr-int/lit8 v1, v1, 0xa

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    and-int v4, v1, v3

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    aget v5, p3, v8

    add-int/2addr v4, v5

    const v5, -0x9e1da9e

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x5

    ushr-int/lit8 v0, v0, 0x1b

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    and-int v4, v0, v2

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    const/4 v5, 0x6

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x3fbf4cc0

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    and-int v4, v3, v1

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    const/16 v5, 0xb

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x265e5a51

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0xe

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    and-int v4, v2, v0

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    aget v5, p3, v7

    add-int/2addr v4, v5

    const v5, -0x16493856

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x14

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    and-int v4, v1, v3

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    const/4 v5, 0x5

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x29d0efa3

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x5

    ushr-int/lit8 v0, v0, 0x1b

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    and-int v4, v0, v2

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    const/16 v5, 0xa

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x2441453

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    and-int v4, v3, v1

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    const/16 v5, 0xf

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x275e197f

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0xe

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    and-int v4, v2, v0

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    aget v5, p3, v11

    add-int/2addr v4, v5

    const v5, -0x182c0438

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x14

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    and-int v4, v1, v3

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    const/16 v5, 0x9

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x21e1cde6

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x5

    ushr-int/lit8 v0, v0, 0x1b

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    and-int v4, v0, v2

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    const/16 v5, 0xe

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x3cc8f82a

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    and-int v4, v3, v1

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    aget v5, p3, v10

    add-int/2addr v4, v5

    const v5, -0xb2af279

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0xe

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    and-int v4, v2, v0

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x455a14ed

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x14

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    and-int v4, v1, v3

    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    const/16 v5, 0xd

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x561c16fb

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x5

    ushr-int/lit8 v0, v0, 0x1b

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    and-int v4, v0, v2

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    aget v5, p3, v9

    add-int/2addr v4, v5

    const v5, -0x3105c08

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    and-int v4, v3, v1

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x676f02d9

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0xe

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    and-int v4, v2, v0

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    const/16 v5, 0xc

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x72d5b376

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x14

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    xor-int v4, v1, v2

    xor-int/2addr v4, v3

    const/4 v5, 0x5

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x5c6be

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x4

    ushr-int/lit8 v0, v0, 0x1c

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    const/16 v5, 0x8

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x788e097f

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    xor-int v4, v3, v0

    xor-int/2addr v4, v1

    const/16 v5, 0xb

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x6d9d6122

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0x10

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    xor-int v4, v2, v3

    xor-int/2addr v4, v0

    const/16 v5, 0xe

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x21ac7f4

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x17

    ushr-int/lit8 v1, v1, 0x9

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    xor-int v4, v1, v2

    xor-int/2addr v4, v3

    aget v5, p3, v8

    add-int/2addr v4, v5

    const v5, -0x5b4115bc

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x4

    ushr-int/lit8 v0, v0, 0x1c

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    aget v5, p3, v11

    add-int/2addr v4, v5

    const v5, 0x4bdecfa9

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    xor-int v4, v3, v0

    xor-int/2addr v4, v1

    const/4 v5, 0x7

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x944b4a0

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0x10

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    xor-int v4, v2, v3

    xor-int/2addr v4, v0

    const/16 v5, 0xa

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x41404390

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x17

    ushr-int/lit8 v1, v1, 0x9

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    xor-int v4, v1, v2

    xor-int/2addr v4, v3

    const/16 v5, 0xd

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x289b7ec6

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x4

    ushr-int/lit8 v0, v0, 0x1c

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    aget v5, p3, v7

    add-int/2addr v4, v5

    const v5, -0x155ed806

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    xor-int v4, v3, v0

    xor-int/2addr v4, v1

    aget v5, p3, v10

    add-int/2addr v4, v5

    const v5, -0x2b10cf7b

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0x10

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    xor-int v4, v2, v3

    xor-int/2addr v4, v0

    const/4 v5, 0x6

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x4881d05

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x17

    ushr-int/lit8 v1, v1, 0x9

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    xor-int v4, v1, v2

    xor-int/2addr v4, v3

    const/16 v5, 0x9

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x262b2fc7

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x4

    ushr-int/lit8 v0, v0, 0x1c

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    const/16 v5, 0xc

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x1924661b

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    xor-int v4, v3, v0

    xor-int/2addr v4, v1

    const/16 v5, 0xf

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x1fa27cf8

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0x10

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    xor-int v4, v2, v3

    xor-int/2addr v4, v0

    aget v5, p3, v9

    add-int/2addr v4, v5

    const v5, -0x3b53a99b

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x17

    ushr-int/lit8 v1, v1, 0x9

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    xor-int/lit8 v4, v3, -0x1

    or-int/2addr v4, v1

    xor-int/2addr v4, v2

    aget v5, p3, v7

    add-int/2addr v4, v5

    const v5, -0xbd6ddbc

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x6

    ushr-int/lit8 v0, v0, 0x1a

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    xor-int/lit8 v4, v2, -0x1

    or-int/2addr v4, v0

    xor-int/2addr v4, v1

    const/4 v5, 0x7

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x432aff97

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0xa

    ushr-int/lit8 v3, v3, 0x16

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    xor-int/lit8 v4, v1, -0x1

    or-int/2addr v4, v3

    xor-int/2addr v4, v0

    const/16 v5, 0xe

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x546bdc59

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0xf

    ushr-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    xor-int/lit8 v4, v0, -0x1

    or-int/2addr v4, v2

    xor-int/2addr v4, v3

    const/4 v5, 0x5

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x36c5fc7

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x15

    ushr-int/lit8 v1, v1, 0xb

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    xor-int/lit8 v4, v3, -0x1

    or-int/2addr v4, v1

    xor-int/2addr v4, v2

    const/16 v5, 0xc

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x655b59c3

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x6

    ushr-int/lit8 v0, v0, 0x1a

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    xor-int/lit8 v4, v2, -0x1

    or-int/2addr v4, v0

    xor-int/2addr v4, v1

    aget v5, p3, v10

    add-int/2addr v4, v5

    const v5, -0x70f3336e

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0xa

    ushr-int/lit8 v3, v3, 0x16

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    xor-int/lit8 v4, v1, -0x1

    or-int/2addr v4, v3

    xor-int/2addr v4, v0

    const/16 v5, 0xa

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x100b83

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0xf

    ushr-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    xor-int/lit8 v4, v0, -0x1

    or-int/2addr v4, v2

    xor-int/2addr v4, v3

    aget v5, p3, v8

    add-int/2addr v4, v5

    const v5, -0x7a7ba22f

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x15

    ushr-int/lit8 v1, v1, 0xb

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    xor-int/lit8 v4, v3, -0x1

    or-int/2addr v4, v1

    xor-int/2addr v4, v2

    const/16 v5, 0x8

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x6fa87e4f

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x6

    ushr-int/lit8 v0, v0, 0x1a

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    xor-int/lit8 v4, v2, -0x1

    or-int/2addr v4, v0

    xor-int/2addr v4, v1

    const/16 v5, 0xf

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x1d31920

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0xa

    ushr-int/lit8 v3, v3, 0x16

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    xor-int/lit8 v4, v1, -0x1

    or-int/2addr v4, v3

    xor-int/2addr v4, v0

    const/4 v5, 0x6

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x5cfebcec

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0xf

    ushr-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    xor-int/lit8 v4, v0, -0x1

    or-int/2addr v4, v2

    xor-int/2addr v4, v3

    const/16 v5, 0xd

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, 0x4e0811a1

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x15

    ushr-int/lit8 v1, v1, 0xb

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    xor-int/lit8 v4, v3, -0x1

    or-int/2addr v4, v1

    xor-int/2addr v4, v2

    aget v5, p3, v11

    add-int/2addr v4, v5

    const v5, -0x8ac817e

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x6

    ushr-int/lit8 v0, v0, 0x1a

    or-int/2addr v0, v4

    add-int/2addr v0, v1

    xor-int/lit8 v4, v2, -0x1

    or-int/2addr v4, v0

    xor-int/2addr v4, v1

    const/16 v5, 0xb

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x42c50dcb

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0xa

    ushr-int/lit8 v3, v3, 0x16

    or-int/2addr v3, v4

    add-int/2addr v3, v0

    xor-int/lit8 v4, v1, -0x1

    or-int/2addr v4, v3

    xor-int/2addr v4, v0

    aget v5, p3, v9

    add-int/2addr v4, v5

    const v5, 0x2ad7d2bb

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0xf

    ushr-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v4

    add-int/2addr v2, v3

    xor-int/lit8 v4, v0, -0x1

    or-int/2addr v4, v2

    xor-int/2addr v4, v3

    const/16 v5, 0x9

    aget v5, p3, v5

    add-int/2addr v4, v5

    const v5, -0x14792c6f

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x15

    ushr-int/lit8 v1, v1, 0xb

    or-int/2addr v1, v4

    add-int/2addr v1, v2

    iget-object v4, p0, Lcom/tequnique/camerax/a/g;->a:[I

    aget v5, v4, v7

    add-int/2addr v0, v5

    aput v0, v4, v7

    iget-object v0, p0, Lcom/tequnique/camerax/a/g;->a:[I

    aget v4, v0, v8

    add-int/2addr v1, v4

    aput v1, v0, v8

    iget-object v0, p0, Lcom/tequnique/camerax/a/g;->a:[I

    aget v1, v0, v9

    add-int/2addr v1, v2

    aput v1, v0, v9

    iget-object v0, p0, Lcom/tequnique/camerax/a/g;->a:[I

    aget v1, v0, v10

    add-int/2addr v1, v3

    aput v1, v0, v10

    return-void
.end method

.method private static a([II)[B
    .locals 5

    new-array v2, p1, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v0, p1, :cond_0

    return-object v2

    :cond_0
    aget v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    aget v4, p0, v1

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    aget v4, p0, v1

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x3

    aget v4, p0, v1

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method private declared-synchronized c()[B
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tequnique/camerax/a/f;->b:Lcom/tequnique/camerax/a/g;

    if-nez v0, :cond_0

    new-instance v1, Lcom/tequnique/camerax/a/g;

    iget-object v0, p0, Lcom/tequnique/camerax/a/f;->a:Lcom/tequnique/camerax/a/g;

    invoke-direct {v1, v0}, Lcom/tequnique/camerax/a/g;-><init>(Lcom/tequnique/camerax/a/g;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    iget-wide v3, v1, Lcom/tequnique/camerax/a/g;->b:J

    const/4 v5, 0x3

    shl-long/2addr v3, v5

    long-to-int v3, v3

    aput v3, v0, v2

    const/4 v2, 0x1

    iget-wide v3, v1, Lcom/tequnique/camerax/a/g;->b:J

    const/16 v5, 0x1d

    shr-long/2addr v3, v5

    long-to-int v3, v3

    aput v3, v0, v2

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/tequnique/camerax/a/f;->a([II)[B

    move-result-object v2

    iget-wide v3, v1, Lcom/tequnique/camerax/a/g;->b:J

    const-wide/16 v5, 0x3f

    and-long/2addr v3, v5

    long-to-int v0, v3

    const/16 v3, 0x38

    if-ge v0, v3, :cond_1

    rsub-int/lit8 v0, v0, 0x38

    :goto_0
    sget-object v3, Lcom/tequnique/camerax/a/f;->c:[B

    invoke-direct {p0, v1, v3, v0}, Lcom/tequnique/camerax/a/f;->a(Lcom/tequnique/camerax/a/g;[BI)V

    const/16 v0, 0x8

    invoke-direct {p0, v1, v2, v0}, Lcom/tequnique/camerax/a/f;->a(Lcom/tequnique/camerax/a/g;[BI)V

    iput-object v1, p0, Lcom/tequnique/camerax/a/f;->b:Lcom/tequnique/camerax/a/g;

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/a/f;->b:Lcom/tequnique/camerax/a/g;

    iget-object v0, v0, Lcom/tequnique/camerax/a/g;->a:[I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/tequnique/camerax/a/f;->a([II)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    rsub-int/lit8 v0, v0, 0x78

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tequnique/camerax/a/g;

    invoke-direct {v0}, Lcom/tequnique/camerax/a/g;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/a/f;->a:Lcom/tequnique/camerax/a/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tequnique/camerax/a/f;->b:Lcom/tequnique/camerax/a/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Lcom/tequnique/camerax/a/f;->a:Lcom/tequnique/camerax/a/g;

    invoke-direct {p0, v2, v0, v1}, Lcom/tequnique/camerax/a/f;->a(Lcom/tequnique/camerax/a/g;[BI)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tequnique/camerax/a/f;->c()[B

    move-result-object v2

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [C

    move v1, v0

    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/tequnique/camerax/a/f;->d:[C

    aget-byte v6, v2, v1

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v0

    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lcom/tequnique/camerax/a/f;->d:[C

    aget-byte v6, v2, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
