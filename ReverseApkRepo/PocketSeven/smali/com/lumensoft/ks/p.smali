.class public Lcom/lumensoft/ks/p;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[B)V
    .locals 1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    return-void
.end method

.method public static a([B[B)V
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x0

    const-string v0, "\ud55c\uad6c\ub9cc\uc138! \uc815\ud6c8\uc774\ub3c4 \ub9cc\uc138!"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Lcom/lumensoft/ks/j;

    invoke-direct {v1}, Lcom/lumensoft/ks/j;-><init>()V

    const/16 v2, 0x14

    new-array v2, v2, [B

    array-length v3, v0

    invoke-virtual {v1, v0, v4, v3}, Lcom/lumensoft/ks/j;->a([BII)V

    invoke-virtual {v1, v2, v4}, Lcom/lumensoft/ks/j;->a([BI)I

    invoke-static {v2, v4, p0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x4

    invoke-static {v2, v0, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;[B)V
    .locals 6

    const/16 v5, 0x10

    const/4 v0, 0x0

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x10

    array-length v2, p1

    add-int/2addr v2, v1

    new-array v2, v2, [B

    array-length v3, p1

    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-lt v0, v1, :cond_0

    new-array v0, v5, [B

    new-array v1, v5, [B

    invoke-static {v0, v1}, Lcom/lumensoft/ks/p;->a([B[B)V

    new-instance v3, Lcom/lumensoft/ks/e;

    invoke-direct {v3}, Lcom/lumensoft/ks/e;-><init>()V

    invoke-virtual {v3, v2, v0, v1}, Lcom/lumensoft/ks/e;->a([B[B[B)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lumensoft/ks/p;->a(Ljava/lang/String;[B)V

    return-void

    :cond_0
    array-length v3, p1

    add-int/2addr v3, v0

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x10

    invoke-static {p0}, Lcom/lumensoft/ks/p;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-array v1, v4, [B

    new-array v2, v4, [B

    invoke-static {v1, v2}, Lcom/lumensoft/ks/p;->a([B[B)V

    new-instance v3, Lcom/lumensoft/ks/e;

    invoke-direct {v3}, Lcom/lumensoft/ks/e;-><init>()V

    invoke-virtual {v3, v0, v1, v2}, Lcom/lumensoft/ks/e;->b([B[B[B)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    if-le v1, v4, :cond_0

    new-instance v1, Lcom/lumensoft/ks/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid padding. padLen = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    array-length v2, v0

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    array-length v3, v0

    sub-int v1, v3, v1

    invoke-static {v0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
