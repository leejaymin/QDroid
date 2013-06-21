.class public Lorg/jibx/runtime/impl/InputStreamWrapper;
.super Ljava/lang/Object;
.source "InputStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jibx/runtime/impl/InputStreamWrapper$1;,
        Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;,
        Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;,
        Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;
    }
.end annotation


# instance fields
.field private m_buffer:[B

.field private m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

.field private m_emptyOffset:I

.field private m_encodingName:Ljava/lang/String;

.field private m_endOffset:I

.field private m_scanOffset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    return-void
.end method

.method static access$300(Lorg/jibx/runtime/impl/InputStreamWrapper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    return v0
.end method

.method static access$302(Lorg/jibx/runtime/impl/InputStreamWrapper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    return p1
.end method

.method static access$308(Lorg/jibx/runtime/impl/InputStreamWrapper;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    return v0
.end method

.method static access$312(Lorg/jibx/runtime/impl/InputStreamWrapper;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iget v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    return v0
.end method

.method static access$314(Lorg/jibx/runtime/impl/InputStreamWrapper;J)I
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iget v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    return v0
.end method

.method static access$400(Lorg/jibx/runtime/impl/InputStreamWrapper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_endOffset:I

    return v0
.end method

.method static access$402(Lorg/jibx/runtime/impl/InputStreamWrapper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_endOffset:I

    return p1
.end method

.method static access$500(Lorg/jibx/runtime/impl/InputStreamWrapper;)Lorg/jibx/runtime/impl/IInByteBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    return-object v0
.end method

.method static access$600(Lorg/jibx/runtime/impl/InputStreamWrapper;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_buffer:[B

    return-object v0
.end method

.method static access$602(Lorg/jibx/runtime/impl/InputStreamWrapper;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_buffer:[B

    return-object p1
.end method

.method static access$700(Lorg/jibx/runtime/impl/InputStreamWrapper;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->fillBuffer()Z

    move-result v0

    return v0
.end method

.method private fillBuffer()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    iget v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    invoke-interface {v2, v3}, Lorg/jibx/runtime/impl/IInByteBuffer;->setOffset(I)V

    .line 113
    iget v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_endOffset:I

    iget v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    sub-int v0, v2, v3

    .line 114
    .local v0, remain:I
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Lorg/jibx/runtime/impl/IInByteBuffer;->require(I)Z

    move-result v1

    .line 115
    .local v1, result:Z
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    invoke-interface {v2}, Lorg/jibx/runtime/impl/IInByteBuffer;->getBuffer()[B

    move-result-object v2

    iput-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_buffer:[B

    .line 116
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    invoke-interface {v2}, Lorg/jibx/runtime/impl/IInByteBuffer;->getLimit()I

    move-result v2

    iput v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_endOffset:I

    .line 117
    iget-object v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    invoke-interface {v2}, Lorg/jibx/runtime/impl/IInByteBuffer;->getOffset()I

    move-result v2

    iput v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    .line 118
    return v1
.end method

.method private isWhite(I)Z
    .locals 1
    .parameter "chr"

    .prologue
    .line 152
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private require(I)Z
    .locals 3
    .parameter "min"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x1

    .line 135
    .local v0, result:Z
    iget v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_endOffset:I

    iget v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    sub-int/2addr v1, v2

    if-ge v1, p1, :cond_0

    .line 136
    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    iget v2, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    invoke-interface {v1, v2}, Lorg/jibx/runtime/impl/IInByteBuffer;->setOffset(I)V

    .line 137
    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    invoke-interface {v1, p1}, Lorg/jibx/runtime/impl/IInByteBuffer;->require(I)Z

    move-result v0

    .line 138
    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    invoke-interface {v1}, Lorg/jibx/runtime/impl/IInByteBuffer;->getBuffer()[B

    move-result-object v1

    iput-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_buffer:[B

    .line 139
    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    invoke-interface {v1}, Lorg/jibx/runtime/impl/IInByteBuffer;->getLimit()I

    move-result v1

    iput v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_endOffset:I

    .line 140
    iget-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    invoke-interface {v1}, Lorg/jibx/runtime/impl/IInByteBuffer;->getOffset()I

    move-result v1

    iput v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    .line 142
    :cond_0
    return v0
.end method

.method private scanQuoted()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v3, 0x1

    .line 200
    .local v3, skipping:Z
    const/4 v2, 0x0

    .line 201
    .local v2, quot:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    .local v0, buff:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    iget v4, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_scanOffset:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lorg/jibx/runtime/impl/InputStreamWrapper;->require(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 203
    iget-object v4, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_buffer:[B

    iget v5, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_scanOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_scanOffset:I

    aget-byte v4, v4, v5

    int-to-char v1, v4

    .line 204
    .local v1, chr:C
    if-eqz v3, :cond_2

    .line 205
    invoke-direct {p0, v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->isWhite(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    const/16 v4, 0x22

    if-eq v1, v4, :cond_1

    const/16 v4, 0x27

    if-ne v1, v4, :cond_4

    .line 207
    :cond_1
    const/4 v3, 0x0

    .line 208
    move v2, v1

    goto :goto_0

    .line 213
    :cond_2
    if-ne v1, v2, :cond_3

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    .end local v1           #chr:C
    :goto_1
    return-object v4

    .line 216
    .restart local v1       #chr:C
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 219
    .end local v1           #chr:C
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private scanToken()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    .line 165
    const/4 v2, 0x1

    .line 166
    .local v2, skipping:Z
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v0, buff:Ljava/lang/StringBuffer;
    :cond_0
    iget v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_scanOffset:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->require(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_buffer:[B

    iget v4, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_scanOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_scanOffset:I

    aget-byte v3, v3, v4

    int-to-char v1, v3

    .line 169
    .local v1, chr:C
    if-eqz v2, :cond_1

    .line 170
    invoke-direct {p0, v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->isWhite(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 173
    if-ne v1, v6, :cond_0

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .end local v1           #chr:C
    :goto_0
    return-object v3

    .line 177
    .restart local v1       #chr:C
    :cond_1
    invoke-direct {p0, v1}, Lorg/jibx/runtime/impl/InputStreamWrapper;->isWhite(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-ne v1, v6, :cond_3

    .line 178
    :cond_2
    iget v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_scanOffset:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_scanOffset:I

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    const/16 v3, 0x3e

    if-ne v1, v3, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 187
    .end local v1           #chr:C
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    invoke-interface {v0}, Lorg/jibx/runtime/impl/IInByteBuffer;->finish()V

    .line 327
    :cond_0
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->reset()V

    .line 328
    return-void
.end method

.method public getBuffer()Lorg/jibx/runtime/impl/IInByteBuffer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/high16 v8, -0x2

    const/high16 v7, -0x101

    const/4 v6, 0x0

    .line 235
    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 238
    const-string v3, "UTF-8"

    iput-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    .line 239
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lorg/jibx/runtime/impl/InputStreamWrapper;->require(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_buffer:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_buffer:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_buffer:[B

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_buffer:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 244
    .local v0, bom:I
    const v3, 0x3c3f786d

    if-ne v0, v3, :cond_3

    .line 247
    iput v9, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_scanOffset:I

    .line 248
    invoke-direct {p0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->scanToken()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, token:Ljava/lang/String;
    const-string v3, "xml"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->scanToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "?>"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 252
    const-string v3, "encoding"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    const-string v3, "="

    invoke-direct {p0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->scanToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-direct {p0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->scanQuoted()Ljava/lang/String;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_0

    .line 256
    iput-object v1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    .line 297
    .end local v0           #bom:I
    .end local v1           #token:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 298
    new-instance v3, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;

    invoke-direct {v3, p0, v6}, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamUTF8Reader;-><init>(Lorg/jibx/runtime/impl/InputStreamWrapper;Lorg/jibx/runtime/impl/InputStreamWrapper$1;)V

    .line 303
    :goto_2
    return-object v3

    .line 260
    .restart local v0       #bom:I
    .restart local v1       #token:Ljava/lang/String;
    :cond_2
    const-string v3, "="

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    invoke-direct {p0}, Lorg/jibx/runtime/impl/InputStreamWrapper;->scanQuoted()Ljava/lang/String;

    goto :goto_0

    .line 266
    .end local v1           #token:Ljava/lang/String;
    :cond_3
    const v3, 0xfeff

    if-eq v0, v3, :cond_4

    if-eq v0, v8, :cond_4

    const v3, 0xfffe

    if-eq v0, v3, :cond_4

    if-ne v0, v7, :cond_5

    .line 270
    :cond_4
    const-string v3, "UCS-4"

    iput-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    goto :goto_1

    .line 272
    :cond_5
    and-int/lit16 v3, v0, -0x100

    const v4, -0x10444100

    if-ne v3, v4, :cond_6

    .line 275
    const-string v3, "UTF-8"

    iput-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    goto :goto_1

    .line 278
    :cond_6
    const/high16 v3, -0x1

    and-int v2, v0, v3

    .line 279
    .local v2, upper:I
    if-eq v2, v7, :cond_7

    const v3, 0x3c003f

    if-ne v0, v3, :cond_8

    .line 282
    :cond_7
    const-string v3, "UTF-16BE"

    iput-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    goto :goto_1

    .line 284
    :cond_8
    if-eq v2, v8, :cond_9

    const v3, 0x3c003f00

    if-ne v0, v3, :cond_a

    .line 287
    :cond_9
    const-string v3, "UTF-16LE"

    iput-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    goto :goto_1

    .line 289
    :cond_a
    const v3, 0x4c6fa794

    if-ne v0, v3, :cond_1

    .line 292
    const-string v3, "EBCDIC"

    iput-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    goto :goto_1

    .line 299
    .end local v0           #bom:I
    .end local v2           #upper:I
    :cond_b
    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    const-string v4, "ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 301
    :cond_c
    new-instance v3, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;

    invoke-direct {v3, p0, v6}, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStreamISO88591Reader;-><init>(Lorg/jibx/runtime/impl/InputStreamWrapper;Lorg/jibx/runtime/impl/InputStreamWrapper$1;)V

    goto :goto_2

    .line 303
    :cond_d
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;

    invoke-direct {v4, p0, v6}, Lorg/jibx/runtime/impl/InputStreamWrapper$WrappedStream;-><init>(Lorg/jibx/runtime/impl/InputStreamWrapper;Lorg/jibx/runtime/impl/InputStreamWrapper$1;)V

    iget-object v5, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 334
    iput v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_scanOffset:I

    .line 335
    iput v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_endOffset:I

    .line 336
    iput v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setBuffer(Lorg/jibx/runtime/impl/IInByteBuffer;)V
    .locals 1
    .parameter "buff"

    .prologue
    .line 71
    iput-object p1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_byteBuffer:Lorg/jibx/runtime/impl/IInByteBuffer;

    .line 72
    invoke-interface {p1}, Lorg/jibx/runtime/impl/IInByteBuffer;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_buffer:[B

    .line 73
    invoke-interface {p1}, Lorg/jibx/runtime/impl/IInByteBuffer;->getLimit()I

    move-result v0

    iput v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_endOffset:I

    .line 74
    invoke-interface {p1}, Lorg/jibx/runtime/impl/IInByteBuffer;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_emptyOffset:I

    .line 75
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 96
    iput-object p1, p0, Lorg/jibx/runtime/impl/InputStreamWrapper;->m_encodingName:Ljava/lang/String;

    .line 100
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encoding has already been set for stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
