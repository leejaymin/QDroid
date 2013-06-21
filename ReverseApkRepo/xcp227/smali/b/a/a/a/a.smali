.class public abstract Lb/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/c;


# instance fields
.field private a:[B

.field private b:I

.field private c:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lb/a/a/a/a;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/a/a;->b:I

    return-void
.end method

.method private a(B)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lb/a/a/a/a;->a:[B

    iget v1, p0, Lb/a/a/a/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/a/a/a;->b:I

    aput-byte p1, v0, v1

    iget v0, p0, Lb/a/a/a/a;->b:I

    iget-object v1, p0, Lb/a/a/a/a;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/a/a/a/a;->a:[B

    invoke-virtual {p0, v0, v3}, Lb/a/a/a/a;->a([BI)V

    iput v3, p0, Lb/a/a/a/a;->b:I

    :cond_0
    iget-wide v0, p0, Lb/a/a/a/a;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/a/a/a/a;->c:J

    return-void
.end method


# virtual methods
.method protected abstract a(J)V
.end method

.method protected abstract a([BI)V
.end method

.method public final a([BII)V
    .locals 4

    :goto_0
    iget v0, p0, Lb/a/a/a/a;->b:I

    if-eqz v0, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lb/a/a/a/a;->a:[B

    array-length v0, v0

    if-gt p3, v0, :cond_2

    :goto_2
    if-gtz p3, :cond_3

    return-void

    :cond_1
    aget-byte v0, p1, p2

    invoke-direct {p0, v0}, Lb/a/a/a/a;->a(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lb/a/a/a/a;->a([BI)V

    iget-object v0, p0, Lb/a/a/a/a;->a:[B

    array-length v0, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lb/a/a/a/a;->a:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    iget-wide v0, p0, Lb/a/a/a/a;->c:J

    iget-object v2, p0, Lb/a/a/a/a;->a:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/a/a/a/a;->c:J

    goto :goto_1

    :cond_3
    aget-byte v0, p1, p2

    invoke-direct {p0, v0}, Lb/a/a/a/a;->a(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2
.end method

.method public b()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lb/a/a/a/a;->c:J

    iput v1, p0, Lb/a/a/a/a;->b:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lb/a/a/a/a;->a:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lb/a/a/a/a;->a:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    iget-wide v0, p0, Lb/a/a/a/a;->c:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    invoke-direct {p0, v2}, Lb/a/a/a/a;->a(B)V

    :goto_0
    iget v2, p0, Lb/a/a/a/a;->b:I

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/a;->a(J)V

    invoke-virtual {p0}, Lb/a/a/a/a;->d()V

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lb/a/a/a/a;->a(B)V

    goto :goto_0
.end method

.method protected abstract d()V
.end method
