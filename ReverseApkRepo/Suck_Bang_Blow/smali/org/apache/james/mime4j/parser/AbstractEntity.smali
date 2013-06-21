.class public abstract Lorg/apache/james/mime4j/parser/AbstractEntity;
.super Ljava/lang/Object;
.source "AbstractEntity.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStateMachine;


# static fields
.field private static final T_IN_BODYPART:I = -0x2

.field private static final T_IN_MESSAGE:I = -0x3

.field private static final fieldChars:Ljava/util/BitSet;


# instance fields
.field protected final body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

.field protected final config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

.field private endOfHeader:Z

.field protected final endState:I

.field private field:Ljava/lang/String;

.field private fieldName:Ljava/lang/String;

.field private fieldValue:Ljava/lang/String;

.field private final fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

.field private headerCount:I

.field private lineCount:I

.field private final linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field protected final log:Lorg/apache/commons/logging/Log;

.field protected final parent:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

.field protected final startState:I

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    sput-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    .line 65
    const/16 v0, 0x21

    .local v0, i:I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 66
    sget-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 69
    sget-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_1
    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 3
    .parameter "parent"
    .parameter "startState"
    .parameter "endState"
    .parameter "config"

    .prologue
    const/16 v2, 0x40

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    .line 88
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->parent:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    .line 89
    iput p2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    .line 90
    iput p2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->startState:I

    .line 91
    iput p3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endState:I

    .line 92
    iput-object p4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->newBodyDescriptor(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    .line 94
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 95
    new-instance v0, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    .line 96
    iput v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    .line 97
    iput-boolean v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    .line 98
    iput v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    .line 99
    return-void
.end method

.method private fillFieldBuffer()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 125
    iget-boolean v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    if-eqz v4, :cond_0

    .line 168
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v3

    .line 129
    .local v3, maxLineLen:I
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;

    move-result-object v1

    .line 130
    .local v1, instream:Lorg/apache/james/mime4j/io/LineReaderInputStream;
    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->clear()V

    .line 134
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    .line 135
    .local v2, len:I
    if-lez v3, :cond_2

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->length()I

    move-result v4

    add-int/2addr v4, v2

    if-lt v4, v3, :cond_2

    .line 136
    new-instance v4, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    const-string v5, "Maximum line length limit exceeded"

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    :cond_2
    if-lez v2, :cond_3

    .line 139
    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4, v5, v7, v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Lorg/apache/james/mime4j/util/ByteArrayBuffer;II)V

    .line 141
    :cond_3
    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->clear()V

    .line 142
    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v4}, Lorg/apache/james/mime4j/io/LineReaderInputStream;->readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 143
    sget-object v4, Lorg/apache/james/mime4j/parser/Event;->HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    .line 144
    iput-boolean v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    goto :goto_0

    .line 147
    :cond_4
    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    .line 148
    if-lez v2, :cond_5

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    sub-int v5, v2, v6

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    .line 149
    add-int/lit8 v2, v2, -0x1

    .line 151
    :cond_5
    if-lez v2, :cond_6

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    sub-int v5, v2, v6

    invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_6

    .line 152
    add-int/lit8 v2, v2, -0x1

    .line 154
    :cond_6
    if-nez v2, :cond_7

    .line 156
    iput-boolean v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    goto :goto_0

    .line 159
    :cond_7
    iget v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    .line 160
    iget v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    if-le v4, v6, :cond_1

    .line 161
    iget-object v4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v4, v7}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)I

    move-result v0

    .line 162
    .local v0, ch:I
    const/16 v4, 0x20

    if-eq v0, v4, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    goto/16 :goto_0
.end method

