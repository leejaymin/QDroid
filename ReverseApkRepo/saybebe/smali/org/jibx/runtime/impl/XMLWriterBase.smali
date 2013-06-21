.class public abstract Lorg/jibx/runtime/impl/XMLWriterBase;
.super Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;
.source "XMLWriterBase.java"

# interfaces
.implements Lorg/jibx/runtime/IExtensibleWriter;


# instance fields
.field private m_afterFirst:Z

.field private m_contentSeen:Z

.field private m_textSeen:Z


# direct methods
.method public constructor <init>(Lorg/jibx/runtime/impl/XMLWriterBase;[Ljava/lang/String;)V
    .locals 1
    .parameter "base"
    .parameter "uris"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;-><init>(Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;[Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_contentSeen:Z

    .line 77
    iget-boolean v0, p1, Lorg/jibx/runtime/impl/XMLWriterBase;->m_afterFirst:Z

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_afterFirst:Z

    .line 78
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "uris"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;-><init>([Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_contentSeen:Z

    .line 65
    return-void
.end method

.method private indentAfterFirst()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_afterFirst:Z

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->indent(I)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_afterFirst:Z

    goto :goto_0
.end method


# virtual methods
.method public addAttribute(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 259
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterBase;->writePrefix(I)V

    .line 260
    invoke-virtual {p0, p2}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 261
    const-string v0, "=\""

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p3}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeAttributeText(Ljava/lang/String;)V

    .line 263
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 264
    return-void
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public closeEmptyTag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v0, "/>"

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->incrementNesting()V

    .line 284
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->decrementNesting()V

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_contentSeen:Z

    .line 286
    return-void
.end method

.method public closeStartTag()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    return-void
.end method

.method public endTag(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_contentSeen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_textSeen:Z

    if-nez v0, :cond_0

    .line 332
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->indent(I)V

    .line 336
    :cond_0
    iget-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_contentSeen:Z

    if-eqz v0, :cond_1

    .line 339
    const-string v0, "</"

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterBase;->writePrefix(I)V

    .line 341
    invoke-virtual {p0, p2}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 342
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 352
    :goto_0
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->decrementNesting()V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_textSeen:Z

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_contentSeen:Z

    .line 355
    return-void

    .line 347
    :cond_1
    const-string v0, "/>"

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->incrementNesting()V

    goto :goto_0
.end method

.method protected final flagContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_contentSeen:Z

    if-nez v0, :cond_0

    .line 134
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 135
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->incrementNesting()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_contentSeen:Z

    .line 138
    :cond_0
    return-void
.end method

.method protected final flagTextContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->flagContent()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_textSeen:Z

    .line 149
    return-void
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract indent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public init()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 459
    iput-boolean v1, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_textSeen:Z

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_contentSeen:Z

    .line 461
    iput-boolean v1, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_afterFirst:Z

    .line 462
    invoke-super {p0}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->reset()V

    .line 463
    return-void
.end method

.method public startTagClosed(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->flagContent()V

    .line 314
    invoke-direct {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->indentAfterFirst()V

    .line 315
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 316
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterBase;->writePrefix(I)V

    .line 317
    invoke-virtual {p0, p2}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_contentSeen:Z

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_textSeen:Z

    .line 319
    return-void
.end method

.method public startTagNamespaces(ILjava/lang/String;[I[Ljava/lang/String;)V
    .locals 5
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
    .line 224
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->flagContent()V

    .line 225
    invoke-virtual {p0, p3, p4}, Lorg/jibx/runtime/impl/XMLWriterBase;->openNamespaces([I[Ljava/lang/String;)[I

    move-result-object v0

    .line 228
    .local v0, deltas:[I
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/XMLWriterBase;->startTagOpen(ILjava/lang/String;)V

    .line 231
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 232
    aget v3, v0, v1

    .line 233
    .local v3, slot:I
    invoke-virtual {p0, v3}, Lorg/jibx/runtime/impl/XMLWriterBase;->internalNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, prefix:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 235
    const-string v4, " xmlns:"

    invoke-virtual {p0, v4}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, v2}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 237
    const-string v4, "=\""

    invoke-virtual {p0, v4}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 241
    :goto_1
    invoke-virtual {p0, v3}, Lorg/jibx/runtime/impl/XMLWriterBase;->internalNamespaceUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeAttributeText(Ljava/lang/String;)V

    .line 242
    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_0
    const-string v4, " xmlns=\""

    invoke-virtual {p0, v4}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    goto :goto_1

    .line 244
    .end local v2           #prefix:Ljava/lang/String;
    .end local v3           #slot:I
    :cond_1
    return-void
.end method

.method public startTagOpen(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->flagContent()V

    .line 199
    invoke-direct {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->indentAfterFirst()V

    .line 200
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 201
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterBase;->writePrefix(I)V

    .line 202
    invoke-virtual {p0, p2}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_contentSeen:Z

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_textSeen:Z

    .line 204
    return-void
.end method

.method protected abstract writeAttributeText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->flagContent()V

    .line 365
    const-string v0, "<!--"

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 367
    const-string v0, "-->"

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public writeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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
    .line 395
    invoke-direct {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->indentAfterFirst()V

    .line 396
    const-string v0, "<!DOCTYPE "

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 398
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 399
    if-eqz p2, :cond_0

    .line 400
    if-nez p3, :cond_2

    .line 401
    const-string v0, "SYSTEM \""

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, p2}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 409
    :goto_0
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 411
    :cond_0
    if-eqz p4, :cond_1

    .line 412
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 413
    invoke-virtual {p0, p4}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 414
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 416
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 417
    return-void

    .line 404
    :cond_2
    const-string v0, "PUBLIC \""

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0, p3}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 406
    const-string v0, "\" \""

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0, p2}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->flagContent()V

    .line 378
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 379
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 380
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 381
    return-void
.end method

.method protected abstract writeMarkup(C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract writeMarkup(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writePI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->flagContent()V

    .line 428
    invoke-direct {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->indentAfterFirst()V

    .line 429
    const-string v0, "<?"

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 431
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(C)V

    .line 432
    invoke-virtual {p0, p2}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 433
    const-string v0, "?>"

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method protected abstract writePrefix(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeXMLDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "version"
    .parameter "encoding"
    .parameter "standalone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_afterFirst:Z

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XML declaration must be written before any other output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    const-string v0, "<?xml version=\""

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeAttributeText(Ljava/lang/String;)V

    .line 176
    if-eqz p2, :cond_1

    .line 177
    const-string v0, "\" encoding=\""

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, p2}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeAttributeText(Ljava/lang/String;)V

    .line 180
    :cond_1
    if-eqz p3, :cond_2

    .line 181
    const-string v0, "\" standalone=\""

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, p3}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeAttributeText(Ljava/lang/String;)V

    .line 184
    :cond_2
    const-string v0, "\"?>"

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterBase;->writeMarkup(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jibx/runtime/impl/XMLWriterBase;->m_afterFirst:Z

    .line 187
    return-void
.end method
