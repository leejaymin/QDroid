.class public Lcom/google/devtools/simple/runtime/components/android/util/TelnetRepl;
.super Lgnu/mapping/Procedure0;
.source "TelnetRepl.java"


# static fields
.field private static final REPL_STACK_SIZE:I = 0x40000


# instance fields
.field language:Lgnu/expr/Language;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/net/Socket;)V
    .locals 0
    .parameter "language"
    .parameter "socket"

    .prologue
    .line 25
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/util/TelnetRepl;->language:Lgnu/expr/Language;

    .line 27
    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/util/TelnetRepl;->socket:Ljava/net/Socket;

    .line 28
    return-void
.end method

.method public static serve(Lgnu/expr/Language;Ljava/net/Socket;)Ljava/lang/Thread;
    .locals 12
    .parameter "language"
    .parameter "client"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v9, Lkawa/Telnet;

    const/4 v1, 0x1

    invoke-direct {v9, p1, v1}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 64
    .local v9, conn:Lkawa/Telnet;
    invoke-virtual {v9}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v11

    .line 65
    .local v11, sout:Ljava/io/OutputStream;
    invoke-virtual {v9}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v10

    .line 66
    .local v10, sin:Ljava/io/InputStream;
    new-instance v4, Lgnu/mapping/OutPort;

    const-string v1, "/dev/stdout"

    invoke-static {v1}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v1

    invoke-direct {v4, v11, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 67
    .local v4, out:Lgnu/mapping/OutPort;
    new-instance v3, Lgnu/mapping/TtyInPort;

    const-string v1, "/dev/stdin"

    invoke-static {v1}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v1

    invoke-direct {v3, v10, v1, v4}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    .line 76
    .local v3, in:Lgnu/mapping/TtyInPort;
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/BiggerFuture;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/util/TelnetRepl;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TelnetRepl;-><init>(Lgnu/expr/Language;Ljava/net/Socket;)V

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    const-string v6, "Telnet Repl Thread"

    const-wide/32 v7, 0x40000

    move-object v5, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/devtools/simple/runtime/components/android/util/BiggerFuture;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Ljava/lang/String;J)V

    .line 79
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-object v0
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 32
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 33
    .local v0, contextClassLoader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 36
    const-class v3, Lkawa/Telnet;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 40
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/util/TelnetRepl;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    invoke-static {v3, v4}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 41
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :try_start_1
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/util/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 51
    :goto_0
    return-object v3

    .line 42
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 43
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "TelnetRepl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Repl is exiting with error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 45
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 48
    :try_start_3
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/util/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 51
    :goto_1
    throw v3

    .line 49
    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_0
.end method
