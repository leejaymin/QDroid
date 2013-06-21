.class public Lorg/jibx/runtime/impl/StAXWriter;
.super Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;
.source "StAXWriter.java"

# interfaces
.implements Lorg/jibx/runtime/IExtensibleWriter;


# instance fields
.field private m_writer:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Lorg/jibx/runtime/impl/StAXWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "base"
    .parameter "uris"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;-><init>(Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;[Ljava/lang/String;)V

    .line 84
    iget-object v0, p1, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    iput-object v0, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    .line 85
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "uris"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;-><init>([Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0
    .parameter "uris"
    .parameter "wrtr"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/StAXWriter;-><init>([Ljava/lang/String;)V

    .line 72
    iput-object p2, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    .line 73
    return-void
.end method


# virtual methods
.method public addAttribute(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/StAXWriter;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/StAXWriter;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error writing to stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->close()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error closing stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public closeEmptyTag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 224
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/StAXWriter;->decrementNesting()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error writing to stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public closeStartTag()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    return-void
.end method

.method public createChildWriter([Ljava/lang/String;)Lorg/jibx/runtime/IXMLWriter;
    .locals 1
    .parameter "uris"

    .prologue
    .line 367
    new-instance v0, Lorg/jibx/runtime/impl/StAXWriter;

    invoke-direct {v0, p0, p1}, Lorg/jibx/runtime/impl/StAXWriter;-><init>(Lorg/jibx/runtime/impl/StAXWriter;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected defineNamespace(ILjava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public endTag(ILjava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/StAXWriter;->closeEmptyTag()V

    .line 243
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    return-void
.end method

.method public indent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public setIndentSpaces(ILjava/lang/String;C)V
    .locals 0
    .parameter "count"
    .parameter "newline"
    .parameter "indent"

    .prologue
    .line 130
    return-void
.end method

.method public setWriter(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0
    .parameter "wrtr"

    .prologue
    .line 99
    iput-object p1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    .line 100
    return-void
.end method

.method public startTagClosed(ILjava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/StAXWriter;->startTagOpen(ILjava/lang/String;)V

    .line 235
    return-void
.end method

.method public startTagNamespaces(ILjava/lang/String;[I[Ljava/lang/String;)V
    .locals 9
    .parameter "index"
    .parameter "name"
    .parameter "nums"
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p0, p3, p4}, Lorg/jibx/runtime/impl/StAXWriter;->openNamespaces([I[Ljava/lang/String;)[I

    move-result-object v0

    .line 176
    .local v0, deltas:[I
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/StAXWriter;->startTagOpen(ILjava/lang/String;)V

    .line 179
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_1

    .line 180
    aget v4, v0, v2

    .line 181
    .local v4, slot:I
    invoke-virtual {p0, v4}, Lorg/jibx/runtime/impl/StAXWriter;->internalNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, prefix:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/jibx/runtime/impl/StAXWriter;->internalNamespaceUri(I)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, uri:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 184
    iget-object v6, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v6, v3, v5}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget-object v6, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v6, v5}, Ljavax/xml/stream/XMLStreamWriter;->writeDefaultNamespace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 190
    .end local v0           #deltas:[I
    .end local v2           #i:I
    .end local v3           #prefix:Ljava/lang/String;
    .end local v4           #slot:I
    .end local v5           #uri:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Error writing to stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v1}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 193
    .end local v1           #e:Ljavax/xml/stream/XMLStreamException;
    .restart local v0       #deltas:[I
    .restart local v2       #i:I
    :cond_1
    return-void
.end method

.method public startTagOpen(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 158
    :goto_0
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/StAXWriter;->incrementNesting()V

    .line 163
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/StAXWriter;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/StAXWriter;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error writing to stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected undefineNamespace(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 125
    return-void
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error writing to stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error writing to stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "sys"
    .parameter "pub"
    .parameter "subset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 296
    .local v0, buff:Ljava/lang/StringBuffer;
    const-string v2, "<!DOCTYPE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 299
    if-eqz p2, :cond_0

    .line 300
    if-nez p3, :cond_2

    .line 301
    const-string v2, "SYSTEM \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    :goto_0
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 311
    :cond_0
    if-eqz p4, :cond_1

    .line 312
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 313
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 316
    :cond_1
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 317
    iget-object v2, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    .line 321
    return-void

    .line 304
    :cond_2
    const-string v2, "PUBLIC \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    const-string v2, "\" \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    .end local v0           #buff:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 319
    .local v1, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Error writing to stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error writing to stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writePI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error writing to stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeTextContent(Ljava/lang/String;)V
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error writing to stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeXMLDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "version"
    .parameter "encoding"
    .parameter "standalone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/StAXWriter;->m_writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1, p2, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error writing to stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/stream/XMLStreamException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
