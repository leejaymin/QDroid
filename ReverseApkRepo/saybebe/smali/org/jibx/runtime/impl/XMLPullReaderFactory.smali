.class public Lorg/jibx/runtime/impl/XMLPullReaderFactory;
.super Ljava/lang/Object;
.source "XMLPullReaderFactory.java"

# interfaces
.implements Lorg/jibx/runtime/impl/IXMLReaderFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jibx/runtime/impl/XMLPullReaderFactory$1;,
        Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;
    }
.end annotation


# static fields
.field private static final DEFAULT_PARSER_NAME:Ljava/lang/String; = "org.xmlpull.mxp1.MXParserFactory"

.field static class$org$jibx$runtime$impl$XMLPullReaderFactory:Ljava/lang/Class;

.field private static final s_instance:Lorg/jibx/runtime/impl/XMLPullReaderFactory;


# instance fields
.field private final m_factory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 59
    .local v1, loader:Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    .line 60
    sget-object v3, Lorg/jibx/runtime/impl/XMLPullReaderFactory;->class$org$jibx$runtime$impl$XMLPullReaderFactory:Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string v3, "org.jibx.runtime.impl.XMLPullReaderFactory"

    invoke-static {v3}, Lorg/jibx/runtime/impl/XMLPullReaderFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/jibx/runtime/impl/XMLPullReaderFactory;->class$org$jibx$runtime$impl$XMLPullReaderFactory:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 63
    :cond_0
    :try_start_0
    const-string v3, "org.xmlpull.v1.XmlPullParserFactory"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 72
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 74
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 76
    :goto_2
    if-nez v0, :cond_3

    .line 77
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to create XMLPull parser"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_2
    sget-object v3, Lorg/jibx/runtime/impl/XMLPullReaderFactory;->class$org$jibx$runtime$impl$XMLPullReaderFactory:Ljava/lang/Class;

    goto :goto_0

    .line 80
    :cond_3
    new-instance v3, Lorg/jibx/runtime/impl/XMLPullReaderFactory;

    invoke-direct {v3, v0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory;-><init>(Lorg/xmlpull/v1/XmlPullParserFactory;)V

    sput-object v3, Lorg/jibx/runtime/impl/XMLPullReaderFactory;->s_instance:Lorg/jibx/runtime/impl/XMLPullReaderFactory;

    .line 81
    return-void

    .line 75
    :catch_0
    move-exception v3

    goto :goto_2

    .line 69
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private constructor <init>(Lorg/xmlpull/v1/XmlPullParserFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory;->m_factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 93
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "x0"

    .prologue
    .line 60
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

.method private createParser(Z)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3
    .parameter "nsf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory;->m_factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 114
    .local v0, parser:Lorg/xmlpull/v1/XmlPullParser;
    if-eqz p1, :cond_0

    .line 115
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 117
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lorg/jibx/runtime/impl/XMLPullReaderFactory;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lorg/jibx/runtime/impl/XMLPullReaderFactory;->s_instance:Lorg/jibx/runtime/impl/XMLPullReaderFactory;

    return-object v0
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
    .line 126
    :try_start_0
    new-instance v1, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;

    invoke-direct {p0, p4}, Lorg/jibx/runtime/impl/XMLPullReaderFactory;->createParser(Z)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lorg/jibx/runtime/impl/XMLPullReaderFactory$1;)V

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/jibx/runtime/impl/XMLPullReaderFactory;->recycleReader(Lorg/jibx/runtime/IXMLReader;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/IXMLReader;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error creating parser"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    .line 139
    :try_start_0
    new-instance v1, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;

    invoke-direct {p0, p3}, Lorg/jibx/runtime/impl/XMLPullReaderFactory;->createParser(Z)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lorg/jibx/runtime/impl/XMLPullReaderFactory$1;)V

    invoke-virtual {p0, v1, p1, p2}, Lorg/jibx/runtime/impl/XMLPullReaderFactory;->recycleReader(Lorg/jibx/runtime/IXMLReader;Ljava/io/Reader;Ljava/lang/String;)Lorg/jibx/runtime/IXMLReader;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
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
    .line 151
    move-object v0, p1

    check-cast v0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;

    invoke-static {v0, p2, p3, p4}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->access$100(Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-object p1
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
    .line 160
    move-object v0, p1

    check-cast v0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;

    invoke-static {v0, p2, p3}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->access$200(Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;Ljava/io/Reader;Ljava/lang/String;)V

    .line 161
    return-object p1
.end method
