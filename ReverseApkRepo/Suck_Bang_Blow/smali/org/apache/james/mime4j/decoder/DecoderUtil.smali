.class public Lorg/apache/james/mime4j/decoder/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "encodedWord"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 77
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 80
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 82
    .local v2, bytes:[B
    new-instance v4, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 85
    .local v4, is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    const/4 v0, 0x0

    .line 86
    .local v0, b:I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 87
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 93
    .local v3, e:Ljava/io/IOException;
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 96
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public static decodeBaseQuotedPrintable(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 48
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 53
    .local v2, bytes:[B
    new-instance v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    .local v4, is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    const/4 v0, 0x0

    .line 57
    .local v0, b:I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 58
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 64
    .local v3, e:Ljava/io/IOException;
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 67
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "body"

    .prologue
    .line 154
    new-instance v6, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    .line 156
    .local v6, sb:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    const/4 v0, 0x0

    .line 157
    .local v0, p1:I
    const/4 v1, 0x0

    .line 167
    .local v1, p2:I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 171
    const-string v2, "=?"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 172
    .end local v0           #p1:I
    .local v4, p1:I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 176
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v1

    .end local v1           #p2:I
    .local v0, p2:I
    move p0, v4

    .line 275
    .end local v4           #p1:I
    .local p0, p1:I
    :goto_1
    invoke-virtual {v6}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #p1:I
    return-object p0

    .line 185
    .end local v0           #p2:I
    .restart local v1       #p2:I
    .restart local v4       #p1:I
    .local p0, body:Ljava/lang/String;
    :cond_0
    sub-int v0, v4, v1

    if-lez v0, :cond_1

    .line 186
    :try_start_2
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 193
    :cond_1
    const/16 v0, 0x3f

    add-int/lit8 v2, v4, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 194
    .local v2, t1:I
    const/4 v0, -0x1

    if-eq v2, v0, :cond_4

    const/16 v0, 0x3f

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v7, v0

    .line 199
    .local v7, t2:I
    :goto_2
    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    const-string v0, "?="

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 200
    .end local v1           #p2:I
    .restart local v0       #p2:I
    :goto_3
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 201
    const/4 v1, -0x1

    if-eq v7, v1, :cond_6

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-eq v1, v7, :cond_2

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_6

    .line 206
    :cond_2
    move v0, v7

    move v5, v0

    .line 223
    .end local v0           #p2:I
    .local v5, p2:I
    :goto_4
    const/4 v0, 0x0

    .line 224
    .local v0, decodedWord:Ljava/lang/String;
    if-ne v7, v5, :cond_7

    .line 228
    :try_start_4
    const-string v0, ""
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 268
    .end local v2           #t1:I
    .end local v7           #t2:I
    :cond_3
    :goto_5
    add-int/lit8 v1, v5, 0x2

    .line 269
    .end local v5           #p2:I
    .restart local v1       #p2:I
    :try_start_5
    invoke-virtual {v6, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    move v0, v4

    .line 270
    .end local v4           #p1:I
    .local v0, p1:I
    goto :goto_0

    .line 194
    .end local v0           #p1:I
    .restart local v2       #t1:I
    .restart local v4       #p1:I
    :cond_4
    const/4 v0, -0x1

    move v7, v0

    goto :goto_2

    .line 199
    .restart local v7       #t2:I
    :cond_5
    const/4 v0, -0x1

    goto :goto_3

    .line 212
    .end local v1           #p2:I
    .local v0, p2:I
    :cond_6
    :try_start_6
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move p0, v4

    .line 213
    .end local v4           #p1:I
    .local p0, p1:I
    goto :goto_1

    .line 231
    .local v0, decodedWord:Ljava/lang/String;
    .restart local v4       #p1:I
    .restart local v5       #p2:I
    .local p0, body:Ljava/lang/String;
    :cond_7
    add-int/lit8 v0, v4, 0x2

    :try_start_7
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v0           #decodedWord:Ljava/lang/String;
    move-result-object v3

    .line 232
    .local v3, mimeCharset:Ljava/lang/String;
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, enc:Ljava/lang/String;
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, encodedWord:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 240
    add-int/lit8 v0, v5, 0x2

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v0           #charset:Ljava/lang/String;
    move-result-object v0

    .line 241
    .local v0, decodedWord:Ljava/lang/String;
    sget-object v1, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    .end local v1           #enc:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    sget-object v1, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #encodedWord:Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MIME charset \'"

    .end local v7           #t2:I
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in header field doesn\'t have a "

    .end local v3           #mimeCharset:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "corresponding Java charset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    .line 271
    .end local v0           #decodedWord:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v0

    move v1, v5

    .end local v5           #p2:I
    .local v1, p2:I
    move v0, v4

    .line 272
    .end local v4           #p1:I
    .local v0, p1:I
    .local v2, t:Ljava/lang/Throwable;
    :goto_6
    sget-object v3, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoding header field body \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #body:Ljava/lang/String;
    const-string v4, "\'"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v2           #t:Ljava/lang/Throwable;
    :cond_8
    move p0, v0

    .end local v0           #p1:I
    .local p0, p1:I
    move v0, v1

    .end local v1           #p2:I
    .local v0, p2:I
    goto/16 :goto_1

    .line 246
    .local v0, charset:Ljava/lang/String;
    .local v1, enc:Ljava/lang/String;
    .local v2, encodedWord:Ljava/lang/String;
    .restart local v3       #mimeCharset:Ljava/lang/String;
    .restart local v4       #p1:I
    .restart local v5       #p2:I
    .restart local v7       #t2:I
    .local p0, body:Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v7

    .end local v7           #t2:I
    if-nez v7, :cond_a

    .line 247
    add-int/lit8 v1, v5, 0x2

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v1           #enc:Ljava/lang/String;
    move-result-object v1

    .line 248
    .local v1, decodedWord:Ljava/lang/String;
    sget-object v2, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    .end local v2           #encodedWord:Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 249
    sget-object v2, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current JDK doesn\'t support decoding of charset \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #charset:Ljava/lang/String;
    const-string v7, "\' (MIME charset \'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\')"

    .end local v3           #mimeCharset:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    move-object v0, v1

    .end local v1           #decodedWord:Ljava/lang/String;
    .local v0, decodedWord:Ljava/lang/String;
    goto/16 :goto_5

    .line 255
    .local v0, charset:Ljava/lang/String;
    .local v1, enc:Ljava/lang/String;
    .restart local v2       #encodedWord:Ljava/lang/String;
    .restart local v3       #mimeCharset:Ljava/lang/String;
    :cond_a
    const-string v3, "Q"

    .end local v3           #mimeCharset:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 256
    invoke-static {v2, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, decodedWord:Ljava/lang/String;
    goto/16 :goto_5

    .line 257
    .local v0, charset:Ljava/lang/String;
    :cond_b
    const-string v3, "B"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 258
    invoke-static {v2, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, decodedWord:Ljava/lang/String;
    goto/16 :goto_5

    .line 260
    .local v0, charset:Ljava/lang/String;
    :cond_c
    move-object v0, v2

    .line 261
    .local v0, decodedWord:Ljava/lang/String;
    sget-object v2, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    .end local v2           #encodedWord:Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    sget-object v2, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warning: Unknown encoding in header field \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #enc:Ljava/lang/String;
    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_5

    .line 271
    .end local v4           #p1:I
    .end local v5           #p2:I
    .local v0, p1:I
    .local v1, p2:I
    :catch_1
    move-exception v2

    goto/16 :goto_6

    .end local v0           #p1:I
    .restart local v4       #p1:I
    :catch_2
    move-exception v0

    move-object v2, v0

    move v0, v4

    .end local v4           #p1:I
    .restart local v0       #p1:I
    goto/16 :goto_6

    .end local v1           #p2:I
    .local v0, p2:I
    .local v2, t1:I
    .restart local v4       #p1:I
    .restart local v7       #t2:I
    :catch_3
    move-exception v1

    move-object v2, v1

    move v1, v0

    .end local v0           #p2:I
    .restart local v1       #p2:I
    move v0, v4

    .end local v4           #p1:I
    .local v0, p1:I
    goto/16 :goto_6

    .end local v2           #t1:I
    .end local v7           #t2:I
    .local v0, charset:Ljava/lang/String;
    .local v1, decodedWord:Ljava/lang/String;
    .restart local v3       #mimeCharset:Ljava/lang/String;
    .restart local v4       #p1:I
    .restart local v5       #p2:I
    :cond_d
    move-object v0, v1

    .end local v1           #decodedWord:Ljava/lang/String;
    .local v0, decodedWord:Ljava/lang/String;
    goto/16 :goto_5

    .end local v3           #mimeCharset:Ljava/lang/String;
    .end local v5           #p2:I
    .local v0, p2:I
    .restart local v2       #t1:I
    .restart local v7       #t2:I
    :cond_e
    move v5, v0

    .end local v0           #p2:I
    .restart local v5       #p2:I
    goto/16 :goto_4
.end method

.method public static decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "encodedWord"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v2, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    .line 132
    .local v2, sb:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 134
    .local v0, c:C
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    .line 135
    const-string v3, "=20"

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 132
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(C)V

    goto :goto_1

    .line 141
    .end local v0           #c:C
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBaseQuotedPrintable(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method
