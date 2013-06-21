.class public Lorg/jibx/runtime/impl/StAXReaderWrapper;
.super Ljava/lang/Object;
.source "StAXReaderWrapper.java"

# interfaces
.implements Lorg/jibx/runtime/IXMLReader;


# static fields
.field static final s_eventTranslations:[B


# instance fields
.field private m_accumulatedText:Ljava/lang/String;

.field private final m_docName:Ljava/lang/String;

.field private m_encoding:Ljava/lang/String;

.field private m_inScopeCounts:Lorg/jibx/runtime/IntStack;

.field private m_inScopePrefixes:Lorg/jibx/runtime/impl/GrowableStringArray;

.field private m_inScopeUris:Lorg/jibx/runtime/impl/GrowableStringArray;

.field final m_isNamespaceAware:Z

.field private m_isProcessingInstruction:Z

.field m_nestingDepth:I

.field private final m_parser:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 49
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    .line 51
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    const/16 v1, 0xc

    aput-byte v6, v0, v1

    .line 52
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    aput-byte v2, v0, v2

    .line 53
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    const/16 v1, 0x9

    aput-byte v1, v0, v6

    .line 54
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    const/16 v1, 0xb

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 55
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    .line 57
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    aput-byte v5, v0, v4

    .line 59
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    const/16 v1, 0x9

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 61
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    const/16 v1, 0x8

    aput-byte v1, v0, v5

    .line 63
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    const/4 v1, 0x6

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    .line 65
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 67
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    aput-byte v4, v0, v3

    .line 69
    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;Ljava/lang/String;Z)V
    .locals 2
    .parameter "rdr"
    .parameter "name"
    .parameter "nsa"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    .line 112
    iput-object p2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_docName:Ljava/lang/String;

    .line 113
    iput-boolean p3, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_isNamespaceAware:Z

    .line 114
    new-instance v0, Lorg/jibx/runtime/IntStack;

    invoke-direct {v0}, Lorg/jibx/runtime/IntStack;-><init>()V

    iput-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopeCounts:Lorg/jibx/runtime/IntStack;

    .line 115
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopeCounts:Lorg/jibx/runtime/IntStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jibx/runtime/IntStack;->push(I)V

    .line 116
    new-instance v0, Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-direct {v0}, Lorg/jibx/runtime/impl/GrowableStringArray;-><init>()V

    iput-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopeUris:Lorg/jibx/runtime/impl/GrowableStringArray;

    .line 117
    new-instance v0, Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-direct {v0}, Lorg/jibx/runtime/impl/GrowableStringArray;-><init>()V

    iput-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopePrefixes:Lorg/jibx/runtime/impl/GrowableStringArray;

    .line 118
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lorg/jibx/runtime/impl/StAXReaderWrapper;->startTag()V

    .line 121
    :cond_0
    return-void
.end method

