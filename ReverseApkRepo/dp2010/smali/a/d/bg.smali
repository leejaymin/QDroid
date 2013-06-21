.class public final La/d/bg;
.super La/e/a/c;

# interfaces
.implements La/d/ax;


# static fields
.field static final a:[B

.field static final b:La/d/ad;

.field static c:La/e/e;

.field static d:Ljava/util/HashMap;


# instance fields
.field A:Ljava/lang/String;

.field e:Ljava/net/InetAddress;

.field f:I

.field g:La/b;

.field h:Ljava/net/Socket;

.field i:I

.field j:I

.field k:Ljava/io/OutputStream;

.field l:Ljava/io/InputStream;

.field m:[B

.field n:La/d/x;

.field o:J

.field p:Ljava/util/LinkedList;

.field q:La/d/v;

.field r:Ljava/util/LinkedList;

.field s:La/d/bh;

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xffff

    new-array v0, v0, [B

    sput-object v0, La/d/bg;->a:[B

    new-instance v0, La/d/ad;

    invoke-direct {v0}, La/d/ad;-><init>()V

    sput-object v0, La/d/bg;->b:La/d/ad;

    invoke-static {}, La/e/e;->a()La/e/e;

    move-result-object v0

    sput-object v0, La/d/bg;->c:La/e/e;

    const/4 v0, 0x0

    sput-object v0, La/d/bg;->d:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(La/b;ILjava/net/InetAddress;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, La/e/a/c;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, La/d/bg;->m:[B

    new-instance v0, La/d/x;

    invoke-direct {v0}, La/d/x;-><init>()V

    iput-object v0, p0, La/d/bg;->n:La/d/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, La/d/bg;->av:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, La/d/bg;->o:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, La/d/bg;->p:Ljava/util/LinkedList;

    iput-object v4, p0, La/d/bg;->q:La/d/v;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, La/d/bg;->r:Ljava/util/LinkedList;

    new-instance v0, La/d/bh;

    invoke-direct {v0, p0}, La/d/bh;-><init>(La/d/bg;)V

    iput-object v0, p0, La/d/bg;->s:La/d/bh;

    sget v0, La/d/bg;->ap:I

    iput v0, p0, La/d/bg;->t:I

    sget v0, La/d/bg;->Y:I

    iput v0, p0, La/d/bg;->u:I

    sget v0, La/d/bg;->Z:I

    iput v0, p0, La/d/bg;->v:I

    sget v0, La/d/bg;->aa:I

    iput v0, p0, La/d/bg;->w:I

    sget v0, La/d/bg;->aq:I

    iput v0, p0, La/d/bg;->x:I

    const/4 v0, 0x0

    iput v0, p0, La/d/bg;->y:I

    sget-boolean v0, La/d/bg;->ab:Z

    iput-boolean v0, p0, La/d/bg;->z:Z

    iput-object v4, p0, La/d/bg;->A:Ljava/lang/String;

    iput-object p1, p0, La/d/bg;->g:La/b;

    iput p2, p0, La/d/bg;->i:I

    iput-object p3, p0, La/d/bg;->e:Ljava/net/InetAddress;

    iput p4, p0, La/d/bg;->f:I

    return-void
.end method

.method static declared-synchronized a(La/b;I)La/d/bg;
    .locals 3

    const-class v1, La/d/bg;

    monitor-enter v1

    :try_start_0
    sget-object v0, La/d/bg;->W:Ljava/net/InetAddress;

    sget v2, La/d/bg;->X:I

    invoke-static {p0, p1, v0, v2}, La/d/bg;->a(La/b;ILjava/net/InetAddress;I)La/d/bg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(La/b;ILjava/net/InetAddress;I)La/d/bg;
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v4, La/d/bg;

    monitor-enter v4

    :try_start_0
    sget-object v5, La/d/bg;->at:Ljava/util/LinkedList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget v0, La/d/bg;->au:I

    if-eq v0, v3, :cond_6

    sget-object v0, La/d/bg;->at:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/bg;

    invoke-virtual {p0}, La/b;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v7, v0, La/d/bg;->A:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v0, La/d/bg;->A:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, v0, La/d/bg;->g:La/b;

    invoke-virtual {p0, v1}, La/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_2

    iget v1, v0, La/d/bg;->i:I

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1bd

    if-ne p1, v1, :cond_5

    iget v1, v0, La/d/bg;->i:I

    const/16 v7, 0x8b

    if-ne v1, v7, :cond_5

    :cond_2
    iget-object v1, v0, La/d/bg;->e:Ljava/net/InetAddress;

    if-eq p2, v1, :cond_3

    if-eqz p2, :cond_5

    iget-object v1, v0, La/d/bg;->e:Ljava/net/InetAddress;

    invoke-virtual {p2, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget v1, v0, La/d/bg;->f:I

    if-ne p3, v1, :cond_5

    move v1, v3

    :goto_0
    if-eqz v1, :cond_0

    sget v1, La/d/bg;->au:I

    if-eqz v1, :cond_4

    iget-object v1, v0, La/d/bg;->r:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget v7, La/d/bg;->au:I

    if-ge v1, v7, :cond_0

    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v4

    return-object v0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    :try_start_2
    new-instance v0, La/d/bg;

    invoke-direct {v0, p0, p1, p2, p3}, La/d/bg;-><init>(La/b;ILjava/net/InetAddress;I)V

    sget-object v1, La/d/bg;->at:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v5

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private a(ILa/d/u;)V
    .locals 9

    const/16 v0, 0x8b

    const/4 v8, 0x6

    const/4 v7, 0x4

    iget-object v1, p0, La/d/bg;->m:[B

    monitor-enter v1

    if-ne p1, v0, :cond_6

    :try_start_0
    new-instance v0, La/b/b;

    iget-object v2, p0, La/d/bg;->g:La/b;

    invoke-virtual {v2}, La/b;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, La/d/bg;->h:Ljava/net/Socket;

    iget-object v2, p0, La/d/bg;->e:Ljava/net/InetAddress;

    if-eqz v2, :cond_1

    iget-object v2, p0, La/d/bg;->h:Ljava/net/Socket;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, La/d/bg;->e:Ljava/net/InetAddress;

    iget v5, p0, La/d/bg;->f:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_1
    iget-object v2, p0, La/d/bg;->h:Ljava/net/Socket;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, La/d/bg;->g:La/b;

    invoke-virtual {v4}, La/b;->e()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8b

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v4, La/d/bg;->aw:I

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v2, p0, La/d/bg;->h:Ljava/net/Socket;

    sget v3, La/d/bg;->av:I

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p0, La/d/bg;->h:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, La/d/bg;->k:Ljava/io/OutputStream;

    iget-object v2, p0, La/d/bg;->h:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, La/d/bg;->l:Ljava/io/InputStream;

    new-instance v2, La/b/l;

    invoke-static {}, La/b/g;->b()La/b/b;

    move-result-object v3

    invoke-direct {v2, v0, v3}, La/b/l;-><init>(La/b/b;La/b/b;)V

    iget-object v3, p0, La/d/bg;->k:Ljava/io/OutputStream;

    iget-object v4, p0, La/d/bg;->m:[B

    const/4 v5, 0x0

    iget-object v6, p0, La/d/bg;->m:[B

    invoke-virtual {v2, v6}, La/b/m;->b([B)I

    move-result v2

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v2, p0, La/d/bg;->l:Ljava/io/InputStream;

    iget-object v3, p0, La/d/bg;->m:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v2, v3, v4, v5}, La/d/bg;->a(Ljava/io/InputStream;[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ge v2, v7, :cond_2

    :try_start_1
    iget-object v0, p0, La/d/bg;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    new-instance v0, La/d/ay;

    const-string v2, "EOF during NetBIOS session request"

    invoke-direct {v0, v2}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_3
    iget-object v2, p0, La/d/bg;->m:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    sparse-switch v2, :sswitch_data_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/d/bg;->b(Z)V

    new-instance v0, La/b/i;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, La/b/i;-><init>(I)V

    throw v0

    :sswitch_0
    sget-object v0, La/d/bg;->c:La/e/e;

    sget v0, La/e/e;->a:I

    if-lt v0, v7, :cond_3

    sget-object v0, La/d/bg;->c:La/e/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "session established ok with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, La/d/bg;->g:La/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, La/e/e;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget v0, p0, La/d/bg;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/d/bg;->j:I

    const/16 v2, 0x7d00

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    iput v0, p0, La/d/bg;->j:I

    :cond_4
    sget-object v0, La/d/bg;->b:La/d/ad;

    iget v2, p0, La/d/bg;->j:I

    iput v2, v0, La/d/ad;->q:I

    sget-object v0, La/d/bg;->b:La/d/ad;

    iget-object v2, p0, La/d/bg;->m:[B

    invoke-virtual {v0, v2}, La/d/ad;->a([B)I

    move-result v0

    const v2, 0xffff

    and-int/2addr v2, v0

    iget-object v3, p0, La/d/bg;->m:[B

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, La/e/b;->a(I[BI)I

    sget-object v2, La/d/bg;->c:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v7, :cond_5

    sget-object v2, La/d/bg;->c:La/e/e;

    sget-object v3, La/d/bg;->b:La/d/ad;

    invoke-virtual {v2, v3}, La/e/e;->println(Ljava/lang/Object;)V

    sget-object v2, La/d/bg;->c:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v8, :cond_5

    sget-object v2, La/d/bg;->c:La/e/e;

    iget-object v3, p0, La/d/bg;->m:[B

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_5
    iget-object v2, p0, La/d/bg;->k:Ljava/io/OutputStream;

    iget-object v3, p0, La/d/bg;->m:[B

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    iget-object v2, p0, La/d/bg;->k:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, La/d/bg;->c()La/e/a/a;

    move-result-object v2

    if-nez v2, :cond_9

    new-instance v0, Ljava/io/IOException;

    const-string v2, "transport closed in negotiate"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    iget-object v2, p0, La/d/bg;->l:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/d/bg;->b(Z)V

    new-instance v0, La/b/i;

    invoke-direct {v0, v2}, La/b/i;-><init>(I)V

    throw v0

    :pswitch_1
    iget-object v2, p0, La/d/bg;->h:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    iget-object v2, p0, La/d/bg;->g:La/b;

    invoke-virtual {v2}, La/b;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, La/b/b;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to establish session with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, La/d/bg;->g:La/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/d/bg;->b(Z)V

    new-instance v0, La/b/i;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, La/b/i;-><init>(I)V

    throw v0

    :cond_6
    if-nez p1, :cond_7

    const/16 p1, 0x1bd

    :cond_7
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, La/d/bg;->h:Ljava/net/Socket;

    iget-object v0, p0, La/d/bg;->e:Ljava/net/InetAddress;

    if-eqz v0, :cond_8

    iget-object v0, p0, La/d/bg;->h:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, La/d/bg;->e:Ljava/net/InetAddress;

    iget v4, p0, La/d/bg;->f:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_8
    iget-object v0, p0, La/d/bg;->h:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, La/d/bg;->g:La/b;

    invoke-virtual {v3}, La/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v3, La/d/bg;->aw:I

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v0, p0, La/d/bg;->h:Ljava/net/Socket;

    sget v2, La/d/bg;->av:I

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, La/d/bg;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, La/d/bg;->k:Ljava/io/OutputStream;

    iget-object v0, p0, La/d/bg;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, La/d/bg;->l:Ljava/io/InputStream;

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, La/d/bg;->m:[B

    const/4 v3, 0x2

    invoke-static {v2, v3}, La/e/b;->a([BI)S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    const/16 v3, 0x21

    if-lt v2, v3, :cond_a

    add-int/lit8 v3, v2, 0x4

    iget-object v4, p0, La/d/bg;->m:[B

    array-length v4, v4

    if-le v3, v4, :cond_b

    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid payload size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v3, p0, La/d/bg;->l:Ljava/io/InputStream;

    iget-object v4, p0, La/d/bg;->m:[B

    const/16 v5, 0x24

    add-int/lit8 v2, v2, -0x20

    invoke-static {v3, v4, v5, v2}, La/d/bg;->a(Ljava/io/InputStream;[BII)I

    iget-object v2, p0, La/d/bg;->m:[B

    invoke-virtual {p2, v2}, La/d/u;->b([B)I

    sget-object v2, La/d/bg;->c:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v7, :cond_c

    sget-object v2, La/d/bg;->c:La/e/e;

    invoke-virtual {v2, p2}, La/e/e;->println(Ljava/lang/Object;)V

    sget-object v2, La/d/bg;->c:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v8, :cond_c

    sget-object v2, La/d/bg;->c:La/e/e;

    iget-object v3, p0, La/d/bg;->m:[B

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_c
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x82 -> :sswitch_0
        0x83 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(La/d/u;La/d/u;)V
    .locals 3

    iget v0, p2, La/d/u;->l:I

    invoke-static {v0}, La/d/ay;->b(I)I

    move-result v0

    iput v0, p2, La/d/u;->l:I

    iget v0, p2, La/d/u;->l:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, La/d/ay;

    iget v1, p2, La/d/u;->l:I

    invoke-direct {v0, v1}, La/d/ay;-><init>(I)V

    throw v0

    :sswitch_0
    new-instance v0, La/d/w;

    iget v1, p2, La/d/u;->l:I

    invoke-direct {v0, v1}, La/d/w;-><init>(I)V

    throw v0

    :sswitch_1
    iget-object v0, p1, La/d/u;->z:La/d/t;

    if-nez v0, :cond_0

    new-instance v0, La/d/ay;

    iget v1, p2, La/d/u;->l:I

    invoke-direct {v0, v1}, La/d/ay;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p1, La/d/u;->z:La/d/t;

    iget-object v1, p1, La/d/u;->A:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, La/d/bg;->a(La/d/t;Ljava/lang/String;I)La/d/f;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, La/d/ay;

    iget v1, p2, La/d/u;->l:I

    invoke-direct {v0, v1}, La/d/ay;-><init>(I)V

    throw v0

    :cond_1
    sget-object v1, La/d/az;->f:La/d/d;

    iget-object v2, p1, La/d/u;->A:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, La/d/d;->a(Ljava/lang/String;La/d/f;)V

    throw v0

    :sswitch_2
    iget-boolean v0, p2, La/d/u;->y:Z

    if-eqz v0, :cond_2

    new-instance v0, La/d/ay;

    const-string v1, "Signature verification failed."

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ffffffb -> :sswitch_2
        -0x3fffffea -> :sswitch_2
        -0x3fffffde -> :sswitch_0
        -0x3fffff96 -> :sswitch_0
        -0x3fffff93 -> :sswitch_0
        -0x3fffff92 -> :sswitch_0
        -0x3fffff91 -> :sswitch_0
        -0x3fffff90 -> :sswitch_0
        -0x3fffff8f -> :sswitch_0
        -0x3fffff8e -> :sswitch_0
        -0x3ffffe74 -> :sswitch_0
        -0x3ffffdcc -> :sswitch_0
        -0x3ffffda9 -> :sswitch_1
        0x0 -> :sswitch_2
    .end sparse-switch
.end method

.method private c(La/e/a/a;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, La/d/bg;->b(La/e/a/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, La/d/bg;->c:La/e/e;

    sget v1, La/e/e;->a:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    sget-object v1, La/d/bg;->c:La/e/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, La/d/bg;->b(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    throw v0

    :catch_1
    move-exception v1

    sget-object v2, La/d/bg;->c:La/e/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized a(La/d/t;)La/d/be;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/d/bg;->r:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/be;

    invoke-virtual {v0, p1}, La/d/be;->a(La/d/t;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, v0, La/d/be;->f:La/d/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    sget v0, La/d/bg;->av:I

    if-lez v0, :cond_3

    iget-wide v0, p0, La/d/bg;->o:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    sget v0, La/d/bg;->av:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, La/d/bg;->o:J

    iget-object v0, p0, La/d/bg;->r:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/be;

    iget-wide v4, v0, La/d/be;->g:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, La/d/be;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    new-instance v0, La/d/be;

    iget-object v1, p0, La/d/bg;->g:La/b;

    iget v2, p0, La/d/bg;->i:I

    iget-object v3, p0, La/d/bg;->e:Ljava/net/InetAddress;

    iget v4, p0, La/d/bg;->f:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, La/d/be;-><init>(La/b;ILjava/net/InetAddress;ILa/d/t;)V

    iput-object p0, v0, La/d/be;->e:La/d/bg;

    iget-object v1, p0, La/d/bg;->r:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method final a(La/d/t;Ljava/lang/String;I)La/d/f;
    .locals 16

    invoke-virtual/range {p0 .. p1}, La/d/bg;->a(La/d/t;)La/d/be;

    move-result-object v1

    const-string v2, "IPC$"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, La/d/be;->a(Ljava/lang/String;Ljava/lang/String;)La/d/bi;

    move-result-object v1

    new-instance v7, La/d/bo;

    invoke-direct {v7}, La/d/bo;-><init>()V

    new-instance v2, La/d/bn;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, La/d/bn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v7}, La/d/bi;->a(La/d/u;La/d/u;)V

    iget v1, v7, La/d/bo;->S:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-eqz p3, :cond_1

    iget v1, v7, La/d/bo;->S:I

    move/from16 v0, p3

    if-ge v1, v0, :cond_2

    :cond_1
    iget v0, v7, La/d/bo;->S:I

    move/from16 p3, v0

    :cond_2
    new-instance v2, La/d/f;

    invoke-direct {v2}, La/d/f;-><init>()V

    const/4 v1, 0x4

    new-array v8, v1, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, La/d/d;->c:J

    const-wide/16 v9, 0x3e8

    mul-long/2addr v5, v9

    add-long v9, v3, v5

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget-boolean v3, v0, La/d/t;->m:Z

    iput-boolean v3, v2, La/d/f;->g:Z

    iget-object v3, v7, La/d/bo;->U:[La/d/bp;

    aget-object v3, v3, v1

    iget v3, v3, La/d/bp;->a:I

    int-to-long v3, v3

    iput-wide v3, v2, La/d/f;->b:J

    iput-wide v9, v2, La/d/f;->h:J

    const-string v3, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v7, La/d/bo;->U:[La/d/bp;

    aget-object v3, v3, v1

    iget-object v3, v3, La/d/bp;->b:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, La/d/f;->c:Ljava/lang/String;

    :goto_2
    iget v3, v7, La/d/bo;->a:I

    iput v3, v2, La/d/f;->a:I

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p3

    if-eq v1, v0, :cond_7

    new-instance v3, La/d/f;

    invoke-direct {v3}, La/d/f;-><init>()V

    invoke-virtual {v2, v3}, La/d/f;->a(La/d/f;)V

    iget-object v2, v2, La/d/f;->i:La/d/f;

    goto :goto_1

    :cond_3
    iget-object v3, v7, La/d/bo;->U:[La/d/bp;

    aget-object v3, v3, v1

    iget-object v11, v3, La/d/bp;->c:Ljava/lang/String;

    const/4 v5, 0x0

    array-length v3, v8

    add-int/lit8 v12, v3, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    move v6, v4

    move v4, v5

    :goto_3
    if-ne v4, v12, :cond_5

    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v12

    :cond_4
    const/4 v3, 0x1

    aget-object v3, v8, v3

    iput-object v3, v2, La/d/f;->c:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v8, v3

    iput-object v3, v2, La/d/f;->d:Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v8, v3

    iput-object v3, v2, La/d/f;->f:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-eq v6, v13, :cond_6

    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v14, 0x5c

    if-ne v5, v14, :cond_9

    :cond_6
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v11, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v4

    add-int/lit8 v3, v6, 0x1

    move v4, v3

    move v3, v5

    :goto_4
    add-int/lit8 v5, v6, 0x1

    if-lt v6, v13, :cond_8

    :goto_5
    array-length v4, v8

    if-ge v3, v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    const-string v5, ""

    aput-object v5, v8, v3

    move v3, v4

    goto :goto_5

    :cond_7
    iget-object v1, v2, La/d/f;->i:La/d/f;

    goto/16 :goto_0

    :cond_8
    move v6, v5

    move v15, v4

    move v4, v3

    move v3, v15

    goto :goto_3

    :cond_9
    move v15, v3

    move v3, v4

    move v4, v15

    goto :goto_4
.end method

.method public final a()V
    .locals 4

    :try_start_0
    sget v0, La/d/bg;->as:I

    int-to-long v0, v0

    invoke-super {p0, v0, v1}, La/e/a/c;->a(J)V
    :try_end_0
    .catch La/e/a/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, La/d/ay;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, La/d/bg;->g:La/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/d/ay;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method final a(La/d/u;La/d/u;)V
    .locals 7

    invoke-virtual {p0}, La/d/bg;->a()V

    iget v1, p1, La/d/u;->m:I

    iget v2, p0, La/d/bg;->t:I

    or-int/2addr v1, v2

    iput v1, p1, La/d/u;->m:I

    iget-boolean v1, p0, La/d/bg;->z:Z

    iput-boolean v1, p1, La/d/u;->t:Z

    iput-object p2, p1, La/d/u;->C:La/d/u;

    iget-object v1, p1, La/d/u;->B:La/d/v;

    if-nez v1, :cond_0

    iget-object v1, p0, La/d/bg;->q:La/d/v;

    iput-object v1, p1, La/d/u;->B:La/d/v;

    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, La/d/bg;->c(La/e/a/a;)V

    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, La/d/ao;

    if-eqz v1, :cond_9

    iget-byte v1, p1, La/d/u;->g:B

    iput-byte v1, p2, La/d/u;->g:B

    move-object v0, p1

    check-cast v0, La/d/ao;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, La/d/ap;

    move-object v2, v0

    iget v3, p0, La/d/bg;->v:I

    iput v3, v1, La/d/ao;->U:I

    invoke-virtual {v2}, La/d/ap;->e()V
    :try_end_0
    .catch La/d/ay; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v1, v2}, La/d/c;->a(La/d/ao;La/d/ap;)V

    invoke-virtual {v1}, La/d/ao;->nextElement()Ljava/lang/Object;

    invoke-virtual {v1}, La/d/ao;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, La/d/x;

    invoke-direct {v3}, La/d/x;-><init>()V

    sget v4, La/d/bg;->as:I

    int-to-long v4, v4

    invoke-super {p0, v1, v3, v4, v5}, La/e/a/c;->a(La/e/a/a;La/e/a/b;J)V

    iget v4, v3, La/d/x;->l:I

    if-eqz v4, :cond_2

    invoke-direct {p0, v1, v3}, La/d/bg;->b(La/d/u;La/d/u;)V

    :cond_2
    invoke-virtual {v1}, La/d/ao;->nextElement()Ljava/lang/Object;

    :goto_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p2, La/d/u;->u:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, La/d/ap;->b_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, p0, La/d/bg;->H:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-direct {p0, v1}, La/d/bg;->c(La/e/a/a;)V

    invoke-virtual {v1}, La/d/ao;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, La/d/ao;->nextElement()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_4
    sget v3, La/d/bg;->as:I

    int-to-long v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, v2, La/d/ap;->a_:J

    :cond_5
    invoke-virtual {v2}, La/d/ap;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    iget-wide v3, v2, La/d/ap;->a_:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_5

    new-instance v3, La/e/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timedout waiting for response to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, La/e/a/d;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v3

    :try_start_4
    new-instance v4, La/e/a/d;

    invoke-direct {v4, v3}, La/e/a/d;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    :try_start_5
    iget-object v4, p0, La/d/bg;->H:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit p0

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_7
    iget-object v1, v1, La/d/ao;->V:[B

    invoke-static {v1}, La/d/c;->a([B)V

    iget-object v1, v2, La/d/ap;->O:[B

    invoke-static {v1}, La/d/c;->a([B)V

    throw v3
    :try_end_7
    .catch La/d/ay; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_1
    move-exception v1

    throw v1

    :cond_6
    :try_start_8
    invoke-virtual {p0, v1}, La/d/bg;->a(La/e/a/a;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :cond_7
    :try_start_9
    iget v3, p2, La/d/u;->l:I

    if-eqz v3, :cond_8

    invoke-direct {p0, v1, v2}, La/d/bg;->b(La/d/u;La/d/u;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    :cond_8
    :try_start_a
    iget-object v3, p0, La/d/bg;->H:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    iget-object v1, v1, La/d/ao;->V:[B

    invoke-static {v1}, La/d/c;->a([B)V

    iget-object v1, v2, La/d/ap;->O:[B

    invoke-static {v1}, La/d/c;->a([B)V
    :try_end_b
    .catch La/d/ay; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    :goto_2
    invoke-direct {p0, p1, p2}, La/d/bg;->b(La/d/u;La/d/u;)V

    goto/16 :goto_0

    :cond_9
    :try_start_c
    iget-byte v1, p1, La/d/u;->g:B

    iput-byte v1, p2, La/d/u;->g:B

    sget v1, La/d/bg;->as:I

    int-to-long v1, v1

    invoke-super {p0, p1, p2, v1, v2}, La/e/a/c;->a(La/e/a/a;La/e/a/b;J)V
    :try_end_c
    .catch La/d/ay; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    new-instance v2, La/d/ay;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, La/d/ay;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected final a(La/e/a/a;)V
    .locals 2

    iget v0, p0, La/d/bg;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/d/bg;->j:I

    const/16 v1, 0x7d00

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, La/d/bg;->j:I

    :cond_0
    check-cast p1, La/d/u;

    iget v0, p0, La/d/bg;->j:I

    iput v0, p1, La/d/u;->q:I

    return-void
.end method

.method protected final a(La/e/a/b;)V
    .locals 10

    const/high16 v4, -0x8000

    const/4 v9, 0x4

    const/4 v2, 0x0

    move-object v1, p1

    check-cast v1, La/d/u;

    iget-boolean v3, p0, La/d/bg;->z:Z

    iput-boolean v3, v1, La/d/u;->t:Z

    iget v3, p0, La/d/bg;->x:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v1, La/d/u;->v:Z

    sget-object v3, La/d/bg;->a:[B

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, La/d/bg;->m:[B

    const/4 v4, 0x0

    sget-object v5, La/d/bg;->a:[B

    const/4 v6, 0x0

    const/16 v7, 0x24

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, La/d/bg;->a:[B

    const/4 v4, 0x2

    invoke-static {v2, v4}, La/e/b;->a([BI)S

    move-result v2

    const v4, 0xffff

    and-int/2addr v4, v2

    const/16 v2, 0x21

    if-lt v4, v2, :cond_1

    add-int/lit8 v2, v4, 0x4

    iget v5, p0, La/d/bg;->w:I

    if-le v2, v5, :cond_2

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Invalid payload size: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    :cond_2
    :try_start_1
    sget-object v2, La/d/bg;->a:[B

    const/16 v5, 0x9

    invoke-static {v2, v5}, La/e/b;->d([BI)I

    move-result v2

    and-int/lit8 v2, v2, -0x1

    iget-byte v5, v1, La/d/u;->g:B

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_8

    if-eqz v2, :cond_3

    const v5, -0x7ffffffb

    if-ne v2, v5, :cond_8

    :cond_3
    move-object v0, v1

    check-cast v0, La/d/al;

    move-object v2, v0

    iget-object v5, p0, La/d/bg;->l:Ljava/io/InputStream;

    sget-object v6, La/d/bg;->a:[B

    const/16 v7, 0x24

    const/16 v8, 0x1b

    invoke-static {v5, v6, v7, v8}, La/d/bg;->a(Ljava/io/InputStream;[BII)I

    sget-object v5, La/d/bg;->a:[B

    invoke-virtual {v1, v5}, La/d/u;->b([B)I

    iget v5, v2, La/d/al;->E:I

    add-int/lit8 v5, v5, -0x3b

    iget v6, v2, La/d/al;->s:I

    if-lez v6, :cond_4

    if-lez v5, :cond_4

    if-ge v5, v9, :cond_4

    iget-object v6, p0, La/d/bg;->l:Ljava/io/InputStream;

    sget-object v7, La/d/bg;->a:[B

    const/16 v8, 0x3f

    invoke-static {v6, v7, v8, v5}, La/d/bg;->a(Ljava/io/InputStream;[BII)I

    :cond_4
    iget v5, v2, La/d/al;->D:I

    if-lez v5, :cond_5

    iget-object v5, p0, La/d/bg;->l:Ljava/io/InputStream;

    iget-object v6, v2, La/d/al;->b:[B

    iget v7, v2, La/d/al;->c:I

    iget v2, v2, La/d/al;->D:I

    invoke-static {v5, v6, v7, v2}, La/d/bg;->a(Ljava/io/InputStream;[BII)I

    :cond_5
    :goto_0
    iget-object v2, p0, La/d/bg;->q:La/d/v;

    if-eqz v2, :cond_6

    iget v2, v1, La/d/u;->l:I

    if-nez v2, :cond_6

    iget-object v2, p0, La/d/bg;->q:La/d/v;

    sget-object v5, La/d/bg;->a:[B

    invoke-virtual {v2, v5, v1}, La/d/v;->a([BLa/d/u;)Z

    :cond_6
    sget-object v1, La/d/bg;->c:La/e/e;

    sget v1, La/e/e;->a:I

    if-lt v1, v9, :cond_7

    sget-object v1, La/d/bg;->c:La/e/e;

    invoke-virtual {v1, p1}, La/e/e;->println(Ljava/lang/Object;)V

    sget-object v1, La/d/bg;->c:La/e/e;

    sget v1, La/e/e;->a:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_7

    sget-object v1, La/d/bg;->c:La/e/e;

    sget-object v2, La/d/bg;->a:[B

    const/4 v5, 0x4

    invoke-static {v1, v2, v5, v4}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_7
    monitor-exit v3

    return-void

    :cond_8
    iget-object v2, p0, La/d/bg;->l:Ljava/io/InputStream;

    sget-object v5, La/d/bg;->a:[B

    const/16 v6, 0x24

    add-int/lit8 v7, v4, -0x20

    invoke-static {v2, v5, v6, v7}, La/d/bg;->a(Ljava/io/InputStream;[BII)I

    sget-object v2, La/d/bg;->a:[B

    invoke-virtual {v1, v2}, La/d/u;->b([B)I

    instance-of v2, v1, La/d/ap;

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, La/d/ap;

    move-object v2, v0

    invoke-virtual {v2}, La/d/ap;->nextElement()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/d/bg;->r:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/be;

    invoke-virtual {v0, p1}, La/d/be;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, La/d/bg;->q:La/d/v;

    iput-object v2, p0, La/d/bg;->h:Ljava/net/Socket;

    iput-object v2, p0, La/d/bg;->A:Ljava/lang/String;

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, La/d/bg;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    iget-object v0, p0, La/d/bg;->k:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, La/d/bg;->l:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, La/d/bg;->h:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, p0, La/d/bg;->q:La/d/v;

    iput-object v2, p0, La/d/bg;->h:Ljava/net/Socket;

    iput-object v2, p0, La/d/bg;->A:Ljava/lang/String;

    return-void
.end method

.method final a(I)Z
    .locals 3

    :try_start_0
    sget v0, La/d/bg;->as:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, La/d/bg;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, La/d/bg;->x:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, La/d/ay;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/d/ay;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()V
    .locals 5

    const/16 v1, 0x8b

    const/16 v0, 0x1bd

    const/high16 v4, -0x8000

    new-instance v2, La/d/ae;

    iget-object v3, p0, La/d/bg;->s:La/d/bh;

    invoke-direct {v2, v3}, La/d/ae;-><init>(La/d/bh;)V

    :try_start_0
    iget v3, p0, La/d/bg;->i:I

    invoke-direct {p0, v3, v2}, La/d/bg;->a(ILa/d/u;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget v0, v2, La/d/ae;->a:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    new-instance v0, La/d/ay;

    const-string v1, "This client does not support the negotiated dialect."

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v3

    iget v3, p0, La/d/bg;->i:I

    if-eqz v3, :cond_0

    iget v3, p0, La/d/bg;->i:I

    if-ne v3, v0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput v0, p0, La/d/bg;->i:I

    iget v0, p0, La/d/bg;->i:I

    invoke-direct {p0, v0, v2}, La/d/bg;->a(ILa/d/u;)V

    goto :goto_0

    :catch_1
    move-exception v3

    iget v3, p0, La/d/bg;->i:I

    if-eqz v3, :cond_2

    iget v3, p0, La/d/bg;->i:I

    if-ne v3, v0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    iput v0, p0, La/d/bg;->i:I

    iget v0, p0, La/d/bg;->i:I

    invoke-direct {p0, v0, v2}, La/d/bg;->a(ILa/d/u;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, La/d/bg;->s:La/d/bh;

    iget v0, v0, La/d/bh;->d:I

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_5

    iget-object v0, p0, La/d/bg;->s:La/d/bh;

    iget v0, v0, La/d/bh;->o:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    sget v0, La/d/bg;->ai:I

    if-nez v0, :cond_5

    new-instance v0, La/d/ay;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected encryption key length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/d/bg;->s:La/d/bh;

    iget v2, v2, La/d/bh;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/d/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, La/d/bg;->g:La/b;

    invoke-virtual {v0}, La/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bg;->A:Ljava/lang/String;

    iget-object v0, p0, La/d/bg;->s:La/d/bh;

    iget-boolean v0, v0, La/d/bh;->j:Z

    if-nez v0, :cond_6

    iget-object v0, p0, La/d/bg;->s:La/d/bh;

    iget-boolean v0, v0, La/d/bh;->i:Z

    if-eqz v0, :cond_a

    sget-boolean v0, La/d/bg;->ae:Z

    if-eqz v0, :cond_a

    :cond_6
    iget v0, p0, La/d/bg;->t:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, La/d/bg;->t:I

    :goto_1
    iget v0, p0, La/d/bg;->u:I

    iget-object v1, p0, La/d/bg;->s:La/d/bh;

    iget v1, v1, La/d/bh;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, La/d/bg;->u:I

    iget v0, p0, La/d/bg;->u:I

    if-gtz v0, :cond_7

    const/4 v0, 0x1

    iput v0, p0, La/d/bg;->u:I

    :cond_7
    iget v0, p0, La/d/bg;->v:I

    iget-object v1, p0, La/d/bg;->s:La/d/bh;

    iget v1, v1, La/d/bh;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, La/d/bg;->v:I

    iget v0, p0, La/d/bg;->x:I

    iget-object v1, p0, La/d/bg;->s:La/d/bh;

    iget v1, v1, La/d/bh;->d:I

    and-int/2addr v0, v1

    iput v0, p0, La/d/bg;->x:I

    iget-object v0, p0, La/d/bg;->s:La/d/bh;

    iget v0, v0, La/d/bh;->d:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_8

    iget v0, p0, La/d/bg;->x:I

    or-int/2addr v0, v4

    iput v0, p0, La/d/bg;->x:I

    :cond_8
    iget v0, p0, La/d/bg;->x:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_9

    sget-boolean v0, La/d/bg;->ac:Z

    if-eqz v0, :cond_b

    iget v0, p0, La/d/bg;->x:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, La/d/bg;->x:I

    :cond_9
    :goto_2
    return-void

    :cond_a
    iget v0, p0, La/d/bg;->t:I

    const v1, 0xfffb

    and-int/2addr v0, v1

    iput v0, p0, La/d/bg;->t:I

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, La/d/bg;->z:Z

    iget v0, p0, La/d/bg;->t:I

    and-int/lit16 v0, v0, 0x7fff

    iput v0, p0, La/d/bg;->t:I

    goto :goto_2
.end method

.method protected final b(La/e/a/a;)V
    .locals 6

    const/4 v5, 0x4

    sget-object v1, La/d/bg;->a:[B

    monitor-enter v1

    :try_start_0
    check-cast p1, La/d/u;

    sget-object v0, La/d/bg;->a:[B

    invoke-virtual {p1, v0}, La/d/u;->a([B)I

    move-result v2

    const v0, 0xffff

    and-int/2addr v0, v2

    sget-object v3, La/d/bg;->a:[B

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, La/e/b;->a(I[BI)I

    sget-object v0, La/d/bg;->c:La/e/e;

    sget v0, La/e/e;->a:I

    if-lt v0, v5, :cond_2

    move-object v0, p1

    :cond_0
    sget-object v3, La/d/bg;->c:La/e/e;

    invoke-virtual {v3, v0}, La/e/e;->println(Ljava/lang/Object;)V

    instance-of v3, v0, La/d/b;

    if-eqz v3, :cond_1

    check-cast v0, La/d/b;

    iget-object v0, v0, La/d/b;->a:La/d/u;

    if-nez v0, :cond_0

    :cond_1
    sget-object v0, La/d/bg;->c:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v3, 0x6

    if-lt v0, v3, :cond_2

    sget-object v0, La/d/bg;->c:La/e/e;

    sget-object v3, La/d/bg;->a:[B

    const/4 v4, 0x4

    invoke-static {v0, v3, v4, v2}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_2
    iget-object v0, p0, La/d/bg;->k:Ljava/io/OutputStream;

    sget-object v3, La/d/bg;->a:[B

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final b(La/d/t;)Z
    .locals 1

    iget v0, p0, La/d/bg;->t:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/bg;->q:La/d/v;

    if-nez v0, :cond_0

    sget-object v0, La/d/t;->e:La/d/t;

    if-eq p1, v0, :cond_0

    sget-object v0, La/d/t;->e:La/d/t;

    invoke-virtual {v0, p1}, La/d/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c()La/e/a/a;
    .locals 8

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/16 v5, 0x20

    const/4 v2, 0x0

    const/4 v6, 0x4

    :cond_0
    iget-object v1, p0, La/d/bg;->l:Ljava/io/InputStream;

    iget-object v3, p0, La/d/bg;->m:[B

    invoke-static {v1, v3, v2, v6}, La/d/bg;->a(Ljava/io/InputStream;[BII)I

    move-result v1

    if-ge v1, v6, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, La/d/bg;->m:[B

    aget-byte v1, v1, v2

    const/16 v3, -0x7b

    if-eq v1, v3, :cond_0

    iget-object v1, p0, La/d/bg;->l:Ljava/io/InputStream;

    iget-object v3, p0, La/d/bg;->m:[B

    invoke-static {v1, v3, v6, v5}, La/d/bg;->a(Ljava/io/InputStream;[BII)I

    move-result v1

    if-lt v1, v5, :cond_1

    sget-object v1, La/d/bg;->c:La/e/e;

    sget v1, La/e/e;->a:I

    if-lt v1, v6, :cond_3

    sget-object v1, La/d/bg;->c:La/e/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New data read: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, La/e/e;->println(Ljava/lang/String;)V

    sget-object v1, La/d/bg;->c:La/e/e;

    iget-object v3, p0, La/d/bg;->m:[B

    invoke-static {v1, v3, v6, v5}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_3
    :goto_1
    iget-object v1, p0, La/d/bg;->m:[B

    aget-byte v1, v1, v2

    if-nez v1, :cond_4

    iget-object v1, p0, La/d/bg;->m:[B

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p0, La/d/bg;->m:[B

    aget-byte v1, v1, v6

    if-ne v1, v7, :cond_4

    iget-object v1, p0, La/d/bg;->m:[B

    const/4 v3, 0x5

    aget-byte v1, v1, v3

    const/16 v3, 0x53

    if-ne v1, v3, :cond_4

    iget-object v1, p0, La/d/bg;->m:[B

    const/4 v3, 0x6

    aget-byte v1, v1, v3

    const/16 v3, 0x4d

    if-ne v1, v3, :cond_4

    iget-object v1, p0, La/d/bg;->m:[B

    const/4 v3, 0x7

    aget-byte v1, v1, v3

    const/16 v3, 0x42

    if-eq v1, v3, :cond_6

    :cond_4
    move v1, v2

    :goto_2
    const/16 v3, 0x23

    if-ge v1, v3, :cond_5

    iget-object v3, p0, La/d/bg;->m:[B

    iget-object v4, p0, La/d/bg;->m:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, La/d/bg;->l:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v7, :cond_1

    iget-object v3, p0, La/d/bg;->m:[B

    const/16 v4, 0x23

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    goto :goto_1

    :cond_6
    iget-object v0, p0, La/d/bg;->n:La/d/x;

    iget-object v1, p0, La/d/bg;->m:[B

    const/16 v2, 0x22

    invoke-static {v1, v2}, La/e/b;->c([BI)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, La/d/x;->q:I

    iget-object v0, p0, La/d/bg;->n:La/d/x;

    goto/16 :goto_0
.end method

.method protected final d()V
    .locals 4

    iget-object v0, p0, La/d/bg;->m:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, La/e/b;->a([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, La/d/bg;->w:I

    if-le v1, v2, :cond_1

    :cond_0
    iget-object v0, p0, La/d/bg;->l:Ljava/io/InputStream;

    iget-object v1, p0, La/d/bg;->l:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, La/d/bg;->l:Ljava/io/InputStream;

    add-int/lit8 v0, v0, -0x20

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, La/e/a/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/bg;->g:La/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/d/bg;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
