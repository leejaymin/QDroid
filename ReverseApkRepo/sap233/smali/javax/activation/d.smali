.class final Ljavax/activation/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private a:[Lmyjava/awt/datatransfer/DataFlavor;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private d:Ljavax/activation/DataContentHandler;


# direct methods
.method public constructor <init>(Ljavax/activation/DataContentHandler;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/activation/d;->a:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/d;->d:Ljavax/activation/DataContentHandler;

    iput-object p2, p0, Ljavax/activation/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Ljavax/activation/d;->c:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/d;->d:Ljavax/activation/DataContentHandler;

    return-void
.end method


# virtual methods
.method public final a()Ljavax/activation/DataContentHandler;
    .locals 1

    iget-object v0, p0, Ljavax/activation/d;->d:Ljavax/activation/DataContentHandler;

    return-object v0
.end method

.method public final getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljavax/activation/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljavax/activation/d;->d:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/activation/d;->d:Ljavax/activation/DataContentHandler;

    invoke-interface {v0, p1, p2}, Ljavax/activation/DataContentHandler;->getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljavax/activation/d;->getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/activation/d;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Lmyjava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Lmyjava/awt/datatransfer/UnsupportedFlavorException;-><init>(Lmyjava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method public final declared-synchronized getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/activation/d;->a:[Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/activation/d;->d:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/activation/d;->d:Ljavax/activation/DataContentHandler;

    invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/d;->a:[Lmyjava/awt/datatransfer/DataFlavor;

    :cond_0
    :goto_0
    iget-object v0, p0, Ljavax/activation/d;->a:[Lmyjava/awt/datatransfer/DataFlavor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/d;->a:[Lmyjava/awt/datatransfer/DataFlavor;

    iget-object v0, p0, Ljavax/activation/d;->a:[Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    new-instance v2, Ljavax/activation/ActivationDataFlavor;

    iget-object v3, p0, Ljavax/activation/d;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Ljavax/activation/d;->c:Ljava/lang/String;

    iget-object v5, p0, Ljavax/activation/d;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3

    iget-object v0, p0, Ljavax/activation/d;->d:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/activation/d;->d:Ljavax/activation/DataContentHandler;

    invoke-interface {v0, p1, p2, p3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    check-cast p1, [B

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljavax/activation/UnsupportedDataTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no object DCH for MIME type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/activation/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
