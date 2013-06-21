.class public Lorg/jibx/runtime/impl/GenericXMLWriter;
.super Lorg/jibx/runtime/impl/XMLWriterBase;
.source "GenericXMLWriter.java"


# instance fields
.field private m_escaper:Lorg/jibx/runtime/ICharacterEscaper;

.field private m_indent:Z

.field private m_indentBase:I

.field private m_indentPerLevel:I

.field private m_indentSequence:[C

.field private m_writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Lorg/jibx/runtime/impl/GenericXMLWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "base"
    .parameter "uris"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/XMLWriterBase;-><init>(Lorg/jibx/runtime/impl/XMLWriterBase;[Ljava/lang/String;)V

    .line 87
    iget-object v0, p1, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    iget-object v1, p1, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_escaper:Lorg/jibx/runtime/ICharacterEscaper;

    invoke-virtual {p0, v0, v1}, Lorg/jibx/runtime/impl/GenericXMLWriter;->setOutput(Ljava/io/Writer;Lorg/jibx/runtime/ICharacterEscaper;)V

    .line 88
    iget-boolean v0, p1, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indent:Z

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indent:Z

    .line 89
    iget v0, p1, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentBase:I

    iput v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentBase:I

    .line 90
    iget v0, p1, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentPerLevel:I

    iput v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentPerLevel:I

    .line 91
    iget-object v0, p1, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentSequence:[C

    iput-object v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentSequence:[C

    .line 92
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "uris"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterBase;-><init>([Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/GenericXMLWriter;->flush()V

    .line 292
    iget-object v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    .line 296
    :cond_0
    return-void
.end method

.method public createChildWriter([Ljava/lang/String;)Lorg/jibx/runtime/IXMLWriter;
    .locals 1
    .parameter "uris"

    .prologue
    .line 308
    new-instance v0, Lorg/jibx/runtime/impl/GenericXMLWriter;

    invoke-direct {v0, p0, p1}, Lorg/jibx/runtime/impl/GenericXMLWriter;-><init>(Lorg/jibx/runtime/impl/GenericXMLWriter;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected defineNamespace(ILjava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "prefix"

    .prologue
    .line 172
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
    .line 281
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/GenericXMLWriter;->flagContent()V

    .line 282
    return-void
.end method

.method public indent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/GenericXMLWriter;->indent(I)V

    .line 272
    return-void
.end method

.method public indent(I)V
    .locals 8
    .parameter "bias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 245
    iget-boolean v4, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indent:Z

    if-eqz v4, :cond_2

    .line 246
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/GenericXMLWriter;->flagContent()V

    .line 247
    iget v4, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentBase:I

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/GenericXMLWriter;->getNestingDepth()I

    move-result v5

    add-int/2addr v5, p1

    iget v6, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentPerLevel:I

    mul-int/2addr v5, v6

    add-int v2, v4, v5

    .line 249
    .local v2, length:I
    iget-object v4, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentSequence:[C

    array-length v4, v4

    if-le v2, v4, :cond_1

    .line 250
    iget-object v4, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentSequence:[C

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentBase:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 252
    .local v3, use:I
    new-array v0, v3, [C

    .line 253
    .local v0, grow:[C
    iget-object v4, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentSequence:[C

    iget-object v5, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentSequence:[C

    array-length v5, v5

    invoke-static {v4, v7, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget-object v4, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentSequence:[C

    array-length v1, v4

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 256
    iget v4, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentBase:I

    aget-char v4, v0, v4

    aput-char v4, v0, v1

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_0
    iput-object v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentSequence:[C

    .line 260
    .end local v0           #grow:[C
    .end local v1           #i:I
    .end local v3           #use:I
    :cond_1
    iget-object v4, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    iget-object v5, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentSequence:[C

    invoke-virtual {v4, v5, v7, v2}, Ljava/io/Writer;->write([CII)V

    .line 262
    .end local v2           #length:I
    :cond_2
    return-void
.end method

.method public setIndentSpaces(ILjava/lang/String;C)V
    .locals 4
    .parameter "count"
    .parameter "newline"
    .parameter "indent"

    .prologue
    .line 123
    if-ltz p1, :cond_2

    .line 124
    if-nez p2, :cond_0

    .line 125
    const-string p2, "\n"

    .line 127
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indent:Z

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentBase:I

    .line 129
    iput p1, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentPerLevel:I

    .line 130
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v3, p1, 0xa

    add-int v1, v2, v3

    .line 131
    .local v1, length:I
    new-array v2, v1, [C

    iput-object v2, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentSequence:[C

    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 133
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 134
    iget-object v2, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentSequence:[C

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v0

    .line 132
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    iget-object v2, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indentSequence:[C

    aput-char p3, v2, v0

    goto :goto_1

    .line 140
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_indent:Z

    .line 142
    :cond_3
    return-void
.end method

.method public setOutput(Ljava/io/Writer;Lorg/jibx/runtime/ICharacterEscaper;)V
    .locals 1
    .parameter "outw"
    .parameter "escaper"

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/GenericXMLWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iput-object p1, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    .line 107
    iput-object p2, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_escaper:Lorg/jibx/runtime/ICharacterEscaper;

    .line 108
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/GenericXMLWriter;->reset()V

    .line 109
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected undefineNamespace(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 179
    return-void
.end method

.method protected writeAttributeText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_escaper:Lorg/jibx/runtime/ICharacterEscaper;

    iget-object v1, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    invoke-interface {v0, p1, v1}, Lorg/jibx/runtime/ICharacterEscaper;->writeAttribute(Ljava/lang/String;Ljava/io/Writer;)V

    .line 210
    return-void
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/GenericXMLWriter;->flagTextContent()V

    .line 233
    iget-object v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_escaper:Lorg/jibx/runtime/ICharacterEscaper;

    iget-object v1, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    invoke-interface {v0, p1, v1}, Lorg/jibx/runtime/ICharacterEscaper;->writeCData(Ljava/lang/String;Ljava/io/Writer;)V

    .line 234
    return-void
.end method

.method protected writeMarkup(C)V
    .locals 1
    .parameter "chr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 164
    return-void
.end method

.method protected writeMarkup(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method protected writePrefix(I)V
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/GenericXMLWriter;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 193
    iget-object v2, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    return-void

    .line 196
    .end local v1           #text:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 197
    .local v0, ex:Ljava/lang/NullPointerException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Namespace URI has not been declared."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public writeTextContent(Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/GenericXMLWriter;->flagTextContent()V

    .line 221
    iget-object v0, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_escaper:Lorg/jibx/runtime/ICharacterEscaper;

    iget-object v1, p0, Lorg/jibx/runtime/impl/GenericXMLWriter;->m_writer:Ljava/io/Writer;

    invoke-interface {v0, p1, v1}, Lorg/jibx/runtime/ICharacterEscaper;->writeContent(Ljava/lang/String;Ljava/io/Writer;)V

    .line 222
    return-void
.end method
