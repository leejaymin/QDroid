.class final La/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:Ljava/net/InetAddress;

.field private static final j:Ljava/lang/String;

.field private static k:La/e/e;


# instance fields
.field a:Ljava/net/InetAddress;

.field b:Ljava/net/InetAddress;

.field private final l:Ljava/lang/Object;

.field private m:I

.field private n:I

.field private o:[B

.field private p:[B

.field private q:Ljava/net/DatagramSocket;

.field private r:Ljava/net/DatagramPacket;

.field private s:Ljava/net/DatagramPacket;

.field private t:Ljava/util/HashMap;

.field private u:Ljava/lang/Thread;

.field private v:I

.field private w:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x240

    const-string v0, "jcifs.netbios.snd_buf_size"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/b/e;->c:I

    const-string v0, "jcifs.netbios.rcv_buf_size"

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/b/e;->d:I

    const-string v0, "jcifs.netbios.soTimeout"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/b/e;->e:I

    const-string v0, "jcifs.netbios.retryCount"

    const/4 v1, 0x2

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/b/e;->f:I

    const-string v0, "jcifs.netbios.retryTimeout"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/b/e;->g:I

    const-string v0, "jcifs.netbios.lport"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/b/e;->h:I

    const-string v0, "jcifs.netbios.laddr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, La/b/e;->i:Ljava/net/InetAddress;

    const-string v0, "jcifs.resolveOrder"

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/b/e;->j:Ljava/lang/String;

    invoke-static {}, La/e/e;->a()La/e/e;

    move-result-object v0

    sput-object v0, La/b/e;->k:La/e/e;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    sget v0, La/b/e;->h:I

    sget-object v1, La/b/e;->i:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, La/b/e;-><init>(ILjava/net/InetAddress;)V

    return-void
.end method

.method private constructor <init>(ILjava/net/InetAddress;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/b/e;->l:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/b/e;->t:Ljava/util/HashMap;

    iput v1, p0, La/b/e;->v:I

    iput p1, p0, La/b/e;->m:I

    iput-object p2, p0, La/b/e;->a:Ljava/net/InetAddress;

    :try_start_0
    const-string v0, "jcifs.netbios.baddr"

    const-string v2, "255.255.255.255"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v0, v2}, La/a;->a(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, La/b/e;->b:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget v0, La/b/e;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, La/b/e;->o:[B

    sget v0, La/b/e;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, La/b/e;->p:[B

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v2, p0, La/b/e;->o:[B

    sget v3, La/b/e;->c:I

    iget-object v4, p0, La/b/e;->b:Ljava/net/InetAddress;

    const/16 v5, 0x89

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object v0, p0, La/b/e;->s:Ljava/net/DatagramPacket;

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v2, p0, La/b/e;->p:[B

    sget v3, La/b/e;->d:I

    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, La/b/e;->r:Ljava/net/DatagramPacket;

    sget-object v0, La/b/e;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, La/b/e;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, La/b/g;->c()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v9, [I

    iput-object v0, p0, La/b/e;->w:[I

    iget-object v0, p0, La/b/e;->w:[I

    aput v8, v0, v1

    iget-object v0, p0, La/b/e;->w:[I

    aput v9, v0, v8

    :goto_1
    return-void

    :cond_1
    new-array v0, v10, [I

    iput-object v0, p0, La/b/e;->w:[I

    iget-object v0, p0, La/b/e;->w:[I

    aput v8, v0, v1

    iget-object v0, p0, La/b/e;->w:[I

    aput v10, v0, v8

    iget-object v0, p0, La/b/e;->w:[I

    aput v9, v0, v9

    goto :goto_1

    :cond_2
    new-array v3, v10, [I

    new-instance v4, Ljava/util/StringTokenizer;

    sget-object v0, La/b/e;->j:Ljava/lang/String;

    const-string v2, ","

    invoke-direct {v4, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, "LMHOSTS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v2, v0, 0x1

    aput v8, v3, v0

    move v0, v2

    goto :goto_2

    :cond_4
    const-string v5, "WINS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, La/b/g;->c()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_5

    sget-object v2, La/b/e;->k:La/e/e;

    sget v2, La/e/e;->a:I

    if-le v2, v8, :cond_3

    sget-object v2, La/b/e;->k:La/e/e;

    const-string v5, "NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set"

    invoke-virtual {v2, v5}, La/e/e;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v0, 0x1

    aput v10, v3, v0

    move v0, v2

    goto :goto_2

    :cond_6
    const-string v5, "BCAST"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v2, v0, 0x1

    aput v9, v3, v0

    move v0, v2

    goto :goto_2

    :cond_7
    const-string v5, "DNS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, La/b/e;->k:La/e/e;

    sget v5, La/e/e;->a:I

    if-le v5, v8, :cond_3

    sget-object v5, La/b/e;->k:La/e/e;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unknown resolver method: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, La/e/e;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    new-array v2, v0, [I

    iput-object v2, p0, La/b/e;->w:[I

    iget-object v2, p0, La/b/e;->w:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private a()V
    .locals 2

    iget-object v1, p0, La/b/e;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/b/e;->q:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/e;->q:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, La/b/e;->q:Ljava/net/DatagramSocket;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, La/b/e;->u:Ljava/lang/Thread;

    iget-object v0, p0, La/b/e;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(La/b/f;La/b/f;I)V
    .locals 8

    const/4 v1, 0x0

    sget-object v0, La/b/g;->a:[Ljava/net/InetAddress;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-enter p2

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_d

    :try_start_0
    iget-object v4, p0, La/b/e;->l:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v0, p0, La/b/e;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/b/e;->v:I

    const v2, 0xffff

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, La/b/e;->v:I

    :cond_1
    iget v0, p0, La/b/e;->v:I

    iput v0, p1, La/b/f;->c:I

    new-instance v2, Ljava/lang/Integer;

    iget v0, p1, La/b/f;->c:I

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    iget-object v0, p0, La/b/e;->s:Ljava/net/DatagramPacket;

    iget-object v1, p1, La/b/f;->y:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    iget-object v5, p0, La/b/e;->s:Ljava/net/DatagramPacket;

    iget-object v6, p0, La/b/e;->o:[B

    iget v0, p1, La/b/f;->c:I

    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, La/b/f;->a(I[BI)V

    const/4 v1, 0x2

    iget-boolean v0, p1, La/b/f;->k:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x80

    :goto_1
    iget v7, p1, La/b/f;->d:I

    shl-int/lit8 v7, v7, 0x3

    and-int/lit8 v7, v7, 0x78

    add-int/2addr v7, v0

    iget-boolean v0, p1, La/b/f;->l:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    :goto_2
    add-int/2addr v7, v0

    iget-boolean v0, p1, La/b/f;->m:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    :goto_3
    add-int/2addr v7, v0

    iget-boolean v0, p1, La/b/f;->n:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    add-int/2addr v0, v7

    int-to-byte v0, v0

    aput-byte v0, v6, v1

    const/4 v7, 0x3

    iget-boolean v0, p1, La/b/f;->o:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x80

    move v1, v0

    :goto_5
    iget-boolean v0, p1, La/b/f;->p:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x10

    :goto_6
    add-int/2addr v0, v1

    iget v1, p1, La/b/f;->e:I

    and-int/lit8 v1, v1, 0xf

    add-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v6, v7

    iget v0, p1, La/b/f;->f:I

    const/4 v1, 0x4

    invoke-static {v0, v6, v1}, La/b/f;->a(I[BI)V

    iget v0, p1, La/b/f;->g:I

    const/4 v1, 0x6

    invoke-static {v0, v6, v1}, La/b/f;->a(I[BI)V

    iget v0, p1, La/b/f;->h:I

    const/16 v1, 0x8

    invoke-static {v0, v6, v1}, La/b/f;->a(I[BI)V

    iget v0, p1, La/b/f;->i:I

    const/16 v1, 0xa

    invoke-static {v0, v6, v1}, La/b/f;->a(I[BI)V

    invoke-virtual {p1, v6}, La/b/f;->a([B)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {v5, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    const/4 v0, 0x0

    iput-boolean v0, p2, La/b/f;->j:Z

    iget-object v0, p0, La/b/e;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit16 v0, p3, 0x3e8

    const/4 v1, 0x0

    iput v1, p0, La/b/e;->n:I

    sget v1, La/b/e;->e:I

    if-eqz v1, :cond_2

    sget v1, La/b/e;->e:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, La/b/e;->n:I

    :cond_2
    iget-object v0, p0, La/b/e;->q:Ljava/net/DatagramSocket;

    if-nez v0, :cond_3

    new-instance v0, Ljava/net/DatagramSocket;

    iget v1, p0, La/b/e;->m:I

    iget-object v5, p0, La/b/e;->a:Ljava/net/InetAddress;

    invoke-direct {v0, v1, v5}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object v0, p0, La/b/e;->q:Ljava/net/DatagramSocket;

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JCIFS-NameServiceClient"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, La/b/e;->u:Ljava/lang/Thread;

    iget-object v0, p0, La/b/e;->u:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, La/b/e;->u:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    iget-object v0, p0, La/b/e;->q:Ljava/net/DatagramSocket;

    iget-object v1, p0, La/b/e;->s:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    sget-object v0, La/b/e;->k:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    sget-object v0, La/b/e;->k:La/e/e;

    invoke-virtual {v0, p1}, La/e/e;->println(Ljava/lang/Object;)V

    sget-object v0, La/b/e;->k:La/e/e;

    iget-object v1, p0, La/b/e;->o:[B

    const/4 v5, 0x0

    iget-object v6, p0, La/b/e;->s:Ljava/net/DatagramPacket;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-static {v0, v1, v5, v6}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_7
    if-lez p3, :cond_c

    int-to-long v4, p3

    invoke-virtual {p2, v4, v5}, Ljava/lang/Object;->wait(J)V

    iget-boolean v4, p2, La/b/f;->j:Z

    if-eqz v4, :cond_b

    iget v4, p1, La/b/f;->s:I

    iget v5, p2, La/b/f;->u:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v4, v5, :cond_b

    :try_start_4
    iget-object v0, p0, La/b/e;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_8
    return-void

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_5

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_9
    :try_start_5
    monitor-exit v4

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_a
    :try_start_6
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :goto_b
    :try_start_7
    iget-object v1, p0, La/b/e;->t:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p2

    throw v0

    :cond_b
    const/4 v4, 0x0

    :try_start_8
    iput-boolean v4, p2, La/b/f;->j:Z

    int-to-long v4, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-wide v6

    sub-long/2addr v6, v0

    sub-long/2addr v4, v6

    long-to-int p3, v4

    goto :goto_7

    :cond_c
    :try_start_9
    iget-object v0, p0, La/b/e;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, La/b/e;->l:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v0, p1, La/b/f;->y:Ljava/net/InetAddress;

    invoke-static {v0}, La/b/g;->a(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_e

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_d
    :try_start_b
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_8

    :cond_e
    :try_start_c
    iget-object v0, p1, La/b/f;->y:Ljava/net/InetAddress;

    invoke-static {}, La/b/g;->c()Ljava/net/InetAddress;

    move-result-object v4

    if-ne v0, v4, :cond_f

    invoke-static {}, La/b/g;->d()Ljava/net/InetAddress;

    :cond_f
    invoke-static {}, La/b/g;->c()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p1, La/b/f;->y:Ljava/net/InetAddress;

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move v0, v3

    move-object v1, v2

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit v1

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_9
.end method


# virtual methods
.method final a(La/b/b;Ljava/net/InetAddress;)La/b/g;
    .locals 8

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v4, La/b/c;

    invoke-direct {v4, p1}, La/b/c;-><init>(La/b/b;)V

    new-instance v5, La/b/d;

    invoke-direct {v5}, La/b/d;-><init>()V

    if-eqz p2, :cond_5

    iput-object p2, v4, La/b/c;->y:Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    aget-byte v2, v2, v7

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, v4, La/b/c;->p:Z

    sget v0, La/b/e;->f:I

    :cond_1
    :try_start_0
    sget v2, La/b/e;->g:I

    invoke-direct {p0, v4, v5, v2}, La/b/e;->a(La/b/f;La/b/f;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v2, v5, La/b/d;->j:Z

    if-eqz v2, :cond_3

    iget v2, v5, La/b/d;->e:I

    if-nez v2, :cond_3

    iget-object v0, v5, La/b/d;->b:[La/b/g;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, v5, La/b/d;->b:[La/b/g;

    aget-object v1, v1, v0

    iget-object v1, v1, La/b/g;->f:La/b/b;

    invoke-virtual {p2}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    iput v2, v1, La/b/b;->e:I

    iget-object v1, v5, La/b/d;->b:[La/b/g;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, La/b/e;->k:La/e/e;

    sget v2, La/e/e;->a:I

    if-le v2, v1, :cond_2

    sget-object v1, La/b/e;->k:La/e/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, La/b/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_4

    iget-boolean v2, v4, La/b/c;->p:Z

    if-nez v2, :cond_1

    :cond_4
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, La/b/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object v2, p0, La/b/e;->w:[I

    array-length v2, v2

    if-ge v0, v2, :cond_a

    :try_start_1
    iget-object v2, p0, La/b/e;->w:[I

    aget v2, v2, v0

    packed-switch v2, :pswitch_data_0

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, La/b/a;->a(La/b/b;)La/b/g;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, v2, La/b/g;->f:La/b/b;

    const/4 v6, 0x0

    iput v6, v3, La/b/b;->e:I

    move-object v0, v2

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, La/b/e;->w:[I

    aget v2, v2, v0

    if-ne v2, v7, :cond_7

    iget-object v2, p1, La/b/b;->b:Ljava/lang/String;

    const-string v3, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq v2, v3, :cond_7

    iget v2, p1, La/b/b;->d:I

    const/16 v3, 0x1d

    if-eq v2, v3, :cond_7

    invoke-static {}, La/b/g;->c()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, v4, La/b/c;->y:Ljava/net/InetAddress;

    const/4 v2, 0x0

    iput-boolean v2, v4, La/b/c;->p:Z

    :goto_3
    sget v2, La/b/e;->f:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_6

    :try_start_2
    sget v2, La/b/e;->g:I

    invoke-direct {p0, v4, v5, v2}, La/b/e;->a(La/b/f;La/b/f;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-boolean v2, v5, La/b/d;->j:Z

    if-eqz v2, :cond_9

    iget v2, v5, La/b/d;->e:I

    if-nez v2, :cond_9

    iget-object v2, v5, La/b/d;->b:[La/b/g;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v2, v2, La/b/g;->f:La/b/b;

    iget-object v3, v4, La/b/c;->y:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->hashCode()I

    move-result v3

    iput v3, v2, La/b/b;->e:I

    iget-object v2, v5, La/b/d;->b:[La/b/g;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, La/b/e;->b:Ljava/net/InetAddress;

    iput-object v2, v4, La/b/c;->y:Ljava/net/InetAddress;

    const/4 v2, 0x1

    iput-boolean v2, v4, La/b/c;->p:Z

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    sget-object v3, La/b/e;->k:La/e/e;

    sget v3, La/e/e;->a:I

    if-le v3, v1, :cond_8

    sget-object v3, La/b/e;->k:La/e/e;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_8
    new-instance v2, Ljava/net/UnknownHostException;

    iget-object v3, p1, La/b/b;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    iget-object v2, p0, La/b/e;->w:[I

    aget v2, v2, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    if-eq v2, v7, :cond_6

    move v2, v3

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, La/b/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final a(La/b/g;)[La/b/g;
    .locals 6

    const/4 v0, 0x0

    new-instance v3, La/b/k;

    invoke-direct {v3, p1}, La/b/k;-><init>(La/b/g;)V

    new-instance v4, La/b/j;

    new-instance v1, La/b/b;

    const-string v2, "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v0, v5}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v4, v1}, La/b/j;-><init>(La/b/b;)V

    invoke-virtual {p1}, La/b/g;->h()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v4, La/b/j;->y:Ljava/net/InetAddress;

    sget v1, La/b/e;->f:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    :try_start_0
    sget v1, La/b/e;->g:I

    invoke-direct {p0, v4, v3, v1}, La/b/e;->a(La/b/f;La/b/f;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v1, v3, La/b/k;->j:Z

    if-eqz v1, :cond_3

    iget v1, v3, La/b/k;->e:I

    if-nez v1, :cond_3

    iget-object v1, v4, La/b/j;->y:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    :goto_1
    iget-object v2, v3, La/b/k;->z:[La/b/g;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, v3, La/b/k;->z:[La/b/g;

    aget-object v2, v2, v0

    iget-object v2, v2, La/b/g;->f:La/b/b;

    iput v1, v2, La/b/b;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, La/b/e;->k:La/e/e;

    sget v1, La/e/e;->a:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget-object v1, La/b/e;->k:La/e/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, La/b/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v3, La/b/k;->z:[La/b/g;

    return-object v0

    :cond_2
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p1, La/b/g;->f:La/b/b;

    iget-object v1, v1, La/b/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final run()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, La/b/e;->u:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, La/b/e;->r:Ljava/net/DatagramPacket;

    sget v1, La/b/e;->d:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    iget-object v0, p0, La/b/e;->q:Ljava/net/DatagramSocket;

    iget v1, p0, La/b/e;->n:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    iget-object v0, p0, La/b/e;->q:Ljava/net/DatagramSocket;

    iget-object v1, p0, La/b/e;->r:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    sget-object v0, La/b/e;->k:La/e/e;

    sget v0, La/e/e;->a:I

    if-le v0, v8, :cond_1

    sget-object v0, La/b/e;->k:La/e/e;

    const-string v1, "NetBIOS: new data read from socket"

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, La/b/e;->p:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/b/f;->b([BI)I

    move-result v0

    iget-object v1, p0, La/b/e;->t:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/f;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, La/b/f;->j:Z

    if-nez v1, :cond_0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, La/b/e;->p:[B

    const/4 v1, 0x0

    invoke-static {v4, v1}, La/b/f;->b([BI)I

    move-result v1

    iput v1, v0, La/b/f;->c:I

    const/4 v1, 0x2

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, v0, La/b/f;->k:Z

    const/4 v1, 0x2

    aget-byte v1, v4, v1

    and-int/lit8 v1, v1, 0x78

    shr-int/lit8 v1, v1, 0x3

    iput v1, v0, La/b/f;->d:I

    const/4 v1, 0x2

    aget-byte v1, v4, v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, v0, La/b/f;->l:Z

    const/4 v1, 0x2

    aget-byte v1, v4, v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    move v1, v2

    :goto_3
    iput-boolean v1, v0, La/b/f;->m:Z

    const/4 v1, 0x2

    aget-byte v1, v4, v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_6

    move v1, v2

    :goto_4
    iput-boolean v1, v0, La/b/f;->n:Z

    const/4 v1, 0x3

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_7

    move v1, v2

    :goto_5
    iput-boolean v1, v0, La/b/f;->o:Z

    const/4 v1, 0x3

    aget-byte v1, v4, v1

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_8

    move v1, v2

    :goto_6
    iput-boolean v1, v0, La/b/f;->p:Z

    const/4 v1, 0x3

    aget-byte v1, v4, v1

    and-int/lit8 v1, v1, 0xf

    iput v1, v0, La/b/f;->e:I

    const/4 v1, 0x4

    invoke-static {v4, v1}, La/b/f;->b([BI)I

    move-result v1

    iput v1, v0, La/b/f;->f:I

    const/4 v1, 0x6

    invoke-static {v4, v1}, La/b/f;->b([BI)I

    move-result v1

    iput v1, v0, La/b/f;->g:I

    const/16 v1, 0x8

    invoke-static {v4, v1}, La/b/f;->b([BI)I

    move-result v1

    iput v1, v0, La/b/f;->h:I

    const/16 v1, 0xa

    invoke-static {v4, v1}, La/b/f;->b([BI)I

    move-result v1

    iput v1, v0, La/b/f;->i:I

    invoke-virtual {v0, v4}, La/b/f;->b([B)I

    const/4 v1, 0x1

    iput-boolean v1, v0, La/b/f;->j:Z

    sget-object v1, La/b/e;->k:La/e/e;

    sget v1, La/e/e;->a:I

    if-le v1, v8, :cond_2

    sget-object v1, La/b/e;->k:La/e/e;

    invoke-virtual {v1, v0}, La/e/e;->println(Ljava/lang/Object;)V

    sget-object v1, La/b/e;->k:La/e/e;

    iget-object v4, p0, La/b/e;->p:[B

    const/4 v5, 0x0

    iget-object v6, p0, La/b/e;->r:Ljava/net/DatagramPacket;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-static {v1, v4, v5, v6}, La/e/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, La/b/e;->a()V

    :goto_7
    return-void

    :cond_3
    move v1, v3

    goto/16 :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    move v1, v3

    goto :goto_5

    :cond_8
    move v1, v3

    goto :goto_6

    :cond_9
    invoke-direct {p0}, La/b/e;->a()V

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v1, La/b/e;->k:La/e/e;

    sget v1, La/e/e;->a:I

    if-le v1, v7, :cond_a

    sget-object v1, La/b/e;->k:La/e/e;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_a
    invoke-direct {p0}, La/b/e;->a()V

    goto :goto_7

    :catchall_1
    move-exception v0

    invoke-direct {p0}, La/b/e;->a()V

    throw v0
.end method
