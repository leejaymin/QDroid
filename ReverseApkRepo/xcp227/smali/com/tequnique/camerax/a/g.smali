.class final Lcom/tequnique/camerax/a/g;
.super Ljava/lang/Object;


# instance fields
.field a:[I

.field b:J

.field c:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tequnique/camerax/a/g;->c:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tequnique/camerax/a/g;->b:J

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tequnique/camerax/a/g;->a:[I

    iget-object v0, p0, Lcom/tequnique/camerax/a/g;->a:[I

    const/4 v1, 0x0

    const v2, 0x67452301

    aput v2, v0, v1

    iget-object v0, p0, Lcom/tequnique/camerax/a/g;->a:[I

    const/4 v1, 0x1

    const v2, -0x10325477

    aput v2, v0, v1

    iget-object v0, p0, Lcom/tequnique/camerax/a/g;->a:[I

    const/4 v1, 0x2

    const v2, -0x67452302

    aput v2, v0, v1

    iget-object v0, p0, Lcom/tequnique/camerax/a/g;->a:[I

    const/4 v1, 0x3

    const v2, 0x10325476

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/tequnique/camerax/a/g;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tequnique/camerax/a/g;-><init>()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/tequnique/camerax/a/g;->c:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/tequnique/camerax/a/g;->a:[I

    array-length v0, v0

    if-lt v1, v0, :cond_1

    iget-wide v0, p1, Lcom/tequnique/camerax/a/g;->b:J

    iput-wide v0, p0, Lcom/tequnique/camerax/a/g;->b:J

    return-void

    :cond_0
    iget-object v2, p0, Lcom/tequnique/camerax/a/g;->c:[B

    iget-object v3, p1, Lcom/tequnique/camerax/a/g;->c:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/a/g;->a:[I

    iget-object v2, p1, Lcom/tequnique/camerax/a/g;->a:[I

    aget v2, v2, v1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