.method private endTag()V
    .locals 3

    .prologue
    .line 163
    iget v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_nestingDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_nestingDepth:I

    .line 164
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopeCounts:Lorg/jibx/runtime/IntStack;

    invoke-virtual {v1}, Lorg/jibx/runtime/IntStack;->pop()I

    move-result v2

    iget v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_nestingDepth:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopeCounts:Lorg/jibx/runtime/IntStack;

    invoke-virtual {v1}, Lorg/jibx/runtime/IntStack;->peek()I

    move-result v1

    :goto_0
    sub-int v0, v2, v1

    .line 166
    .local v0, count:I
    if-lez v0, :cond_0

    .line 167
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopeUris:Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-virtual {v1, v0}, Lorg/jibx/runtime/impl/GrowableStringArray;->remove(I)V

    .line 168
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopePrefixes:Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-virtual {v1, v0}, Lorg/jibx/runtime/impl/GrowableStringArray;->remove(I)V

    .line 170
    :cond_0
    return-void

    .line 164
    .end local v0           #count:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startTag()V
    .locals 4

    .prologue
    .line 149
    iget v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_nestingDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_nestingDepth:I

    .line 150
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v0

    .line 151
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 152
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopeUris:Lorg/jibx/runtime/impl/GrowableStringArray;

    iget-object v3, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v3, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jibx/runtime/impl/GrowableStringArray;->add(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopePrefixes:Lorg/jibx/runtime/impl/GrowableStringArray;

    iget-object v3, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v3, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jibx/runtime/impl/GrowableStringArray;->add(Ljava/lang/String;)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopeCounts:Lorg/jibx/runtime/IntStack;

    iget-object v3, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopeUris:Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-virtual {v3}, Lorg/jibx/runtime/impl/GrowableStringArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jibx/runtime/IntStack;->push(I)V

    .line 156
    return-void
.end method


# virtual methods
.method public buildPositionString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    .line 136
    .local v1, location:Ljavax/xml/stream/Location;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "(line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v1}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v1}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, base:Ljava/lang/String;
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_docName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 139
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_docName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 363
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;
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

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 374
    :try_start_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, uri:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 376
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v1           #uri:Ljava/lang/String;
    :cond_0
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 390
    :try_start_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v2, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, prefix:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 392
    const/4 v1, 0x0

    .line 394
    .end local v1           #prefix:Ljava/lang/String;
    :cond_0
    return-object v1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ns"
    .parameter "name"

    .prologue
    .line 420
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getDocumentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_docName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_accumulatedText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 312
    sget-object v0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v1

    aget-byte v0, v0, v1

    .line 316
    :goto_0
    return v0

    .line 313
    :cond_0
    iget-boolean v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_isProcessingInstruction:Z

    if-eqz v0, :cond_1

    .line 314
    const/16 v0, 0x8

    goto :goto_0

    .line 316
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_encoding:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, uri:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 333
    const-string v0, ""

    .line 335
    .end local v0           #uri:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "prefix"

    .prologue
    .line 492
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopePrefixes:Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-virtual {v2}, Lorg/jibx/runtime/impl/GrowableStringArray;->size()I

    move-result v1

    .line 493
    .local v1, index:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 494
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopePrefixes:Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-virtual {v2, v1}, Lorg/jibx/runtime/impl/GrowableStringArray;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, comp:Ljava/lang/String;
    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    :cond_2
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopeUris:Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-virtual {v2, v1}, Lorg/jibx/runtime/impl/GrowableStringArray;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 500
    .end local v0           #comp:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNamespaceCount(I)I
    .locals 2
    .parameter "depth"

    .prologue
    .line 445
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopeCounts:Lorg/jibx/runtime/IntStack;

    iget v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_nestingDepth:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/jibx/runtime/IntStack;->peek(I)I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 459
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopePrefixes:Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-virtual {v1, p1}, Lorg/jibx/runtime/impl/GrowableStringArray;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, prefix:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 463
    .end local v0           #prefix:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 452
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_inScopeUris:Lorg/jibx/runtime/impl/GrowableStringArray;

    invoke-virtual {v0, p1}, Lorg/jibx/runtime/impl/GrowableStringArray;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestingDepth()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_nestingDepth:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 343
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, prefix:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 347
    .end local v0           #prefix:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_accumulatedText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_accumulatedText:Ljava/lang/String;

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public isNamespaceAware()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_isNamespaceAware:Z

    return v0
.end method

.method public next()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, text:Ljava/lang/String;
    const/4 v0, 0x0

    .line 231
    .local v0, buff:Ljava/lang/StringBuffer;
    :try_start_0
    iget v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_nestingDepth:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    .line 233
    iget-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_encoding:Ljava/lang/String;

    .line 234
    iget-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_encoding:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 235
    iget-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_encoding:Ljava/lang/String;

    .line 239
    :cond_0
    iget-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_accumulatedText:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 240
    iget-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->next()I
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 246
    .end local v0           #buff:Ljava/lang/StringBuffer;
    .local v1, buff:Ljava/lang/StringBuffer;
    :goto_0
    :try_start_1
    sget-object v5, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    iget-object v6, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v6}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v6

    aget-byte v4, v5, v6
    :try_end_1
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    .local v4, type:I
    packed-switch v4, :pswitch_data_0

    move-object v0, v1

    .line 293
    .end local v1           #buff:Ljava/lang/StringBuffer;
    .restart local v0       #buff:Ljava/lang/StringBuffer;
    :goto_1
    :try_start_2
    iget-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-object v1, v0

    .end local v0           #buff:Ljava/lang/StringBuffer;
    .restart local v1       #buff:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 242
    .end local v1           #buff:Ljava/lang/StringBuffer;
    .end local v4           #type:I
    .restart local v0       #buff:Ljava/lang/StringBuffer;
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_accumulatedText:Ljava/lang/String;

    .line 243
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_isProcessingInstruction:Z
    :try_end_2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    .end local v0           #buff:Ljava/lang/StringBuffer;
    .restart local v1       #buff:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 250
    .restart local v4       #type:I
    :pswitch_0
    :try_start_3
    iget-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 251
    new-instance v5, Lorg/jibx/runtime/JiBXException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unexpanded entity reference in text at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/StAXReaderWrapper;->buildPositionString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_3 .. :try_end_3} :catch_0

    .line 301
    .end local v4           #type:I
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 302
    .end local v1           #buff:Ljava/lang/StringBuffer;
    .restart local v0       #buff:Ljava/lang/StringBuffer;
    .local v2, e:Ljavax/xml/stream/XMLStreamException;
    :goto_2
    new-instance v5, Lorg/jibx/runtime/JiBXException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Error parsing document "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/StAXReaderWrapper;->buildPositionString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 259
    .end local v0           #buff:Ljava/lang/StringBuffer;
    .end local v2           #e:Ljavax/xml/stream/XMLStreamException;
    .restart local v1       #buff:Ljava/lang/StringBuffer;
    .restart local v4       #type:I
    :cond_2
    :pswitch_1
    if-nez v3, :cond_3

    .line 260
    :try_start_4
    iget-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    .end local v1           #buff:Ljava/lang/StringBuffer;
    .restart local v0       #buff:Ljava/lang/StringBuffer;
    goto :goto_1

    .line 262
    .end local v0           #buff:Ljava/lang/StringBuffer;
    .restart local v1       #buff:Ljava/lang/StringBuffer;
    :cond_3
    if-nez v1, :cond_7

    .line 263
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_4 .. :try_end_4} :catch_0

    .line 265
    .end local v1           #buff:Ljava/lang/StringBuffer;
    .restart local v0       #buff:Ljava/lang/StringBuffer;
    :goto_3
    :try_start_5
    iget-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 301
    .end local v4           #type:I
    :catch_1
    move-exception v2

    goto :goto_2

    .line 270
    .end local v0           #buff:Ljava/lang/StringBuffer;
    .restart local v1       #buff:Ljava/lang/StringBuffer;
    .restart local v4       #type:I
    :pswitch_2
    if-nez v3, :cond_5

    .line 271
    :try_start_6
    invoke-direct {p0}, Lorg/jibx/runtime/impl/StAXReaderWrapper;->endTag()V

    .line 300
    .end local v4           #type:I
    :cond_4
    :goto_4
    return v4

    .line 277
    .restart local v4       #type:I
    :pswitch_3
    if-nez v3, :cond_5

    .line 278
    invoke-direct {p0}, Lorg/jibx/runtime/impl/StAXReaderWrapper;->startTag()V

    goto :goto_4

    .line 284
    :pswitch_4
    if-eqz v3, :cond_4

    .line 295
    :cond_5
    if-nez v1, :cond_6

    .line 296
    iput-object v3, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_accumulatedText:Ljava/lang/String;

    .line 300
    :goto_5
    const/4 v4, 0x4

    goto :goto_4

    .line 298
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_accumulatedText:Ljava/lang/String;
    :try_end_6
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :cond_7
    move-object v0, v1

    .end local v1           #buff:Ljava/lang/StringBuffer;
    .restart local v0       #buff:Ljava/lang/StringBuffer;
    goto :goto_3

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nextToken()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v3, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_accumulatedText:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 180
    :pswitch_0
    :try_start_0
    sget-object v3, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    iget-object v4, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v4

    aget-byte v0, v3, v4

    .line 181
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_1
    move v1, v0

    .line 220
    .end local v0           #code:I
    .local v1, code:B
    :goto_1
    return v1

    .line 184
    .end local v1           #code:B
    .restart local v0       #code:I
    :pswitch_2
    invoke-direct {p0}, Lorg/jibx/runtime/impl/StAXReaderWrapper;->startTag()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v0           #code:I
    :catch_0
    move-exception v2

    .line 208
    .local v2, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v3, Lorg/jibx/runtime/JiBXException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error parsing document "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/StAXReaderWrapper;->buildPositionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 188
    .end local v2           #e:Ljavax/xml/stream/XMLStreamException;
    .restart local v0       #code:I
    :pswitch_3
    :try_start_1
    invoke-direct {p0}, Lorg/jibx/runtime/impl/StAXReaderWrapper;->endTag()V

    goto :goto_0

    .line 192
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_accumulatedText:Ljava/lang/String;

    .line 194
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_isProcessingInstruction:Z

    .line 195
    :goto_2
    sget-object v3, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    iget-object v4, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v4

    aget-byte v3, v3, v4
    :try_end_1
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_0

    goto :goto_2

    .line 212
    .end local v0           #code:I
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_accumulatedText:Ljava/lang/String;

    .line 213
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_isProcessingInstruction:Z

    .line 214
    sget-object v3, Lorg/jibx/runtime/impl/StAXReaderWrapper;->s_eventTranslations:[B

    iget-object v4, p0, Lorg/jibx/runtime/impl/StAXReaderWrapper;->m_parser:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v4

    aget-byte v0, v3, v4

    .line 215
    .restart local v0       #code:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 216
    invoke-direct {p0}, Lorg/jibx/runtime/impl/StAXReaderWrapper;->startTag()V

    :cond_2
    :goto_3
    move v1, v0

    .line 220
    .restart local v1       #code:B
    goto :goto_1

    .line 217
    .end local v1           #code:B
    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 218
    invoke-direct {p0}, Lorg/jibx/runtime/impl/StAXReaderWrapper;->endTag()V

    goto :goto_3

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
