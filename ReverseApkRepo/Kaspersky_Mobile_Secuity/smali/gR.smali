.class public final LgR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaB;
.implements LgM;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Z

.field private e:LaA;

.field private f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "KMS90WM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KMSH"

    aput-object v2, v0, v1

    sput-object v0, LgR;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LgR;->d:Z

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LgR;->f:Ljava/util/Set;

    .line 34
    iput-boolean p1, p0, LgR;->b:Z

    .line 35
    iput-object p2, p0, LgR;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    return-void
.end method

.method private a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 118
    and-int/lit16 v0, p1, 0xff

    .line 119
    if-nez v0, :cond_0

    .line 120
    const/16 v0, 0x9

    iget-object v1, p0, LgR;->e:LaA;

    invoke-virtual {v1}, LaA;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    if-ne p1, v5, :cond_1

    .line 125
    const/16 v0, 0x37

    iget-object v1, p0, LgR;->e:LaA;

    invoke-virtual {v1}, LaA;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    const/16 v1, 0xa

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Serializable;

    const/4 v3, 0x0

    iget-object v4, p0, LgR;->e:LaA;

    invoke-virtual {v4}, LaA;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 6

    .prologue
    .line 150
    :try_start_0
    new-instance v0, LaA;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v3, "list.ksl"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/kavsdk/antivirus/BasesStorage;->a()Lcom/kavsdk/antivirus/BasesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kavsdk/antivirus/BasesStorage;->b()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v4, "updtmp"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LaA;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    iput-object v0, p0, LgR;->e:LaA;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(II)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 42
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 43
    iget-boolean v2, p0, LgR;->d:Z

    .line 114
    :cond_0
    :goto_0
    return v2

    .line 45
    :cond_1
    iget-object v0, p0, LgR;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 48
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 50
    packed-switch p1, :pswitch_data_0

    move v1, v2

    .line 81
    :goto_1
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, LgR;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 83
    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 52
    :pswitch_0
    iput v2, v3, Landroid/os/Message;->what:I

    .line 53
    const-string v0, "result"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v1, v2

    .line 54
    goto :goto_1

    .line 57
    :pswitch_1
    iput v7, v3, Landroid/os/Message;->what:I

    .line 58
    const-string v0, "serverAddress"

    iget-object v1, p0, LgR;->e:LaA;

    invoke-virtual {v1}, LaA;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/16 v0, 0x19

    move v1, v0

    .line 60
    goto :goto_1

    .line 63
    :pswitch_2
    iput v8, v3, Landroid/os/Message;->what:I

    .line 64
    const-string v0, "result"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const/16 v0, 0x32

    move v1, v0

    .line 66
    goto :goto_1

    .line 69
    :pswitch_3
    iput v9, v3, Landroid/os/Message;->what:I

    .line 70
    const-string v0, "result"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const/16 v0, 0x4b

    move v1, v0

    .line 72
    goto :goto_1

    .line 75
    :pswitch_4
    iput v6, v3, Landroid/os/Message;->what:I

    .line 76
    const-string v0, "result"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const/16 v0, 0x64

    move v1, v0

    goto :goto_1

    .line 86
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 87
    const/4 v0, 0x5

    iput v0, v3, Landroid/os/Message;->what:I

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v4, "result"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, LgR;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 92
    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 95
    :cond_3
    if-ne p1, v8, :cond_4

    .line 96
    invoke-static {}, Lcom/kavsdk/antivirus/BasesStorage;->a()Lcom/kavsdk/antivirus/BasesStorage;

    move-result-object v0

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v3, "updtmp"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/kavsdk/antivirus/BasesStorage;->a(Ljava/lang/String;LaB;)I

    .line 99
    :cond_4
    if-ne p1, v9, :cond_5

    .line 100
    invoke-virtual {p0, v6, p2}, LgR;->a(II)Z

    .line 104
    :cond_5
    if-ne p1, v6, :cond_0

    .line 105
    invoke-direct {p0, p2}, LgR;->a(I)V

    .line 106
    invoke-static {}, LdT;->e()V

    .line 107
    if-eqz p2, :cond_6

    if-eq p2, v6, :cond_6

    if-ne p2, v7, :cond_0

    .line 111
    :cond_6
    invoke-static {}, Lgj;->c()V

    goto/16 :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Landroid/os/Handler;)Z
    .locals 3
    .parameter

    .prologue
    .line 194
    iget-object v1, p0, LgR;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 195
    :try_start_0
    invoke-virtual {p0}, LgR;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, LgR;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, LgR;->e:LaA;

    invoke-virtual {v0}, LaA;->b()I

    move-result v0

    iget-object v2, p0, LgR;->e:LaA;

    invoke-virtual {v2}, LaA;->c()I

    move-result v2

    invoke-virtual {p0, v0, v2}, LgR;->a(II)Z

    .line 198
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 166
    iget-boolean v0, p0, LgR;->b:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v1, p0, LgR;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 168
    :goto_0
    :try_start_0
    iget-object v0, p0, LgR;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :try_start_1
    iget-object v0, p0, LgR;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :cond_1
    iget-object v0, p0, LgR;->e:LaA;

    sget-object v1, LgR;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, LaA;->a([Ljava/lang/String;LaB;)V

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, LgR;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, LgR;->d:Z

    .line 185
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, LgR;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LgR;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
