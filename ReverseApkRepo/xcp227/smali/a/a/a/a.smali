.class public final La/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, La/a/a/a;->a:[C

    const/4 v1, 0x0

    const/16 v0, 0x41

    :goto_0
    const/16 v2, 0x5a

    if-le v0, v2, :cond_0

    const/16 v0, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-le v0, v2, :cond_1

    const/16 v0, 0x30

    :goto_2
    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    sget-object v0, La/a/a/a;->a:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x2b

    aput-char v3, v0, v1

    sget-object v0, La/a/a/a;->a:[C

    const/16 v1, 0x2f

    aput-char v1, v0, v2

    return-void

    :cond_0
    sget-object v3, La/a/a/a;->a:[C

    add-int/lit8 v2, v1, 0x1

    aput-char v0, v3, v1

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v1, v2

    goto :goto_0

    :cond_1
    sget-object v3, La/a/a/a;->a:[C

    add-int/lit8 v2, v1, 0x1

    aput-char v0, v3, v1

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v1, v2

    goto :goto_1

    :cond_2
    sget-object v3, La/a/a/a;->a:[C

    add-int/lit8 v2, v1, 0x1

    aput-char v0, v3, v1

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v1, v2

    goto :goto_2
.end method

.method public static final a([B)Ljava/lang/String;
    .locals 13

    const/16 v3, 0x3d

    const/4 v1, 0x0

    array-length v6, p0

    mul-int/lit8 v0, v6, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v7, v0, 0x3

    add-int/lit8 v0, v6, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v5, v1

    move v2, v1

    :goto_0
    if-lt v2, v6, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v9, v2, 0xff

    if-ge v0, v6, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    :goto_2
    ushr-int/lit8 v10, v9, 0x2

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v11, v4, 0x4

    or-int/2addr v9, v11

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v11, v0, 0x6

    or-int/2addr v4, v11

    and-int/lit8 v11, v0, 0x3f

    add-int/lit8 v0, v5, 0x1

    sget-object v12, La/a/a/a;->a:[C

    aget-char v10, v12, v10

    aput-char v10, v8, v5

    add-int/lit8 v5, v0, 0x1

    sget-object v10, La/a/a/a;->a:[C

    aget-char v9, v10, v9

    aput-char v9, v8, v0

    if-ge v5, v7, :cond_3

    sget-object v0, La/a/a/a;->a:[C

    aget-char v0, v0, v4

    :goto_3
    aput-char v0, v8, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v7, :cond_4

    sget-object v0, La/a/a/a;->a:[C

    aget-char v0, v0, v11

    :goto_4
    aput-char v0, v8, v4

    add-int/lit8 v0, v4, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_4
.end method
