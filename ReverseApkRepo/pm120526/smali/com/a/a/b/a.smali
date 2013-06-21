.class public final Lcom/a/a/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v2, 0xf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(II)[B
    .locals 6

    new-array v0, p1, [B

    new-array v1, p1, [I

    const/4 v2, 0x0

    move v3, p0

    :goto_0
    if-lt v2, p1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    and-int/lit16 v4, v3, 0xff

    aput v4, v1, v2

    sub-int v4, p1, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v5, v1, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    shr-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
