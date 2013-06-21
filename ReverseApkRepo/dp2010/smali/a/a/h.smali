.class public final La/a/h;
.super La/a/f;


# instance fields
.field g:La/d/bc;

.field h:La/d/ba;

.field i:La/d/bb;

.field j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;La/d/t;)V
    .locals 11

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, La/a/f;-><init>()V

    iput-object v2, p0, La/a/h;->h:La/d/ba;

    iput-object v2, p0, La/a/h;->i:La/d/bb;

    iput-boolean v7, p0, La/a/h;->j:Z

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const/4 v4, 0x0

    move-object v0, v2

    move-object v1, v2

    move-object v3, v2

    move v5, v4

    move v6, v4

    :cond_0
    aget-char v9, v8, v4

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    array-length v4, v8

    :cond_1
    :goto_0
    add-int/lit8 v4, v4, 0x1

    array-length v9, v8

    if-lt v4, v9, :cond_0

    if-eqz v0, :cond_2

    iget-object v1, v0, La/a/b;->c:Ljava/lang/String;

    if-nez v1, :cond_7

    :cond_2
    new-instance v0, La/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid binding URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/16 v10, 0x3a

    if-ne v9, v10, :cond_1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    move v6, v7

    goto :goto_0

    :pswitch_2
    const/16 v10, 0x5c

    if-ne v9, v10, :cond_3

    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    :pswitch_3
    const/16 v10, 0x5b

    if-ne v9, v10, :cond_1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    new-instance v0, La/a/b;

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, La/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x5

    goto :goto_0

    :pswitch_4
    const/16 v10, 0x3d

    if-ne v9, v10, :cond_4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    :cond_4
    const/16 v10, 0x2c

    if-eq v9, v10, :cond_5

    const/16 v10, 0x5d

    if-ne v9, v10, :cond_1

    :cond_5
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_6

    const-string v1, "endpoint"

    :cond_6
    invoke-virtual {v0, v1, v9}, La/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_0

    :cond_7
    iput-object v0, p0, La/a/h;->a:La/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "smb://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/a/h;->a:La/a/b;

    iget-object v1, v1, La/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/IPC$/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/h;->a:La/a/b;

    iget-object v1, v1, La/a/b;->c:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    iget-object v0, p0, La/a/h;->a:La/a/b;

    const-string v2, "server"

    invoke-virtual {v0, v2}, La/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    iget-object v1, p0, La/a/h;->a:La/a/b;

    const-string v4, "address"

    invoke-virtual {v1, v4}, La/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, La/d/bc;

    invoke-direct {v1, v0, p2}, La/d/bc;-><init>(Ljava/lang/String;La/d/t;)V

    iput-object v1, p0, La/a/h;->g:La/d/bc;

    return-void

    :cond_9
    move-object v0, v3

    goto :goto_2

    :cond_a
    move-object v2, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La/a/h;->d:I

    iget-object v0, p0, La/a/h;->i:La/d/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/h;->i:La/d/bb;

    invoke-virtual {v0}, La/d/bb;->close()V

    :cond_0
    return-void
.end method

.method protected final a([BIIZ)V
    .locals 2

    iget-object v0, p0, La/a/h;->i:La/d/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/h;->i:La/d/bb;

    invoke-virtual {v0}, La/d/bb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "DCERPC pipe is no longer open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/h;->h:La/d/ba;

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/h;->g:La/d/bc;

    invoke-virtual {v0}, La/d/bc;->k()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, La/d/ba;

    iput-object v0, p0, La/a/h;->h:La/d/ba;

    :cond_1
    iget-object v0, p0, La/a/h;->i:La/d/bb;

    if-nez v0, :cond_2

    iget-object v0, p0, La/a/h;->g:La/d/bc;

    invoke-virtual {v0}, La/d/bc;->l()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, La/d/bb;

    iput-object v0, p0, La/a/h;->i:La/d/bb;

    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, La/a/h;->i:La/d/bb;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, La/d/bb;->a([BIII)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, La/a/h;->i:La/d/bb;

    invoke-virtual {v0, p1, p2, p3}, La/d/bb;->write([BII)V

    goto :goto_0
.end method

.method protected final a([BZ)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v0, p1

    iget v3, p0, La/a/h;->c:I

    if-ge v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, La/a/h;->j:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    iget-object v0, p0, La/a/h;->h:La/d/ba;

    const/16 v3, 0x400

    invoke-virtual {v0, p1, v2, v3}, La/d/ba;->read([BII)I

    move-result v0

    :goto_0
    aget-byte v3, p1, v2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    aget-byte v3, p1, v1

    if-eqz v3, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected DCERPC PDU header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/h;->h:La/d/ba;

    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, La/d/ba;->a([BII)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :goto_1
    iput-boolean v1, p0, La/a/h;->j:Z

    const/16 v1, 0x8

    invoke-static {p1, v1}, La/e/b;->c([BI)S

    move-result v1

    iget v2, p0, La/a/h;->c:I

    if-le v1, v2, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected fragment length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v0, v1, :cond_5

    iget-object v2, p0, La/a/h;->h:La/d/ba;

    sub-int v3, v1, v0

    invoke-virtual {v2, p1, v0, v3}, La/d/ba;->a([BII)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2

    :cond_5
    return-void
.end method
