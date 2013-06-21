.class public Lorg/jibx/runtime/impl/UTF8StreamWriter;
.super Lorg/jibx/runtime/impl/StreamWriterBase;
.source "UTF8StreamWriter.java"


# instance fields
.field private m_converts:[B


# direct methods
.method public constructor <init>(Lorg/jibx/runtime/impl/UTF8StreamWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "base"
    .parameter "uris"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/StreamWriterBase;-><init>(Lorg/jibx/runtime/impl/StreamWriterBase;[Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->defineNamespace(ILjava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    const-string v1, "xml"

    invoke-virtual {p0, v0, v1}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->defineNamespace(ILjava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .parameter "uris"

    .prologue
    .line 54
    const-string v0, "UTF-8"

    invoke-direct {p0, v0, p1}, Lorg/jibx/runtime/impl/StreamWriterBase;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->defineNamespace(ILjava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    const-string v1, "xml"

    invoke-virtual {p0, v0, v1}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->defineNamespace(ILjava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public createChildWriter([Ljava/lang/String;)Lorg/jibx/runtime/IXMLWriter;
    .locals 1
    .parameter "uris"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->flagContent()V

    .line 354
    new-instance v0, Lorg/jibx/runtime/impl/UTF8StreamWriter;

    invoke-direct {v0, p0, p1}, Lorg/jibx/runtime/impl/UTF8StreamWriter;-><init>(Lorg/jibx/runtime/impl/UTF8StreamWriter;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected defineNamespace(ILjava/lang/String;)V
    .locals 10
    .parameter "index"
    .parameter "prefix"

    .prologue
    const/4 v9, 0x0

    .line 135
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v5, v7, 0x3

    .line 136
    .local v5, limit:I
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_converts:[B

    if-nez v7, :cond_1

    .line 137
    new-array v7, v5, [B

    iput-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_converts:[B

    .line 141
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 142
    .local v1, fill:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 143
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 144
    .local v0, chr:C
    const/16 v7, 0x7f

    if-le v0, v7, :cond_3

    .line 145
    const/16 v7, 0x7ff

    if-le v0, v7, :cond_2

    .line 146
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_converts:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .local v2, fill:I
    shr-int/lit8 v8, v0, 0xc

    add-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 147
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_converts:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    add-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 148
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_converts:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    and-int/lit8 v8, v0, 0x3f

    add-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    move v1, v2

    .line 142
    .end local v2           #fill:I
    .restart local v1       #fill:I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 138
    .end local v0           #chr:C
    .end local v1           #fill:I
    .end local v3           #i:I
    :cond_1
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_converts:[B

    array-length v7, v7

    if-le v5, v7, :cond_0

    .line 139
    new-array v7, v5, [B

    iput-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_converts:[B

    goto :goto_0

    .line 150
    .restart local v0       #chr:C
    .restart local v1       #fill:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_converts:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    shr-int/lit8 v8, v0, 0x6

    add-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    .line 151
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_converts:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    and-int/lit8 v8, v0, 0x3f

    add-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    goto :goto_2

    .line 154
    :cond_3
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_converts:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    int-to-byte v8, v0

    aput-byte v8, v7, v1

    move v1, v2

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto :goto_2

    .line 158
    .end local v0           #chr:C
    :cond_4
    if-lez v1, :cond_6

    .line 159
    add-int/lit8 v7, v1, 0x1

    new-array v6, v7, [B

    .line 160
    .local v6, trim:[B
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_converts:[B

    invoke-static {v7, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    const/16 v7, 0x3a

    aput-byte v7, v6, v1

    .line 165
    :goto_3
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_prefixBytes:[[B

    array-length v7, v7

    if-ge p1, v7, :cond_7

    .line 166
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_prefixBytes:[[B

    aput-object v6, v7, p1

    .line 180
    :cond_5
    return-void

    .line 163
    .end local v6           #trim:[B
    :cond_6
    new-array v6, v9, [B

    .restart local v6       #trim:[B
    goto :goto_3

    .line 167
    :cond_7
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_extensionBytes:[[[B

    if-eqz v7, :cond_9

    .line 168
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_prefixBytes:[[B

    array-length v7, v7

    sub-int/2addr p1, v7

    .line 169
    const/4 v3, 0x0

    :goto_4
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_extensionBytes:[[[B

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 170
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_extensionBytes:[[[B

    aget-object v7, v7, v3

    array-length v4, v7

    .line 171
    .local v4, length:I
    if-ge p1, v4, :cond_8

    .line 172
    iget-object v7, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_extensionBytes:[[[B

    aget-object v7, v7, v3

    aput-object v6, v7, p1

    .line 169
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 174
    :cond_8
    sub-int/2addr p1, v4

    goto :goto_5

    .line 178
    .end local v4           #length:I
    :cond_9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Index out of range"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected writeAttributeText(Ljava/lang/String;)V
    .locals 8
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5d

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 191
    .local v4, length:I
    mul-int/lit8 v5, v4, 0x6

    invoke-virtual {p0, v5}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->makeSpace(I)V

    .line 192
    iget v1, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    .line 193
    .local v1, fill:I
    const/4 v3, 0x0

    .local v3, i:I
    move v2, v1

    .end local v1           #fill:I
    .local v2, fill:I
    :goto_0
    if-ge v3, v4, :cond_a

    .line 194
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 195
    .local v0, chr:C
    const/16 v5, 0x22

    if-ne v0, v5, :cond_0

    .line 196
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_quotEntityBytes:[B

    invoke-virtual {p0, v5, v2}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->writeEntity([BI)I

    move-result v1

    .line 193
    .end local v2           #fill:I
    .restart local v1       #fill:I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    goto :goto_0

    .line 197
    :cond_0
    const/16 v5, 0x26

    if-ne v0, v5, :cond_1

    .line 198
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_ampEntityBytes:[B

    invoke-virtual {p0, v5, v2}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->writeEntity([BI)I

    move-result v1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto :goto_1

    .line 199
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_1
    const/16 v5, 0x3c

    if-ne v0, v5, :cond_2

    .line 200
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_ltEntityBytes:[B

    invoke-virtual {p0, v5, v2}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->writeEntity([BI)I

    move-result v1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto :goto_1

    .line 201
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_2
    const/16 v5, 0x3e

    if-ne v0, v5, :cond_3

    const/4 v5, 0x2

    if-le v3, v5, :cond_3

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    add-int/lit8 v5, v3, -0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    .line 203
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    aput-byte v7, v5, v2

    .line 204
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    aput-byte v7, v5, v1

    .line 205
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_gtEntityBytes:[B

    invoke-virtual {p0, v5, v2}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->writeEntity([BI)I

    move-result v1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto :goto_1

    .line 206
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_3
    const/16 v5, 0x20

    if-ge v0, v5, :cond_5

    .line 207
    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    const/16 v5, 0xa

    if-eq v0, v5, :cond_4

    const/16 v5, 0xd

    if-eq v0, v5, :cond_4

    .line 208
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Illegal character code 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " in attribute value text"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 211
    :cond_4
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v6, v0

    aput-byte v6, v5, v2

    goto :goto_1

    .line 214
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_5
    const/16 v5, 0x7f

    if-le v0, v5, :cond_9

    .line 215
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_8

    .line 216
    const v5, 0xd7ff

    if-le v0, v5, :cond_7

    const v5, 0xe000

    if-lt v0, v5, :cond_6

    const v5, 0xfffe

    if-eq v0, v5, :cond_6

    const v5, 0xffff

    if-eq v0, v5, :cond_6

    const v5, 0x10ffff

    if-le v0, v5, :cond_7

    .line 218
    :cond_6
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Illegal character code 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " in attribute value text"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 222
    :cond_7
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    shr-int/lit8 v6, v0, 0xc

    add-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 223
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 225
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    goto/16 :goto_1

    .line 228
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_8
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    shr-int/lit8 v6, v0, 0x6

    add-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 229
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    move v1, v2

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto/16 :goto_1

    .line 232
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_9
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v6, v0

    aput-byte v6, v5, v2

    goto/16 :goto_1

    .line 236
    .end local v0           #chr:C
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_a
    iput v2, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    .line 237
    return-void
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 8
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5d

    .line 298
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->flagTextContent()V

    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 300
    .local v4, length:I
    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0xc

    invoke-virtual {p0, v5}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->makeSpace(I)V

    .line 301
    iget v1, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    .line 302
    .local v1, fill:I
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_cdataStartBytes:[B

    invoke-virtual {p0, v5, v1}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->writeEntity([BI)I

    move-result v1

    .line 303
    const/4 v3, 0x0

    .local v3, i:I
    move v2, v1

    .end local v1           #fill:I
    .local v2, fill:I
    :goto_0
    if-ge v3, v4, :cond_7

    .line 304
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 305
    .local v0, chr:C
    const/16 v5, 0x3e

    if-ne v0, v5, :cond_0

    const/4 v5, 0x2

    if-le v3, v5, :cond_0

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_0

    add-int/lit8 v5, v3, -0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_0

    .line 307
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Sequence \"]]>\" is not allowed within CDATA section text"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    :cond_0
    const/16 v5, 0x20

    if-ge v0, v5, :cond_2

    .line 310
    const/16 v5, 0x9

    if-eq v0, v5, :cond_1

    const/16 v5, 0xa

    if-eq v0, v5, :cond_1

    const/16 v5, 0xd

    if-eq v0, v5, :cond_1

    .line 311
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Illegal character code 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " in content text"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 314
    :cond_1
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v6, v0

    aput-byte v6, v5, v2

    .line 303
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    goto :goto_0

    .line 317
    :cond_2
    const/16 v5, 0x7f

    if-le v0, v5, :cond_6

    .line 318
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_5

    .line 319
    const v5, 0xd7ff

    if-le v0, v5, :cond_4

    const v5, 0xe000

    if-lt v0, v5, :cond_3

    const v5, 0xfffe

    if-eq v0, v5, :cond_3

    const v5, 0xffff

    if-eq v0, v5, :cond_3

    const v5, 0x10ffff

    if-le v0, v5, :cond_4

    .line 321
    :cond_3
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Illegal character code 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " in CDATA section text"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 325
    :cond_4
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    shr-int/lit8 v6, v0, 0xc

    add-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 326
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 328
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    goto :goto_1

    .line 331
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_5
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    shr-int/lit8 v6, v0, 0x6

    add-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 332
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    move v1, v2

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto/16 :goto_1

    .line 335
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_6
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v6, v0

    aput-byte v6, v5, v2

    goto/16 :goto_1

    .line 339
    .end local v0           #chr:C
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_7
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_cdataEndBytes:[B

    invoke-virtual {p0, v5, v2}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->writeEntity([BI)I

    move-result v5

    iput v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    .line 340
    return-void
.end method

.method protected writeMarkup(C)V
    .locals 3
    .parameter "chr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->makeSpace(I)V

    .line 114
    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    .line 115
    const/16 v0, 0x7ff

    if-le p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    iget v1, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    shr-int/lit8 v2, p1, 0xc

    add-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 117
    iget-object v0, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    iget v1, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    iget-object v0, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    iget v1, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 126
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    iget v1, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    shr-int/lit8 v2, p1, 0x6

    add-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 121
    iget-object v0, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    iget v1, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    and-int/lit8 v2, p1, 0x3f

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    iget v1, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method protected writeMarkup(Ljava/lang/String;)V
    .locals 7
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 84
    .local v4, length:I
    mul-int/lit8 v5, v4, 0x3

    invoke-virtual {p0, v5}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->makeSpace(I)V

    .line 85
    iget v1, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    .line 86
    .local v1, fill:I
    const/4 v3, 0x0

    .local v3, i:I
    move v2, v1

    .end local v1           #fill:I
    .local v2, fill:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 87
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 88
    .local v0, chr:C
    const/16 v5, 0x7f

    if-le v0, v5, :cond_1

    .line 89
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_0

    .line 90
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    shr-int/lit8 v6, v0, 0xc

    add-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 91
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 92
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 86
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    goto :goto_0

    .line 94
    :cond_0
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    shr-int/lit8 v6, v0, 0x6

    add-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 95
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    move v1, v2

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto :goto_1

    .line 98
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_1
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v6, v0

    aput-byte v6, v5, v2

    goto :goto_1

    .line 101
    .end local v0           #chr:C
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_2
    iput v2, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    .line 102
    return-void
.end method

.method public writeTextContent(Ljava/lang/String;)V
    .locals 8
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5d

    .line 246
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->flagTextContent()V

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 248
    .local v4, length:I
    mul-int/lit8 v5, v4, 0x5

    invoke-virtual {p0, v5}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->makeSpace(I)V

    .line 249
    iget v1, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    .line 250
    .local v1, fill:I
    const/4 v3, 0x0

    .local v3, i:I
    move v2, v1

    .end local v1           #fill:I
    .local v2, fill:I
    :goto_0
    if-ge v3, v4, :cond_9

    .line 251
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 252
    .local v0, chr:C
    const/16 v5, 0x26

    if-ne v0, v5, :cond_0

    .line 253
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_ampEntityBytes:[B

    invoke-virtual {p0, v5, v2}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->writeEntity([BI)I

    move-result v1

    .line 250
    .end local v2           #fill:I
    .restart local v1       #fill:I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    goto :goto_0

    .line 254
    :cond_0
    const/16 v5, 0x3c

    if-ne v0, v5, :cond_1

    .line 255
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_ltEntityBytes:[B

    invoke-virtual {p0, v5, v2}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->writeEntity([BI)I

    move-result v1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto :goto_1

    .line 256
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_1
    const/16 v5, 0x3e

    if-ne v0, v5, :cond_2

    const/4 v5, 0x2

    if-le v3, v5, :cond_2

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_2

    add-int/lit8 v5, v3, -0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_2

    .line 258
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_gtEntityBytes:[B

    invoke-virtual {p0, v5, v2}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->writeEntity([BI)I

    move-result v1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto :goto_1

    .line 259
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_2
    const/16 v5, 0x20

    if-ge v0, v5, :cond_4

    .line 260
    const/16 v5, 0x9

    if-eq v0, v5, :cond_3

    const/16 v5, 0xa

    if-eq v0, v5, :cond_3

    const/16 v5, 0xd

    if-eq v0, v5, :cond_3

    .line 261
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Illegal character code 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " in content text"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 264
    :cond_3
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v6, v0

    aput-byte v6, v5, v2

    goto :goto_1

    .line 267
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_4
    const/16 v5, 0x7f

    if-le v0, v5, :cond_8

    .line 268
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_7

    .line 269
    const v5, 0xd7ff

    if-le v0, v5, :cond_6

    const v5, 0xe000

    if-lt v0, v5, :cond_5

    const v5, 0xfffe

    if-eq v0, v5, :cond_5

    const v5, 0xffff

    if-eq v0, v5, :cond_5

    const v5, 0x10ffff

    if-le v0, v5, :cond_6

    .line 271
    :cond_5
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Illegal character code 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " in content text"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 274
    :cond_6
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    shr-int/lit8 v6, v0, 0xc

    add-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 275
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 277
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    goto/16 :goto_1

    .line 280
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_7
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    shr-int/lit8 v6, v0, 0x6

    add-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 281
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    and-int/lit8 v6, v0, 0x3f

    add-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    move v1, v2

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto/16 :goto_1

    .line 284
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_8
    iget-object v5, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v6, v0

    aput-byte v6, v5, v2

    goto/16 :goto_1

    .line 288
    .end local v0           #chr:C
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_9
    iput v2, p0, Lorg/jibx/runtime/impl/UTF8StreamWriter;->m_fillOffset:I

    .line 289
    return-void
.end method
