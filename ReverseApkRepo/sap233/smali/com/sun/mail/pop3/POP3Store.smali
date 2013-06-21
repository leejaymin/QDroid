.class public Lcom/sun/mail/pop3/POP3Store;
.super Ljavax/mail/Store;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Ljava/lang/reflect/Constructor;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Lcom/sun/mail/pop3/a;

.field private i:Lcom/sun/mail/pop3/POP3Folder;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 6

    const-string v3, "pop3"

    const/16 v4, 0x6e

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/pop3/POP3Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const-string v0, "pop3"

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->e:Ljava/lang/String;

    const/16 v0, 0x6e

    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->f:I

    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Store;->g:Z

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->i:Lcom/sun/mail/pop3/POP3Folder;

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->j:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->k:I

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->m:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Store;->a:Z

    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Store;->b:Z

    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Store;->c:Z

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->d:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->e:Ljava/lang/String;

    iput p4, p0, Lcom/sun/mail/pop3/POP3Store;->f:I

    iput-boolean p5, p0, Lcom/sun/mail/pop3/POP3Store;->g:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".rsetbeforequit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Store;->a:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".disabletop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Store;->b:Z

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".forgettopheaders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Store;->c:Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".message.class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: POP3 message class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    :try_start_2
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljavax/mail/Folder;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->d:Ljava/lang/reflect/Constructor;

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG: failed to load POP3 message class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a()V
    .locals 2

    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/a;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->i:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->i:Lcom/sun/mail/pop3/POP3Folder;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/sun/mail/pop3/a;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->j:Ljava/lang/String;

    iget v2, p0, Lcom/sun/mail/pop3/POP3Store;->k:I

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v3}, Ljavax/mail/Session;->getDebug()Z

    move-result v3

    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v4}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v5}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sun/mail/pop3/POP3Store;->g:Z

    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/pop3/a;-><init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sun/mail/pop3/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lcom/sun/mail/pop3/a;->a()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->i:Lcom/sun/mail/pop3/POP3Folder;

    :cond_3
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->i:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->i:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method final declared-synchronized b(Lcom/sun/mail/pop3/POP3Folder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->i:Lcom/sun/mail/pop3/POP3Folder;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->i:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/a;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    invoke-super {p0}, Ljavax/mail/Store;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected finalize()V
    .locals 1

    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Store;->close()V

    :cond_0
    return-void
.end method

.method public getDefaultFolder()Ljavax/mail/Folder;
    .locals 1

    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->a()V

    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 1

    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->a()V

    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .locals 2

    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->a()V

    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Store;->a(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/a;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;

    invoke-virtual {v1}, Lcom/sun/mail/pop3/a;->d()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_5
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit p0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_2
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, -0x1

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    if-ne p2, v3, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    move v0, p2

    :goto_1
    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/sun/mail/pop3/POP3Store;->f:I

    :cond_2
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->j:Ljava/lang/String;

    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->k:I

    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->l:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/mail/pop3/POP3Store;->m:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->a(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->h:Lcom/sun/mail/pop3/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljavax/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Connect failed"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move v0, p2

    goto :goto_1
.end method
