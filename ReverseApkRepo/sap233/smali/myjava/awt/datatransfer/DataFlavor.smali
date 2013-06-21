.class public Lmyjava/awt/datatransfer/DataFlavor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:[Ljava/lang/String; = null

.field private static b:Lmyjava/awt/datatransfer/DataFlavor; = null

.field public static final javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor; = null

.field public static final javaJVMLocalObjectMimeType:Ljava/lang/String; = "application/x-java-jvm-local-objectref"

.field public static final javaRemoteObjectMimeType:Ljava/lang/String; = "application/x-java-remote-object"

.field public static final javaSerializedObjectMimeType:Ljava/lang/String; = "application/x-java-serialized-object"

.field public static final plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Class;

.field private e:Lmyjava/awt/datatransfer/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "text/plain; charset=unicode; class=java.io.InputStream"

    const-string v2, "Plain Text"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "application/x-java-serialized-object; class=java.lang.String"

    const-string v2, "Unicode String"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "application/x-java-file-list; class=java.util.List"

    const-string v2, "application/x-java-file-list"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text/sgml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "text/xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "text/rtf"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text/enriched"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "text/richtext"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text/uri-list"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text/tab-separated-values"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text/t140"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "text/rfc822-headers"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "text/parityfec"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "text/directory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "text/css"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "text/calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "application/x-java-serialized-object"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->b:Lmyjava/awt/datatransfer/DataFlavor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmyjava/awt/datatransfer/b;

    const-string v1, "application"

    const-string v2, "x-java-serialized-object"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    const-string v1, "class"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmyjava/awt/datatransfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    return-void

    :cond_0
    const-string v0, "application/x-java-serialized-object"

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, v0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "awt.16C"

    iget-object v3, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    const-string v4, "class"

    invoke-virtual {v3, v4}, Lmyjava/awt/datatransfer/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "text/rtf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "text/tab-separated-values"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "text/t140"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "text/rfc822-headers"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "text/parityfec"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    const-string v3, "charset"

    invoke-virtual {v0, v3}, Lmyjava/awt/datatransfer/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    invoke-virtual {v3}, Lmyjava/awt/datatransfer/b;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/sgml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "text/xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "text/enriched"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "text/richtext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "text/uri-list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "text/directory"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "text/css"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "text/calendar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "application/x-java-serialized-object"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_2
    if-eqz v1, :cond_6

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    if-nez v0, :cond_1

    const-string v0, ""

    goto/16 :goto_1
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 7

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move v1, v2

    :goto_0
    array-length v0, v4

    if-lt v1, v0, :cond_1

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/DataFlavor;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    aget-object v5, v4, v2

    invoke-direct {v0}, Lmyjava/awt/datatransfer/DataFlavor;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_2
.end method

.method private static a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    iget-object v3, v0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    invoke-virtual {v3}, Lmyjava/awt/datatransfer/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 7

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/DataFlavor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v4, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, p1, v1

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v0}, Lmyjava/awt/datatransfer/DataFlavor;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lmyjava/awt/datatransfer/a;->a(Ljava/lang/String;)Lmyjava/awt/datatransfer/b;

    move-result-object v0

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    iput-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lmyjava/awt/datatransfer/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "java.io.InputStream"

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    const-string v2, "class"

    invoke-virtual {v1, v2, v0}, Lmyjava/awt/datatransfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p3, :cond_2

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "awt.16D"

    invoke-static {v1, p1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    iget-object v1, v1, Lmyjava/awt/datatransfer/b;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    iget-object v1, v1, Lmyjava/awt/datatransfer/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;
    .locals 2

    const/4 v1, 0x0

    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_0

    :cond_1
    const-class v0, [B

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_0

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    const-class v1, Ljava/io/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    const-class v1, Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    const-class v1, [C

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/util/List;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sget-object v2, Lmyjava/awt/datatransfer/DataFlavor;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-object v1

    :cond_1
    aget-object v4, v2, v0

    invoke-static {p0, v4}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final getTextPlainUnicodeFlavor()Lmyjava/awt/datatransfer/DataFlavor;
    .locals 3

    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->b:Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_0

    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "text/plain; charset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; class=java.io.InputStream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Plain Text"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->b:Lmyjava/awt/datatransfer/DataFlavor;

    :cond_0
    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->b:Lmyjava/awt/datatransfer/DataFlavor;

    return-object v0
.end method

.method public static final selectBestTextFlavor([Lmyjava/awt/datatransfer/DataFlavor;)Lmyjava/awt/datatransfer/DataFlavor;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_0

    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v1}, Lmyjava/awt/datatransfer/DataFlavor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->b(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-class v1, Ljava/io/Reader;

    invoke-static {v0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_0

    :cond_4
    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_0

    :cond_5
    const-class v1, Ljava/nio/CharBuffer;

    invoke-static {v0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_0

    :cond_6
    const-class v1, [C

    invoke-static {v0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "UTF-16"

    aput-object v3, v1, v5

    const-string v3, "UTF-8"

    aput-object v3, v1, v6

    const/4 v3, 0x2

    const-string v4, "UTF-16BE"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "UTF-16LE"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    new-array v1, v6, [Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "US-ASCII"

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    goto/16 :goto_0

    :cond_8
    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->b(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move-object v0, v2

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto :goto_1
.end method

.method protected static final tryToLoadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v1, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v1}, Lmyjava/awt/datatransfer/DataFlavor;-><init>()V

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    iput-object v0, v1, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    iput-object v0, v1, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/b;

    :goto_0
    iput-object v0, v1, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    check-cast p1, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, p1}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-nez v2, :cond_3

    iget-object v2, p1, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    iget-object v3, p1, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    invoke-virtual {v2, v3}, Lmyjava/awt/datatransfer/b;->a(Lmyjava/awt/datatransfer/b;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    iget-object v3, p1, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    iget-object v1, v1, Lmyjava/awt/datatransfer/b;->a:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lmyjava/awt/datatransfer/DataFlavor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_7
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getDefaultRepresentationClass()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final getDefaultRepresentationClassAsString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getDefaultRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHumanPresentableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lmyjava/awt/datatransfer/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lmyjava/awt/datatransfer/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v2, Lmyjava/awt/datatransfer/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "humanpresentablename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    invoke-virtual {v1, v0}, Lmyjava/awt/datatransfer/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrimaryType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    iget-object v0, v0, Lmyjava/awt/datatransfer/b;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReaderForText(Lmyjava/awt/datatransfer/Transferable;)Ljava/io/Reader;
    .locals 3

    invoke-interface {p1, p0}, Lmyjava/awt/datatransfer/Transferable;->getTransferData(Lmyjava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "awt.16E"

    invoke-static {v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v1, v0, Ljava/io/Reader;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    :goto_0
    return-object v0

    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/StringReader;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/CharArrayReader;

    check-cast v0, Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/CharArrayReader;-><init>([C)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    instance-of v1, v0, [C

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/CharArrayReader;

    check-cast v0, [C

    invoke-direct {v1, v0}, Ljava/io/CharArrayReader;-><init>([C)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->a()Ljava/lang/String;

    move-result-object v2

    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    instance-of v1, v0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/io/ByteArrayInputStream;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    instance-of v1, v0, [B

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/ByteArrayInputStream;

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "awt.16F"

    invoke-static {v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getRepresentationClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    iget-object v0, v0, Lmyjava/awt/datatransfer/b;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    iget-object v1, v1, Lmyjava/awt/datatransfer/b;->a:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";charset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isFlavorJavaFileListType()Z
    .locals 2

    const-class v0, Ljava/util/List;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlavorRemoteObjectType()Z
    .locals 1

    const-string v0, "application/x-java-remote-object"

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isRepresentationClassRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlavorSerializedObjectType()Z
    .locals 1

    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeSerializedObject()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isRepresentationClassSerializable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlavorTextType()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lmyjava/awt/datatransfer/DataFlavor;->stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v2}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lmyjava/awt/datatransfer/DataFlavor;->plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v2}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    iget-object v2, v2, Lmyjava/awt/datatransfer/b;->a:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    const-class v4, Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    const-class v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    const-class v4, [B

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    if-eqz v0, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Lmyjava/awt/datatransfer/DataFlavor;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public isMimeTypeEqual(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    invoke-static {p1}, Lmyjava/awt/datatransfer/a;->a(Ljava/lang/String;)Lmyjava/awt/datatransfer/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmyjava/awt/datatransfer/b;->a(Lmyjava/awt/datatransfer/b;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMimeTypeEqual(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 2

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    iget-object v1, p1, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    invoke-virtual {v0, v1}, Lmyjava/awt/datatransfer/b;->a(Lmyjava/awt/datatransfer/b;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMimeTypeSerializedObject()Z
    .locals 1

    const-string v0, "application/x-java-serialized-object"

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassByteBuffer()Z
    .locals 2

    const-class v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassCharBuffer()Z
    .locals 2

    const-class v0, Ljava/nio/CharBuffer;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassInputStream()Z
    .locals 2

    const-class v0, Ljava/io/InputStream;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassReader()Z
    .locals 2

    const-class v0, Ljava/io/Reader;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassRemote()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRepresentationClassSerializable()Z
    .locals 2

    const-class v0, Ljava/io/Serializable;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public match(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    return v0
.end method

.method protected normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p1
.end method

.method protected normalizeMimeTypeParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p2
.end method

.method public declared-synchronized readExternal(Ljava/io/ObjectInput;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/b;

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lmyjava/awt/datatransfer/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->d:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHumanPresentableName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[MimeType=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");humanPresentableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->e:Lmyjava/awt/datatransfer/b;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
