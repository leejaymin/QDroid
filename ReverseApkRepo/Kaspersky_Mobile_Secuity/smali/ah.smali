.class public final Lah;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 16
    const/16 v0, 0x2000

    new-array v2, v0, [B

    move v0, v1

    .line 21
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes read"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lam;->a(Ljava/lang/String;)V

    .line 23
    if-lez v3, :cond_1

    .line 25
    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 26
    add-int/2addr v0, v3

    .line 29
    :cond_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 31
    return v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x2000

    const/4 v4, 0x0

    .line 36
    if-gtz p2, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 39
    :cond_0
    new-array v5, v2, [B

    move v3, v4

    move v1, p2

    .line 41
    :goto_0
    if-lez v1, :cond_1

    .line 44
    if-ge v1, v2, :cond_3

    move v0, v1

    .line 48
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes remaining"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lam;->a(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v5, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " bytes read"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam;->a(Ljava/lang/String;)V

    .line 51
    if-lez v6, :cond_2

    .line 53
    invoke-virtual {p1, v5, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 54
    add-int v0, v3, v6

    .line 41
    :goto_2
    sub-int/2addr v1, v6

    move v3, v0

    goto :goto_0

    .line 58
    :cond_1
    return v3

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    if-eqz p0, :cond_0

    .line 67
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lam;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
