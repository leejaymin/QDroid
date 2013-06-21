.class public Lorg/apache/james/mime4j/parser/MimeStreamParser;
.super Ljava/lang/Object;
.source "MimeStreamParser.java"


# instance fields
.field private contentDecoding:Z

.field private handler:Lorg/apache/james/mime4j/parser/ContentHandler;

.field private final mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 54
    if-eqz p1, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v1, localConfig:Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    :goto_0
    new-instance v2, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v2, v1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    .line 66
    return-void

    .line 57
    .end local v1           #localConfig:Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 59
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    .line 60
    .restart local v1       #localConfig:Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    goto :goto_0

    .line 62
    .end local v0           #ex:Ljava/lang/CloneNotSupportedException;
    .end local v1           #localConfig:Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    :cond_0
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    .restart local v1       #localConfig:Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    goto :goto_0
.end method


# virtual methods
.method public isContentDecoding()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    return v0
.end method

.method public isRaw()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->isRaw()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v3, p1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->parse(Ljava/io/InputStream;)V

    .line 98
    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getState()I

    move-result v2

    .line 99
    .local v2, state:I
    packed-switch v2, :pswitch_data_0

    .line 149
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :pswitch_0
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v1

    .line 103
    .local v1, desc:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    iget-boolean v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getDecodedInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 108
    .local v0, bodyContent:Ljava/io/InputStream;
    :goto_1
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3, v1, v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->body(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    .line 151
    .end local v0           #bodyContent:Ljava/io/InputStream;
    .end local v1           #desc:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    :goto_2
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->next()I

    goto :goto_0

    .line 106
    .restart local v1       #desc:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .restart local v0       #bodyContent:Ljava/io/InputStream;
    goto :goto_1

    .line 111
    .end local v0           #bodyContent:Ljava/io/InputStream;
    .end local v1           #desc:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    :pswitch_1
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->endBodyPart()V

    goto :goto_2

    .line 114
    :pswitch_2
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->endHeader()V

    goto :goto_2

    .line 117
    :pswitch_3
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->endMessage()V

    goto :goto_2

    .line 120
    :pswitch_4
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->endMultipart()V

    goto :goto_2

    .line 125
    :pswitch_5
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/parser/ContentHandler;->epilogue(Ljava/io/InputStream;)V

    goto :goto_2

    .line 128
    :pswitch_6
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getField()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/parser/ContentHandler;->field(Ljava/lang/String;)V

    goto :goto_2

    .line 131
    :pswitch_7
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/parser/ContentHandler;->preamble(Ljava/io/InputStream;)V

    goto :goto_2

    .line 134
    :pswitch_8
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/parser/ContentHandler;->raw(Ljava/io/InputStream;)V

    goto :goto_2

    .line 137
    :pswitch_9
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->startBodyPart()V

    goto :goto_2

    .line 140
    :pswitch_a
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->startHeader()V

    goto :goto_2

    .line 143
    :pswitch_b
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v3}, Lorg/apache/james/mime4j/parser/ContentHandler;->startMessage()V

    goto :goto_2

    .line 146
    :pswitch_c
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/james/mime4j/parser/ContentHandler;->startMultipart(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    goto :goto_2

    .line 153
    :pswitch_d
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_d
        :pswitch_b
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_6
        :pswitch_2
        :pswitch_c
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setContentDecoding(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 85
    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    .line 86
    return-void
.end method

.method public setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 203
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    .line 204
    return-void
.end method

.method public setRaw(Z)V
    .locals 2
    .parameter "raw"

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->setRecursionMode(I)V

    .line 178
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->stop()V

    .line 194
    return-void
.end method
