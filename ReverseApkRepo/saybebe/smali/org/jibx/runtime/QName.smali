.class public Lorg/jibx/runtime/QName;
.super Ljava/lang/Object;
.source "QName.java"


# instance fields
.field private m_name:Ljava/lang/String;

.field private m_prefix:Ljava/lang/String;

.field private m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0, v0, p1}, Lorg/jibx/runtime/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "name"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jibx/runtime/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "prefix"
    .parameter "name"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/jibx/runtime/QName;->m_uri:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/jibx/runtime/QName;->m_prefix:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lorg/jibx/runtime/QName;->m_name:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static deserialize(Ljava/lang/String;Lorg/jibx/runtime/IUnmarshallingContext;)Lorg/jibx/runtime/QName;
    .locals 6
    .parameter "text"
    .parameter "ictx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 206
    if-nez p0, :cond_0

    .line 237
    .end local p1
    :goto_0
    return-object v3

    .line 211
    .restart local p1
    :cond_0
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 212
    .local v1, split:I
    if-lez v1, :cond_2

    .line 215
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, prefix:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 219
    check-cast p1, Lorg/jibx/runtime/impl/UnmarshallingContext;

    .end local p1
    invoke-virtual {p1, v0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, uri:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 222
    new-instance v3, Lorg/jibx/runtime/JiBXException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Undefined prefix "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    :cond_1
    new-instance v3, Lorg/jibx/runtime/QName;

    invoke-direct {v3, v2, v0, p0}, Lorg/jibx/runtime/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v0           #prefix:Ljava/lang/String;
    .end local v2           #uri:Ljava/lang/String;
    .restart local p1
    :cond_2
    check-cast p1, Lorg/jibx/runtime/impl/UnmarshallingContext;

    .end local p1
    invoke-virtual {p1, v3}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .restart local v2       #uri:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 235
    const/4 v2, 0x0

    .line 237
    :cond_3
    new-instance v3, Lorg/jibx/runtime/QName;

    const-string v4, ""

    invoke-direct {v3, v2, v4, p0}, Lorg/jibx/runtime/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deserializeList(Ljava/lang/String;Lorg/jibx/runtime/IUnmarshallingContext;)[Lorg/jibx/runtime/QName;
    .locals 3
    .parameter "text"
    .parameter "ictx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lorg/jibx/runtime/QName$1;

    invoke-direct {v0, p1}, Lorg/jibx/runtime/QName$1;-><init>(Lorg/jibx/runtime/IUnmarshallingContext;)V

    .line 351
    .local v0, ldser:Lorg/jibx/runtime/IListItemDeserializer;
    invoke-static {p0, v0}, Lorg/jibx/runtime/Utility;->deserializeList(Ljava/lang/String;Lorg/jibx/runtime/IListItemDeserializer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 352
    .local v1, list:Ljava/util/ArrayList;
    if-nez v1, :cond_0

    .line 353
    const/4 v2, 0x0

    .line 355
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jibx/runtime/QName;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jibx/runtime/QName;

    check-cast v2, [Lorg/jibx/runtime/QName;

    goto :goto_0
.end method

.method public static serialize(Lorg/jibx/runtime/QName;Lorg/jibx/runtime/IMarshallingContext;)Ljava/lang/String;
    .locals 14
    .parameter "qname"
    .parameter "ictx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 254
    if-nez p0, :cond_0

    .line 255
    const/4 v11, 0x0

    .line 324
    .end local p1
    :goto_0
    return-object v11

    .line 259
    .restart local p1
    :cond_0
    check-cast p1, Lorg/jibx/runtime/impl/MarshallingContext;

    .end local p1
    invoke-virtual {p1}, Lorg/jibx/runtime/impl/MarshallingContext;->getXmlWriter()Lorg/jibx/runtime/IXMLWriter;

    move-result-object v3

    .line 260
    .local v3, ixw:Lorg/jibx/runtime/IXMLWriter;
    const/4 v2, -0x1

    .line 261
    .local v2, index:I
    invoke-virtual {p0}, Lorg/jibx/runtime/QName;->getUri()Ljava/lang/String;

    move-result-object v10

    .line 262
    .local v10, uri:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 263
    const-string v10, ""

    .line 265
    :cond_1
    invoke-virtual {p0}, Lorg/jibx/runtime/QName;->getPrefix()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 268
    invoke-virtual {p0}, Lorg/jibx/runtime/QName;->getPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Lorg/jibx/runtime/IXMLWriter;->getPrefixIndex(Ljava/lang/String;)I

    move-result v9

    .line 269
    .local v9, tryidx:I
    if-ltz v9, :cond_2

    invoke-interface {v3, v9}, Lorg/jibx/runtime/IXMLWriter;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 271
    move v2, v9

    .line 276
    .end local v9           #tryidx:I
    :cond_2
    if-gez v2, :cond_8

    .line 279
    if-nez v10, :cond_3

    .line 280
    const-string v10, ""

    .line 282
    :cond_3
    invoke-interface {v3}, Lorg/jibx/runtime/IXMLWriter;->getNamespaces()[Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, nss:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v11, v6

    if-ge v1, v11, :cond_4

    .line 284
    aget-object v11, v6, v1

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 285
    move v2, v1

    .line 289
    :cond_4
    if-gez v2, :cond_8

    .line 292
    invoke-interface {v3}, Lorg/jibx/runtime/IXMLWriter;->getExtensionNamespaces()[[Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, nsss:[[Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 294
    array-length v0, v6

    .line 295
    .local v0, base:I
    array-length v11, v7

    add-int/lit8 v1, v11, -0x1

    :goto_2
    if-ltz v1, :cond_8

    .line 296
    aget-object v6, v7, v1

    .line 297
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    array-length v11, v6

    if-ge v4, v11, :cond_7

    .line 298
    aget-object v11, v6, v4

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 301
    add-int v2, v0, v4

    .line 302
    const/4 v5, 0x0

    .local v5, k:I
    :goto_4
    if-ge v5, v1, :cond_8

    .line 303
    aget-object v11, v7, v5

    array-length v11, v11

    add-int/2addr v2, v11

    .line 302
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 283
    .end local v0           #base:I
    .end local v4           #j:I
    .end local v5           #k:I
    .end local v7           #nsss:[[Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 297
    .restart local v0       #base:I
    .restart local v4       #j:I
    .restart local v7       #nsss:[[Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 295
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 314
    .end local v0           #base:I
    .end local v1           #i:I
    .end local v4           #j:I
    .end local v6           #nss:[Ljava/lang/String;
    .end local v7           #nsss:[[Ljava/lang/String;
    :cond_8
    if-ltz v2, :cond_b

    .line 317
    invoke-interface {v3, v2}, Lorg/jibx/runtime/IXMLWriter;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, prefix:Ljava/lang/String;
    if-nez v8, :cond_9

    .line 319
    new-instance v11, Lorg/jibx/runtime/JiBXException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Namespace URI "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {p0}, Lorg/jibx/runtime/QName;->getUri()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, " cannot be used since it is not active"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 321
    :cond_9
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_a

    .line 322
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lorg/jibx/runtime/QName;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 324
    :cond_a
    invoke-virtual {p0}, Lorg/jibx/runtime/QName;->getName()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 328
    .end local v8           #prefix:Ljava/lang/String;
    :cond_b
    new-instance v11, Lorg/jibx/runtime/JiBXException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Unknown namespace URI "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    iget-object v13, p0, Lorg/jibx/runtime/QName;->m_uri:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public static serializeList([Lorg/jibx/runtime/QName;Lorg/jibx/runtime/IMarshallingContext;)Ljava/lang/String;
    .locals 4
    .parameter "qnames"
    .parameter "ictx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 372
    .local v0, buff:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 373
    aget-object v2, p0, v1

    .line 374
    .local v2, qname:Lorg/jibx/runtime/QName;
    if-eqz v2, :cond_1

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 376
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 378
    :cond_0
    invoke-static {v2, p1}, Lorg/jibx/runtime/QName;->serialize(Lorg/jibx/runtime/QName;Lorg/jibx/runtime/IMarshallingContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v2           #qname:Lorg/jibx/runtime/QName;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 102
    instance-of v2, p1, Lorg/jibx/runtime/QName;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 103
    check-cast v0, Lorg/jibx/runtime/QName;

    .line 104
    .local v0, qname:Lorg/jibx/runtime/QName;
    iget-object v2, p0, Lorg/jibx/runtime/QName;->m_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/jibx/runtime/QName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lorg/jibx/runtime/QName;->m_uri:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 106
    invoke-virtual {v0}, Lorg/jibx/runtime/QName;->getUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 112
    .end local v0           #qname:Lorg/jibx/runtime/QName;
    :cond_0
    :goto_0
    return v1

    .line 108
    .restart local v0       #qname:Lorg/jibx/runtime/QName;
    :cond_1
    iget-object v1, p0, Lorg/jibx/runtime/QName;->m_uri:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/jibx/runtime/QName;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/jibx/runtime/QName;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/jibx/runtime/QName;->m_prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/jibx/runtime/QName;->m_uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jibx/runtime/QName;->m_uri:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jibx/runtime/QName;->m_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/jibx/runtime/QName;->m_uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 151
    iput-object p1, p0, Lorg/jibx/runtime/QName;->m_name:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 171
    iput-object p1, p0, Lorg/jibx/runtime/QName;->m_prefix:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 189
    iput-object p1, p0, Lorg/jibx/runtime/QName;->m_uri:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/jibx/runtime/QName;->m_uri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/jibx/runtime/QName;->m_name:Ljava/lang/String;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jibx/runtime/QName;->m_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jibx/runtime/QName;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
