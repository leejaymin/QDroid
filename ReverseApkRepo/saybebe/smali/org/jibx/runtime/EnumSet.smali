.class public Lorg/jibx/runtime/EnumSet;
.super Ljava/lang/Object;
.source "EnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jibx/runtime/EnumSet$EnumItem;
    }
.end annotation


# static fields
.field public static final VALUE_LIMIT:I = 0x200


# instance fields
.field private final m_indexedNames:[Ljava/lang/String;

.field private final m_items:[Lorg/jibx/runtime/EnumSet$EnumItem;

.field private final m_orderedIndexes:[I

.field private final m_orderedNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 1
    .parameter "start"
    .parameter "names"

    .prologue
    .line 127
    invoke-static {p1, p2}, Lorg/jibx/runtime/EnumSet;->buildItems(I[Ljava/lang/String;)[Lorg/jibx/runtime/EnumSet$EnumItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jibx/runtime/EnumSet;-><init>([Lorg/jibx/runtime/EnumSet$EnumItem;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Lorg/jibx/runtime/EnumSet;I[Ljava/lang/String;)V
    .locals 1
    .parameter "base"
    .parameter "start"
    .parameter "names"

    .prologue
    .line 140
    invoke-static {p1, p2, p3}, Lorg/jibx/runtime/EnumSet;->mergeItems(Lorg/jibx/runtime/EnumSet;I[Ljava/lang/String;)[Lorg/jibx/runtime/EnumSet$EnumItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jibx/runtime/EnumSet;-><init>([Lorg/jibx/runtime/EnumSet$EnumItem;)V

    .line 141
    return-void
.end method

.method public constructor <init>([Lorg/jibx/runtime/EnumSet$EnumItem;)V
    .locals 6
    .parameter "items"

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/jibx/runtime/EnumSet;->m_items:[Lorg/jibx/runtime/EnumSet$EnumItem;

    .line 70
    array-length v3, p1

    if-lez v3, :cond_4

    .line 73
    new-instance v3, Lorg/jibx/runtime/EnumSet$1;

    invoke-direct {v3, p0}, Lorg/jibx/runtime/EnumSet$1;-><init>(Lorg/jibx/runtime/EnumSet;)V

    invoke-static {p1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 80
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/jibx/runtime/EnumSet;->m_orderedNames:[Ljava/lang/String;

    .line 81
    array-length v3, p1

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/jibx/runtime/EnumSet;->m_orderedIndexes:[I

    .line 82
    const/4 v0, -0x1

    .line 83
    .local v0, high:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 84
    aget-object v2, p1, v1

    .line 85
    .local v2, item:Lorg/jibx/runtime/EnumSet$EnumItem;
    iget v3, v2, Lorg/jibx/runtime/EnumSet$EnumItem;->m_value:I

    if-gez v3, :cond_0

    .line 86
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Negative item value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, v2, Lorg/jibx/runtime/EnumSet$EnumItem;->m_value:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " not allowed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    :cond_0
    iget v3, v2, Lorg/jibx/runtime/EnumSet$EnumItem;->m_value:I

    if-le v3, v0, :cond_1

    .line 89
    iget v0, v2, Lorg/jibx/runtime/EnumSet$EnumItem;->m_value:I

    .line 90
    const/16 v3, 0x200

    if-lt v0, v3, :cond_1

    .line 91
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Enumeration with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " too large to be used."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :cond_1
    iget-object v3, p0, Lorg/jibx/runtime/EnumSet;->m_orderedNames:[Ljava/lang/String;

    iget-object v4, v2, Lorg/jibx/runtime/EnumSet$EnumItem;->m_name:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 97
    iget-object v3, p0, Lorg/jibx/runtime/EnumSet;->m_orderedIndexes:[I

    iget v4, v2, Lorg/jibx/runtime/EnumSet$EnumItem;->m_value:I

    aput v4, v3, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v2           #item:Lorg/jibx/runtime/EnumSet$EnumItem;
    :cond_2
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/jibx/runtime/EnumSet;->m_indexedNames:[Ljava/lang/String;

    .line 102
    const/4 v1, 0x0

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_5

    .line 103
    aget-object v2, p1, v1

    .line 104
    .restart local v2       #item:Lorg/jibx/runtime/EnumSet$EnumItem;
    iget-object v3, p0, Lorg/jibx/runtime/EnumSet;->m_indexedNames:[Ljava/lang/String;

    iget v4, v2, Lorg/jibx/runtime/EnumSet$EnumItem;->m_value:I

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    .line 105
    iget-object v3, p0, Lorg/jibx/runtime/EnumSet;->m_indexedNames:[Ljava/lang/String;

    iget v4, v2, Lorg/jibx/runtime/EnumSet$EnumItem;->m_value:I

    iget-object v5, v2, Lorg/jibx/runtime/EnumSet$EnumItem;->m_name:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Duplicate index value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, v2, Lorg/jibx/runtime/EnumSet$EnumItem;->m_value:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    .end local v0           #high:I
    .end local v1           #i:I
    .end local v2           #item:Lorg/jibx/runtime/EnumSet$EnumItem;
    :cond_4
    new-array v3, v4, [Ljava/lang/String;

    iput-object v3, p0, Lorg/jibx/runtime/EnumSet;->m_indexedNames:[Ljava/lang/String;

    .line 114
    new-array v3, v4, [Ljava/lang/String;

    iput-object v3, p0, Lorg/jibx/runtime/EnumSet;->m_orderedNames:[Ljava/lang/String;

    .line 115
    new-array v3, v4, [I

    iput-object v3, p0, Lorg/jibx/runtime/EnumSet;->m_orderedIndexes:[I

    .line 117
    :cond_5
    return-void
.end method

.method private static buildItems(I[Ljava/lang/String;)[Lorg/jibx/runtime/EnumSet$EnumItem;
    .locals 5
    .parameter "start"
    .parameter "names"

    .prologue
    .line 152
    array-length v2, p1

    new-array v1, v2, [Lorg/jibx/runtime/EnumSet$EnumItem;

    .line 153
    .local v1, items:[Lorg/jibx/runtime/EnumSet$EnumItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 154
    new-instance v2, Lorg/jibx/runtime/EnumSet$EnumItem;

    add-int v3, p0, v0

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4}, Lorg/jibx/runtime/EnumSet$EnumItem;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-object v1
.end method

.method private static mergeItems(Lorg/jibx/runtime/EnumSet;I[Ljava/lang/String;)[Lorg/jibx/runtime/EnumSet$EnumItem;
    .locals 7
    .parameter "base"
    .parameter "start"
    .parameter "names"

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v3, p0, Lorg/jibx/runtime/EnumSet;->m_items:[Lorg/jibx/runtime/EnumSet$EnumItem;

    array-length v2, v3

    .line 171
    .local v2, prior:I
    array-length v3, p2

    add-int/2addr v3, v2

    new-array v1, v3, [Lorg/jibx/runtime/EnumSet$EnumItem;

    .line 172
    .local v1, merges:[Lorg/jibx/runtime/EnumSet$EnumItem;
    iget-object v3, p0, Lorg/jibx/runtime/EnumSet;->m_items:[Lorg/jibx/runtime/EnumSet$EnumItem;

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 174
    add-int v3, v2, v0

    new-instance v4, Lorg/jibx/runtime/EnumSet$EnumItem;

    add-int v5, p1, v0

    aget-object v6, p2, v0

    invoke-direct {v4, v5, v6}, Lorg/jibx/runtime/EnumSet$EnumItem;-><init>(ILjava/lang/String;)V

    aput-object v4, v1, v3

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-object v1
.end method


# virtual methods
.method public checkValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 258
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/jibx/runtime/EnumSet;->m_indexedNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/jibx/runtime/EnumSet;->m_indexedNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    return-void
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 186
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/jibx/runtime/EnumSet;->m_indexedNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/jibx/runtime/EnumSet;->m_indexedNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNameChecked(I)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 201
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/jibx/runtime/EnumSet;->m_indexedNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 202
    iget-object v1, p0, Lorg/jibx/runtime/EnumSet;->m_indexedNames:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 203
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 204
    return-object v0

    .line 207
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " not defined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, base:I
    iget-object v4, p0, Lorg/jibx/runtime/EnumSet;->m_orderedNames:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    .line 219
    .local v3, limit:I
    :goto_0
    if-gt v0, v3, :cond_3

    .line 220
    add-int v4, v0, v3

    shr-int/lit8 v1, v4, 0x1

    .line 221
    .local v1, cur:I
    iget-object v4, p0, Lorg/jibx/runtime/EnumSet;->m_orderedNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 222
    .local v2, diff:I
    if-gez v2, :cond_0

    .line 223
    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    .line 224
    :cond_0
    if-lez v2, :cond_1

    .line 225
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v4, p0, Lorg/jibx/runtime/EnumSet;->m_orderedIndexes:[I

    if-eqz v4, :cond_2

    .line 227
    iget-object v4, p0, Lorg/jibx/runtime/EnumSet;->m_orderedIndexes:[I

    aget v1, v4, v1

    .line 232
    .end local v1           #cur:I
    .end local v2           #diff:I
    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getValueChecked(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/EnumSet;->getValue(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 245
    return v0

    .line 247
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " not defined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public maxIndex()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/jibx/runtime/EnumSet;->m_indexedNames:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
