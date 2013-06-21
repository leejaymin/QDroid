.class public Lorg/apache/james/mime4j/message/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# instance fields
.field private bodyParts:Ljava/util/List;

.field private epilogue:Ljava/lang/String;

.field private parent:Lorg/apache/james/mime4j/message/Entity;

.field private preamble:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "subType"

    .prologue
    const-string v1, ""

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v1, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v1, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 59
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V
    .locals 1
    .parameter "bodyPart"

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    .line 148
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/BodyPart;->dispose()V

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEpilogue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public getPreamble()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public setBodyParts(Ljava/util/List;)V
    .locals 3
    .parameter "bodyParts"

    .prologue
    .line 134
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    .line 135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/BodyPart;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public setEpilogue(Ljava/lang/String;)V
    .locals 0
    .parameter "epilogue"

    .prologue
    .line 116
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 96
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 0
    .parameter "preamble"

    .prologue
    .line 165
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .parameter "subType"

    .prologue
    .line 81
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .locals 13
    .parameter "out"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    const-string v12, "--"

    const-string v11, "\r\n"

    .line 178
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Multipart;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v5

    .line 180
    .local v5, e:Lorg/apache/james/mime4j/message/Entity;
    invoke-virtual {v5}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v9

    const-string v10, "Content-Type"

    invoke-virtual {v9, v10}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 182
    .local v3, cField:Lorg/apache/james/mime4j/field/ContentTypeField;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 183
    :cond_0
    new-instance v9, Lorg/apache/james/mime4j/MimeException;

    const-string v10, "Multipart boundary not specified"

    invoke-direct {v9, v10}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 185
    :cond_1
    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, boundary:Ljava/lang/String;
    const/4 v4, 0x0

    .line 188
    .local v4, charset:Ljava/nio/charset/Charset;
    const/4 v9, 0x3

    if-ne p2, v9, :cond_3

    .line 189
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 190
    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/james/mime4j/util/CharsetUtil;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 198
    :goto_0
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, p1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v10, 0x2000

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 201
    .local v8, writer:Ljava/io/BufferedWriter;
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v1

    .line 203
    .local v1, bodyParts:Ljava/util/List;
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Multipart;->getPreamble()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 204
    const-string v9, "\r\n"

    invoke-virtual {v8, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 206
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 207
    const-string v9, "--"

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v8, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 209
    const-string v9, "\r\n"

    invoke-virtual {v8, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 211
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 212
    .local v0, bodyPart:Lorg/apache/james/mime4j/message/BodyPart;
    invoke-virtual {v0, p1, p2}, Lorg/apache/james/mime4j/message/BodyPart;->writeTo(Ljava/io/OutputStream;I)V

    .line 213
    const-string v9, "\r\n"

    invoke-virtual {v8, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 206
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 192
    .end local v0           #bodyPart:Lorg/apache/james/mime4j/message/BodyPart;
    .end local v1           #bodyParts:Ljava/util/List;
    .end local v7           #i:I
    .end local v8           #writer:Ljava/io/BufferedWriter;
    :cond_2
    sget-object v4, Lorg/apache/james/mime4j/util/MessageUtils;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 195
    :cond_3
    sget-object v4, Lorg/apache/james/mime4j/util/MessageUtils;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 216
    .restart local v1       #bodyParts:Ljava/util/List;
    .restart local v7       #i:I
    .restart local v8       #writer:Ljava/io/BufferedWriter;
    :cond_4
    const-string v9, "--"

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v8, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 218
    const-string v9, "--"

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 219
    const-string v9, "\r\n"

    invoke-virtual {v8, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Multipart;->getEpilogue()Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, epilogue:Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 223
    return-void
.end method
