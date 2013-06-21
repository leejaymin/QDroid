.class final Lcom/sun/mail/pop3/a;
.super Ljava/lang/Object;


# static fields
.field private static g:[C


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/io/DataInputStream;

.field private c:Ljava/io/PrintWriter;

.field private d:Z

.field private e:Ljava/io/PrintStream;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/pop3/a;->g:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sun/mail/pop3/a;->d:Z

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->f:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sun/mail/pop3/a;->d:Z

    iput-object p4, p0, Lcom/sun/mail/pop3/a;->e:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".apop.enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-ne p2, v6, :cond_1

    const/16 p2, 0x6e

    :cond_1
    if-eqz p3, :cond_2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG POP3: connecting to host \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSSL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-static {p1, p2, p5, p6, p7}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->b:Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const-string v5, "iso-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->c:Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/a;->b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-boolean v2, v1, Lcom/sun/mail/pop3/b;->a:Z

    if-nez v2, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connect failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    throw v0

    :cond_3
    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    iget-object v2, v1, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v0, v6, :cond_4

    if-eq v2, v6, :cond_4

    iget-object v1, v1, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/a;->f:Ljava/lang/String;

    :cond_4
    if-eqz p3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG POP3: APOP challenge: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/pop3/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;I)Lcom/sun/mail/pop3/b;
    .locals 5

    const/16 v1, 0xa

    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/a;->b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;

    move-result-object v3

    iget-boolean v0, v3, Lcom/sun/mail/pop3/b;->a:Z

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Lcom/sun/mail/pop3/c;

    invoke-direct {v4, p2}, Lcom/sun/mail/pop3/c;-><init>(I)V

    move v0, v1

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sun/mail/pop3/a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    if-gez v2, :cond_3

    :cond_2
    :goto_2
    if-gez v2, :cond_8

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF on socket"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ne v0, v1, :cond_6

    const/16 v0, 0x2e

    if-ne v2, v0, :cond_6

    iget-boolean v0, p0, Lcom/sun/mail/pop3/a;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/mail/pop3/a;->e:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->write(I)V

    :cond_4
    iget-object v0, p0, Lcom/sun/mail/pop3/a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    iget-boolean v1, p0, Lcom/sun/mail/pop3/a;->d:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sun/mail/pop3/a;->e:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->write(I)V

    :cond_5
    iget-object v0, p0, Lcom/sun/mail/pop3/a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v2

    iget-boolean v0, p0, Lcom/sun/mail/pop3/a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/mail/pop3/a;->e:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->write(I)V

    goto :goto_2

    :cond_6
    move v0, v2

    :cond_7
    invoke-virtual {v4, v0}, Lcom/sun/mail/pop3/c;->write(I)V

    iget-boolean v2, p0, Lcom/sun/mail/pop3/a;->d:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sun/mail/pop3/a;->e:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->write(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Lcom/sun/mail/pop3/c;->a()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v3, Lcom/sun/mail/pop3/b;->c:Ljava/io/InputStream;

    move-object v0, v3

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/pop3/a;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const-string v3, "iso-8859-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/pop3/a;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    move v1, v0

    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/sun/mail/pop3/a;->g:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v2, v0

    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lcom/sun/mail/pop3/a;->g:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;
    .locals 4

    iget-object v0, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Folder is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/sun/mail/pop3/a;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/mail/pop3/a;->e:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "C: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/pop3/a;->c:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/pop3/a;->c:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    :cond_2
    iget-object v0, p0, Lcom/sun/mail/pop3/a;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sun/mail/pop3/a;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/mail/pop3/a;->e:Ljava/io/PrintStream;

    const-string v1, "S: EOF"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF on socket"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-boolean v1, p0, Lcom/sun/mail/pop3/a;->d:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sun/mail/pop3/a;->e:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "S: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lcom/sun/mail/pop3/b;

    invoke-direct {v1}, Lcom/sun/mail/pop3/b;-><init>()V

    const-string v2, "+OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/mail/pop3/b;->a:Z

    :goto_0
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_6

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;

    :cond_6
    return-object v1

    :cond_7
    const-string v2, "-ERR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/mail/pop3/b;->a:Z

    goto :goto_0

    :cond_8
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method final declared-synchronized a(I)I
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LIST "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/a;->b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;

    move-result-object v1

    const/4 v0, -0x1

    iget-boolean v2, v1, Lcom/sun/mail/pop3/b;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v1, v1, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final declared-synchronized a(II)Ljava/io/InputStream;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RETR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sun/mail/pop3/a;->a(Ljava/lang/String;I)Lcom/sun/mail/pop3/b;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/mail/pop3/b;->c:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/sun/mail/pop3/a;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APOP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/a;->b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;

    move-result-object v1

    :goto_1
    iget-boolean v2, v1, Lcom/sun/mail/pop3/b;->a:Z

    if-nez v2, :cond_0

    iget-object v0, v1, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_2
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USER "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/a;->b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;

    move-result-object v1

    iget-boolean v2, v1, Lcom/sun/mail/pop3/b;->a:Z

    if-nez v2, :cond_3

    iget-object v0, v1, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v0, "USER command failed"

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PASS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/a;->b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v0, "login failed"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method final declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "QUIT"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/a;->b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sun/mail/pop3/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->b:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->c:Ljava/io/PrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->b:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->c:Ljava/io/PrintWriter;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->b:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->c:Ljava/io/PrintWriter;

    throw v0

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->b:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/a;->c:Ljava/io/PrintWriter;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method final declared-synchronized a([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    const-string v1, "UIDL"

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xf

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/pop3/a;->a(Ljava/lang/String;I)Lcom/sun/mail/pop3/b;

    move-result-object v1

    iget-boolean v2, v1, Lcom/sun/mail/pop3/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    iget-object v1, v1, Lcom/sun/mail/pop3/b;->c:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    array-length v4, p1

    if-gt v3, v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()Lcom/sun/mail/pop3/d;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "STAT"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/a;->b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;

    move-result-object v0

    new-instance v1, Lcom/sun/mail/pop3/d;

    invoke-direct {v1}, Lcom/sun/mail/pop3/d;-><init>()V

    iget-boolean v2, v0, Lcom/sun/mail/pop3/b;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v0, v0, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sun/mail/pop3/d;->a:I

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sun/mail/pop3/d;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final declared-synchronized b(II)Ljava/io/InputStream;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TOP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/a;->a(Ljava/lang/String;I)Lcom/sun/mail/pop3/b;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/mail/pop3/b;->c:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/a;->b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sun/mail/pop3/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()Ljava/io/InputStream;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "LIST"

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/a;->a(Ljava/lang/String;I)Lcom/sun/mail/pop3/b;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/mail/pop3/b;->c:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UIDL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/a;->b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;

    move-result-object v1

    iget-boolean v2, v1, Lcom/sun/mail/pop3/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, v1, Lcom/sun/mail/pop3/b;->b:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "NOOP"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/a;->b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sun/mail/pop3/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "RSET"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/a;->b(Ljava/lang/String;)Lcom/sun/mail/pop3/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sun/mail/pop3/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final finalize()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/sun/mail/pop3/a;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/pop3/a;->a()Z

    :cond_0
    return-void
.end method
