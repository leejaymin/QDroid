.class public Lccc71/bmw/data/readers/bmw_reader_chargercurrent_ratio10;
.super Lccc71/bmw/data/readers/a;
.source "SourceFile"


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lccc71/bmw/data/readers/bmw_reader_chargercurrent_ratio10;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 20
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 22
    if-eqz v1, :cond_0

    .line 23
    div-int/lit8 v0, v1, 0xa

    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->h()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method