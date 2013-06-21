.class public final La/e/g;
.super Ljava/lang/Object;


# instance fields
.field a:[B

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-direct {p0, p1, v0}, La/e/g;->a([BI)V

    return-void
.end method

.method private a([BI)V
    .locals 7

    const/16 v6, 0x100

    const/4 v5, 0x0

    new-array v0, v6, [B

    iput-object v0, p0, La/e/g;->a:[B

    iput v5, p0, La/e/g;->b:I

    :goto_0
    iget v0, p0, La/e/g;->b:I

    if-ge v0, v6, :cond_0

    iget-object v0, p0, La/e/g;->a:[B

    iget v1, p0, La/e/g;->b:I

    iget v2, p0, La/e/g;->b:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, La/e/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/e/g;->b:I

    goto :goto_0

    :cond_0
    iput v5, p0, La/e/g;->c:I

    iput v5, p0, La/e/g;->b:I

    :goto_1
    iget v0, p0, La/e/g;->b:I

    if-ge v0, v6, :cond_1

    iget v0, p0, La/e/g;->c:I

    iget v1, p0, La/e/g;->b:I

    rem-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x0

    aget-byte v1, p1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, La/e/g;->a:[B

    iget v2, p0, La/e/g;->b:I

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, La/e/g;->c:I

    iget-object v0, p0, La/e/g;->a:[B

    iget v1, p0, La/e/g;->b:I

    aget-byte v0, v0, v1

    iget-object v1, p0, La/e/g;->a:[B

    iget v2, p0, La/e/g;->b:I

    iget-object v3, p0, La/e/g;->a:[B

    iget v4, p0, La/e/g;->c:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    iget-object v1, p0, La/e/g;->a:[B

    iget v2, p0, La/e/g;->c:I

    aput-byte v0, v1, v2

    iget v0, p0, La/e/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/e/g;->b:I

    goto :goto_1

    :cond_1
    iput v5, p0, La/e/g;->c:I

    iput v5, p0, La/e/g;->b:I

    return-void
.end method


# virtual methods
.method public final a([BI[BI)V
    .locals 7

    :goto_0
    const/16 v0, 0x10

    if-ge p2, v0, :cond_0

    iget v0, p0, La/e/g;->b:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, La/e/g;->b:I

    iget v0, p0, La/e/g;->c:I

    iget-object v1, p0, La/e/g;->a:[B

    iget v2, p0, La/e/g;->b:I

    aget-byte v1, v1, v2

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, La/e/g;->c:I

    iget-object v0, p0, La/e/g;->a:[B

    iget v1, p0, La/e/g;->b:I

    aget-byte v0, v0, v1

    iget-object v1, p0, La/e/g;->a:[B

    iget v2, p0, La/e/g;->b:I

    iget-object v3, p0, La/e/g;->a:[B

    iget v4, p0, La/e/g;->c:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    iget-object v1, p0, La/e/g;->a:[B

    iget v2, p0, La/e/g;->c:I

    aput-byte v0, v1, v2

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    iget-object v3, p0, La/e/g;->a:[B

    iget-object v4, p0, La/e/g;->a:[B

    iget v5, p0, La/e/g;->b:I

    aget-byte v4, v4, v5

    iget-object v5, p0, La/e/g;->a:[B

    iget v6, p0, La/e/g;->c:I

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, p4

    move p4, v0

    move p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method
