.class final LX;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:LW;


# direct methods
.method constructor <init>(LW;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, LX;->a:LW;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 55
    .line 58
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -c"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 59
    iget-object v0, p0, LX;->a:LW;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v4, "logcat"

    invoke-virtual {v1, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-static {v0, v1}, LW;->a(LW;Ljava/lang/Process;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    iget-object v0, p0, LX;->a:LW;

    invoke-static {v0}, LW;->a(LW;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    :goto_0
    iget-object v0, p0, LX;->a:LW;

    invoke-static {v0}, LW;->a(LW;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    iget-object v0, p0, LX;->a:LW;

    invoke-static {v0}, LW;->b(LW;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 71
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v0, v3

    .line 77
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    if-eqz v1, :cond_3

    .line 80
    :try_start_2
    iget-object v0, p0, LX;->a:LW;

    invoke-static {v0, v1}, LW;->a(LW;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    if-eqz v5, :cond_6

    .line 83
    iget-object v0, p0, LX;->a:LW;

    invoke-static {v0}, LW;->c(LW;)Ljava/util/HashSet;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    :try_start_3
    iget-object v0, p0, LX;->a:LW;

    invoke-static {v0}, LW;->c(LW;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV;

    .line 89
    invoke-interface {v0}, LV;->a()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 91
    invoke-interface {v0, v1}, LV;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :cond_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    :goto_3
    return-void

    .line 98
    :cond_2
    :try_start_4
    invoke-interface {v0}, LV;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0, v1}, LV;->a(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 107
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v6

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 110
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 112
    :goto_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    :cond_3
    iget-object v1, p0, LX;->a:LW;

    invoke-static {v1}, LW;->b(LW;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 116
    if-nez v0, :cond_4

    .line 118
    iget-object v0, p0, LX;->a:LW;

    invoke-static {v0, v10}, LW;->a(LW;Ljava/lang/Process;)Ljava/lang/Process;

    goto :goto_3

    .line 124
    :cond_4
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -c"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 125
    iget-object v0, p0, LX;->a:LW;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v4, "logcat"

    invoke-virtual {v1, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-static {v0, v1}, LW;->a(LW;Ljava/lang/Process;)Ljava/lang/Process;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 127
    :catch_2
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 132
    :cond_5
    iget-object v0, p0, LX;->a:LW;

    invoke-static {v0}, LW;->b(LW;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 134
    iget-object v0, p0, LX;->a:LW;

    invoke-static {v0, v10}, LW;->a(LW;Ljava/lang/Process;)Ljava/lang/Process;

    goto :goto_3

    .line 110
    :catch_3
    move-exception v1

    goto :goto_4

    :cond_6
    move v0, v2

    goto/16 :goto_1
.end method
