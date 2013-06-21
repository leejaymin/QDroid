.class public Lb/a/a/a/a/b;
.super Lb/a/a/a/e;


# instance fields
.field protected i:I

.field protected j:Ljava/util/ArrayList;

.field protected k:Z

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Lb/a/a/a/d;

.field protected o:Z

.field protected p:Ljava/io/BufferedReader;

.field protected q:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lb/a/a/a/e;-><init>()V

    iput-boolean v1, p0, Lb/a/a/a/a/b;->o:Z

    invoke-virtual {p0}, Lb/a/a/a/a/b;->d()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/b;->j:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lb/a/a/a/a/b;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/a/b;->l:Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lb/a/a/a/a/b;->m:Ljava/lang/String;

    new-instance v0, Lb/a/a/a/d;

    invoke-direct {v0, p0}, Lb/a/a/a/d;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/a/b;->n:Lb/a/a/a/d;

    return-void
.end method

.method private o()V
    .locals 8

    const/16 v7, 0x2d

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x3

    iput-boolean v2, p0, Lb/a/a/a/a/b;->k:Z

    iget-object v0, p0, Lb/a/a/a/a/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lb/a/a/a/a/b;->p:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/a/g;

    const-string v1, "Connection closed without indication."

    invoke-direct {v0, v1}, Lb/a/a/a/a/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_1

    new-instance v1, Lb/a/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Truncated server reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lb/a/a/a/a/b;->i:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lb/a/a/a/a/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v3, v6, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_5

    :cond_2
    iget-object v0, p0, Lb/a/a/a/a/b;->p:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lb/a/a/a/a/g;

    const-string v1, "Connection closed without indication."

    invoke-direct {v0, v1}, Lb/a/a/a/a/g;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    new-instance v1, Lb/a/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse response code.\nServer Reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v3, p0, Lb/a/a/a/a/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lb/a/a/a/a/b;->o:Z

    if-eqz v3, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_6

    :cond_4
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    :cond_5
    :goto_1
    iget v0, p0, Lb/a/a/a/a/b;->i:I

    invoke-virtual {p0}, Lb/a/a/a/a/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/a/b;->a(ILjava/lang/String;)V

    iget v0, p0, Lb/a/a/a/a/b;->i:I

    const/16 v1, 0x1a5

    if-ne v0, v1, :cond_a

    new-instance v0, Lb/a/a/a/a/g;

    const-string v1, "FTP response 421 received.  Server closed connection."

    invoke-direct {v0, v1}, Lb/a/a/a/a/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x4

    if-lt v3, v5, :cond_8

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    move v0, v2

    :goto_2
    if-nez v0, :cond_2

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_2

    :cond_a
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    invoke-super {p0}, Lb/a/a/a/e;->a()V

    new-instance v0, Lb/a/a/a/b/a;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lb/a/a/a/a/b;->d:Ljava/io/InputStream;

    iget-object v3, p0, Lb/a/a/a/a/b;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lb/a/a/a/b/a;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lb/a/a/a/a/b;->p:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lb/a/a/a/a/b;->e:Ljava/io/OutputStream;

    iget-object v3, p0, Lb/a/a/a/a/b;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lb/a/a/a/a/b;->q:Ljava/io/BufferedWriter;

    iget v0, p0, Lb/a/a/a/a/b;->h:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/a/b;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    iget-object v0, p0, Lb/a/a/a/a/b;->b:Ljava/net/Socket;

    iget v2, p0, Lb/a/a/a/a/b;->h:I

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    invoke-direct {p0}, Lb/a/a/a/a/b;->o()V

    iget v0, p0, Lb/a/a/a/a/b;->i:I

    invoke-static {v0}, Lb/a/a/a/a/q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/a/a/a/b;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/a/b;->b:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timed out waiting for initial connect reply"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lb/a/a/a/a/b;->b:Ljava/net/Socket;

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lb/a/a/a/a/b;->o()V

    iget v0, p0, Lb/a/a/a/a/b;->i:I

    invoke-static {v0}, Lb/a/a/a/a/q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lb/a/a/a/a/b;->o()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/a/b;->m:Ljava/lang/String;

    return-void
.end method

.method public final b(ILjava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lb/a/a/a/a/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lb/a/a/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lb/a/a/a/a/b;->q:Ljava/io/BufferedWriter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lb/a/a/a/a/b;->q:Ljava/io/BufferedWriter;

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/a/a/a/b;->q:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lb/a/a/a/a/b;->o()V

    iget v0, p0, Lb/a/a/a/a/b;->i:I

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/a/a/b;->c()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lb/a/a/a/a/g;

    const-string v1, "Connection unexpectedly closed."

    invoke-direct {v0, v1}, Lb/a/a/a/a/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    throw v0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lb/a/a/a/e;->b()V

    iput-object v1, p0, Lb/a/a/a/a/b;->p:Ljava/io/BufferedReader;

    iput-object v1, p0, Lb/a/a/a/a/b;->q:Ljava/io/BufferedWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/a/b;->k:Z

    iput-object v1, p0, Lb/a/a/a/a/b;->l:Ljava/lang/String;

    return-void
.end method

.method protected final i()Lb/a/a/a/d;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/b;->n:Lb/a/a/a/d;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lb/a/a/a/a/b;->i:I

    return v0
.end method

.method public final l()I
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/a/b;->o()V

    iget v0, p0, Lb/a/a/a/a/b;->i:I

    return v0
.end method

.method public final m()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/a/b;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/a/a/a/a/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lb/a/a/a/a/b;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/a/b;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lb/a/a/a/a/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/a/b;->k:Z

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/b;->l:Ljava/lang/String;

    goto :goto_0
.end method
