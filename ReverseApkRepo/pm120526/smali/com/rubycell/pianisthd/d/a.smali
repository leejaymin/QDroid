.class public final Lcom/rubycell/pianisthd/d/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [C

    array-length v2, v0

    invoke-static {v0, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    const/4 v2, 0x4

    new-array v2, v2, [C

    mul-int/lit8 v3, v0, 0x4

    new-array v3, v3, [C

    move v4, v9

    :goto_0
    if-lt v4, v0, :cond_0

    array-length v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    array-length v1, v3

    sub-int v0, v1, v0

    :goto_1
    array-length v1, v3

    if-lt v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    mul-int/lit8 v5, v4, 0x3

    aget-char v6, v1, v5

    ushr-int/lit8 v6, v6, 0x2

    int-to-char v6, v6

    aput-char v6, v2, v9

    const/4 v6, 0x1

    aget-char v7, v1, v5

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v5, 0x1

    aget-char v8, v1, v8

    ushr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v2, v6

    const/4 v6, 0x2

    add-int/lit8 v7, v5, 0x1

    aget-char v7, v1, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v5, 0x2

    aget-char v8, v1, v8

    ushr-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v2, v6

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-char v5, v1, v5

    and-int/lit8 v5, v5, 0x3f

    int-to-char v5, v5

    aput-char v5, v2, v6

    move v5, v9

    :goto_2
    array-length v6, v2

    if-lt v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v5

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+="

    aget-char v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/16 v1, 0x3d

    aput-char v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "valid Base64 codes have a multiple of 4 characters"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    const-string v1, "=="

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v11

    :goto_1
    mul-int/lit8 v2, v0, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x4

    new-array v3, v3, [B

    move v4, v9

    :goto_2
    if-lt v4, v0, :cond_3

    new-instance v0, Ljava/lang/String;

    array-length v3, v2

    sub-int v1, v3, v1

    invoke-direct {v0, v2, v9, v1}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    :cond_1
    const-string v1, "="

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v10

    goto :goto_1

    :cond_2
    move v1, v9

    goto :goto_1

    :cond_3
    move v5, v9

    :goto_3
    array-length v6, v3

    if-lt v5, v6, :cond_4

    mul-int/lit8 v5, v4, 0x3

    aget-byte v6, v3, v9

    shl-int/lit8 v6, v6, 0x2

    aget-byte v7, v3, v10

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v6, v5, 0x1

    aget-byte v7, v3, v10

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x4

    aget-byte v8, v3, v11

    ushr-int/lit8 v8, v8, 0x2

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 v5, v5, 0x2

    aget-byte v6, v3, v11

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x6

    const/4 v7, 0x3

    aget-byte v7, v3, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+="

    mul-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v5

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method