.method public static final stateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 356
    packed-switch p0, :pswitch_data_0

    .line 406
    const-string v0, "Unknown"

    .line 409
    .local v0, result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 358
    .end local v0           #result:Ljava/lang/String;
    :pswitch_0
    const-string v0, "End of stream"

    .line 359
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 361
    .end local v0           #result:Ljava/lang/String;
    :pswitch_1
    const-string v0, "Start message"

    .line 362
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 364
    .end local v0           #result:Ljava/lang/String;
    :pswitch_2
    const-string v0, "End message"

    .line 365
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 367
    .end local v0           #result:Ljava/lang/String;
    :pswitch_3
    const-string v0, "Raw entity"

    .line 368
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 370
    .end local v0           #result:Ljava/lang/String;
    :pswitch_4
    const-string v0, "Start header"

    .line 371
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 373
    .end local v0           #result:Ljava/lang/String;
    :pswitch_5
    const-string v0, "Field"

    .line 374
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 376
    .end local v0           #result:Ljava/lang/String;
    :pswitch_6
    const-string v0, "End header"

    .line 377
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 379
    .end local v0           #result:Ljava/lang/String;
    :pswitch_7
    const-string v0, "Start multipart"

    .line 380
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 382
    .end local v0           #result:Ljava/lang/String;
    :pswitch_8
    const-string v0, "End multipart"

    .line 383
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 385
    .end local v0           #result:Ljava/lang/String;
    :pswitch_9
    const-string v0, "Preamble"

    .line 386
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 388
    .end local v0           #result:Ljava/lang/String;
    :pswitch_a
    const-string v0, "Epilogue"

    .line 389
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 391
    .end local v0           #result:Ljava/lang/String;
    :pswitch_b
    const-string v0, "Start bodypart"

    .line 392
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 394
    .end local v0           #result:Ljava/lang/String;
    :pswitch_c
    const-string v0, "End bodypart"

    .line 395
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 397
    .end local v0           #result:Ljava/lang/String;
    :pswitch_d
    const-string v0, "Body"

    .line 398
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 400
    .end local v0           #result:Ljava/lang/String;
    :pswitch_e
    const-string v0, "Bodypart"

    .line 401
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 403
    .end local v0           #result:Ljava/lang/String;
    :pswitch_f
    const-string v0, "In message"

    .line 404
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method protected debug(Lorg/apache/james/mime4j/parser/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 342
    :cond_0
    return-void
.end method

.method public getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :sswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    return-object v0

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;
.end method

.method public getField()Ljava/lang/String;
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->field:Ljava/lang/String;

    return-object v0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldName:Ljava/lang/String;

    return-object v0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getFieldValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldValue:Ljava/lang/String;

    return-object v0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getLineNumber()I
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    return v0
.end method

.method protected message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;
    .locals 5
    .parameter "event"

    .prologue
    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, preamble:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 314
    const-string v0, "Event is unexpectedly null."

    .line 318
    .local v0, message:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, result:Ljava/lang/String;
    return-object v2

    .line 316
    .end local v0           #message:Ljava/lang/String;
    .end local v2           #result:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/Event;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0
.end method

.method protected monitor(Lorg/apache/james/mime4j/parser/Event;)V
    .locals 1
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isStrictParsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeParseEventException;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/parser/MimeParseEventException;-><init>(Lorg/apache/james/mime4j/parser/Event;)V

    throw v0

    .line 299
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->warn(Lorg/apache/james/mime4j/parser/Event;)V

    .line 301
    return-void
.end method

.method protected newBodyDescriptor(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;
    .locals 2
    .parameter "pParent"

    .prologue
    .line 112
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isMaximalBodyDescriptor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    .line 117
    .local v0, result:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;
    :goto_0
    return-object v0

    .line 115
    .end local v0           #result:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    .restart local v0       #result:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;
    goto :goto_0
.end method

.method protected parseField()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 171
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxHeaderCount()I

    move-result v2

    .line 173
    .local v2, maxHeaderLimit:I
    :cond_0
    iget-boolean v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    if-eqz v5, :cond_1

    move v5, v9

    .line 212
    :goto_0
    return v5

    .line 176
    :cond_1
    iget v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    if-lt v5, v2, :cond_2

    .line 177
    new-instance v5, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;

    const-string v6, "Maximum header limit exceeded"

    invoke-direct {v5, v6}, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 180
    :cond_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->fillFieldBuffer()V

    .line 181
    iget v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    .line 184
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->length()I

    move-result v1

    .line 185
    .local v1, len:I
    if-lez v1, :cond_3

    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    sub-int v6, v1, v8

    invoke-virtual {v5, v6}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    .line 186
    add-int/lit8 v1, v1, -0x1

    .line 188
    :cond_3
    if-lez v1, :cond_4

    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    sub-int v6, v1, v8

    invoke-virtual {v5, v6}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_4

    .line 189
    add-int/lit8 v1, v1, -0x1

    .line 191
    :cond_4
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v5, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->setLength(I)V

    .line 193
    const/4 v4, 0x1

    .line 194
    .local v4, valid:Z
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->field:Ljava/lang/String;

    .line 195
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->indexOf(I)I

    move-result v3

    .line 196
    .local v3, pos:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    .line 197
    sget-object v5, Lorg/apache/james/mime4j/parser/Event;->INALID_HEADER:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    .line 198
    const/4 v4, 0x0

    .line 210
    :goto_1
    if-eqz v4, :cond_0

    .line 211
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldName:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldValue:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->addField(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    .line 212
    goto :goto_0

    .line 200
    :cond_5
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v5, v9, v3}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldName:Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 202
    sget-object v5, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 203
    sget-object v5, Lorg/apache/james/mime4j/parser/Event;->INALID_HEADER:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    .line 204
    const/4 v4, 0x0

    .line 208
    :cond_6
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldbuf:Lorg/apache/james/mime4j/util/CharArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldValue:Ljava/lang/String;

    goto :goto_1

    .line 201
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "]["

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected warn(Lorg/apache/james/mime4j/parser/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 328
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 331
    :cond_0
    return-void
.end method
