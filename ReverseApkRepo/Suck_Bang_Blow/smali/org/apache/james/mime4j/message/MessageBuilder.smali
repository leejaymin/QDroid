.class public Lorg/apache/james/mime4j/message/MessageBuilder;
.super Ljava/lang/Object;
.source "MessageBuilder.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/ContentHandler;


# instance fields
.field private final entity:Lorg/apache/james/mime4j/message/Entity;

.field private stack:Ljava/util/Stack;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    .line 41
    iput-object p1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->entity:Lorg/apache/james/mime4j/message/Entity;

    .line 42
    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 6
    .parameter "bd"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const-class v4, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 118
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, enc:Ljava/lang/String;
    const-string v4, "base64"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    new-instance v1, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v1, p2}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 131
    .local v1, decodedStream:Ljava/io/InputStream;
    :goto_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    new-instance v0, Lorg/apache/james/mime4j/message/TempFileTextBody;

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lorg/apache/james/mime4j/message/TempFileTextBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 137
    .local v0, body:Lorg/apache/james/mime4j/message/Body;
    :goto_1
    iget-object v4, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/message/Entity;

    .line 138
    .local v3, entity:Lorg/apache/james/mime4j/message/Entity;
    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 139
    return-void

    .line 125
    .end local v0           #body:Lorg/apache/james/mime4j/message/Body;
    .end local v1           #decodedStream:Ljava/io/InputStream;
    .end local v3           #entity:Lorg/apache/james/mime4j/message/Entity;
    :cond_0
    const-string v4, "quoted-printable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    new-instance v1, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v1, p2}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v1       #decodedStream:Ljava/io/InputStream;
    goto :goto_0

    .line 128
    .end local v1           #decodedStream:Ljava/io/InputStream;
    :cond_1
    move-object v1, p2

    .restart local v1       #decodedStream:Ljava/io/InputStream;
    goto :goto_0

    .line 134
    :cond_2
    new-instance v0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/message/TempFileBinaryBody;-><init>(Ljava/io/InputStream;)V

    .restart local v0       #body:Lorg/apache/james/mime4j/message/Body;
    goto :goto_1
.end method

.method public endBodyPart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 163
    const-class v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 164
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public endHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 93
    const-class v1, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 94
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Header;

    .line 95
    .local v0, h:Lorg/apache/james/mime4j/message/Header;
    const-class v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 96
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Entity;->setHeader(Lorg/apache/james/mime4j/message/Header;)V

    .line 97
    return-void
.end method

.method public endMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 70
    const-class v0, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 71
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public endMultipart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const-class v2, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 172
    new-instance v1, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    .line 174
    .local v1, sb:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 175
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(C)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/message/Multipart;->setEpilogue(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 1
    .parameter "fieldData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 85
    const-class v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 86
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/james/mime4j/message/Header;

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/field/Field;)V

    .line 87
    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const-class v2, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 185
    new-instance v1, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    .line 187
    .local v1, sb:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 188
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(C)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/message/Multipart;->setPreamble(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 152
    const-class v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 154
    new-instance v0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    .line 155
    .local v0, bodyPart:Lorg/apache/james/mime4j/message/BodyPart;
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Multipart;->addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V

    .line 156
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public startHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    new-instance v1, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v1}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public startMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->entity:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_0
    const-class v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 60
    new-instance v0, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Message;-><init>()V

    .line 61
    .local v0, m:Lorg/apache/james/mime4j/message/Message;
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 62
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public startMultipart(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V
    .locals 4
    .parameter "bd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 103
    const-class v3, Lorg/apache/james/mime4j/message/Entity;

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/message/MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 105
    iget-object v3, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Entity;

    .line 106
    .local v0, e:Lorg/apache/james/mime4j/message/Entity;
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getSubType()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, subType:Ljava/lang/String;
    new-instance v1, Lorg/apache/james/mime4j/message/Multipart;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/message/Multipart;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, multiPart:Lorg/apache/james/mime4j/message/Multipart;
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 109
    iget-object v3, p0, Lorg/apache/james/mime4j/message/MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method
