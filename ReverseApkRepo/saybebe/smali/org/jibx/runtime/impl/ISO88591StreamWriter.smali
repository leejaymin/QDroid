.class public Lorg/jibx/runtime/impl/ISO88591StreamWriter;
.super Lorg/jibx/runtime/impl/StreamWriterBase;
.source "ISO88591StreamWriter.java"


# direct methods
.method public constructor <init>(Lorg/jibx/runtime/impl/ISO88591StreamWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "base"
    .parameter "uris"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/StreamWriterBase;-><init>(Lorg/jibx/runtime/impl/StreamWriterBase;[Ljava/lang/String;)V

    .line 71
    array-length v1, p2

    new-array v1, v1, [[B

    iput-object v1, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_prefixBytes:[[B

    .line 73
    const/4 v1, 0x0

    :try_start_0
    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->defineNamespace(ILjava/lang/String;)V

    .line 74
    const/4 v1, 0x1

    const-string v2, "xml"

    invoke-virtual {p0, v1, v2}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->defineNamespace(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .parameter "uris"

    .prologue
    .line 51
    const-string v1, "ISO-8859-1"

    invoke-direct {p0, v1, p1}, Lorg/jibx/runtime/impl/StreamWriterBase;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x0

    :try_start_0
    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->defineNamespace(ILjava/lang/String;)V

    .line 54
    const/4 v1, 0x1

    const-string v2, "xml"

    invoke-virtual {p0, v1, v2}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->defineNamespace(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 335
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->flagContent()V

    .line 336
    new-instance v0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;

    invoke-direct {v0, p0, p1}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;-><init>(Lorg/jibx/runtime/impl/ISO88591StreamWriter;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected defineNamespace(ILjava/lang/String;)V
    .locals 7
    .parameter "index"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 133
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 134
    .local v0, buff:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 135
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 136
    .local v1, chr:C
    const/16 v4, 0xff

    if-le v1, v4, :cond_0

    .line 137
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to write character code 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " in encoding ISO-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_0
    int-to-byte v4, v1

    aput-byte v4, v0, v2

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v1           #chr:C
    :cond_1
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x3a

    aput-byte v5, v0, v4

    .line 147
    .end local v2           #i:I
    :goto_1
    iget-object v4, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_prefixBytes:[[B

    array-length v4, v4

    if-ge p1, v4, :cond_4

    .line 148
    iget-object v4, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_prefixBytes:[[B

    aput-object v0, v4, p1

    .line 162
    :cond_2
    return-void

    .line 145
    .end local v0           #buff:[B
    :cond_3
    const/4 v4, 0x0

    new-array v0, v4, [B

    .restart local v0       #buff:[B
    goto :goto_1

    .line 149
    :cond_4
    iget-object v4, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_extensionBytes:[[[B

    if-eqz v4, :cond_6

    .line 150
    iget-object v4, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_prefixBytes:[[B

    array-length v4, v4

    sub-int/2addr p1, v4

    .line 151
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v4, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_extensionBytes:[[[B

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 152
    iget-object v4, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_extensionBytes:[[[B

    aget-object v4, v4, v2

    array-length v3, v4

    .line 153
    .local v3, length:I
    if-ge p1, v3, :cond_5

    .line 154
    iget-object v4, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_extensionBytes:[[[B

    aget-object v4, v4, v2

    aput-object v0, v4, p1

    .line 151
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 156
    :cond_5
    sub-int/2addr p1, v3

    goto :goto_3

    .line 160
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Index out of range"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected writeAttributeText(Ljava/lang/String;)V
    .locals 12
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x26

    const/16 v10, 0xa

    const/16 v9, 0x5d

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 173
    .local v5, length:I
    mul-int/lit8 v7, v5, 0x6

    invoke-virtual {p0, v7}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->makeSpace(I)V

    .line 174
    iget v1, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    .line 175
    .local v1, fill:I
    const/4 v3, 0x0

    .local v3, i:I
    move v2, v1

    .end local v1           #fill:I
    .local v2, fill:I
    :goto_0
    if-ge v3, v5, :cond_b

    .line 176
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 177
    .local v0, chr:C
    const/16 v7, 0x22

    if-ne v0, v7, :cond_0

    .line 178
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_quotEntityBytes:[B

    invoke-virtual {p0, v7, v2}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->writeEntity([BI)I

    move-result v1

    .line 175
    .end local v2           #fill:I
    .restart local v1       #fill:I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    goto :goto_0

    .line 179
    :cond_0
    if-ne v0, v11, :cond_1

    .line 180
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_ampEntityBytes:[B

    invoke-virtual {p0, v7, v2}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->writeEntity([BI)I

    move-result v1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto :goto_1

    .line 181
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_1
    const/16 v7, 0x3c

    if-ne v0, v7, :cond_2

    .line 182
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_ltEntityBytes:[B

    invoke-virtual {p0, v7, v2}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->writeEntity([BI)I

    move-result v1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto :goto_1

    .line 183
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_2
    const/16 v7, 0x3e

    if-ne v0, v7, :cond_3

    const/4 v7, 0x2

    if-le v3, v7, :cond_3

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_3

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_3

    .line 185
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    aput-byte v9, v7, v2

    .line 186
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    aput-byte v9, v7, v1

    .line 187
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_gtEntityBytes:[B

    invoke-virtual {p0, v7, v2}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->writeEntity([BI)I

    move-result v1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto :goto_1

    .line 188
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_3
    const/16 v7, 0x20

    if-ge v0, v7, :cond_5

    .line 189
    const/16 v7, 0x9

    if-eq v0, v7, :cond_4

    if-eq v0, v10, :cond_4

    const/16 v7, 0xd

    if-eq v0, v7, :cond_4

    .line 190
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Illegal character code 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " in attribute value text"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 193
    :cond_4
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v8, v0

    aput-byte v8, v7, v2

    goto :goto_1

    .line 196
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_5
    const/16 v7, 0xff

    if-le v0, v7, :cond_a

    .line 197
    const v7, 0xd7ff

    if-le v0, v7, :cond_7

    const v7, 0xe000

    if-lt v0, v7, :cond_6

    const v7, 0xfffe

    if-eq v0, v7, :cond_6

    const v7, 0xffff

    if-eq v0, v7, :cond_6

    const v7, 0x10ffff

    if-le v0, v7, :cond_7

    .line 199
    :cond_6
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Illegal character code 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " in attribute value text"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 203
    :cond_7
    iput v2, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    .line 204
    sub-int v7, v5, v3

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {p0, v7}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->makeSpace(I)V

    .line 205
    iget v1, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    .line 206
    .end local v2           #fill:I
    .restart local v1       #fill:I
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    aput-byte v11, v7, v1

    .line 207
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    const/16 v8, 0x23

    aput-byte v8, v7, v2

    .line 208
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    const/16 v8, 0x78

    aput-byte v8, v7, v1

    .line 209
    const/16 v4, 0xc

    .local v4, j:I
    :goto_2
    if-ltz v4, :cond_9

    .line 210
    shr-int v7, v0, v4

    and-int/lit8 v6, v7, 0xf

    .line 211
    .local v6, nib:I
    if-ge v6, v10, :cond_8

    .line 212
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    add-int/lit8 v8, v6, 0x30

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 209
    :goto_3
    add-int/lit8 v4, v4, -0x4

    move v2, v1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    goto :goto_2

    .line 214
    :cond_8
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    add-int/lit8 v8, v6, 0x41

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    goto :goto_3

    .line 217
    .end local v1           #fill:I
    .end local v6           #nib:I
    .restart local v2       #fill:I
    :cond_9
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    const/16 v8, 0x3b

    aput-byte v8, v7, v2

    goto/16 :goto_1

    .line 220
    .end local v1           #fill:I
    .end local v4           #j:I
    .restart local v2       #fill:I
    :cond_a
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v8, v0

    aput-byte v8, v7, v2

    goto/16 :goto_1

    .line 224
    .end local v0           #chr:C
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_b
    iput v2, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    .line 225
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

    .line 293
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->flagTextContent()V

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 295
    .local v4, length:I
    add-int/lit8 v5, v4, 0xc

    invoke-virtual {p0, v5}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->makeSpace(I)V

    .line 296
    iget v1, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    .line 297
    .local v1, fill:I
    iget-object v5, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_cdataStartBytes:[B

    invoke-virtual {p0, v5, v1}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->writeEntity([BI)I

    move-result v1

    .line 298
    const/4 v3, 0x0

    .local v3, i:I
    move v2, v1

    .end local v1           #fill:I
    .local v2, fill:I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 299
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 300
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

    .line 302
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Sequence \"]]>\" is not allowed within CDATA section text"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 304
    :cond_0
    const/16 v5, 0x20

    if-ge v0, v5, :cond_2

    .line 305
    const/16 v5, 0x9

    if-eq v0, v5, :cond_1

    const/16 v5, 0xa

    if-eq v0, v5, :cond_1

    const/16 v5, 0xd

    if-eq v0, v5, :cond_1

    .line 306
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

    .line 309
    :cond_1
    iget-object v5, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v6, v0

    aput-byte v6, v5, v2

    .line 298
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    goto :goto_0

    .line 312
    :cond_2
    const/16 v5, 0xff

    if-le v0, v5, :cond_3

    .line 313
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Character code 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " not allowed by encoding in CDATA section text"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 317
    :cond_3
    iget-object v5, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v6, v0

    aput-byte v6, v5, v2

    goto :goto_1

    .line 321
    .end local v0           #chr:C
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_4
    iget-object v5, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_cdataEndBytes:[B

    invoke-virtual {p0, v5, v2}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->writeEntity([BI)I

    move-result v5

    iput v5, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    .line 322
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
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->makeSpace(I)V

    .line 114
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 115
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unable to write character code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " in encoding ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    iget v1, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 120
    return-void
.end method

.method protected writeMarkup(Ljava/lang/String;)V
    .locals 8
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 90
    .local v4, length:I
    invoke-virtual {p0, v4}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->makeSpace(I)V

    .line 91
    iget v1, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    .line 92
    .local v1, fill:I
    const/4 v3, 0x0

    .local v3, i:I
    move v2, v1

    .end local v1           #fill:I
    .local v2, fill:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 93
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 94
    .local v0, chr:C
    const/16 v5, 0xff

    if-le v0, v5, :cond_0

    .line 95
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable to write character code 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " in encoding ISO-8859-1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_0
    iget-object v5, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v6, v0

    aput-byte v6, v5, v2

    .line 92
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    goto :goto_0

    .line 101
    .end local v0           #chr:C
    :cond_1
    iput v2, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    .line 102
    return-void
.end method

.method public writeTextContent(Ljava/lang/String;)V
    .locals 12
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x5d

    const/16 v10, 0x26

    const/16 v9, 0xa

    .line 234
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->flagTextContent()V

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 236
    .local v5, length:I
    mul-int/lit8 v7, v5, 0x5

    invoke-virtual {p0, v7}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->makeSpace(I)V

    .line 237
    iget v1, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    .line 238
    .local v1, fill:I
    const/4 v3, 0x0

    .local v3, i:I
    move v2, v1

    .end local v1           #fill:I
    .local v2, fill:I
    :goto_0
    if-ge v3, v5, :cond_a

    .line 239
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 240
    .local v0, chr:C
    if-ne v0, v10, :cond_0

    .line 241
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_ampEntityBytes:[B

    invoke-virtual {p0, v7, v2}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->writeEntity([BI)I

    move-result v1

    .line 238
    .end local v2           #fill:I
    .restart local v1       #fill:I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    goto :goto_0

    .line 242
    :cond_0
    const/16 v7, 0x3c

    if-ne v0, v7, :cond_1

    .line 243
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_ltEntityBytes:[B

    invoke-virtual {p0, v7, v2}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->writeEntity([BI)I

    move-result v1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto :goto_1

    .line 244
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_1
    const/16 v7, 0x3e

    if-ne v0, v7, :cond_2

    const/4 v7, 0x2

    if-le v3, v7, :cond_2

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_2

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_2

    .line 246
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_gtEntityBytes:[B

    invoke-virtual {p0, v7, v2}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->writeEntity([BI)I

    move-result v1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    goto :goto_1

    .line 247
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_2
    const/16 v7, 0x20

    if-ge v0, v7, :cond_4

    .line 248
    const/16 v7, 0x9

    if-eq v0, v7, :cond_3

    if-eq v0, v9, :cond_3

    const/16 v7, 0xd

    if-eq v0, v7, :cond_3

    .line 249
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Illegal character code 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " in content text"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 252
    :cond_3
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v8, v0

    aput-byte v8, v7, v2

    goto :goto_1

    .line 255
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_4
    const/16 v7, 0xff

    if-le v0, v7, :cond_9

    .line 256
    const v7, 0xd7ff

    if-le v0, v7, :cond_6

    const v7, 0xe000

    if-lt v0, v7, :cond_5

    const v7, 0xfffe

    if-eq v0, v7, :cond_5

    const v7, 0xffff

    if-eq v0, v7, :cond_5

    const v7, 0x10ffff

    if-le v0, v7, :cond_6

    .line 258
    :cond_5
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Illegal character code 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " in character data text"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 262
    :cond_6
    iput v2, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    .line 263
    sub-int v7, v5, v3

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {p0, v7}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->makeSpace(I)V

    .line 264
    iget v1, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    .line 265
    .end local v2           #fill:I
    .restart local v1       #fill:I
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    aput-byte v10, v7, v1

    .line 266
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    const/16 v8, 0x23

    aput-byte v8, v7, v2

    .line 267
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    const/16 v8, 0x78

    aput-byte v8, v7, v1

    .line 268
    const/16 v4, 0xc

    .local v4, j:I
    :goto_2
    if-ltz v4, :cond_8

    .line 269
    shr-int v7, v0, v4

    and-int/lit8 v6, v7, 0xf

    .line 270
    .local v6, nib:I
    if-ge v6, v9, :cond_7

    .line 271
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    add-int/lit8 v8, v6, 0x30

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 268
    :goto_3
    add-int/lit8 v4, v4, -0x4

    move v2, v1

    .end local v1           #fill:I
    .restart local v2       #fill:I
    goto :goto_2

    .line 273
    :cond_7
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    add-int/lit8 v8, v6, 0x41

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    goto :goto_3

    .line 276
    .end local v1           #fill:I
    .end local v6           #nib:I
    .restart local v2       #fill:I
    :cond_8
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    const/16 v8, 0x3b

    aput-byte v8, v7, v2

    goto/16 :goto_1

    .line 279
    .end local v1           #fill:I
    .end local v4           #j:I
    .restart local v2       #fill:I
    :cond_9
    iget-object v7, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_buffer:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2           #fill:I
    .restart local v1       #fill:I
    int-to-byte v8, v0

    aput-byte v8, v7, v2

    goto/16 :goto_1

    .line 283
    .end local v0           #chr:C
    .end local v1           #fill:I
    .restart local v2       #fill:I
    :cond_a
    iput v2, p0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->m_fillOffset:I

    .line 284
    return-void
.end method
