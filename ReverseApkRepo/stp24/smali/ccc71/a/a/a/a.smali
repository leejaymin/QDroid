.class public final Lccc71/a/a/a/a;
.super Lccc71/a/a/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lccc71/a/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 22
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 25
    :goto_0
    new-instance v0, Lccc71/pmw/b/h;

    const-string v1, "dmesg -c"

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 26
    invoke-virtual {v0}, Lccc71/pmw/b/h;->b()Ljava/util/ArrayList;

    move-result-object v6

    .line 28
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v5

    .line 66
    :goto_1
    if-lt v4, v8, :cond_2

    .line 69
    :cond_0
    iget-boolean v0, p0, Lccc71/a/a/a/a;->b:Z

    if-nez v0, :cond_3

    .line 71
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lccc71/a/a/a/a;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lccc71/a/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-boolean v0, p0, Lccc71/a/a/a/a;->c:Z

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    :cond_1
    const-wide/16 v0, 0xfa0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 57
    const-string v1, "U"

    .line 59
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "123456"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x4

    const/16 v11, 0x10

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-boolean v0, p0, Lccc71/a/a/a/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xfa0

    if-gt v0, v1, :cond_0

    .line 66
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 39
    :pswitch_0
    const-string v1, "F"

    goto :goto_2

    .line 42
    :pswitch_1
    const-string v1, "E"

    goto :goto_2

    .line 45
    :pswitch_2
    const-string v1, "W"

    goto :goto_2

    .line 48
    :pswitch_3
    const-string v1, "I"

    goto :goto_2

    .line 51
    :pswitch_4
    const-string v1, "D"

    goto :goto_2

    .line 54
    :pswitch_5
    const-string v1, "V"

    goto :goto_2

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 88
    :cond_3
    return-void

    .line 36
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
