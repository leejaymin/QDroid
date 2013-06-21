.class Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;
.super Ljava/lang/Object;
.source "XMLPullReaderFactory.java"

# interfaces
.implements Lorg/jibx/runtime/IXMLReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jibx/runtime/impl/XMLPullReaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XMLPullReader"
.end annotation


# instance fields
.field private m_byteBuffer:Lorg/jibx/runtime/impl/InByteBuffer;

.field private m_docName:Ljava/lang/String;

.field private m_encoding:Ljava/lang/String;

.field private final m_parser:Lorg/xmlpull/v1/XmlPullParser;

.field private m_streamWrapper:Lorg/jibx/runtime/impl/InputStreamWrapper;


# direct methods
.method private constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .parameter "parser"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 195
    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lorg/jibx/runtime/impl/XMLPullReaderFactory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method static access$100(Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->setDocument(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static access$200(Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->setDocument(Ljava/io/Reader;Ljava/lang/String;)V

    return-void
.end method

.method private describeException(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2
    .parameter "e"

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Error parsing document "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->buildPositionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setDocument(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "is"
    .parameter "name"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 208
    if-nez p3, :cond_1

    .line 209
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_streamWrapper:Lorg/jibx/runtime/impl/InputStreamWrapper;

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-direct {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;-><init>()V

    iput-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_streamWrapper:Lorg/jibx/runtime/impl/InputStreamWrapper;

    .line 211
    new-instance v1, Lorg/jibx/runtime/impl/InByteBuffer;

    invoke-direct {v1}, Lorg/jibx/runtime/impl/InByteBuffer;-><init>()V

    iput-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_byteBuffer:Lorg/jibx/runtime/impl/InByteBuffer;

    .line 212
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_streamWrapper:Lorg/jibx/runtime/impl/InputStreamWrapper;

    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_byteBuffer:Lorg/jibx/runtime/impl/InByteBuffer;

    invoke-virtual {v1, v2}, Lorg/jibx/runtime/impl/InputStreamWrapper;->setBuffer(Lorg/jibx/runtime/impl/IInByteBuffer;)V

    .line 216
    :goto_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_byteBuffer:Lorg/jibx/runtime/impl/InByteBuffer;

    invoke-virtual {v1, p1}, Lorg/jibx/runtime/impl/InByteBuffer;->setInput(Ljava/io/InputStream;)V

    .line 217
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_streamWrapper:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-virtual {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->getReader()Ljava/io/Reader;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->setDocument(Ljava/io/Reader;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_streamWrapper:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-virtual {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_encoding:Ljava/lang/String;

    .line 229
    :goto_1
    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_streamWrapper:Lorg/jibx/runtime/impl/InputStreamWrapper;

    invoke-virtual {v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->reset()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error initializing parser"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 220
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :try_start_1
    iput-object p2, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_docName:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_encoding:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1, p3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 226
    :catch_1
    move-exception v0

    .line 227
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error reading from stream"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setDocument(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 3
    .parameter "rdr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    iput-object p2, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_docName:Ljava/lang/String;

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_encoding:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error initializing parser"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public buildPositionString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "(line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", col "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, base:Ljava/lang/String;
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_docName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_docName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAttributeCount()I
    .locals 3

    .prologue
    .line 349
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 350
    .local v0, count:I
    if-gez v0, :cond_0

    .line 351
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal state error: not at start tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_0
    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 363
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->describeException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->describeException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 385
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->describeException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->describeException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ns"
    .parameter "name"

    .prologue
    .line 407
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->describeException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getDocumentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_docName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error parsing document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 316
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 318
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal state error: not at start or end tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_0
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, uri:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 331
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal state error: not at start or end tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_0
    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "prefix"

    .prologue
    .line 485
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceCount(I)I
    .locals 3
    .parameter "depth"

    .prologue
    .line 432
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->describeException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 454
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->describeException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 443
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->describeException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNestingDepth()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public isNamespaceAware()Z
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error accessing document"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 294
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 295
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error parsing document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nextToken()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->m_parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error accessing document"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 280
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 281
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error parsing document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLPullReaderFactory$XMLPullReader;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
