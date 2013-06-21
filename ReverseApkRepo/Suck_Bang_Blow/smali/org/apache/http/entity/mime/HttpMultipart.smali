.class public Lorg/apache/http/entity/mime/HttpMultipart;
.super Lorg/apache/james/mime4j/message/Multipart;
.source "HttpMultipart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/entity/mime/HttpMultipart$1;
    }
.end annotation


# instance fields
.field private mode:Lorg/apache/http/entity/mime/HttpMultipartMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "subType"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/Multipart;-><init>(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 68
    return-void
.end method

.method private doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V
    .locals 11
    .parameter "mode"
    .parameter "out"
    .parameter "writeContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, bodyParts:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    .line 113
    .local v3, charset:Ljava/nio/charset/Charset;
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getBoundary()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, boundary:Ljava/lang/String;
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, p2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v10, 0x2000

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 119
    .local v8, writer:Ljava/io/BufferedWriter;
    sget-object v9, Lorg/apache/http/entity/mime/HttpMultipart$1;->$SwitchMap$org$apache$http$entity$mime$HttpMultipartMode:[I

    invoke-virtual {p1}, Lorg/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 121
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getPreamble()Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, preamble:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 123
    invoke-virtual {v8, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 124
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 127
    :cond_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 128
    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v8, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 130
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 132
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/james/mime4j/message/BodyPart;

    .line 133
    .local v6, part:Lorg/apache/james/mime4j/message/BodyPart;
    invoke-virtual {v6}, Lorg/apache/james/mime4j/message/BodyPart;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, p2, v10}, Lorg/apache/james/mime4j/message/Header;->writeTo(Ljava/io/OutputStream;I)V

    .line 134
    if-eqz p3, :cond_1

    .line 135
    invoke-virtual {v6}, Lorg/apache/james/mime4j/message/BodyPart;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, p2, v10}, Lorg/apache/james/mime4j/message/Body;->writeTo(Ljava/io/OutputStream;I)V

    .line 137
    :cond_1
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 140
    .end local v6           #part:Lorg/apache/james/mime4j/message/BodyPart;
    :cond_2
    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v8, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 142
    const-string v9, "--\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getEpilogue()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, epilogue:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 145
    invoke-virtual {v8, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 146
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 148
    :cond_3
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    goto :goto_0

    .line 156
    .end local v4           #epilogue:Ljava/lang/String;
    .end local v5           #i:I
    .end local v7           #preamble:Ljava/lang/String;
    :pswitch_1
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_5

    .line 157
    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v8, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 159
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 161
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/james/mime4j/message/BodyPart;

    .line 163
    .restart local v6       #part:Lorg/apache/james/mime4j/message/BodyPart;
    invoke-virtual {v6}, Lorg/apache/james/mime4j/message/BodyPart;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v9

    const-string v10, "Content-Disposition"

    invoke-virtual {v9, v10}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v2

    .line 164
    .local v2, cd:Lorg/apache/james/mime4j/field/Field;
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/Field;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 165
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 166
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 168
    if-eqz p3, :cond_4

    .line 169
    invoke-virtual {v6}, Lorg/apache/james/mime4j/message/BodyPart;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v9

    const/4 v10, 0x3

    invoke-interface {v9, p2, v10}, Lorg/apache/james/mime4j/message/Body;->writeTo(Ljava/io/OutputStream;I)V

    .line 172
    :cond_4
    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 175
    .end local v2           #cd:Lorg/apache/james/mime4j/field/Field;
    .end local v6           #part:Lorg/apache/james/mime4j/message/BodyPart;
    :cond_5
    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v8, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 177
    const-string v9, "--\r\n"

    invoke-virtual {v8, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    goto/16 :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getBoundary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v1

    .line 101
    .local v1, e:Lorg/apache/james/mime4j/message/Entity;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 103
    .local v0, cField:Lorg/apache/james/mime4j/field/ContentTypeField;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getCharset()Ljava/nio/charset/Charset;
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    .line 80
    .local v2, e:Lorg/apache/james/mime4j/message/Entity;
    invoke-virtual {v2}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v3

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 82
    .local v0, cField:Lorg/apache/james/mime4j/field/ContentTypeField;
    const/4 v1, 0x0

    .line 84
    .local v1, charset:Ljava/nio/charset/Charset;
    sget-object v3, Lorg/apache/http/entity/mime/HttpMultipart$1;->$SwitchMap$org$apache$http$entity$mime$HttpMultipartMode:[I

    iget-object v4, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-virtual {v4}, Lorg/apache/http/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 96
    :goto_0
    return-object v1

    .line 86
    :pswitch_0
    sget-object v1, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 87
    goto :goto_0

    .line 89
    :pswitch_1
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_0
    const-string v3, "ISO-8859-1"

    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMode()Lorg/apache/http/entity/mime/HttpMultipartMode;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    return-object v0
.end method

.method public getTotalLength()J
    .locals 15

    .prologue
    const-wide/16 v13, -0x1

    .line 217
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v1

    .line 219
    .local v1, bodyParts:Ljava/util/List;,"Ljava/util/List<*>;"
    const-wide/16 v2, 0x0

    .line 220
    .local v2, contentLen:J
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_2

    .line 221
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/james/mime4j/message/BodyPart;

    .line 222
    .local v10, part:Lorg/apache/james/mime4j/message/BodyPart;
    invoke-virtual {v10}, Lorg/apache/james/mime4j/message/BodyPart;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    .line 223
    .local v0, body:Lorg/apache/james/mime4j/message/Body;
    instance-of v11, v0, Lorg/apache/http/entity/mime/content/ContentBody;

    if-eqz v11, :cond_1

    .line 224
    check-cast v0, Lorg/apache/http/entity/mime/content/ContentBody;

    .end local v0           #body:Lorg/apache/james/mime4j/message/Body;
    invoke-interface {v0}, Lorg/apache/http/entity/mime/content/ContentBody;->getContentLength()J

    move-result-wide v7

    .line 225
    .local v7, len:J
    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-ltz v11, :cond_0

    .line 226
    add-long/2addr v2, v7

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-wide v11, v13

    .line 242
    .end local v7           #len:J
    .end local v10           #part:Lorg/apache/james/mime4j/message/BodyPart;
    :goto_1
    return-wide v11

    .restart local v0       #body:Lorg/apache/james/mime4j/message/Body;
    .restart local v10       #part:Lorg/apache/james/mime4j/message/BodyPart;
    :cond_1
    move-wide v11, v13

    .line 231
    goto :goto_1

    .line 235
    .end local v0           #body:Lorg/apache/james/mime4j/message/Body;
    .end local v10           #part:Lorg/apache/james/mime4j/message/BodyPart;
    :cond_2
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    .local v9, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v11, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v12, 0x0

    invoke-direct {p0, v11, v9, v12}, Lorg/apache/http/entity/mime/HttpMultipart;->doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 238
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 239
    .local v5, extra:[B
    array-length v11, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v11, v11

    add-long/2addr v11, v2

    goto :goto_1

    .line 240
    .end local v5           #extra:[B
    :catch_0
    move-exception v11

    move-object v4, v11

    .local v4, ex:Ljava/io/IOException;
    move-wide v11, v13

    .line 242
    goto :goto_1
.end method

.method public setMode(Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 76
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 192
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .locals 2
    .parameter "out"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 196
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 197
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    goto :goto_0
.end method
