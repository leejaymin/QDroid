.class public Lorg/apache/james/mime4j/message/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field private fieldMap:Ljava/util/Map;

.field private fields:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    .line 67
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>()V

    .line 68
    .local v0, parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;
    new-instance v1, Lorg/apache/james/mime4j/message/Header$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/james/mime4j/message/Header$1;-><init>(Lorg/apache/james/mime4j/message/Header;Lorg/apache/james/mime4j/parser/MimeStreamParser;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 76
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 77
    return-void
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/field/Field;)V
    .locals 3
    .parameter "field"

    .prologue
    .line 85
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 86
    .local v0, values:Ljava/util/List;
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #values:Ljava/util/List;
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 88
    .restart local v0       #values:Ljava/util/List;
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .locals 3
    .parameter "name"

    .prologue
    .line 112
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 113
    .local v0, l:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/james/mime4j/field/Field;

    move-object v1, p0

    .line 116
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFields()Ljava/util/List;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "name"

    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, lowerCaseName:Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 129
    .local v0, l:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 134
    .local v2, results:Ljava/util/List;
    :goto_0
    return-object v2

    .line 132
    .end local v2           #results:Ljava/util/List;
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .restart local v2       #results:Ljava/util/List;
    goto :goto_0
.end method

.method public removeFields(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, lowerCaseName:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 147
    .local v3, removed:Ljava/util/List;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    :cond_0
    const/4 v4, 0x0

    .line 156
    :goto_0
    return v4

    .line 150
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/Field;

    .line 152
    .local v0, field:Lorg/apache/james/mime4j/field/Field;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 156
    .end local v0           #field:Lorg/apache/james/mime4j/field/Field;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0
.end method

.method public setField(Lorg/apache/james/mime4j/field/Field;)V
    .locals 8
    .parameter "field"

    .prologue
    .line 172
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, lowerCaseName:Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/james/mime4j/message/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 174
    .local v4, l:Ljava/util/List;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 175
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/field/Field;)V

    .line 195
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 180
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const/4 v1, -0x1

    .line 183
    .local v1, firstOccurrence:I
    const/4 v2, 0x0

    .line 184
    .local v2, index:I
    iget-object v6, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 185
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/Field;

    .line 186
    .local v0, f:Lorg/apache/james/mime4j/field/Field;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 187
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 189
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    .line 190
    move v1, v2

    .line 184
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 194
    .end local v0           #f:Lorg/apache/james/mime4j/field/Field;
    :cond_3
    iget-object v6, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v6, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    new-instance v1, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    .line 205
    .local v1, str:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    iget-object v2, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 207
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .locals 10
    .parameter "out"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    const-string v9, "\r\n"

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, charset:Ljava/nio/charset/Charset;
    const/4 v7, 0x3

    if-ne p2, v7, :cond_2

    .line 239
    const-string v7, "Content-Type"

    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 240
    .local v1, contentTypeField:Lorg/apache/james/mime4j/field/ContentTypeField;
    if-nez v1, :cond_0

    .line 241
    sget-object v0, Lorg/apache/james/mime4j/util/MessageUtils;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 253
    .end local v1           #contentTypeField:Lorg/apache/james/mime4j/field/ContentTypeField;
    :goto_0
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v8, 0x2000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 255
    .local v6, writer:Ljava/io/BufferedWriter;
    iget-object v7, p0, Lorg/apache/james/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 256
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/field/Field;

    .line 257
    .local v3, field:Lorg/apache/james/mime4j/field/Field;
    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/Field;->toString()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, fs:Ljava/lang/String;
    const/4 v7, 0x2

    if-ne p2, v7, :cond_3

    invoke-static {v4}, Lorg/apache/james/mime4j/util/MessageUtils;->isASCII(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 259
    new-instance v7, Lorg/apache/james/mime4j/MimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Header \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' violates RFC 822"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 243
    .end local v3           #field:Lorg/apache/james/mime4j/field/Field;
    .end local v4           #fs:Ljava/lang/String;
    .end local v5           #it:Ljava/util/Iterator;
    .end local v6           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #contentTypeField:Lorg/apache/james/mime4j/field/ContentTypeField;
    :cond_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, contentTypeFieldCharset:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 245
    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_1
    sget-object v0, Lorg/apache/james/mime4j/util/MessageUtils;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 251
    .end local v1           #contentTypeField:Lorg/apache/james/mime4j/field/ContentTypeField;
    .end local v2           #contentTypeFieldCharset:Ljava/lang/String;
    :cond_2
    sget-object v0, Lorg/apache/james/mime4j/util/MessageUtils;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 261
    .restart local v3       #field:Lorg/apache/james/mime4j/field/Field;
    .restart local v4       #fs:Ljava/lang/String;
    .restart local v5       #it:Ljava/util/Iterator;
    .restart local v6       #writer:Ljava/io/BufferedWriter;
    :cond_3
    invoke-virtual {v6, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 262
    const-string v7, "\r\n"

    invoke-virtual {v6, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 264
    .end local v3           #field:Lorg/apache/james/mime4j/field/Field;
    .end local v4           #fs:Ljava/lang/String;
    :cond_4
    const-string v7, "\r\n"

    invoke-virtual {v6, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 266
    return-void
.end method
