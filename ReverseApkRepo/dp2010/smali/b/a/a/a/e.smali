.class public abstract Lb/a/a/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final i:Ljavax/net/SocketFactory;

.field private static final j:Ljavax/net/ServerSocketFactory;


# instance fields
.field protected a:I

.field protected b:Ljava/net/Socket;

.field protected c:I

.field protected d:Ljava/io/InputStream;

.field protected e:Ljava/io/OutputStream;

.field protected f:Ljavax/net/SocketFactory;

.field protected g:Ljavax/net/ServerSocketFactory;

.field protected h:I

.field private k:Lb/a/a/a/d;

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    sput-object v0, Lb/a/a/a/e;->i:Ljavax/net/SocketFactory;

    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    sput-object v0, Lb/a/a/a/e;->j:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lb/a/a/a/e;->h:I

    iput v2, p0, Lb/a/a/a/e;->l:I

    iput v2, p0, Lb/a/a/a/e;->m:I

    iput-object v1, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    iput-object v1, p0, Lb/a/a/a/e;->d:Ljava/io/InputStream;

    iput-object v1, p0, Lb/a/a/a/e;->e:Ljava/io/OutputStream;

    iput v0, p0, Lb/a/a/a/e;->a:I

    iput v0, p0, Lb/a/a/a/e;->c:I

    sget-object v0, Lb/a/a/a/e;->i:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lb/a/a/a/e;->f:Ljavax/net/SocketFactory;

    sget-object v0, Lb/a/a/a/e;->j:Ljavax/net/ServerSocketFactory;

    iput-object v0, p0, Lb/a/a/a/e;->g:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    iget v1, p0, Lb/a/a/a/e;->a:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/e;->d:Ljava/io/InputStream;

    iget-object v0, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/e;->e:Ljava/io/OutputStream;

    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/e;->i()Lb/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/d;->a()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/e;->i()Lb/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/d;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, -0x1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/e;->f:Ljavax/net/SocketFactory;

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    iget v1, p0, Lb/a/a/a/e;->l:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    iget v2, p0, Lb/a/a/a/e;->l:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_0
    iget v1, p0, Lb/a/a/a/e;->m:I

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    iget v2, p0, Lb/a/a/a/e;->m:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_1
    iget-object v1, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v0, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v0, p0, Lb/a/a/a/e;->h:I

    invoke-virtual {v1, v2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {p0}, Lb/a/a/a/e;->a()V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/e;->i()Lb/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/d;->a()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/e;->i()Lb/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/net/Socket;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lb/a/a/a/e;->d:Ljava/io/InputStream;

    invoke-static {v0}, Lb/a/a/a/e;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lb/a/a/a/e;->e:Ljava/io/OutputStream;

    invoke-static {v0}, Lb/a/a/a/e;->a(Ljava/io/Closeable;)V

    iput-object v1, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    iput-object v1, p0, Lb/a/a/a/e;->d:Ljava/io/InputStream;

    iput-object v1, p0, Lb/a/a/a/e;->e:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, Lb/a/a/a/e;->c:I

    return-void
.end method

.method public final e()V
    .locals 1

    const v0, 0x8000

    iput v0, p0, Lb/a/a/a/e;->l:I

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    return-void
.end method

.method public final g()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected i()Lb/a/a/a/d;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e;->k:Lb/a/a/a/d;

    return-object v0
.end method
