.class public abstract La/b/m;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a([B)I
.end method

.method public final b([B)I
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, La/b/m;->a([B)I

    move-result v0

    iput v0, p0, La/b/m;->b:I

    const/4 v0, 0x0

    iget v1, p0, La/b/m;->a:I

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    iget v0, p0, La/b/m;->b:I

    const v1, 0xffff

    if-le v0, v1, :cond_0

    aput-byte v2, p1, v2

    :cond_0
    iget v0, p0, La/b/m;->b:I

    const/4 v1, 0x2

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    const/4 v1, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    iget v0, p0, La/b/m;->b:I

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
