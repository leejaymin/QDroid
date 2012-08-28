.class public Lorg/theb/ssh/TrileadConnectionThread;
.super Lorg/theb/ssh/ConnectionThread;
.source "TrileadConnectionThread.java"


# instance fields
.field private connection:Lcom/trilead/ssh2/Connection;

.field private hostname:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:I

.field private sPass:Ljava/util/concurrent/Semaphore;

.field private session:Lcom/trilead/ssh2/Session;

.field private stdIn:Ljava/io/OutputStream;

.field private stdOut:Ljava/io/InputStream;

.field protected term:Lorg/theb/ssh/Terminal;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/theb/ssh/FeedbackUI;Lorg/theb/ssh/Terminal;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "ui"
    .parameter "term"
    .parameter "hostname"
    .parameter "username"
    .parameter "port"

    .prologue
    .line 48
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/theb/ssh/ConnectionThread;-><init>(Lorg/theb/ssh/FeedbackUI;Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    iput-object p2, p0, Lorg/theb/ssh/TrileadConnectionThread;->term:Lorg/theb/ssh/Terminal;

    .line 51
    iput-object p3, p0, Lorg/theb/ssh/TrileadConnectionThread;->hostname:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lorg/theb/ssh/TrileadConnectionThread;->username:Ljava/lang/String;

    .line 53
    iput p5, p0, Lorg/theb/ssh/TrileadConnectionThread;->port:I

    .line 54
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->session:Lcom/trilead/ssh2/Session;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 60
    iput-object v1, p0, Lorg/theb/ssh/TrileadConnectionThread;->session:Lcom/trilead/ssh2/Session;

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->connection:Lcom/trilead/ssh2/Connection;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->close()V

    .line 65
    iput-object v1, p0, Lorg/theb/ssh/TrileadConnectionThread;->connection:Lcom/trilead/ssh2/Connection;

    .line 67
    :cond_1
    return-void
.end method

.method public getReader()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->stdOut:Ljava/io/InputStream;

    return-object v0
.end method

.method public getWriter()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->stdIn:Ljava/io/OutputStream;

    return-object v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 81
    new-instance v0, Lcom/trilead/ssh2/Connection;

    iget-object v1, p0, Lorg/theb/ssh/TrileadConnectionThread;->hostname:Ljava/lang/String;

    iget v2, p0, Lorg/theb/ssh/TrileadConnectionThread;->port:I

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/Connection;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->connection:Lcom/trilead/ssh2/Connection;

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->connection:Lcom/trilead/ssh2/Connection;

    new-instance v1, Lorg/theb/ssh/InteractiveHostKeyVerifier;

    invoke-direct {v1}, Lorg/theb/ssh/InteractiveHostKeyVerifier;-><init>()V

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;)Lcom/trilead/ssh2/ConnectionInfo;

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v1, p0, Lorg/theb/ssh/TrileadConnectionThread;->username:Ljava/lang/String;

    const-string v2, "password"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/Connection;->isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "b0tt"

    iput-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->password:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v1, p0, Lorg/theb/ssh/TrileadConnectionThread;->username:Ljava/lang/String;

    iget-object v2, p0, Lorg/theb/ssh/TrileadConnectionThread;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/Connection;->authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 117
    .local v8, res:Z
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->password:Ljava/lang/String;

    .line 118
    if-eqz v8, :cond_0

    .line 130
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v0

    iput-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->session:Lcom/trilead/ssh2/Session;

    .line 132
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->session:Lcom/trilead/ssh2/Session;

    const-string v1, "xterm"

    .line 133
    iget-object v2, p0, Lorg/theb/ssh/TrileadConnectionThread;->term:Lorg/theb/ssh/Terminal;

    invoke-interface {v2}, Lorg/theb/ssh/Terminal;->getColumnCount()I

    move-result v2

    iget-object v3, p0, Lorg/theb/ssh/TrileadConnectionThread;->term:Lorg/theb/ssh/Terminal;

    invoke-interface {v3}, Lorg/theb/ssh/Terminal;->getRowCount()I

    move-result v3

    .line 134
    iget-object v4, p0, Lorg/theb/ssh/TrileadConnectionThread;->term:Lorg/theb/ssh/Terminal;

    invoke-interface {v4}, Lorg/theb/ssh/Terminal;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/theb/ssh/TrileadConnectionThread;->term:Lorg/theb/ssh/Terminal;

    invoke-interface {v5}, Lorg/theb/ssh/Terminal;->getHeight()I

    move-result v5

    .line 135
    const/4 v6, 0x0

    .line 132
    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    .line 137
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->startShell()V

    .line 139
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->stdIn:Ljava/io/OutputStream;

    .line 141
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->stdOut:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->term:Lorg/theb/ssh/Terminal;

    iget-object v1, p0, Lorg/theb/ssh/TrileadConnectionThread;->stdOut:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/theb/ssh/TrileadConnectionThread;->stdIn:Ljava/io/OutputStream;

    invoke-interface {v0, v1, v2}, Lorg/theb/ssh/Terminal;->start(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 150
    .end local v8           #res:Z
    :goto_0
    return-void

    .line 124
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 125
    const-string v1, "No supported authentication methods available."

    .line 124
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 146
    .local v7, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->password:Ljava/lang/String;

    .line 158
    :goto_0
    iget-object v0, p0, Lorg/theb/ssh/TrileadConnectionThread;->sPass:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 159
    return-void

    .line 157
    :cond_0
    iput-object p1, p0, Lorg/theb/ssh/TrileadConnectionThread;->password:Ljava/lang/String;

    goto :goto_0
.end method
