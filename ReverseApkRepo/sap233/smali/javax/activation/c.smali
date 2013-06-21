.class final Ljavax/activation/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private a:Ljavax/activation/DataSource;

.field private b:[Lmyjava/awt/datatransfer/DataFlavor;

.field private c:Ljavax/activation/DataContentHandler;


# direct methods
.method public constructor <init>(Ljavax/activation/DataContentHandler;Ljavax/activation/DataSource;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/activation/c;->a:Ljavax/activation/DataSource;

    iput-object v0, p0, Ljavax/activation/c;->b:[Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/c;->c:Ljavax/activation/DataContentHandler;

    iput-object p2, p0, Ljavax/activation/c;->a:Ljavax/activation/DataSource;

    iput-object p1, p0, Ljavax/activation/c;->c:Ljavax/activation/DataContentHandler;

    return-void
.end method


# virtual methods
.method public final getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljavax/activation/c;->c:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/activation/c;->c:Ljavax/activation/DataContentHandler;

    invoke-interface {v0, p1}, Ljavax/activation/DataContentHandler;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljavax/activation/c;->c:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/activation/c;->c:Ljavax/activation/DataContentHandler;

    invoke-interface {v0, p1, p2}, Ljavax/activation/DataContentHandler;->getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljavax/activation/c;->getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lmyjava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Lmyjava/awt/datatransfer/UnsupportedFlavorException;-><init>(Lmyjava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method public final getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .locals 5

    iget-object v0, p0, Ljavax/activation/c;->b:[Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/activation/c;->c:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/activation/c;->c:Ljavax/activation/DataContentHandler;

    invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/c;->b:[Lmyjava/awt/datatransfer/DataFlavor;

    :cond_0
    :goto_0
    iget-object v0, p0, Ljavax/activation/c;->b:[Lmyjava/awt/datatransfer/DataFlavor;

    return-object v0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    iput-object v0, p0, Ljavax/activation/c;->b:[Lmyjava/awt/datatransfer/DataFlavor;

    iget-object v0, p0, Ljavax/activation/c;->b:[Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    new-instance v2, Ljavax/activation/ActivationDataFlavor;

    iget-object v3, p0, Ljavax/activation/c;->a:Ljavax/activation/DataSource;

    invoke-interface {v3}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljavax/activation/c;->a:Ljavax/activation/DataSource;

    invoke-interface {v4}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public final writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3

    iget-object v0, p0, Ljavax/activation/c;->c:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/activation/c;->c:Ljavax/activation/DataContentHandler;

    invoke-interface {v0, p1, p2, p3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance v0, Ljavax/activation/UnsupportedDataTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no DCH for content type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/activation/c;->a:Ljavax/activation/DataSource;

    invoke-interface {v2}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
