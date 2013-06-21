.class public Lb/a/a/a/a/c;
.super Lb/a/a/a/a/b;

# interfaces
.implements Lb/a/a/a/a/a;


# static fields
.field private static final P:Ljava/util/regex/Pattern;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Z

.field private F:J

.field private G:Lb/a/a/a/a/a/d;

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Lb/a/a/a/a/i;

.field private M:Ljava/lang/String;

.field private N:Lb/a/a/a/a/e;

.field private O:I

.field private Q:Z

.field private R:Ljava/util/HashMap;

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private final v:Ljava/util/Random;

.field private w:I

.field private x:I

.field private y:Ljava/net/InetAddress;

.field private z:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb/a/a/a/a/c;->P:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lb/a/a/a/a/b;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lb/a/a/a/a/c;->O:I

    iput-boolean v1, p0, Lb/a/a/a/a/c;->Q:Z

    invoke-direct {p0}, Lb/a/a/a/a/c;->t()V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/a/a/a/c;->s:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a/a/c;->E:Z

    new-instance v0, Lb/a/a/a/a/a/c;

    invoke-direct {v0}, Lb/a/a/a/a/a/c;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/c;->G:Lb/a/a/a/a/a/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/a/c;->N:Lb/a/a/a/a/e;

    iput-boolean v1, p0, Lb/a/a/a/a/c;->I:Z

    iput-boolean v1, p0, Lb/a/a/a/a/c;->J:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/c;->v:Ljava/util/Random;

    return-void
.end method

