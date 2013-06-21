.class public final Lccc71/a/a/a/e;
.super Lccc71/a/a/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lccc71/a/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 29
    .line 35
    :try_start_0
    new-instance v4, Ljava/net/ServerSocket;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_f

    .line 37
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    const-string v2, "ccc71.pmw.system"

    const-string v3, "ccc71.at.system.at_command_receiver"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    if-eqz p2, :cond_4

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lc -v "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    const/16 v0, 0x1388

    invoke-virtual {v4, v0}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 46
    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_10

    move-result-object v3

    .line 47
    const/16 v0, 0x64

    :try_start_2
    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 48
    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 50
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_11

    .line 52
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :goto_1
    iget-boolean v1, p0, Lccc71/a/a/a/e;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v1, :cond_7

    .line 107
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 111
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    .line 116
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 122
    :try_start_5
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    .line 127
    :cond_2
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    .line 138
    :cond_3
    :goto_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    const-string v1, "ccc71.pmw.system"

    const-string v2, "ccc71.at.system.at_command_receiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "lc -s"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void

    .line 42
    :cond_4
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lc -v "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_10

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    .line 99
    :goto_6
    :try_start_8
    const-string v4, "android_tuner"

    const-string v5, "Failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 107
    if-eqz v1, :cond_5

    .line 111
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 116
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    .line 122
    :try_start_a
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 127
    :cond_6
    :goto_8
    if-eqz v3, :cond_3

    .line 133
    :try_start_b
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    .line 138
    :catch_1
    move-exception v0

    goto :goto_5

    .line 55
    :cond_7
    const-wide/16 v5, 0x64

    :try_start_c
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3

    .line 67
    :goto_9
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_3

    move-result-object v1

    if-nez v1, :cond_a

    .line 75
    :cond_8
    :goto_a
    :try_start_e
    iget-boolean v1, p0, Lccc71/a/a/a/e;->b:Z

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_9

    .line 82
    iget-object v1, p0, Lccc71/a/a/a/e;->a:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_3

    .line 84
    :try_start_f
    iget-object v5, p0, Lccc71/a/a/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 87
    :try_start_10
    iget-boolean v1, p0, Lccc71/a/a/a/e;->c:Z

    if-nez v1, :cond_9

    .line 89
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    :cond_9
    const-wide/16 v5, 0xf3c

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_1

    .line 97
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_6

    .line 61
    :cond_a
    :try_start_11
    const-string v5, "has extras"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, ".at_logcat"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "START"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 63
    :cond_b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_c
    iget-boolean v1, p0, Lccc71/a/a/a/e;->b:Z

    if-nez v1, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_3

    move-result v1

    const/16 v5, 0xfa0

    if-gt v1, v5, :cond_8

    goto :goto_9

    .line 82
    :catchall_0
    move-exception v0

    :try_start_12
    monitor-exit v1

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_3

    .line 101
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 103
    :goto_b
    :try_start_13
    const-string v2, "android_tuner"

    const-string v5, "Interrupted"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 107
    if-eqz v1, :cond_d

    .line 111
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    .line 116
    :cond_d
    :goto_c
    if-eqz v3, :cond_e

    .line 122
    :try_start_15
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    .line 127
    :cond_e
    :goto_d
    if-eqz v4, :cond_3

    .line 133
    :try_start_16
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4

    goto/16 :goto_5

    .line 138
    :catch_4
    move-exception v0

    goto/16 :goto_5

    .line 106
    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    .line 107
    :goto_e
    if-eqz v1, :cond_f

    .line 111
    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    .line 116
    :cond_f
    :goto_f
    if-eqz v3, :cond_10

    .line 122
    :try_start_18
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    .line 127
    :cond_10
    :goto_10
    if-eqz v4, :cond_11

    .line 133
    :try_start_19
    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b

    .line 138
    :cond_11
    :goto_11
    throw v0

    :catch_5
    move-exception v0

    goto/16 :goto_7

    :catch_6
    move-exception v0

    goto/16 :goto_8

    :catch_7
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v0

    goto :goto_d

    :catch_9
    move-exception v1

    goto :goto_f

    :catch_a
    move-exception v1

    goto :goto_10

    :catch_b
    move-exception v1

    goto :goto_11

    :catch_c
    move-exception v0

    goto/16 :goto_3

    :catch_d
    move-exception v0

    goto/16 :goto_4

    :catch_e
    move-exception v0

    goto/16 :goto_5

    .line 106
    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_e

    :catchall_3
    move-exception v0

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_e

    .line 101
    :catch_f
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    goto :goto_b

    :catch_10
    move-exception v0

    move-object v3, v1

    goto :goto_b

    :catch_11
    move-exception v0

    goto :goto_b

    .line 97
    :catch_12
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_6

    :catch_13
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_6

    :catch_14
    move-exception v1

    goto/16 :goto_a

    :cond_12
    move-object v2, v1

    goto/16 :goto_2
.end method
