.class public final Lorg/apache/harmony/awt/datatransfer/DataProxy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/awt/datatransfer/Transferable;


# static fields
.field public static final charsetTextClasses:[Ljava/lang/Class;

.field public static final unicodeTextClasses:[Ljava/lang/Class;


# instance fields
.field private final a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

.field private final b:Ljava/awt/datatransfer/SystemFlavorMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/io/Reader;

    aput-object v1, v0, v3

    const-class v1, Ljava/nio/CharBuffer;

    aput-object v1, v0, v4

    const-class v1, [C

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->unicodeTextClasses:[Ljava/lang/Class;

    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, [B

    aput-object v1, v0, v2

    const-class v1, Ljava/nio/ByteBuffer;

    aput-object v1, v0, v3

    const-class v1, Ljava/io/InputStream;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->charsetTextClasses:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/awt/datatransfer/DataProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-static {}, Ljava/awt/datatransfer/SystemFlavorMap;->getDefaultFlavorMap()Ljava/awt/datatransfer/FlavorMap;

    move-result-object v0

    check-cast v0, Ljava/awt/datatransfer/SystemFlavorMap;

    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->b:Ljava/awt/datatransfer/SystemFlavorMap;

    return-void
.end method

.method private a(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "application/x-java-url"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getURL()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "awt.4F"

    invoke-static {v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassReader()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassCharBuffer()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    const-string v0, "charset"

    invoke-virtual {p1, v0}, Ljava/awt/datatransfer/DataFlavor;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [B

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassByteBuffer()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassInputStream()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method private static a(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z
    .locals 2

    iget v0, p0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    const/high16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    const v1, 0xff00

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Ljava/awt/datatransfer/SystemFlavorMap;->encodeDataFlavor(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v1, v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getSerializedObject(Ljava/lang/Class;)[B

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "awt.4F"

    invoke-static {v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static b(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z
    .locals 2

    iget v0, p0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    const v1, 0xff00

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    const/high16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getDataProvider()Lorg/apache/harmony/awt/datatransfer/DataProvider;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    return-object v0
.end method

.method public final getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "text/html"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getHTML()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "awt.4F"

    invoke-static {v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string v1, "text/uri-list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "text/plain"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "awt.4F"

    invoke-static {v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorJavaFileListType()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "application/x-java-file-list"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getFileList()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "awt.4F"

    invoke-static {v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorSerializedObjectType()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->b(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_a
    sget-object v1, Lorg/apache/harmony/awt/datatransfer/DataProvider;->urlFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {p1, v1}, Ljava/awt/datatransfer/DataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_b
    const-string v1, "image/x-java-image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-class v0, Ljava/awt/Image;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "image/x-java-image"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getRawBitmap()Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    move-result-object v9

    if-nez v9, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "awt.4F"

    invoke-static {v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-eqz v9, :cond_e

    iget-object v0, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    if-eqz v0, :cond_e

    iget v0, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    if-lez v0, :cond_e

    iget v0, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    if-gtz v0, :cond_f

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_12

    iget-object v2, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_12

    invoke-static {v9}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {v9}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->b(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x3

    new-array v4, v0, [I

    const/4 v0, 0x0

    iget v1, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    aput v1, v4, v0

    const/4 v0, 0x1

    iget v1, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    aput v1, v4, v0

    const/4 v0, 0x2

    iget v1, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    aput v1, v4, v0

    iget-object v0, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [I

    new-instance v6, Ljava/awt/image/DirectColorModel;

    const/16 v0, 0x18

    iget v2, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    iget v3, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    iget v5, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    invoke-direct {v6, v0, v2, v3, v5}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    new-instance v0, Ljava/awt/image/DataBufferInt;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Ljava/awt/image/DataBufferInt;-><init>([II)V

    iget v1, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    iget v2, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    iget v3, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->stride:I

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    move-object v1, v0

    move-object v2, v6

    :goto_1
    if-eqz v2, :cond_11

    if-nez v1, :cond_17

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_12
    iget v2, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v3, 0x18

    if-ne v2, v3, :cond_15

    iget-object v2, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_15

    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-static {v9}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v3, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x2

    aput v3, v0, v1

    move-object v8, v0

    :goto_2
    iget-object v0, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [B

    new-instance v0, Ljava/awt/image/ComponentColorModel;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    new-instance v1, Ljava/awt/image/DataBufferByte;

    array-length v2, v7

    invoke-direct {v1, v7, v2}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    iget v2, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    iget v3, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    iget v4, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->stride:I

    const/4 v5, 0x3

    const/4 v7, 0x0

    move-object v6, v8

    invoke-static/range {v1 .. v7}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    move-object v2, v0

    goto :goto_1

    :cond_13
    invoke-static {v9}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->b(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v3, 0x2

    aput v3, v0, v1

    const/4 v1, 0x1

    const/4 v3, 0x1

    aput v3, v0, v1

    move-object v8, v0

    goto :goto_2

    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_15
    iget v2, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_16

    iget v2, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_19

    :cond_16
    iget-object v2, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v2, v2, [S

    if-eqz v2, :cond_19

    const/4 v0, 0x3

    new-array v4, v0, [I

    const/4 v0, 0x0

    iget v1, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    aput v1, v4, v0

    const/4 v0, 0x1

    iget v1, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    aput v1, v4, v0

    const/4 v0, 0x2

    iget v1, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    aput v1, v4, v0

    iget-object v0, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [S

    new-instance v6, Ljava/awt/image/DirectColorModel;

    iget v0, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    iget v2, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    iget v3, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    iget v5, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    invoke-direct {v6, v0, v2, v3, v5}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    new-instance v0, Ljava/awt/image/DataBufferUShort;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Ljava/awt/image/DataBufferUShort;-><init>([SI)V

    iget v1, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    iget v2, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    iget v3, v9, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->stride:I

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    move-object v1, v0

    move-object v2, v6

    goto/16 :goto_1

    :cond_17
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    goto/16 :goto_0

    :cond_18
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0

    :cond_19
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_1

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->a:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getNativeFormats()[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-lt v1, v0, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/datatransfer/DataFlavor;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->b:Ljava/awt/datatransfer/SystemFlavorMap;

    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/awt/datatransfer/SystemFlavorMap;->getFlavorsForNative(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final isDataFlavorSupported(Ljava/awt/datatransfer/DataFlavor;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/awt/datatransfer/DataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
