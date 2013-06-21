.class public abstract Lb/b/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(B)Z
    .locals 1

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b([BII)Ljava/nio/ByteBuffer;
    .locals 7

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    add-int v4, p1, p2

    move v0, p1

    move v1, v2

    :goto_0
    if-lt p1, v4, :cond_1

    if-eqz v1, :cond_0

    if-le p1, v0, :cond_0

    sub-int v1, p1, v0

    invoke-virtual {v3, p0, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_0
    return-object v3

    :cond_1
    aget-byte v5, p0, p1

    invoke-static {v5}, Lb/b/a/a/b;->a(B)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v1, 0x1

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lb/b/a/a/b;->b(B)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_4

    if-le p1, v0, :cond_4

    sub-int v1, p1, v0

    invoke-virtual {v3, p0, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, p1, 0x1

    move v1, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v0, p1, 0x1

    goto :goto_1
.end method

.method private static b(B)Z
    .locals 2

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c([BII)Ljava/nio/ByteBuffer;
    .locals 7

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    add-int v4, p1, p2

    move v2, p1

    move v0, v1

    :goto_0
    if-lt p1, v4, :cond_1

    if-nez v0, :cond_0

    if-le p1, v2, :cond_0

    sub-int v0, p1, v2

    invoke-virtual {v3, p0, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_0
    return-object v3

    :cond_1
    aget-byte v5, p0, p1

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_5

    move v0, v1

    :cond_2
    :goto_1
    invoke-static {v5}, Lb/b/a/a/b;->a(B)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Lb/b/a/a/b;->b(B)Z

    move-result v5

    if-eqz v5, :cond_4

    if-le p1, v2, :cond_3

    if-nez v0, :cond_3

    sub-int v5, p1, v2

    invoke-virtual {v3, p0, v2, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v2, 0x20

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_3
    add-int/lit8 v2, p1, 0x1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    const/16 v6, 0x3c

    if-ne v5, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public abstract a([BII)Lb/b/a/a/c;
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()F
.end method

.method public abstract c()Lb/b/a/a/c;
.end method

.method public abstract d()V
.end method
