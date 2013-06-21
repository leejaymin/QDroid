.class public abstract Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;
.super Ljava/lang/Object;
.source "XMLWriterNamespaceBase.java"

# interfaces
.implements Lorg/jibx/runtime/IXMLWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I


# instance fields
.field private m_extensionPrefixes:[[Ljava/lang/String;

.field private m_extensionUris:[[Ljava/lang/String;

.field private m_namespaceDepth:I

.field private m_namespaceStack:Ljava/util/Stack;

.field private m_nestingDepth:I

.field protected m_prefixes:[Ljava/lang/String;

.field private m_translateTable:[I

.field private m_translateTableStack:Ljava/util/Stack;

.field protected m_uris:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method public constructor <init>(Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;[Ljava/lang/String;)V
    .locals 1
    .parameter "base"
    .parameter "uris"

    .prologue
    .line 100
    invoke-direct {p0, p2}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;-><init>([Ljava/lang/String;)V

    .line 101
    iget-object v0, p1, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    .line 103
    iget v0, p1, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_nestingDepth:I

    iput v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_nestingDepth:I

    .line 104
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .parameter "uris"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_uris:[Ljava/lang/String;

    .line 84
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 86
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "xml"

    aput-object v2, v0, v1

    .line 87
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_namespaceStack:Ljava/util/Stack;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_namespaceDepth:I

    .line 89
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTableStack:Ljava/util/Stack;

    .line 90
    return-void
.end method

.method private closeNamespaces()V
    .locals 9

    .prologue
    .line 265
    iget-object v7, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_namespaceStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;

    .line 266
    .local v3, info:Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;
    iget-object v0, v3, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;->m_deltas:[I

    .line 267
    .local v0, deltas:[I
    iget-object v6, v3, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;->m_priors:[Ljava/lang/String;

    .line 268
    .local v6, priors:[Ljava/lang/String;
    array-length v7, v0

    add-int/lit8 v1, v7, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 269
    aget v2, v0, v1

    .line 270
    .local v2, index:I
    invoke-virtual {p0, v2}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->undefineNamespace(I)V

    .line 271
    iget-object v7, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 272
    iget-object v7, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    aget-object v8, v6, v1

    aput-object v8, v7, v2

    .line 268
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 273
    :cond_1
    iget-object v7, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 274
    iget-object v7, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    array-length v7, v7

    sub-int/2addr v2, v7

    .line 275
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    iget-object v7, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 276
    iget-object v7, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    aget-object v7, v7, v4

    array-length v5, v7

    .line 277
    .local v5, length:I
    if-ge v2, v5, :cond_2

    .line 278
    iget-object v7, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    aget-object v7, v7, v4

    aget-object v8, v6, v1

    aput-object v8, v7, v2

    .line 275
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 280
    :cond_2
    sub-int/2addr v2, v5

    goto :goto_2

    .line 287
    .end local v2           #index:I
    .end local v4           #j:I
    .end local v5           #length:I
    :cond_3
    iget-object v7, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_namespaceStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 288
    const/4 v7, -0x1

    iput v7, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_namespaceDepth:I

    .line 293
    :goto_3
    return-void

    .line 290
    :cond_4
    iget-object v7, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_namespaceStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;

    iget v7, v7, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;->m_depth:I

    iput v7, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_namespaceDepth:I

    goto :goto_3
.end method

.method protected static growArray([[Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 4
    .parameter "base"
    .parameter "items"

    .prologue
    const/4 v3, 0x0

    .line 495
    if-nez p0, :cond_0

    .line 496
    const/4 v2, 0x1

    new-array v0, v2, [[Ljava/lang/String;

    aput-object p1, v0, v3

    .line 502
    :goto_0
    return-object v0

    .line 498
    :cond_0
    array-length v1, p0

    .line 499
    .local v1, length:I
    add-int/lit8 v2, v1, 0x1

    new-array v0, v2, [[Ljava/lang/String;

    .line 500
    .local v0, grow:[[Ljava/lang/String;
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    aput-object p1, v0, v1

    goto :goto_0
.end method

.method private setNamespacePrefix(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "prefix"

    .prologue
    .line 143
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_1

    .line 144
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    aput-object p2, v2, p1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr p1, v2

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 148
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    aget-object v2, v2, v0

    array-length v1, v2

    .line 149
    .local v1, length:I
    if-ge p1, v1, :cond_2

    .line 150
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object p2, v2, p1

    goto :goto_0

    .line 153
    :cond_2
    sub-int/2addr p1, v1

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected static shrinkArray([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 4
    .parameter "base"

    .prologue
    const/4 v3, 0x0

    .line 514
    array-length v0, p0

    .line 515
    .local v0, length:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 516
    const/4 v2, 0x0

    check-cast v2, [[Ljava/lang/String;

    .line 520
    :goto_0
    return-object v2

    .line 518
    :cond_0
    add-int/lit8 v2, v0, -0x1

    new-array v1, v2, [[Ljava/lang/String;

    .line 519
    .local v1, shrink:[[Ljava/lang/String;
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 520
    goto :goto_0
.end method


# virtual methods
.method protected decrementNesting()V
    .locals 2

    .prologue
    .line 335
    iget v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_nestingDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_nestingDepth:I

    .line 336
    iget v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_nestingDepth:I

    if-ltz v0, :cond_0

    .line 337
    :goto_0
    iget v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_nestingDepth:I

    iget v1, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_namespaceDepth:I

    if-ne v0, v1, :cond_0

    .line 338
    invoke-direct {p0}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->closeNamespaces()V

    goto :goto_0

    .line 341
    :cond_0
    return-void
.end method

.method protected abstract defineNamespace(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getExtensionNamespaces()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespaceCount()I
    .locals 3

    .prologue
    .line 313
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_uris:[Ljava/lang/String;

    array-length v0, v2

    .line 314
    .local v0, count:I
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 315
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 316
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    aget-object v2, v2, v1

    array-length v2, v2

    add-int/2addr v0, v2

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1           #i:I
    :cond_0
    return v0
.end method

.method public final getNamespacePrefix(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->translateNamespace(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->internalNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespaceUri(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->translateNamespace(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->internalNamespaceUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_uris:[Ljava/lang/String;

    return-object v0
.end method

.method public final getNestingDepth()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_nestingDepth:I

    return v0
.end method

.method public final getPrefixIndex(Ljava/lang/String;)I
    .locals 7
    .parameter "prefix"

    .prologue
    .line 455
    iget-object v6, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 456
    iget-object v6, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 457
    iget-object v6, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    aget-object v4, v6, v0

    .line 458
    .local v4, prefixes:[Ljava/lang/String;
    array-length v6, v4

    add-int/lit8 v2, v6, -0x1

    .local v2, j:I
    :goto_1
    if-ltz v2, :cond_1

    .line 459
    aget-object v6, v4, v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 460
    iget-object v6, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    array-length v6, v6

    add-int v1, v2, v6

    .line 461
    .local v1, index:I
    add-int/lit8 v3, v0, -0x1

    .local v3, k:I
    :goto_2
    if-ltz v3, :cond_3

    .line 462
    iget-object v6, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    aget-object v6, v6, v3

    array-length v6, v6

    add-int/2addr v1, v6

    .line 461
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 458
    .end local v1           #index:I
    .end local v3           #k:I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 456
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 469
    .end local v0           #i:I
    .end local v2           #j:I
    .end local v4           #prefixes:[Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTable:[I

    if-nez v6, :cond_5

    .line 470
    iget-object v6, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0       #i:I
    :goto_3
    if-ltz v0, :cond_7

    .line 471
    iget-object v6, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v0

    .line 483
    :cond_3
    :goto_4
    return v1

    .line 470
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 476
    .end local v0           #i:I
    :cond_5
    iget-object v6, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTable:[I

    array-length v6, v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0       #i:I
    :goto_5
    if-ltz v0, :cond_7

    .line 477
    iget-object v6, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTable:[I

    aget v5, v6, v0

    .line 478
    .local v5, xlate:I
    iget-object v6, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v5

    .line 479
    goto :goto_4

    .line 476
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 483
    .end local v5           #xlate:I
    :cond_7
    const/4 v1, -0x1

    goto :goto_4
.end method

.method protected incrementNesting()V
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_nestingDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_nestingDepth:I

    .line 328
    return-void
.end method

.method protected final internalNamespacePrefix(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 416
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 417
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 429
    :goto_0
    return-object v2

    .line 418
    :cond_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 419
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr p1, v2

    .line 420
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 421
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    aget-object v2, v2, v0

    array-length v1, v2

    .line 422
    .local v1, length:I
    if-ge p1, v1, :cond_1

    .line 423
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, p1

    goto :goto_0

    .line 425
    :cond_1
    sub-int/2addr p1, v1

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 429
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final internalNamespaceUri(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 381
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_uris:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 382
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_uris:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 394
    :goto_0
    return-object v2

    .line 383
    :cond_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 384
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_uris:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr p1, v2

    .line 385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 386
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    aget-object v2, v2, v0

    array-length v1, v2

    .line 387
    .local v1, length:I
    if-ge p1, v1, :cond_1

    .line 388
    iget-object v2, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, p1

    goto :goto_0

    .line 390
    :cond_1
    sub-int/2addr p1, v1

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 394
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected internalSetUris([Ljava/lang/String;)V
    .locals 3
    .parameter "uris"

    .prologue
    .line 130
    iput-object p1, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_uris:[Ljava/lang/String;

    .line 131
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 133
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "xml"

    aput-object v2, v0, v1

    .line 134
    return-void
.end method

.method public openNamespaces([I[Ljava/lang/String;)[I
    .locals 16
    .parameter "nums"
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v5, v13, :cond_5

    .line 178
    aget-object v7, p2, v5

    .line 179
    .local v7, newpref:Ljava/lang/String;
    aget v13, p1, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, oldpref:Ljava/lang/String;
    const/4 v11, 0x0

    .line 181
    .local v11, use:Z
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, ""

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-nez v8, :cond_1

    .line 183
    :cond_0
    const/4 v11, 0x1

    .line 184
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 185
    aget v13, p1, v5

    aget v14, p1, v6

    if-ne v13, v14, :cond_3

    .line 186
    const-string v13, ""

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 189
    const/4 v11, 0x0

    .line 202
    .end local v6           #j:I
    :cond_1
    if-eqz v11, :cond_4

    .line 203
    add-int/lit8 v1, v1, 0x1

    .line 175
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 195
    .restart local v6       #j:I
    :cond_2
    const/4 v13, -0x1

    aput v13, p1, v6

    goto :goto_2

    .line 184
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 205
    .end local v6           #j:I
    :cond_4
    const/4 v13, -0x1

    aput v13, p1, v5

    goto :goto_2

    .line 210
    .end local v7           #newpref:Ljava/lang/String;
    .end local v8           #oldpref:Ljava/lang/String;
    .end local v11           #use:Z
    :cond_5
    sget-object v2, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->EMPTY_INT_ARRAY:[I

    .line 211
    .local v2, deltas:[I
    if-lez v1, :cond_a

    .line 214
    new-array v9, v1, [Ljava/lang/String;

    .line 215
    .local v9, priors:[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v13, v0

    if-ne v1, v13, :cond_7

    .line 218
    move-object/from16 v2, p1

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTable:[I

    if-eqz v13, :cond_6

    .line 220
    const/4 v5, 0x0

    :goto_3
    array-length v13, v2

    if-ge v5, v13, :cond_6

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTable:[I

    aget v14, v2, v5

    aget v13, v13, v14

    aput v13, v2, v5

    .line 220
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 224
    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_9

    .line 225
    aget v10, v2, v5

    .line 226
    .local v10, slot:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v5

    .line 227
    aget-object v13, p2, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->setNamespacePrefix(ILjava/lang/String;)V

    .line 228
    aget-object v13, p2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->defineNamespace(ILjava/lang/String;)V

    .line 224
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 234
    .end local v10           #slot:I
    :cond_7
    const/4 v3, 0x0

    .line 235
    .local v3, fill:I
    new-array v2, v1, [I

    .line 236
    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v5, v13, :cond_9

    .line 237
    aget v10, p1, v5

    .line 238
    .restart local v10       #slot:I
    if-ltz v10, :cond_8

    .line 239
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->translateNamespace(I)I

    move-result v12

    .line 240
    .local v12, xlate:I
    aput v12, v2, v3

    .line 241
    add-int/lit8 v4, v3, 0x1

    .end local v3           #fill:I
    .local v4, fill:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v3

    .line 242
    aget-object v13, p2, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->setNamespacePrefix(ILjava/lang/String;)V

    .line 243
    aget-object v13, p2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->defineNamespace(ILjava/lang/String;)V

    move v3, v4

    .line 236
    .end local v4           #fill:I
    .end local v12           #xlate:I
    .restart local v3       #fill:I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 249
    .end local v3           #fill:I
    .end local v10           #slot:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_namespaceStack:Ljava/util/Stack;

    new-instance v14, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_nestingDepth:I

    invoke-direct {v14, v15, v2, v9}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase$DeclarationInfo;-><init>(I[I[Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    move-object/from16 v0, p0

    iget v13, v0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_nestingDepth:I

    move-object/from16 v0, p0

    iput v13, v0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_namespaceDepth:I

    .line 254
    .end local v9           #priors:[Ljava/lang/String;
    :cond_a
    return-object v2
.end method

.method public popExtensionNamespaces()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    invoke-static {v0}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->shrinkArray([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    .line 541
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    invoke-static {v0}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->shrinkArray([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    .line 542
    return-void
.end method

.method public popTranslationTable()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTableStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTable:[I

    .line 593
    return-void
.end method

.method public pushExtensionNamespaces([Ljava/lang/String;)V
    .locals 2
    .parameter "uris"

    .prologue
    .line 530
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->growArray([[Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->growArray([[Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    .line 533
    return-void
.end method

.method public pushTranslationTable([I)V
    .locals 2
    .parameter "table"

    .prologue
    .line 581
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTableStack:Ljava/util/Stack;

    iget-object v1, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTable:[I

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    if-eqz p1, :cond_0

    .line 583
    iput-object p1, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTable:[I

    .line 585
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 348
    iput v3, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_nestingDepth:I

    .line 349
    const/4 v0, -0x1

    iput v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_namespaceDepth:I

    .line 350
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_namespaceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 351
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_uris:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v3

    .line 353
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_prefixes:[Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "xml"

    aput-object v3, v0, v2

    move-object v0, v1

    .line 354
    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionUris:[[Ljava/lang/String;

    move-object v0, v1

    .line 355
    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_extensionPrefixes:[[Ljava/lang/String;

    .line 356
    iput-object v1, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTable:[I

    .line 357
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTableStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 358
    return-void
.end method

.method public translateNamespace(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 563
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTable:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTable:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 564
    iget-object v0, p0, Lorg/jibx/runtime/impl/XMLWriterNamespaceBase;->m_translateTable:[I

    aget p1, v0, p1

    .line 566
    .end local p1
    :cond_0
    return p1
.end method

.method protected abstract undefineNamespace(I)V
.end method
