.class public Lorg/jibx/runtime/impl/StAXReaderFactory;
.super Ljava/lang/Object;
.source "StAXReaderFactory.java"

# interfaces
.implements Lorg/jibx/runtime/impl/IXMLReaderFactory;


# static fields
.field static class$org$jibx$runtime$impl$StAXReaderFactory:Ljava/lang/Class;

.field private static final s_instance:Lorg/jibx/runtime/impl/StAXReaderFactory;


# instance fields
.field private final m_factory:Ljavax/xml/stream/XMLInputFactory;

.field private m_isNamespaceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/jibx/runtime/impl/StAXReaderFactory;

    invoke-direct {v0}, Lorg/jibx/runtime/impl/StAXReaderFactory;-><init>()V

    sput-object v0, Lorg/jibx/runtime/impl/StAXReaderFactory;->s_instance:Lorg/jibx/runtime/impl/StAXReaderFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    :try_start_0
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;
    :try_end_0
    .catch Ljavax/xml/stream/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 77
    .local v2, factory:Ljavax/xml/stream/XMLInputFactory;
    :goto_0
    iput-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderFactory;->m_factory:Ljavax/xml/stream/XMLInputFactory;

    .line 78
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/jibx/runtime/impl/StAXReaderFactory;->m_isNamespaceEnabled:Z

    .line 79
    return-void

    .line 66
    .end local v2           #factory:Ljavax/xml/stream/XMLInputFactory;
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljavax/xml/stream/FactoryConfigurationError;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 68
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 69
    .local v0, cl:Ljava/lang/ClassLoader;
    sget-object v4, Lorg/jibx/runtime/impl/StAXReaderFactory;->class$org$jibx$runtime$impl$StAXReaderFactory:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "org.jibx.runtime.impl.StAXReaderFactory"

    invoke-static {v4}, Lorg/jibx/runtime/impl/StAXReaderFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/jibx/runtime/impl/StAXReaderFactory;->class$org$jibx$runtime$impl$StAXReaderFactory:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 72
    :try_start_1
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 74
    .restart local v2       #factory:Ljavax/xml/stream/XMLInputFactory;
    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 69
    .end local v2           #factory:Ljavax/xml/stream/XMLInputFactory;
    :cond_0
    sget-object v4, Lorg/jibx/runtime/impl/StAXReaderFactory;->class$org$jibx$runtime$impl$StAXReaderFactory:Ljava/lang/Class;

    goto :goto_1

    .line 74
    :catchall_0
    move-exception v4

    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v4
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "x0"

    .prologue
    .line 70
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Lorg/jibx/runtime/impl/StAXReaderFactory;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderFactory;->s_instance:Lorg/jibx/runtime/impl/StAXReaderFactory;

    return-object v0
.end method

.method private setNamespacesState(Z)V
    .locals 4
    .parameter "nsf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 98
    iget-boolean v1, p0, Lorg/jibx/runtime/impl/StAXReaderFactory;->m_isNamespaceEnabled:Z

    if-eq p1, v1, :cond_0

    .line 100
    :try_start_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderFactory;->m_factory:Ljavax/xml/stream/XMLInputFactory;

    const-string v3, "javax.xml.stream.isNamespaceAware"

    if-eqz p1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v2, v3, v1}, Ljavax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iput-boolean p1, p0, Lorg/jibx/runtime/impl/StAXReaderFactory;->m_isNamespaceEnabled:Z

    .line 108
    :cond_0
    return-void

    .line 100
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Unable to create parser with required namespace handling"

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jibx/runtime/IXMLReader;
    .locals 4
    .parameter "is"
    .parameter "name"
    .parameter "enc"
    .parameter "nsf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    iget-object v3, p0, Lorg/jibx/runtime/impl/StAXReaderFactory;->m_factory:Ljavax/xml/stream/XMLInputFactory;

    monitor-enter v3
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    invoke-direct {p0, p4}, Lorg/jibx/runtime/impl/StAXReaderFactory;->setNamespacesState(Z)V

    .line 118
    if-nez p3, :cond_0

    .line 119
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderFactory;->m_factory:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v2, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v1

    .line 120
    .local v1, rdr:Ljavax/xml/stream/XMLStreamReader;
    new-instance v2, Lorg/jibx/runtime/impl/StAXReaderWrapper;

    invoke-direct {v2, v1, p2, p4}, Lorg/jibx/runtime/impl/StAXReaderWrapper;-><init>(Ljavax/xml/stream/XMLStreamReader;Ljava/lang/String;Z)V

    monitor-exit v3

    .line 124
    :goto_0
    return-object v2

    .line 122
    .end local v1           #rdr:Ljavax/xml/stream/XMLStreamReader;
    :cond_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderFactory;->m_factory:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v2, p1, p3}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v1

    .line 124
    .restart local v1       #rdr:Ljavax/xml/stream/XMLStreamReader;
    new-instance v2, Lorg/jibx/runtime/impl/StAXReaderWrapper;

    invoke-direct {v2, v1, p2, p4}, Lorg/jibx/runtime/impl/StAXReaderWrapper;-><init>(Ljavax/xml/stream/XMLStreamReader;Ljava/lang/String;Z)V

    monitor-exit v3

    goto :goto_0

    .line 126
    .end local v1           #rdr:Ljavax/xml/stream/XMLStreamReader;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    const-string v3, "Error creating parser"

    invoke-direct {v2, v3, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createReader(Ljava/io/Reader;Ljava/lang/String;Z)Lorg/jibx/runtime/IXMLReader;
    .locals 4
    .parameter "rdr"
    .parameter "name"
    .parameter "nsf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderFactory;->m_factory:Ljavax/xml/stream/XMLInputFactory;

    monitor-enter v2
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :try_start_1
    invoke-direct {p0, p3}, Lorg/jibx/runtime/impl/StAXReaderFactory;->setNamespacesState(Z)V

    .line 140
    new-instance v1, Lorg/jibx/runtime/impl/StAXReaderWrapper;

    iget-object v3, p0, Lorg/jibx/runtime/impl/StAXReaderFactory;->m_factory:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {v3, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3

    invoke-direct {v1, v3, p2, p3}, Lorg/jibx/runtime/impl/StAXReaderWrapper;-><init>(Ljavax/xml/stream/XMLStreamReader;Ljava/lang/String;Z)V

    monitor-exit v2

    return-object v1

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error creating parser"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public recycleReader(Lorg/jibx/runtime/IXMLReader;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/IXMLReader;
    .locals 1
    .parameter "old"
    .parameter "is"
    .parameter "name"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-interface {p1}, Lorg/jibx/runtime/IXMLReader;->isNamespaceAware()Z

    move-result v0

    invoke-virtual {p0, p2, p3, p4, v0}, Lorg/jibx/runtime/impl/StAXReaderFactory;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jibx/runtime/IXMLReader;

    move-result-object v0

    return-object v0
.end method

.method public recycleReader(Lorg/jibx/runtime/IXMLReader;Ljava/io/Reader;Ljava/lang/String;)Lorg/jibx/runtime/IXMLReader;
    .locals 1
    .parameter "old"
    .parameter "rdr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-interface {p1}, Lorg/jibx/runtime/IXMLReader;->isNamespaceAware()Z

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lorg/jibx/runtime/impl/StAXReaderFactory;->createReader(Ljava/io/Reader;Ljava/lang/String;Z)Lorg/jibx/runtime/IXMLReader;

    move-result-object v0

    return-object v0
.end method
