.class public Ljavax/activation/DataHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lmyjava/awt/datatransfer/Transferable;


# static fields
.field private static final f:[Lmyjava/awt/datatransfer/DataFlavor;

.field private static j:Ljavax/activation/DataContentHandlerFactory;


# instance fields
.field private a:Ljavax/activation/DataSource;

.field private b:Ljavax/activation/DataSource;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private e:Ljavax/activation/CommandMap;

.field private g:[Lmyjava/awt/datatransfer/DataFlavor;

.field private h:Ljavax/activation/DataContentHandler;

.field private i:Ljavax/activation/DataContentHandler;

.field private k:Ljavax/activation/DataContentHandlerFactory;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    sput-object v0, Ljavax/activation/DataHandler;->f:[Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/DataHandler;->j:Ljavax/activation/DataContentHandlerFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    iput-object v1, p0, Ljavax/activation/DataHandler;->b:Ljavax/activation/DataSource;

    iput-object v1, p0, Ljavax/activation/DataHandler;->c:Ljava/lang/Object;

    iput-object v1, p0, Ljavax/activation/DataHandler;->d:Ljava/lang/String;

    iput-object v1, p0, Ljavax/activation/DataHandler;->e:Ljavax/activation/CommandMap;

    sget-object v0, Ljavax/activation/DataHandler;->f:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->g:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v1, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->i:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->k:Ljavax/activation/DataContentHandlerFactory;

    iput-object v1, p0, Ljavax/activation/DataHandler;->l:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/DataHandler;->c:Ljava/lang/Object;

    iput-object p2, p0, Ljavax/activation/DataHandler;->d:Ljava/lang/String;

    sget-object v0, Ljavax/activation/DataHandler;->j:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->k:Ljavax/activation/DataContentHandlerFactory;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    iput-object v1, p0, Ljavax/activation/DataHandler;->b:Ljavax/activation/DataSource;

    iput-object v1, p0, Ljavax/activation/DataHandler;->c:Ljava/lang/Object;

    iput-object v1, p0, Ljavax/activation/DataHandler;->d:Ljava/lang/String;

    iput-object v1, p0, Ljavax/activation/DataHandler;->e:Ljavax/activation/CommandMap;

    sget-object v0, Ljavax/activation/DataHandler;->f:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->g:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v1, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->i:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->k:Ljavax/activation/DataContentHandlerFactory;

    iput-object v1, p0, Ljavax/activation/DataHandler;->l:Ljava/lang/String;

    new-instance v0, Ljavax/activation/URLDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    sget-object v0, Ljavax/activation/DataHandler;->j:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->k:Ljavax/activation/DataContentHandlerFactory;

    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    iput-object v1, p0, Ljavax/activation/DataHandler;->b:Ljavax/activation/DataSource;

    iput-object v1, p0, Ljavax/activation/DataHandler;->c:Ljava/lang/Object;

    iput-object v1, p0, Ljavax/activation/DataHandler;->d:Ljava/lang/String;

    iput-object v1, p0, Ljavax/activation/DataHandler;->e:Ljavax/activation/CommandMap;

    sget-object v0, Ljavax/activation/DataHandler;->f:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->g:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v1, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->i:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->k:Ljavax/activation/DataContentHandlerFactory;

    iput-object v1, p0, Ljavax/activation/DataHandler;->l:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    sget-object v0, Ljavax/activation/DataHandler;->j:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->k:Ljavax/activation/DataContentHandlerFactory;

    return-void
.end method

.method static synthetic a(Ljavax/activation/DataHandler;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljavax/activation/DataHandler;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized a()Ljavax/activation/CommandMap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->e:Ljavax/activation/CommandMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/activation/DataHandler;->e:Ljavax/activation/CommandMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/activation/DataHandler;->d:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized b()Ljavax/activation/DataContentHandler;
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Ljavax/activation/DataHandler;->j:Ljavax/activation/DataContentHandlerFactory;

    iget-object v1, p0, Ljavax/activation/DataHandler;->k:Ljavax/activation/DataContentHandlerFactory;

    if-eq v0, v1, :cond_0

    sget-object v0, Ljavax/activation/DataHandler;->j:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->k:Ljavax/activation/DataContentHandlerFactory;

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/DataHandler;->i:Ljavax/activation/DataContentHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    sget-object v0, Ljavax/activation/DataHandler;->f:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->g:[Lmyjava/awt/datatransfer/DataFlavor;

    :cond_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Ljavax/activation/DataHandler;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/DataHandler;->i:Ljavax/activation/DataContentHandler;

    if-nez v1, :cond_2

    sget-object v1, Ljavax/activation/DataHandler;->j:Ljavax/activation/DataContentHandlerFactory;

    if-eqz v1, :cond_2

    sget-object v1, Ljavax/activation/DataHandler;->j:Ljavax/activation/DataContentHandlerFactory;

    invoke-interface {v1, v0}, Ljavax/activation/DataContentHandlerFactory;->createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v1

    iput-object v1, p0, Ljavax/activation/DataHandler;->i:Ljavax/activation/DataContentHandler;

    :cond_2
    iget-object v1, p0, Ljavax/activation/DataHandler;->i:Ljavax/activation/DataContentHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljavax/activation/DataHandler;->i:Ljavax/activation/DataContentHandler;

    iput-object v1, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    :cond_3
    iget-object v1, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    if-nez v1, :cond_4

    iget-object v1, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Ljavax/activation/DataHandler;->a()Ljavax/activation/CommandMap;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    invoke-virtual {v1, v0, v2}, Ljavax/activation/CommandMap;->createDataContentHandler(Ljava/lang/String;Ljavax/activation/DataSource;)Ljavax/activation/DataContentHandler;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    :cond_4
    :goto_1
    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    if-eqz v0, :cond_6

    new-instance v0, Ljavax/activation/c;

    iget-object v1, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    iget-object v2, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    invoke-direct {v0, v1, v2}, Ljavax/activation/c;-><init>(Ljavax/activation/DataContentHandler;Ljavax/activation/DataSource;)V

    iput-object v0, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    :goto_2
    iget-object v0, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Ljavax/activation/DataHandler;->a()Ljavax/activation/CommandMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/activation/CommandMap;->createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_2
    new-instance v0, Ljavax/activation/d;

    iget-object v1, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    iget-object v2, p0, Ljavax/activation/DataHandler;->c:Ljava/lang/Object;

    iget-object v3, p0, Ljavax/activation/DataHandler;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/d;-><init>(Ljavax/activation/DataContentHandler;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized c()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    new-instance v1, Ljavax/activation/MimeType;

    invoke-direct {v1, v0}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/activation/MimeType;->getBaseType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/activation/DataHandler;->l:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Ljavax/activation/DataHandler;->l:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_3
    iput-object v0, p0, Ljavax/activation/DataHandler;->l:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized setDataContentHandlerFactory(Ljavax/activation/DataContentHandlerFactory;)V
    .locals 4

    const-class v1, Ljavax/activation/DataHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljavax/activation/DataHandler;->j:Ljavax/activation/DataContentHandlerFactory;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    const-string v2, "DataContentHandlerFactory already defined"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :try_start_3
    sput-object p0, Ljavax/activation/DataHandler;->j:Ljavax/activation/DataContentHandlerFactory;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-class v2, Ljavax/activation/DataHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eq v2, v3, :cond_1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public getAllCommands()[Ljavax/activation/CommandInfo;
    .locals 3

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->a()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    invoke-virtual {v0, v1, v2}, Ljavax/activation/CommandMap;->getAllCommands(Ljava/lang/String;Ljavax/activation/DataSource;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljavax/activation/DataHandler;->a()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/activation/CommandMap;->getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getBean(Ljavax/activation/CommandInfo;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/activation/e;->a()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, p0, v1}, Ljavax/activation/CommandInfo;->getCommandObject(Ljavax/activation/DataHandler;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getCommand(Ljava/lang/String;)Ljavax/activation/CommandInfo;
    .locals 3

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->a()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    invoke-virtual {v0, v1, p1, v2}, Ljavax/activation/CommandMap;->getCommand(Ljava/lang/String;Ljava/lang/String;Ljavax/activation/DataSource;)Ljavax/activation/CommandInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljavax/activation/DataHandler;->a()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljavax/activation/CommandMap;->getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljavax/activation/DataHandler;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/activation/DataHandler;->c:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljavax/activation/DataHandler;->b()Ljavax/activation/DataContentHandler;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/activation/DataContentHandler;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDataSource()Ljavax/activation/DataSource;
    .locals 1

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavax/activation/DataHandler;->b:Ljavax/activation/DataSource;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/activation/b;

    invoke-direct {v0, p0}, Ljavax/activation/b;-><init>(Ljavax/activation/DataHandler;)V

    iput-object v0, p0, Ljavax/activation/DataHandler;->b:Ljavax/activation/DataSource;

    :cond_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->b:Ljavax/activation/DataSource;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljavax/activation/DataHandler;->b()Ljavax/activation/DataContentHandler;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljavax/activation/UnsupportedDataTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no DCH for MIME type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljavax/activation/DataHandler;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, v1, Ljavax/activation/d;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Ljavax/activation/d;

    invoke-virtual {v0}, Ljavax/activation/d;->a()Ljavax/activation/DataContentHandler;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljavax/activation/UnsupportedDataTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no object DCH for MIME type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljavax/activation/DataHandler;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v2, Ljava/io/PipedOutputStream;

    invoke-direct {v2}, Ljava/io/PipedOutputStream;-><init>()V

    new-instance v0, Ljava/io/PipedInputStream;

    invoke-direct {v0, v2}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ljavax/activation/a;

    invoke-direct {v4, p0, v2, v1}, Ljavax/activation/a;-><init>(Ljavax/activation/DataHandler;Ljava/io/PipedOutputStream;Ljavax/activation/DataContentHandler;)V

    const-string v1, "DataHandler.getInputStream"

    invoke-direct {v3, v4, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferredCommands()[Ljavax/activation/CommandInfo;
    .locals 3

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->a()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    invoke-virtual {v0, v1, v2}, Ljavax/activation/CommandMap;->getPreferredCommands(Ljava/lang/String;Ljavax/activation/DataSource;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljavax/activation/DataHandler;->a()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/activation/CommandMap;->getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getTransferData(Lmyjava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Ljavax/activation/DataHandler;->b()Ljavax/activation/DataContentHandler;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    invoke-interface {v0, p1, v1}, Ljavax/activation/DataContentHandler;->getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Ljavax/activation/DataHandler;->j:Ljavax/activation/DataContentHandlerFactory;

    iget-object v1, p0, Ljavax/activation/DataHandler;->k:Ljavax/activation/DataContentHandlerFactory;

    if-eq v0, v1, :cond_0

    sget-object v0, Ljavax/activation/DataHandler;->f:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->g:[Lmyjava/awt/datatransfer/DataFlavor;

    :cond_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->g:[Lmyjava/awt/datatransfer/DataFlavor;

    sget-object v1, Ljavax/activation/DataHandler;->f:[Lmyjava/awt/datatransfer/DataFlavor;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Ljavax/activation/DataHandler;->b()Ljavax/activation/DataContentHandler;

    move-result-object v0

    invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/DataHandler;->g:[Lmyjava/awt/datatransfer/DataFlavor;

    :cond_1
    iget-object v0, p0, Ljavax/activation/DataHandler;->g:[Lmyjava/awt/datatransfer/DataFlavor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDataFlavorSupported(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setCommandMap(Ljavax/activation/CommandMap;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->e:Ljavax/activation/CommandMap;

    if-ne p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Ljavax/activation/DataHandler;->f:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->g:[Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/DataHandler;->h:Ljavax/activation/DataContentHandler;

    iput-object p1, p0, Ljavax/activation/DataHandler;->e:Ljavax/activation/CommandMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4

    iget-object v0, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    if-eqz v0, :cond_1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iget-object v1, p0, Ljavax/activation/DataHandler;->a:Ljavax/activation/DataSource;

    invoke-interface {v1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    invoke-direct {p0}, Ljavax/activation/DataHandler;->b()Ljavax/activation/DataContentHandler;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/DataHandler;->c:Ljava/lang/Object;

    iget-object v2, p0, Ljavax/activation/DataHandler;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_1
.end method
