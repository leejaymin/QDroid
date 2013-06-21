.class public Lorg/apache/james/mime4j/parser/MimeTokenStream;
.super Ljava/lang/Object;
.source "MimeTokenStream.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStates;
.implements Lorg/apache/james/mime4j/parser/RecursionMode;


# instance fields
.field private final config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

.field private currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

.field private final entities:Ljava/util/LinkedList;

.field private inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field private recursionMode:I

.field private rootInputStream:Lorg/apache/james/mime4j/io/RootInputStream;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 120
    return-void
.end method

.method protected constructor <init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    .line 124
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    .line 125
    return-void
.end method

.method public static final createMaximalDescriptorStream()Lorg/apache/james/mime4j/parser/MimeTokenStream;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    .line 87
    .local v0, config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->setMaximalBodyDescriptor(Z)V

    .line 88
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-object v1
.end method

.method public static final createStrictValidationStream()Lorg/apache/james/mime4j/parser/MimeTokenStream;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    .line 99
    .local v0, config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->setStrictParsing(Z)V

    .line 100
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-object v1
.end method

.method private doParse(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .parameter "stream"
    .parameter "contentType"

    .prologue
    .line 152
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 153
    new-instance v1, Lorg/apache/james/mime4j/io/RootInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/io/RootInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->rootInputStream:Lorg/apache/james/mime4j/io/RootInputStream;

    .line 154
    new-instance v1, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->rootInputStream:Lorg/apache/james/mime4j/io/RootInputStream;

    const/16 v3, 0x1000

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 158
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    packed-switch v1, :pswitch_data_0

    .line 181
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getState()I

    move-result v1

    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    .line 183
    return-void

    .line 160
    :pswitch_0
    new-instance v7, Lorg/apache/james/mime4j/parser/RawEntity;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-direct {v7, v1}, Lorg/apache/james/mime4j/parser/RawEntity;-><init>(Ljava/io/InputStream;)V

    .line 161
    .local v7, rawentity:Lorg/apache/james/mime4j/parser/RawEntity;
    iput-object v7, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    goto :goto_0

    .line 167
    .end local v7           #rawentity:Lorg/apache/james/mime4j/parser/RawEntity;
    :pswitch_1
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntity;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->rootInputStream:Lorg/apache/james/mime4j/io/RootInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/RootInputStream;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 174
    .local v0, mimeentity:Lorg/apache/james/mime4j/parser/MimeEntity;
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntity;->setRecursionMode(I)V

    .line 175
    if-eqz p2, :cond_0

    .line 176
    invoke-virtual {v0, p2}, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader(Ljava/lang/String;)V

    .line 178
    :cond_0
    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final stateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 398
    invoke-static {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDecodedInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    .line 276
    .local v0, bodyDescriptor:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, transferEncoding:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v4}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    .line 278
    .local v1, dataStream:Ljava/io/InputStream;
    invoke-static {v3}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    new-instance v2, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v2, v1}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .end local v1           #dataStream:Ljava/io/InputStream;
    .local v2, dataStream:Ljava/io/InputStream;
    move-object v1, v2

    .line 283
    .end local v2           #dataStream:Ljava/io/InputStream;
    .restart local v1       #dataStream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 280
    :cond_1
    invoke-static {v3}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    new-instance v2, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v2, v1}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v1           #dataStream:Ljava/io/InputStream;
    .restart local v2       #dataStream:Ljava/io/InputStream;
    move-object v1, v2

    .end local v2           #dataStream:Ljava/io/InputStream;
    .restart local v1       #dataStream:Ljava/io/InputStream;
    goto :goto_0
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getField()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getFieldName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getFieldValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 5

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    .line 305
    .local v0, bodyDescriptor:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, mimeCharset:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    :cond_0
    const-string v4, "US-ASCII"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 312
    .local v1, charset:Ljava/nio/charset/Charset;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getDecodedInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 313
    .local v2, instream:Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v4

    .line 310
    .end local v1           #charset:Ljava/nio/charset/Charset;
    .end local v2           #instream:Ljava/io/InputStream;
    :cond_1
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .restart local v1       #charset:Ljava/nio/charset/Charset;
    goto :goto_0
.end method

.method public getRecursionMode()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    return v0
.end method

.method public isRaw()Z
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 367
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    if-nez v1, :cond_2

    .line 368
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No more tokens are available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    .local v0, next:Lorg/apache/james/mime4j/parser/EntityStateMachine;
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 381
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 382
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    .line 370
    .end local v0           #next:Lorg/apache/james/mime4j/parser/EntityStateMachine;
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    if-eqz v1, :cond_5

    .line 371
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->advance()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v0

    .line 372
    .restart local v0       #next:Lorg/apache/james/mime4j/parser/EntityStateMachine;
    if-eqz v0, :cond_3

    .line 373
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 374
    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    .line 376
    :cond_3
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getState()I

    move-result v1

    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    .line 377
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    if-eq v1, v3, :cond_1

    .line 378
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    .line 389
    .end local v0           #next:Lorg/apache/james/mime4j/parser/EntityStateMachine;
    :goto_1
    return v1

    .line 384
    .restart local v0       #next:Lorg/apache/james/mime4j/parser/EntityStateMachine;
    :cond_4
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/parser/EntityStateMachine;

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    .line 385
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->setRecursionMode(I)V

    goto :goto_0

    .line 388
    .end local v0           #next:Lorg/apache/james/mime4j/parser/EntityStateMachine;
    :cond_5
    iput v3, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    .line 389
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    goto :goto_1
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->doParse(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public parseHeadless(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "stream"
    .parameter "contentType"

    .prologue
    .line 145
    if-nez p2, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content type may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->doParse(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setRecursionMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 219
    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    .line 220
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->setRecursionMode(I)V

    .line 223
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->clear()V

    .line 239
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->rootInputStream:Lorg/apache/james/mime4j/io/RootInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/RootInputStream;->truncate()V

    .line 240
    return-void
.end method
