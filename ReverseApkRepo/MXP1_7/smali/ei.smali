.class public final Lei;
.super Ljava/lang/Object;


# direct methods
.method public static 癤욱븳援(Ljava/io/InputStream;[B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lei;->癤욱븳援(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static 癤욱븳援(Ljava/io/InputStream;[BII)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-gtz p3, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static 癤욱븳援(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-static {p0, p1, v0}, Lei;->癤욱븳援(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    return-void
.end method

.method public static 癤욱븳援(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2

    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static 癤욱븳援(Ljava/io/InputStream;)[B
    .locals 2

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x2000

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    invoke-static {p0, v1}, Lei;->癤욱븳援(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0
.end method
