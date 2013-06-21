.class public final Lccc71/a/a/a/d;
.super Lccc71/a/a/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lccc71/a/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 27
    .line 34
    :try_start_0
    const-string v0, "logcat -v time"

    invoke-static {v0}, Lccc71/utils/z;->a(Ljava/lang/String;)Lccc71/utils/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_b

    move-result-object v1

    .line 35
    :try_start_1
    invoke-virtual {v1}, Lccc71/utils/ab;->a()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 36
    invoke-virtual {v1}, Lccc71/utils/ab;->b()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_c

    move-object v3, v1

    .line 43
    :goto_0
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Lccc71/utils/ab;->c()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_d

    .line 45
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    :goto_1
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 59
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z

    move-result v2

    if-nez v2, :cond_4

    .line 63
    :cond_0
    iget-boolean v2, p0, Lccc71/a/a/a/d;->b:Z

    if-nez v2, :cond_d

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lccc71/a/a/a/d;->a:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 71
    :try_start_4
    iget-object v4, p0, Lccc71/a/a/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    :try_start_5
    iget-boolean v2, p0, Lccc71/a/a/a/d;->c:Z

    if-nez v2, :cond_1

    .line 76
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    :cond_1
    const-wide/16 v4, 0xf3c

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    .line 85
    :goto_3
    :try_start_6
    const-string v3, "android_tuner"

    const-string v4, "Failed to run cmd logcat"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 94
    if-eqz v1, :cond_2

    .line 96
    :try_start_7
    invoke-virtual {v1}, Lccc71/utils/ab;->d()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 109
    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    .line 111
    :goto_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    if-nez v0, :cond_8

    .line 115
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 125
    :cond_3
    :goto_6
    return-void

    .line 38
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 40
    :goto_7
    :try_start_9
    const-string v3, "android_tuner"

    const-string v4, "Failed to run logcat -v time"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_c

    move-object v3, v1

    goto :goto_0

    .line 51
    :cond_4
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 52
    if-eqz p2, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 54
    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_6
    iget-boolean v2, p0, Lccc71/a/a/a/d;->b:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0xfa0

    if-gt v2, v4, :cond_0

    goto/16 :goto_2

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2

    .line 87
    :catch_2
    move-exception v0

    .line 94
    :goto_8
    if-eqz v3, :cond_7

    .line 96
    :try_start_b
    invoke-virtual {v3}, Lccc71/utils/ab;->d()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 109
    :cond_7
    :goto_9
    if-eqz v1, :cond_3

    .line 111
    :goto_a
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    if-nez v0, :cond_9

    .line 115
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_6

    .line 119
    :catch_3
    move-exception v0

    goto :goto_6

    .line 113
    :cond_8
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_5

    .line 119
    :catch_4
    move-exception v0

    goto :goto_6

    .line 113
    :cond_9
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_a

    .line 91
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 94
    :goto_b
    if-eqz v3, :cond_a

    .line 96
    :try_start_f
    invoke-virtual {v3}, Lccc71/utils/ab;->d()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 109
    :cond_a
    :goto_c
    if-eqz v1, :cond_b

    .line 111
    :goto_d
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z

    move-result v2

    if-nez v2, :cond_c

    .line 115
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 124
    :cond_b
    :goto_e
    throw v0

    .line 113
    :cond_c
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_d

    :catch_5
    move-exception v1

    goto :goto_e

    .line 94
    :cond_d
    if-eqz v3, :cond_e

    .line 96
    :try_start_12
    invoke-virtual {v3}, Lccc71/utils/ab;->d()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    .line 111
    :cond_e
    :goto_f
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    if-nez v0, :cond_f

    .line 115
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_6

    :catch_6
    move-exception v0

    goto/16 :goto_6

    .line 113
    :cond_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_f

    :catch_7
    move-exception v0

    goto/16 :goto_4

    :catch_8
    move-exception v0

    goto :goto_9

    :catch_9
    move-exception v2

    goto :goto_c

    :catch_a
    move-exception v0

    goto :goto_f

    .line 91
    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_b

    :catchall_4
    move-exception v0

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_b

    .line 87
    :catch_b
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_8

    :catch_c
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_8

    :catch_d
    move-exception v0

    move-object v1, v2

    goto :goto_8

    .line 83
    :catch_e
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_f
    move-exception v0

    goto/16 :goto_3

    :catch_10
    move-exception v0

    move-object v1, v3

    goto/16 :goto_3

    .line 38
    :catch_11
    move-exception v0

    goto/16 :goto_7
.end method
