.class public Lgnu/kawa/xml/HttpPrinter;
.super Lgnu/lists/FilterConsumer;
.source "HttpPrinter.java"


# instance fields
.field currentHeader:Ljava/lang/Object;

.field private elementNesting:I

.field headers:Ljava/util/Vector;

.field protected ostream:Ljava/io/OutputStream;

.field protected sawContentType:Ljava/lang/String;

.field sbuf:Ljava/lang/StringBuilder;

.field private seenStartDocument:I

.field seenXmlHeader:Z

.field writer:Lgnu/mapping/OutPort;


# direct methods
.method public constructor <init>(Lgnu/mapping/OutPort;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    .line 46
    iput-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    .line 39
    iput-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    .line 41
    return-void
.end method

.method public static make(Lgnu/mapping/OutPort;)Lgnu/kawa/xml/HttpPrinter;
    .locals 1
    .parameter "out"

    .prologue
    .line 52
    new-instance v0, Lgnu/kawa/xml/HttpPrinter;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/HttpPrinter;-><init>(Lgnu/mapping/OutPort;)V

    return-object v0
.end method

.method private writeRaw(Ljava/lang/String;)V
    .locals 4
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    invoke-virtual {v2, p1}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 63
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 64
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "label"
    .parameter "value"

    .prologue
    .line 90
    const-string v0, "Content-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iput-object p2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    .line 92
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 3
    .parameter "csq"

    .prologue
    .line 214
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 226
    :goto_0
    return-object p0

    .line 222
    :cond_0
    if-nez p1, :cond_1

    .line 223
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    const-string v1, "null"

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 1
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 197
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 209
    :goto_0
    return-object p0

    .line 208
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/HttpPrinter;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xml/HttpPrinter;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public beginData()V
    .locals 5

    .prologue
    const-string v4, "text/html"

    .line 120
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v2, :cond_4

    .line 122
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 123
    const-string v2, "Content-type"

    const-string v3, "text/html"

    invoke-virtual {p0, v2, v4}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-nez v2, :cond_1

    .line 125
    new-instance v2, Lgnu/mapping/OutPort;

    iget-object v3, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    .line 126
    :cond_1
    const/4 v1, 0x0

    .line 127
    .local v1, style:Ljava/lang/String;
    const-string v2, "text/html"

    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 128
    const-string v1, "html"

    .line 133
    :cond_2
    :goto_0
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    invoke-static {v2, v1}, Lgnu/xml/XMLPrinter;->make(Lgnu/mapping/OutPort;Ljava/lang/Object;)Lgnu/xml/XMLPrinter;

    move-result-object v2

    iput-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    .line 134
    iget v2, p0, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    if-nez v2, :cond_3

    .line 136
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v2}, Lgnu/lists/Consumer;->startDocument()V

    .line 137
    const/4 v2, 0x1

    iput v2, p0, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    .line 141
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->printHeaders()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1           #style:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/HttpPrinter;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    .line 153
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 154
    return-void

    .line 129
    .restart local v1       #style:Ljava/lang/String;
    :cond_5
    const-string v2, "text/xhtml"

    iget-object v3, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    const-string v1, "xhtml"

    goto :goto_0

    .line 131
    :cond_6
    const-string v2, "text/plain"

    iget-object v3, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    const-string v1, "plain"

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, ex:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public endAttribute()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endAttribute()V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endDocument()V

    .line 252
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->writer:Lgnu/mapping/OutPort;

    invoke-virtual {v0}, Lgnu/mapping/OutPort;->close()V

    .line 254
    :cond_1
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->ostream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_2
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public endElement()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 177
    invoke-super {p0}, Lgnu/lists/FilterConsumer;->endElement()V

    .line 178
    iget v0, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    .line 179
    iget v0, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    if-ne v0, v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->endDocument()V

    .line 181
    :cond_0
    return-void
.end method

.method public printHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "label"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 72
    const-string v0, ": "

    invoke-direct {p0, v0}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p2}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 74
    const-string v0, "\n"

    invoke-direct {p0, v0}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public printHeaders()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 81
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 82
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/xml/HttpPrinter;->headers:Ljava/util/Vector;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lgnu/kawa/xml/HttpPrinter;->printHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 85
    :cond_0
    const-string v2, "\n"

    invoke-direct {p0, v2}, Lgnu/kawa/xml/HttpPrinter;->writeRaw(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1
    .parameter "attrType"

    .prologue
    .line 98
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v0, :cond_0

    .line 99
    iput-object p1, p0, Lgnu/kawa/xml/HttpPrinter;->currentHeader:Ljava/lang/Object;

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->startDocument()V

    .line 242
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lgnu/kawa/xml/HttpPrinter;->seenStartDocument:I

    .line 243
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 4
    .parameter "type"

    .prologue
    .line 158
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 161
    iget-boolean v2, p0, Lgnu/kawa/xml/HttpPrinter;->seenXmlHeader:Z

    if-nez v2, :cond_1

    .line 162
    const-string v1, "text/html"

    .line 168
    .local v1, mimeType:Ljava/lang/String;
    :goto_0
    const-string v2, "Content-type"

    invoke-virtual {p0, v2, v1}, Lgnu/kawa/xml/HttpPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v1           #mimeType:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->beginData()V

    .line 171
    iget-object v2, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v2, p1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 172
    iget v2, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/kawa/xml/HttpPrinter;->elementNesting:I

    .line 173
    return-void

    .line 163
    :cond_1
    instance-of v2, p1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_2

    const-string v3, "html"

    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    const-string v1, "text/xhtml"

    .restart local v1       #mimeType:Ljava/lang/String;
    goto :goto_0

    .line 167
    .end local v1           #mimeType:Ljava/lang/String;
    :cond_2
    const-string v1, "text/xml"

    .restart local v1       #mimeType:Ljava/lang/String;
    goto :goto_0
.end method

.method public write([CII)V
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 232
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->sbuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/HttpPrinter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 185
    instance-of v0, p1, Lgnu/lists/Consumable;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lgnu/lists/UnescapedData;

    if-nez v0, :cond_0

    .line 186
    check-cast p1, Lgnu/lists/Consumable;

    .end local p1
    invoke-interface {p1, p0}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 192
    :goto_0
    return-void

    .line 189
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/xml/HttpPrinter;->beginData()V

    .line 190
    invoke-super {p0, p1}, Lgnu/lists/FilterConsumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
