.class final Ljavax/mail/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljavax/mail/b;

.field private b:Ljavax/mail/b;

.field private c:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/a;->a:Ljavax/mail/b;

    iput-object v0, p0, Ljavax/mail/a;->b:Ljavax/mail/b;

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JavaMail-EventQueue"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/a;->c:Ljava/lang/Thread;

    iget-object v0, p0, Ljavax/mail/a;->c:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Ljavax/mail/a;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private declared-synchronized a()Ljavax/mail/b;
    .locals 3

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Ljavax/mail/a;->b:Ljavax/mail/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/a;->b:Ljavax/mail/b;

    iget-object v1, v0, Ljavax/mail/b;->b:Ljavax/mail/b;

    iput-object v1, p0, Ljavax/mail/a;->b:Ljavax/mail/b;

    iget-object v1, p0, Ljavax/mail/a;->b:Ljavax/mail/b;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/a;->a:Ljavax/mail/b;

    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Ljavax/mail/b;->a:Ljavax/mail/b;

    iput-object v1, v0, Ljavax/mail/b;->b:Ljavax/mail/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Ljavax/mail/a;->b:Ljavax/mail/b;

    const/4 v2, 0x0

    iput-object v2, v1, Ljavax/mail/b;->a:Ljavax/mail/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/mail/b;

    invoke-direct {v0, p1, p2}, Ljavax/mail/b;-><init>(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    iget-object v1, p0, Ljavax/mail/a;->a:Ljavax/mail/b;

    if-nez v1, :cond_0

    iput-object v0, p0, Ljavax/mail/a;->a:Ljavax/mail/b;

    iput-object v0, p0, Ljavax/mail/a;->b:Ljavax/mail/b;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Ljavax/mail/a;->a:Ljavax/mail/b;

    iput-object v1, v0, Ljavax/mail/b;->a:Ljavax/mail/b;

    iget-object v1, p0, Ljavax/mail/a;->a:Ljavax/mail/b;

    iput-object v0, v1, Ljavax/mail/b;->b:Ljavax/mail/b;

    iput-object v0, p0, Ljavax/mail/a;->a:Ljavax/mail/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 4

    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljavax/mail/a;->a()Ljavax/mail/b;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, v0, Ljavax/mail/b;->c:Ljavax/mail/event/MailEvent;

    iget-object v3, v0, Ljavax/mail/b;->d:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-ge v1, v0, :cond_0

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/mail/event/MailEvent;->dispatch(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    instance-of v0, v0, Ljava/lang/InterruptedException;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v0, :cond_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method