.method private a(Lb/a/a/a/a/i;)Lb/a/a/a/a/p;
    .locals 4

    new-instance v1, Lb/a/a/a/a/p;

    invoke-direct {v1, p1}, Lb/a/a/a/a/p;-><init>(Lb/a/a/a/a/i;)V

    iget-boolean v0, p0, Lb/a/a/a/a/c;->I:Z

    if-eqz v0, :cond_0

    const-string v0, "-a"

    :goto_0
    const/16 v2, 0x1a

    invoke-static {v2}, Lb/a/a/a/a/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lb/a/a/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/a/a/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lb/a/a/a/a/p;->a(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lb/a/a/a/b/d;->a(Ljava/net/Socket;)V

    invoke-virtual {p0}, Lb/a/a/a/a/c;->l()I

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lb/a/a/a/b/d;->a(Ljava/net/Socket;)V

    throw v0
.end method

.method private b(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb/a/a/a/a/c;->F:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lb/a/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/a/q;->c(I)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 8

    const/4 v7, 0x2

    const/16 v6, 0x2c

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lb/a/a/a/a/c;->r:I

    if-eqz v0, :cond_1

    iget v0, p0, Lb/a/a/a/a/c;->r:I

    if-eq v0, v7, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lb/a/a/a/a/c;->h()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v4, v0, Ljava/net/Inet6Address;

    iget v0, p0, Lb/a/a/a/a/c;->r:I

    if-nez v0, :cond_d

    iget-object v5, p0, Lb/a/a/a/a/c;->g:Ljavax/net/ServerSocketFactory;

    iget v0, p0, Lb/a/a/a/a/c;->w:I

    if-lez v0, :cond_5

    iget v0, p0, Lb/a/a/a/a/c;->x:I

    iget v6, p0, Lb/a/a/a/a/c;->w:I

    if-lt v0, v6, :cond_5

    iget v0, p0, Lb/a/a/a/a/c;->x:I

    iget v1, p0, Lb/a/a/a/a/c;->w:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lb/a/a/a/a/c;->x:I

    :goto_1
    invoke-direct {p0}, Lb/a/a/a/a/c;->u()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v5, v0, v3, v1}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v1

    if-eqz v4, :cond_7

    :try_start_0
    invoke-direct {p0}, Lb/a/a/a/a/c;->v()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_6

    const-string v3, "1"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    const-string v3, "|"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lb/a/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/a/q;->b(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    move-object v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lb/a/a/a/a/c;->v:Ljava/util/Random;

    iget v1, p0, Lb/a/a/a/a/c;->x:I

    iget v6, p0, Lb/a/a/a/a/c;->w:I

    sub-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lb/a/a/a/a/c;->w:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    :try_start_1
    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3

    const-string v3, "2"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    throw v0

    :cond_7
    :try_start_2
    invoke-direct {p0}, Lb/a/a/a/a/c;->v()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2e

    const/16 v6, 0x2c

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v0, v3, 0x8

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 v0, v3, 0xff

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lb/a/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/a/q;->b(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_8
    :try_start_3
    iget-wide v3, p0, Lb/a/a/a/a/c;->F:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_9

    iget-wide v3, p0, Lb/a/a/a/a/c;->F:J

    invoke-direct {p0, v3, v4}, Lb/a/a/a/a/c;->b(J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_9
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lb/a/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/a/q;->a(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_a
    :try_start_5
    iget v0, p0, Lb/a/a/a/a/c;->s:I

    if-ltz v0, :cond_b

    iget v0, p0, Lb/a/a/a/a/c;->s:I

    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    :cond_b
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    :cond_c
    iget-boolean v1, p0, Lb/a/a/a/a/c;->E:Z

    if-eqz v1, :cond_18

    invoke-virtual {p0, v0}, Lb/a/a/a/a/c;->a(Ljava/net/Socket;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Host attempting data connection "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not same as server "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/a/a/c;->h()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-boolean v0, p0, Lb/a/a/a/a/c;->J:Z

    if-nez v0, :cond_e

    if-eqz v4, :cond_10

    :cond_e
    move v0, v3

    :goto_3
    if-eqz v0, :cond_13

    const/16 v0, 0x24

    invoke-virtual {p0, v0, v2}, Lb/a/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v0

    const/16 v5, 0xe5

    if-ne v0, v5, :cond_13

    iget-object v0, p0, Lb/a/a/a/a/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v1, v3, :cond_f

    if-ne v3, v4, :cond_f

    if-eq v4, v5, :cond_11

    :cond_f
    new-instance v1, Lb/a/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse extended passive host information.\nServer Reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    move v0, v1

    goto :goto_3

    :cond_11
    const/4 v1, 0x3

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v0

    invoke-virtual {p0}, Lb/a/a/a/a/c;->h()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/a/c;->u:Ljava/lang/String;

    iput v0, p0, Lb/a/a/a/a/c;->t:I

    :cond_12
    :goto_4
    iget-object v0, p0, Lb/a/a/a/a/c;->f:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lb/a/a/a/a/c;->u:Ljava/lang/String;

    iget v4, p0, Lb/a/a/a/a/c;->t:I

    invoke-direct {v1, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v3, p0, Lb/a/a/a/a/c;->h:I

    invoke-virtual {v0, v1, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-wide v3, p0, Lb/a/a/a/a/c;->F:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_17

    iget-wide v3, p0, Lb/a/a/a/a/c;->F:J

    invoke-direct {p0, v3, v4}, Lb/a/a/a/a/c;->b(J)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    move-object v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Lb/a/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse extended passive host information.\nServer Reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    if-eqz v4, :cond_14

    move-object v0, v2

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2}, Lb/a/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v0

    const/16 v4, 0xe3

    if-eq v0, v4, :cond_15

    move-object v0, v2

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lb/a/a/a/a/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lb/a/a/a/a/c;->P:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_16

    new-instance v1, Lb/a/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse passive host information.\nServer Reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lb/a/a/a/a/c;->u:Ljava/lang/String;

    const/4 v3, 0x2

    :try_start_7
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iput v1, p0, Lb/a/a/a/a/c;->t:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    iget-object v1, p0, Lb/a/a/a/a/c;->u:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lb/a/a/a/a/c;->h()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lb/a/a/a/a/c;->h()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Replacing site local address "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lb/a/a/a/a/c;->u:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lb/a/a/a/a/c;->a(ILjava/lang/String;)V

    iput-object v1, p0, Lb/a/a/a/a/c;->u:Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v1

    new-instance v1, Lb/a/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse passive host information.\nServer Reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v1

    new-instance v1, Lb/a/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse passive port information.\nServer Reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    invoke-virtual {p0, p1, p2}, Lb/a/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lb/a/a/a/a/q;->a(I)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_18
    iget v1, p0, Lb/a/a/a/a/c;->s:I

    if-ltz v1, :cond_0

    iget v1, p0, Lb/a/a/a/a/c;->s:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lb/a/a/a/a/c;->R:Ljava/util/HashMap;

    if-nez v0, :cond_4

    const/16 v0, 0x22

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/a/q;->b(I)Z

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lb/a/a/a/a/c;->R:Ljava/util/HashMap;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_5

    move v0, v2

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lb/a/a/a/a/c;->m()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v2

    :goto_2
    if-ge v4, v6, :cond_4

    aget-object v7, v5, v4

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    const/16 v1, 0x20

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_3
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lb/a/a/a/a/c;->R:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v8, p0, Lb/a/a/a/a/c;->R:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lb/a/a/a/a/c;->R:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method private t()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput v1, p0, Lb/a/a/a/a/c;->r:I

    iput-object v2, p0, Lb/a/a/a/a/c;->u:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lb/a/a/a/a/c;->t:I

    iput-object v2, p0, Lb/a/a/a/a/c;->y:Ljava/net/InetAddress;

    iput-object v2, p0, Lb/a/a/a/a/c;->z:Ljava/net/InetAddress;

    iput v1, p0, Lb/a/a/a/a/c;->w:I

    iput v1, p0, Lb/a/a/a/a/c;->x:I

    iput v1, p0, Lb/a/a/a/a/c;->A:I

    const/4 v0, 0x7

    iput v0, p0, Lb/a/a/a/a/c;->C:I

    const/4 v0, 0x4

    iput v0, p0, Lb/a/a/a/a/c;->B:I

    const/16 v0, 0xa

    iput v0, p0, Lb/a/a/a/a/c;->D:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb/a/a/a/a/c;->F:J

    iput-object v2, p0, Lb/a/a/a/a/c;->K:Ljava/lang/String;

    iput-object v2, p0, Lb/a/a/a/a/c;->L:Lb/a/a/a/a/i;

    const-string v0, ""

    iput-object v0, p0, Lb/a/a/a/a/c;->M:Ljava/lang/String;

    const/16 v0, 0x400

    iput v0, p0, Lb/a/a/a/a/c;->H:I

    iput-object v2, p0, Lb/a/a/a/a/c;->R:Ljava/util/HashMap;

    return-void
.end method

.method private u()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/c;->y:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/a/c;->y:Ljava/net/InetAddress;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lb/a/a/a/a/c;->g()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private v()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/c;->z:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/a/c;->z:Ljava/net/InetAddress;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lb/a/a/a/a/c;->u()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    invoke-super {p0}, Lb/a/a/a/a/b;->a()V

    invoke-direct {p0}, Lb/a/a/a/a/c;->t()V

    iget-boolean v0, p0, Lb/a/a/a/a/c;->Q:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb/a/a/a/a/c;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v1, p0, Lb/a/a/a/a/c;->i:I

    const-string v2, "UTF8"

    invoke-direct {p0, v2}, Lb/a/a/a/a/c;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UTF-8"

    invoke-direct {p0, v2}, Lb/a/a/a/a/c;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Lb/a/a/a/a/c;->a(Ljava/lang/String;)V

    new-instance v2, Lb/a/a/a/b/a;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lb/a/a/a/a/c;->d:Ljava/io/InputStream;

    invoke-virtual {p0}, Lb/a/a/a/a/c;->j()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lb/a/a/a/b/a;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lb/a/a/a/a/c;->p:Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lb/a/a/a/a/c;->e:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lb/a/a/a/a/c;->j()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lb/a/a/a/a/c;->q:Ljava/io/BufferedWriter;

    :cond_1
    iget-object v2, p0, Lb/a/a/a/a/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lb/a/a/a/a/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput v1, p0, Lb/a/a/a/a/c;->i:I

    :cond_2
    return-void
.end method

.method public final a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lb/a/a/a/a/c;->F:J

    :cond_0
    return-void
.end method

.method public final a(Lb/a/a/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/a/c;->N:Lb/a/a/a/a/e;

    return-void
.end method

.method public final b()V
    .locals 0

    invoke-super {p0}, Lb/a/a/a/a/b;->b()V

    invoke-direct {p0}, Lb/a/a/a/a/c;->t()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lb/a/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/a/q;->b(I)Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    const/16 v0, 0xd

    invoke-static {v0}, Lb/a/a/a/a/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lb/a/a/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget v1, p0, Lb/a/a/a/a/c;->A:I

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/BufferedInputStream;

    iget v3, p0, Lb/a/a/a/a/c;->H:I

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Lb/a/a/a/b/b;

    invoke-direct {v0, v1}, Lb/a/a/a/b/b;-><init>(Ljava/io/InputStream;)V

    :cond_1
    new-instance v1, Lb/a/a/a/b/c;

    invoke-direct {v1, v2, v0}, Lb/a/a/a/b/c;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lb/a/a/a/a/b;->b(ILjava/lang/String;)I

    iget v2, p0, Lb/a/a/a/a/c;->i:I

    invoke-static {v2}, Lb/a/a/a/a/q;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lb/a/a/a/a/c;->i:I

    invoke-static {v2}, Lb/a/a/a/a/q;->c(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p2}, Lb/a/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/a/q;->b(I)Z

    move-result v0

    goto :goto_0
.end method

.method public final o()Z
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/a/q;->b(I)Z

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lb/a/a/a/a/c;->r:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/a/c;->u:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lb/a/a/a/a/c;->t:I

    return-void
.end method

.method public final q()Z
    .locals 4

    const/4 v3, 0x2

    const/16 v0, 0xa

    const-string v1, "AEILNTCFRPSBC"

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/a/q;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lb/a/a/a/a/c;->A:I

    const/4 v0, 0x4

    iput v0, p0, Lb/a/a/a/a/c;->B:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()[Lb/a/a/a/a/h;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lb/a/a/a/a/c;->L:Lb/a/a/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/a/c;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb/a/a/a/a/c;->N:Lb/a/a/a/a/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/a/c;->G:Lb/a/a/a/a/a/d;

    iget-object v1, p0, Lb/a/a/a/a/c;->N:Lb/a/a/a/a/e;

    invoke-interface {v0, v1}, Lb/a/a/a/a/a/d;->a(Lb/a/a/a/a/e;)Lb/a/a/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/c;->L:Lb/a/a/a/a/i;

    iget-object v0, p0, Lb/a/a/a/a/c;->N:Lb/a/a/a/a/e;

    invoke-virtual {v0}, Lb/a/a/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/c;->M:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/a/a/a/a/c;->L:Lb/a/a/a/a/i;

    invoke-direct {p0, v0}, Lb/a/a/a/a/c;->a(Lb/a/a/a/a/i;)Lb/a/a/a/a/p;

    move-result-object v0

    sget-object v1, Lb/a/a/a/a/l;->b:Lb/a/a/a/a/k;

    invoke-virtual {v0, v1}, Lb/a/a/a/a/p;->a(Lb/a/a/a/a/k;)[Lb/a/a/a/a/h;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "org.apache.commons.net.ftp.systemType"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lb/a/a/a/a/c;->K:Ljava/lang/String;

    if-nez v0, :cond_3

    const/16 v0, 0x1d

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/a/b;->b(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/a/q;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/a/a/a/a/c;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/a/a/a/a/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/c;->K:Ljava/lang/String;

    :cond_3
    :goto_1
    iget-object v1, p0, Lb/a/a/a/a/c;->K:Ljava/lang/String;

    sget-object v0, Lb/a/a/a/a/d;->a:Ljava/util/Properties;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_4
    :goto_2
    iget-object v1, p0, Lb/a/a/a/a/c;->G:Lb/a/a/a/a/a/d;

    invoke-interface {v1, v0}, Lb/a/a/a/a/a/d;->a(Ljava/lang/String;)Lb/a/a/a/a/i;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/a/c;->L:Lb/a/a/a/a/i;

    iput-object v0, p0, Lb/a/a/a/a/c;->M:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "org.apache.commons.net.ftp.systemType.default"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v0, p0, Lb/a/a/a/a/c;->K:Ljava/lang/String;

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine system type - response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/a/a/a/a/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method public final s()V
    .locals 1

    const v0, 0x8000

    iput v0, p0, Lb/a/a/a/a/c;->H:I

    return-void
.end method
