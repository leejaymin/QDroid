.class public abstract Lorg/apache/james/mime4j/message/Entity;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Disposable;


# instance fields
.field private body:Lorg/apache/james/mime4j/message/Body;

.field private header:Lorg/apache/james/mime4j/message/Header;

.field private parent:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 41
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 42
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    invoke-interface {v0}, Lorg/apache/james/mime4j/message/Body;->dispose()V

    .line 211
    :cond_0
    return-void
.end method

.method public getBody()Lorg/apache/james/mime4j/message/Body;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-static {p0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset(Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding"

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    .line 138
    .local v0, f:Lorg/apache/james/mime4j/field/ContentTransferEncodingField;
    invoke-static {v0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding(Lorg/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeader()Lorg/apache/james/mime4j/message/Header;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "Content-Type"

    .line 109
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 111
    .local v0, child:Lorg/apache/james/mime4j/field/ContentTypeField;
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/james/mime4j/field/ContentTypeField;

    move-object v1, p0

    .line 116
    .local v1, parent:Lorg/apache/james/mime4j/field/ContentTypeField;
    :goto_0
    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType(Lorg/apache/james/mime4j/field/ContentTypeField;Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 111
    .end local v1           #parent:Lorg/apache/james/mime4j/field/ContentTypeField;
    .restart local p0
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 163
    .local v0, f:Lorg/apache/james/mime4j/field/ContentTypeField;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 97
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 98
    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/message/Body;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    .line 99
    return-void
.end method

.method public setHeader(Lorg/apache/james/mime4j/message/Header;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 79
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 80
    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 61
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 62
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .locals 4
    .parameter "out"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/apache/james/mime4j/message/Header;->writeTo(Ljava/io/OutputStream;I)V

    .line 178
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 180
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    .line 183
    .local v0, body:Lorg/apache/james/mime4j/message/Body;
    const-string v2, "base64"

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    invoke-static {p1}, Lorg/apache/james/mime4j/decoder/CodecUtil;->wrapBase64(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 190
    .local v1, encOut:Ljava/io/OutputStream;
    :goto_0
    invoke-interface {v0, v1, p2}, Lorg/apache/james/mime4j/message/Body;->writeTo(Ljava/io/OutputStream;I)V

    .line 191
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 195
    if-eq v1, p1, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 196
    :cond_0
    return-void

    .line 185
    .end local v1           #encOut:Ljava/io/OutputStream;
    :cond_1
    const-string v2, "quoted-printable"

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    instance-of v2, v0, Lorg/apache/james/mime4j/message/BinaryBody;

    invoke-static {p1, v2}, Lorg/apache/james/mime4j/decoder/CodecUtil;->wrapQuotedPrintable(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object v1

    .restart local v1       #encOut:Ljava/io/OutputStream;
    goto :goto_0

    .line 188
    .end local v1           #encOut:Ljava/io/OutputStream;
    :cond_2
    move-object v1, p1

    .restart local v1       #encOut:Ljava/io/OutputStream;
    goto :goto_0
.end method
