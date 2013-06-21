.class public Lkawa/TelnetRepl;
.super Lgnu/mapping/Procedure0;
.source "TelnetRepl.java"


# instance fields
.field language:Lgnu/expr/Language;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/net/Socket;)V
    .locals 0
    .parameter "language"
    .parameter "socket"

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    .line 15
    iput-object p1, p0, Lkawa/TelnetRepl;->language:Lgnu/expr/Language;

    .line 16
    iput-object p2, p0, Lkawa/TelnetRepl;->socket:Ljava/net/Socket;

    .line 17
    return-void
.end method

.method public static serve(Lgnu/expr/Language;Ljava/net/Socket;)V
    .locals 9
    .parameter "language"
    .parameter "client"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v6, Lkawa/Telnet;

    const/4 v1, 0x1

    invoke-direct {v6, p1, v1}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 47
    .local v6, conn:Lkawa/Telnet;
    invoke-virtual {v6}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v8

    .line 48
    .local v8, sout:Ljava/io/OutputStream;
    invoke-virtual {v6}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v7

    .line 49
    .local v7, sin:Ljava/io/InputStream;
    new-instance v4, Lgnu/mapping/OutPort;

    const-string v1, "/dev/stdout"

    invoke-static {v1}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v1

    invoke-direct {v4, v8, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 50
    .local v4, out:Lgnu/mapping/OutPort;
    new-instance v3, Lgnu/mapping/TtyInPort;

    const-string v1, "/dev/stdin"

    invoke-static {v1}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v1

    invoke-direct {v3, v7, v1, v4}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    .line 58
    .local v3, in:Lgnu/mapping/TtyInPort;
    new-instance v0, Lgnu/mapping/Future;

    new-instance v1, Lkawa/TelnetRepl;

    invoke-direct {v1, p0, p1}, Lkawa/TelnetRepl;-><init>(Lgnu/expr/Language;Ljava/net/Socket;)V

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lgnu/mapping/Future;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)V

    .line 61
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 23
    :try_start_0
    iget-object v0, p0, Lkawa/TelnetRepl;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 24
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    iget-object v1, p0, Lkawa/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :goto_0
    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    .line 30
    :try_start_2
    iget-object v1, p0, Lkawa/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 34
    :goto_1
    throw v0

    .line 32
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method
