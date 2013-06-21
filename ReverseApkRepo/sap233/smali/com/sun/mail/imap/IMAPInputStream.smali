.class public Lcom/sun/mail/imap/IMAPInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private a:Lcom/sun/mail/imap/IMAPMessage;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:[B

.field private g:I

.field private h:I

.field private i:Z

.field private j:Lcom/sun/mail/iap/ByteArray;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->a:Lcom/sun/mail/imap/IMAPMessage;

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPInputStream;->b:Ljava/lang/String;

    iput p3, p0, Lcom/sun/mail/imap/IMAPInputStream;->e:I

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPInputStream;->i:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->c:I

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->d:I

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->a:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->a:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/FolderClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->a:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/mail/util/MessageRemovedIOException;

    invoke-direct {v0}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->a:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v0}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    return-void

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 7

    const/4 v3, -0x1

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->e:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->c:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->e:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->c:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->j:Lcom/sun/mail/iap/ByteArray;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->j:Lcom/sun/mail/iap/ByteArray;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->d:I

    add-int/lit8 v1, v1, 0x40

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->j:Lcom/sun/mail/iap/ByteArray;

    :cond_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->a:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->a:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->a:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/sun/mail/util/MessageRemovedIOException;

    const-string v1, "No content for expunged message"

    invoke-direct {v0, v1}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/FolderClosedException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->a()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->a:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v1

    iget v4, p0, Lcom/sun/mail/imap/IMAPInputStream;->d:I

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->e:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->c:I

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->d:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->e:I

    if-le v2, v3, :cond_4

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->e:I

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->c:I

    sub-int v4, v2, v3

    :cond_4
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->i:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->b:Ljava/lang/String;

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->c:I

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->j:Lcom/sun/mail/iap/ByteArray;

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/mail/FolderClosedException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_5
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->a()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No content"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :try_start_4
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->b:Ljava/lang/String;

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->c:I

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->j:Lcom/sun/mail/iap/ByteArray;

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/mail/FolderClosedException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v1, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v0}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    :cond_7
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->c:I

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->c()V

    :cond_8
    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->f:[B

    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->getStart()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->h:I

    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v0

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->g:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->c:I

    goto/16 :goto_0
.end method

.method private c()V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->a:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/mail/Folder;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->a:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/IMAPMessage;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->a:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sun/mail/imap/IMAPMessage;->setFlag(Ljavax/mail/Flags$Flag;Z)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->g:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->h:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->g:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->b()V

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->h:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->f:[B

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->h:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/imap/IMAPInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->g:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->h:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->b()V

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->g:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    if-ge v0, p3, :cond_1

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->f:[B

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->h:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, p3

    goto :goto_1
.end method
